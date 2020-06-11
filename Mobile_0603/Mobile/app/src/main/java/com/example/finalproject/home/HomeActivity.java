package com.example.finalproject.home;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.example.finalproject.R;
import com.example.finalproject.login.LoginActivity;
import com.example.finalproject.login.MemberDTO;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

import static android.speech.tts.TextToSpeech.ERROR;

public class HomeActivity extends AppCompatActivity implements View.OnClickListener {
    Button btn1; //공조
    /*Button open_btn;//문열기
    Button close_btn;//문닫기
*/
    ImageButton powerbtn;
    CheckBox doorbtn;
    CheckBox lightbtn;

    TextView leftbtn;
    TextView rightbtn;
    TextView temperatureView;

    Spinner spinner;

    AsyncTaskDoorController asyncTaskDoorController;
    InputStream is;
    InputStreamReader isr;
    BufferedReader br;
    Socket socket;
    OutputStream os;
    PrintWriter pw;
    String userID;
    ArrayList<String> carlistarr=new ArrayList<>();

    String control_car = "";

    boolean powerflag=false;    // true:on, false:off
    boolean doorflag=false;    // true:on, false:off
    boolean lightflag=false;    // true:on, false:off

    MemberDTO member;

    TextToSpeech tts;
    String doorOpen ="문이 열렸습니다";
    String doorClosed ="문이 닫혔습니다";
    String lightOn ="비상등이 켜졌습니다";
    String lightOff ="비상등이 꺼졌습니다";
    String carOn="시동이 켜졌습니다";
    String carOff="시동이 꺼졌습니다";

    String TAG = "HomeActivity";



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        doorbtn = findViewById(R.id.doorbtn);
        lightbtn = findViewById(R.id.lightbtn);
        powerbtn = findViewById(R.id.powerbtn);

        spinner = findViewById(R.id.spinner);

        leftbtn = findViewById(R.id.leftbtn);
        rightbtn = findViewById(R.id.rightbtn);
        temperatureView = findViewById(R.id.temperatureView);

        leftbtn.setOnClickListener(this);
        rightbtn.setOnClickListener(this);

        Intent intent = getIntent();
        userID = intent.getStringExtra("userID");
        Toast.makeText(getApplicationContext(),userID,Toast.LENGTH_SHORT).show();
        Log.d("HomeActivity","일반로그인"+userID);

        String[] carlist = intent.getStringExtra("carlist").split("/");
        Log.d(TAG, "onCreate: carlist"+carlist);
        for(String car:carlist){
            carlistarr.add(Integer.parseInt(car.split(":")[0]),car.split(":")[1]);
        }

        ArrayAdapter adapter = new ArrayAdapter(this, R.layout.spinner_item, carlistarr);

        spinner.setAdapter(adapter);

        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                control_car = carlistarr.get(position);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        asyncTaskDoorController = new AsyncTaskDoorController();
        Log.d(userID,"유저아이디");
        asyncTaskDoorController.execute(10,20);

        doorbtn.setOnClickListener(this);
        lightbtn.setOnClickListener(this);
        powerbtn.setOnClickListener(this);

        // TTS를 생성하고 OnInitListener로 초기화 한다.
        tts = new TextToSpeech(this, new TextToSpeech.OnInitListener() {
            @Override
            public void onInit(int status) {
                if(status != ERROR) {
                    // 언어를 선택한다.
                    tts.setLanguage(Locale.KOREAN);
                }
            }
        });
    }



    @Override
    public void onClick(View v) {
        int temp;
        switch (v.getId()){
            case R.id.powerbtn:
                if(powerflag){  // 켜져있을때
                    send_msg("/engine/off");
                    Toast.makeText(getApplicationContext(),carOff,Toast.LENGTH_SHORT).show();
                    tts.speak(carOff,TextToSpeech.QUEUE_FLUSH, null);
                    Log.d(TAG, "onClick: "+carOff);
                }else{  // 꺼져있을때
                    send_msg("/engine/on");
                    Toast.makeText(getApplicationContext(),carOn,Toast.LENGTH_SHORT).show();
                    tts.speak(carOn,TextToSpeech.QUEUE_FLUSH, null);
                    Log.d(TAG, "onClick: "+carOn);
                }
                powerflag=!powerflag;
                break;
            case R.id.doorbtn:
                if(doorflag){  // 켜져있을때
                    send_msg("/door/off");
                    Toast.makeText(getApplicationContext(),doorClosed,Toast.LENGTH_SHORT).show();
                    tts.speak(doorClosed,TextToSpeech.QUEUE_FLUSH, null);
                    Log.d(TAG, "onClick: "+doorClosed);
                }else{  // 꺼져있을때
                    send_msg("/door/on");
                    Toast.makeText(getApplicationContext(),doorOpen,Toast.LENGTH_SHORT).show();
                    tts.speak(doorOpen,TextToSpeech.QUEUE_FLUSH, null);
                    Log.d(TAG, "onClick: "+doorOpen);
                }
                doorflag=!doorflag;
                break;
            case R.id.lightbtn:
                if(lightflag){  // 켜져있을때
                    send_msg("/light/off");
                    Toast.makeText(getApplicationContext(),lightOff,Toast.LENGTH_SHORT).show();
                    tts.speak(lightOff,TextToSpeech.QUEUE_FLUSH, null);
                    Log.d(TAG, "onClick: "+lightOff);
                }else{  // 꺼져있을때
                    send_msg("/light/on");
                    Toast.makeText(getApplicationContext(),lightOn,Toast.LENGTH_SHORT).show();
                    tts.speak(lightOn,TextToSpeech.QUEUE_FLUSH, null);
                    Log.d(TAG, "onClick: "+lightOn);
                }
                lightflag=!lightflag;
                break;

            case R.id.leftbtn:
                temp = Integer.parseInt(temperatureView.getText().toString())-1;
                if(temp>-40){
                    temperatureView.setText(temp+"");
                }
                break;
            case R.id.rightbtn:
                temp = Integer.parseInt(temperatureView.getText().toString())+1;
                if(temp<28){
                    temperatureView.setText(temp+"");
                }
                break;

        }
    }

    class AsyncTaskDoorController extends AsyncTask<Integer,String,String>{

        @Override
        protected String doInBackground(Integer... integers) {
            try {
                socket = new Socket("70.12.116.59",12345);
                Log.d(TAG, "doInBackground: socket");
                if (socket !=null){
                    ioWork();
                    Log.d(TAG, "doInBackground: socket !=null");
                }

            } catch (IOException e) {
                e.printStackTrace();
            }
            return "";
        }
    }

    //제어
    public void send_msg(final String msg){
        new Thread(new Runnable() {
            @Override
            public void run() {
                //서버로 메시지 전송
                Log.d("tcp","send to server>>>"+msg);
                pw.println(control_car+msg);
                pw.flush();
            }
        }).start();
    }

    void ioWork(){
        try {
            is = socket.getInputStream();
            isr = new InputStreamReader(is);
            br = new BufferedReader(isr);

            os = socket.getOutputStream();
            pw = new PrintWriter(os,true);

            //  android/{user_id}/carlist/{car_num}:{car_order}/{car_num}:{car_order}/....
            String msg = "android/"+userID+"/carlist/";
            Log.d(TAG, "ioWork: "+msg);
            for(int i = 0;i<carlistarr.size();i++){
                msg+=carlistarr.get(i)+":"+i+"/";
            }
            pw.println(msg);
            pw.flush();

        } catch (IOException e){
            e.printStackTrace();
        }

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        try {
            is.close();
            isr.close();
            br.close();
            os.close();
            pw.close();
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //메뉴: 로그아웃
    //엑티비티가 만들어질 때 자동으로 호출되는 메서드: 이 안에서 메뉴를 생성한다
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.logout,menu);
        return true;
    }
    //옵션 메뉴 클릭시 호출되는 메소드 (이벤트연결)
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        Log.d("menu", item.getItemId()+"");
        int id = item.getItemId();
        String msg="";
        switch (id){
            case R.id.action_myInfo:
                Toast.makeText(this, "아직 없습니다.", Toast.LENGTH_SHORT).show();
                break;
            case R.id.action_sign_out:

                member = new MemberDTO(userID);
                HomeActivity.signOut task = new HomeActivity.signOut();
                task.execute(member);

                break;
        }
        return super.onOptionsItemSelected(item);
    }

    //앱바 로그아웃
    class signOut extends AsyncTask<MemberDTO, Void, String>{
        String result;
        @Override
        protected String doInBackground(MemberDTO... memberDTOS) {
            URL url = null;
            JSONObject object = new JSONObject();
            try {
                object.put("userID",memberDTOS[0].getUserID());

                url = new URL("http://70.12.116.60:8088/gunzip_final/carlist/detach.do");


                OkHttpClient client = new OkHttpClient();
                String json = object.toString();
                Log.d("msg",json);
                Request request = new Request.Builder()
                        .url(url)
                        .post(RequestBody.create(MediaType.parse("application/json"),json))
                        .build();

                Response response = client.newCall(request).execute();
                result = response.body().string();
                Log.d("msg",result);

                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                startActivity(intent);

            } catch (IOException e) {
                e.printStackTrace();
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return result;
        }

    }



}
