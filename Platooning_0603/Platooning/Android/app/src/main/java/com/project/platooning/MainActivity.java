package com.project.platooning;


import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.project.platooning.adapter.CarItemTouchHelperCallback;
import com.project.platooning.adapter.CarList_Adapter;
import com.project.platooning.adapter.SelectedCarListAdapter;
import com.project.platooning.item.Carnum;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class MainActivity extends AppCompatActivity implements SelectedCarListAdapter.OnStartDragListener{
    Context mContext;
    SelectedCarListAdapter selectedCarAdapter;
    CarList_Adapter CarListAdapter;
    ArrayList<Carnum> carnumlist = new ArrayList<Carnum>();
    ArrayList<Carnum> selected_carnumlist = new ArrayList<Carnum>();
    CardView btn_search_car;
    CardView btn_to_platoon;
    RecyclerView selected_carlist;
    RecyclerView carnum_list_view;
    Carnum Carnum;
    String this_car = "100나7500";
    String userid = "test@naver.com";
    ItemTouchHelper helper;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("군만두");
        mContext = MainActivity.this;
        btn_search_car = findViewById(R.id.btn_search_car);
        btn_to_platoon = findViewById(R.id.btn_to_plat);
        carnum_list_view = findViewById(R.id.carnum_list);
        selected_carlist = findViewById(R.id.selected_carlist);

        Intent intent = getIntent();

        userid = intent.getStringExtra("userid");


        // 선택한 차 목록 어댑터 연결하기
        // 아래 뷰에서 선택할때 변하게

        //연결가능 차량리스트 보여주기
        btn_search_car.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                    carnumlist.clear();
                    Platooning_List list = new Platooning_List();
                    list.execute();

            }
        });
        //군집주행모드 시작하기
        btn_to_platoon.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {


                //통신 연결 여부 파악
                //군집모드 실행하려면 군집모드 실행버튼 클릭
                //  |_ 연결된 차량이 없을 때, 화면 안넘어감
                //Toast.makeText(mContext,"연결된 차량이 없습니다.",Toast.LENGTH_SHORT).show();

                if(selected_carnumlist.size()>0){
                    //  |_ 연결된 차량이 있을 때, 화면 넘어감
                    String cars = "";
                    for(int i=0;i<selected_carnumlist.size();i++){
                        cars+=i+":"+selected_carnumlist.get(i).getCarnum()+"/";
                    }
                    Log.d("selected_order",cars);
                    String msg = selected_carnumlist.size()+"대의 차량과 군집 주행을 시작합니다." ;
                    Toast.makeText(mContext,msg+"11111",Toast.LENGTH_SHORT).show();
                    UseCarlistUpdate task = new UseCarlistUpdate();
                    task.execute();

                    // tcp로 carlist, userid 보내기
                    //sendToTCP tcptask = new sendToTCP();
                    //tcptask.execute();

                    //차량 제어 앱단으로 연결
                    //Intent intent = new Intent(getApplicationContext());
                    //startActivity(intent);
                    Intent intentToController = new Intent(mContext,HomeActivity.class);
                    intentToController.putExtra("userid", userid);
                    intentToController.putExtra("carlist", cars);

                    startActivity(intentToController);
                }else if(selected_carnumlist.size()==0){
                    Toast.makeText(mContext,"연결된 차량이 없습니다.",Toast.LENGTH_SHORT).show();
                }

            }
        });

    }

    @Override
    public void onStartDrag(SelectedCarListAdapter.ViewHolder holder) {

    }


    // http 서버로 사용할 차량 list와 userid 보내기
    class UseCarlistUpdate extends AsyncTask<Void,Void,String>{

        @Override
        protected String doInBackground(Void... voids) {
            URL url = null;
            String data = "";
            JSONObject object;
            JSONArray array = new JSONArray();
            try {
                for(Carnum car:selected_carnumlist){
                    object = new JSONObject();
                    object.put("status",userid);
                    object.put("carnum",car.getCarnum());

                    array.put(object);
                }
                url = new URL("http://70.12.116.60:8088/gunzip_final/carlist/attach.do");
                OkHttpClient client = new OkHttpClient();
                String json = array.toString();
                Log.d("msg",json);
                Request request = new Request.Builder()
                        .url(url)
                        .post(RequestBody.create(MediaType.parse("application/json"),json))
                        .build();

                Response response = client.newCall(request).execute();
                data = response.body().string();
                Log.d("msg",data);
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }
            return null;
        }
    }
    //DB -> WAS -> Tablet :  데이터 가져오기
    class Platooning_List extends AsyncTask<Void,Void,String>{
        @Override
        protected String doInBackground(Void... voids) {
            URL url = null;
            BufferedReader in = null;
            String data = "";
            try {
                String path = "http://70.12.116.60:8088/gunzip_final/carlist/select.do";
                url = new URL(path);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("GET");
                connection.setRequestProperty("Content-Type","application/json");
                if(connection.getResponseCode()==HttpURLConnection.HTTP_OK){
                    in = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTF-8"));
                    data = in.readLine();
                    Log.d("carlist", "carlist : "+data);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return data;
        }


        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            JSONArray ja = null;
            try {
                ja = new JSONArray(s);
                for(int i=0;i<ja.length();i++){
                    JSONObject jo = ja.getJSONObject(i);
                    String carlist = jo.getString("carnum");
                    String status = jo.getString("status");
                    String savedate = jo.getString("savedate");

                    Carnum item = new Carnum(carlist,status,savedate,false);
                    Log.d("carlist", carlist+"");
                    carnumlist.add(item);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

            Log.d("selectedRecycler","selected");

            // Carnum(String carnum, String status, String savedate, boolean selected)
            //selected_carnumlist.add(new Carnum("12345","", "", true));

            selectedCarAdapter = new SelectedCarListAdapter(mContext, R.layout.plate_item, selected_carnumlist, new SelectedCarListAdapter.OnStartDragListener() {
                @Override
                public void onStartDrag(SelectedCarListAdapter.ViewHolder holder) {
                    helper.startDrag(holder);
                }
            });

            selectedCarAdapter.setOnItemClickListener(new SelectedCarListAdapter.OnItemClickListener() {
                @Override
                public void onItemClick(View v, int position) {
                    carnumlist.get(position).setSelected(false);
                    CarListAdapter.notifyDataSetChanged();
                }
            });
            LinearLayoutManager llm = new LinearLayoutManager(mContext);
            llm.setOrientation(LinearLayoutManager.HORIZONTAL);
            selected_carlist.setLayoutManager(llm);
            CarItemTouchHelperCallback callback = new CarItemTouchHelperCallback(selectedCarAdapter);
            helper = new ItemTouchHelper(callback);
            helper.attachToRecyclerView(selected_carlist);

            selected_carlist.setAdapter(selectedCarAdapter);



            Log.d("carlistRecycler","car");

            //어댑터 연결하기
            CarListAdapter = new CarList_Adapter(mContext,R.layout.platoon_list,carnumlist);

            CarListAdapter.setOnItemClickListener(new CarList_Adapter.OnItemClickListener() {
                @Override
                public void onItemClick(View v, int position) {
                    CardView cardView = v.findViewById(R.id.cardView);
                    //Log.d(carnumlist.get(position).isSelected());
                    if(!carnumlist.get(position).isSelected()){//선택 안됐으면
                        selected_carnumlist.add(carnumlist.get(position));
                        carnumlist.get(position).setSelected(true);
                        String sel_cars="";
                        for (Carnum car:selected_carnumlist){
                            sel_cars+=car.getCarnum()+", ";
                        }
                        Log.d("selected", "add "+sel_cars);
                        cardView.setCardBackgroundColor(Color.parseColor("#1f000000"));
                    }else{
                        selected_carnumlist.remove(carnumlist.get(position));
                        carnumlist.get(position).setSelected(false);

                        String sel_cars="";
                        for (Carnum car:selected_carnumlist){
                            sel_cars+=car.getCarnum()+", ";
                        }
                        cardView.setCardBackgroundColor(Color.parseColor("#ffffffff"));

                        Log.d("selected", "remove "+sel_cars);
                    }
                    selectedCarAdapter.notifyDataSetChanged();  // 선택할 때 마다 selectedCarAdapter에 데이터 변경 알림
                }
            });
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getApplicationContext());
            carnum_list_view.setLayoutManager(linearLayoutManager);
            carnum_list_view.setAdapter(CarListAdapter);

        }
    }

}



