package com.project.platooning;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.project.platooning.R;
import com.project.platooning.TemperatureControllActivity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;

public class HomeActivity extends AppCompatActivity implements View.OnClickListener {
    Button btn1; //공조
    /*Button open_btn;//문열기
    Button close_btn;//문닫기
*/
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


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        //btn1 = findViewById(R.id.btn1);
        /*open_btn = findViewById(R.id.open_btn);
        close_btn = findViewById(R.id.close_btn);
        */
        doorbtn = findViewById(R.id.doorbtn);
        lightbtn = findViewById(R.id.lightbtn);

        spinner = findViewById(R.id.spinner);

        leftbtn = findViewById(R.id.leftbtn);
        rightbtn = findViewById(R.id.rightbtn);
        temperatureView = findViewById(R.id.temperatureView);

        leftbtn.setOnClickListener(this);
        rightbtn.setOnClickListener(this);

        Intent intent = getIntent();
        userID = intent.getStringExtra("userid");
        String[] carlist = intent.getStringExtra("carlist").split("/");
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
    }

    @Override
    public void onClick(View v) {
        int temp;
        switch (v.getId()){
            case R.id.powerbtn:
                if(powerflag){  // 켜져있을때
                    send_msg("/engine/off");
                    Toast.makeText(getApplicationContext(),"engine off",Toast.LENGTH_SHORT).show();
                }else{  // 꺼져있을때
                    send_msg("/engine/on");
                    Toast.makeText(getApplicationContext(),"engine on",Toast.LENGTH_SHORT).show();
                }
                powerflag=!powerflag;
                break;
            case R.id.doorbtn:
                if(doorflag){  // 켜져있을때
                    send_msg("/door/off");
                    Toast.makeText(getApplicationContext(),"door closed",Toast.LENGTH_SHORT).show();
                }else{  // 꺼져있을때
                    send_msg("/door/on");
                    Toast.makeText(getApplicationContext(),"door opened",Toast.LENGTH_SHORT).show();
                }
                doorflag=!doorflag;
                break;
            case R.id.lightbtn:
                if(lightflag){  // 켜져있을때
                    send_msg("/light/off");
                    Toast.makeText(getApplicationContext(),"light off",Toast.LENGTH_SHORT).show();
                }else{  // 꺼져있을때
                    send_msg("/light/on");
                    Toast.makeText(getApplicationContext(),"light on",Toast.LENGTH_SHORT).show();
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
                socket = new Socket("70.12.230.80",55555);
                if (socket !=null){
                    ioWork();
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
}
