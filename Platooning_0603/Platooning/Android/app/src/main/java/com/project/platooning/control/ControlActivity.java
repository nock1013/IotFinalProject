package com.project.platooning.control;
        import androidx.annotation.NonNull;
        import androidx.appcompat.app.AppCompatActivity;
        import androidx.recyclerview.widget.LinearLayoutManager;
        import androidx.recyclerview.widget.RecyclerView;

        import android.content.Context;
        import android.content.Intent;
        import android.os.AsyncTask;
        import android.os.Bundle;
        import android.util.Log;
        import android.view.Menu;
        import android.view.MenuInflater;
        import android.view.MenuItem;
        import android.view.View;
        import android.widget.Button;
        import android.widget.EditText;
        import android.widget.NumberPicker;
        import android.widget.Toast;


        import com.project.platooning.HomeActivity;
        import com.project.platooning.LogIn.LoginActivity;
        import com.project.platooning.LogIn.MemberDTO;
        import com.project.platooning.R;

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
        import java.util.HashMap;
        import java.util.StringTokenizer;

        import okhttp3.MediaType;
        import okhttp3.OkHttpClient;
        import okhttp3.Request;
        import okhttp3.RequestBody;
        import okhttp3.Response;

public class ControlActivity extends AppCompatActivity {
    Context context;

    RecyclerView vel_listview;
    RecyclerView dis_listview;
    RecyclerView tem_listview;
    NumberPicker vel_control;
    NumberPicker dis_control;
    EditText temp_control;
    int target_vel;
    int target_dis;
    int target_temp;
    int vel_Val = 0;
    int dis_Val = 20;

    Socket socket;
    InputStream is;
    InputStreamReader isr;
    BufferedReader br;
    OutputStream os;
    PrintWriter pw;
    StringTokenizer token;


    CarItem car;

    Button btnVel;
    Button btnDis;
    Button btnTem;

    MemberDTO member;
    String userID;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        //final ArrayList<CarItem> filterdata = new ArrayList<CarItem>();

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        AsyncTaskController async = new AsyncTaskController();
        async.execute();
        context = this;
        vel_listview = findViewById(R.id.vel_listview);
        dis_listview = findViewById(R.id.dis_listview);
        tem_listview = findViewById(R.id.tem_listview);
        vel_control = (NumberPicker) findViewById(R.id.vel_control);
        String[] veldata = new String[12];
        for (int i = 0; i < 12; i++) {
            veldata[i] = Integer.toString(i * 10);
        }
        vel_control.setDisplayedValues(veldata);
        vel_control.setMinValue(0);
        vel_control.setMaxValue(11);
        vel_control.setValue(target_vel);
        dis_control = (NumberPicker) findViewById(R.id.dis_control);
        String[] disdata = new String[6];
        for (int i = 0; i < 6; i++) {
            disdata[i] = Integer.toString(i * 5 + 5);
        }
        dis_control.setDisplayedValues(disdata);
        dis_control.setMinValue(1);
        dis_control.setMaxValue(6);
        dis_control.setValue(target_dis);//setvalue를 현재 거리로 해야한다.
        btnVel = findViewById(R.id.btnVel);
        btnDis = findViewById(R.id.btnDis);
        btnTem = findViewById(R.id.btnTem);
        target_temp = 25;

        Intent intent = getIntent();
        userID = intent.getStringExtra("userID");

        // temp_control = (EditText) findViewById(R.id.temnum);
        //temp_control.setText(target_temp);

       /* Intent intent = getIntent();
        String[] carnumlist = intent.getStringArrayExtra("carnum");*/
        String[] carnumlist ={"12가3456","12나3456","12다3456"};
        VellistAdapter vellistAdapter = new VellistAdapter(this, R.layout.vel_list, carnumlist);
        DislistAdapter dislistAdapter = new DislistAdapter(this, R.layout.dis_list, carnumlist);
        final TemplistAdapter templistAdapter = new TemplistAdapter(this, R.layout.tem_list, carnumlist);
        LinearLayoutManager manager = new LinearLayoutManager(getApplicationContext());
        LinearLayoutManager manager2 = new LinearLayoutManager(getApplicationContext());
        LinearLayoutManager manager3 = new LinearLayoutManager(getApplicationContext());

        manager.setOrientation(LinearLayoutManager.VERTICAL);
        manager2.setOrientation(LinearLayoutManager.VERTICAL);
        manager3.setOrientation(LinearLayoutManager.VERTICAL);

        vel_listview.setLayoutManager(manager);
        dis_listview.setLayoutManager(manager2);
        tem_listview.setLayoutManager(manager3);

        vel_listview.setAdapter(vellistAdapter);
        dis_listview.setAdapter(dislistAdapter);
        tem_listview.setAdapter(templistAdapter);

        vel_control.setOnScrollListener(new NumberPicker.OnScrollListener() {
            @Override
            public void onScrollStateChange(NumberPicker view, int scrollState) {
                NumberPicker vel_picker = view;
                if (scrollState == SCROLL_STATE_IDLE) {
                    vel_Val = vel_picker.getValue() * 10;
                }
            }
        });
        dis_control.setOnScrollListener(new NumberPicker.OnScrollListener() {
            @Override
            public void onScrollStateChange(NumberPicker view, int scrollState) {
                NumberPicker dis_picker = view;
                if (scrollState == SCROLL_STATE_IDLE) {
                    dis_Val = dis_picker.getValue() * 5;
                }
            }
        });

        btnVel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Toast.makeText(getApplicationContext(), vel_Val + "", Toast.LENGTH_SHORT).show();
                sendData("velocity/"+vel_Val);


            }
        });
        btnDis.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Toast.makeText(getApplicationContext(), dis_Val + "", Toast.LENGTH_SHORT).show();
                sendData("distance/"+dis_Val);
            }
        });

        btnTem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //입력한 온도 뒤에 차에 보내는 코드
                String temp = "";
                HashMap<String, Integer> list = templistAdapter.filtercar;
                for (String key : list.keySet()) {
                    Integer value = list.get(key);
                    Log.d("test", "키 : " + key + ", 값 : " + value);
                    temp += "carnum/"+key+"/temperature/"+value+"/";
                }
                sendData(temp);
            }
        });


    }

    class AsyncTaskController extends AsyncTask<Integer, String, String> {

        @Override
        protected String doInBackground(Integer... integers) {
            try {
                socket = new Socket("70.12.230.80", 12345); // server ip & port
                System.out.println("여기로 들어오냐????????");
                if (socket != null) {
                    System.out.println("iowork works");
                    ioWork();
                }
                Thread thread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        while (true) {
                            String msg;
                            try {
                                msg = br.readLine();
                                Log.d("chat", "서버로 부터 수신된 메시지>>" + msg);
                            } catch (IOException e) {
                                try {
                                    is.close();
                                    isr.close();
                                    br.close();
                                    os.close();
                                    pw.close();
                                    socket.close();
                                 /*   AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                    builder.setTitle("알림").setMessage("서버와 접속이 끊어졌습니다.");
                                    AlertDialog alertDialog = builder.create();
                                    alertDialog.show();*/
                                } catch (IOException e1) {
                                    e1.printStackTrace();
                                }
                                break;
                            }
                        }
                    }
                });
                thread.start();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "";
        }
        public void ioWork() {
            try {
                System.out.println("아이오워크로 들어옴???????");
                is = socket.getInputStream();
                isr = new InputStreamReader(is);
                br = new BufferedReader(isr);
                os = socket.getOutputStream();
                pw = new PrintWriter(os, true);
                // 차량번호를 테블릿 고유번호로 사용
                pw.println("android");
                pw.flush();
                Log.d("mytest","완료");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }


    public void sendData(final String msg){
        System.out.println("||서버에게 메시지 전송||");
        System.out.println(msg);
        new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("run:"+msg);
                pw.println(msg);
                pw.flush();
            }
        }).start();

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
                ControlActivity.signOut task = new ControlActivity.signOut();
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

