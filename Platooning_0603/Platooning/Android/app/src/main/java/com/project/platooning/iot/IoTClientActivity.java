package com.project.platooning.iot;

import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

import com.project.platooning.R;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Random;



public class IoTClientActivity extends AppCompatActivity {
    IoTAsyncTask asyncTaskExam;
    InputStream is;
    InputStreamReader isr;
    BufferedReader br;
    Socket socket;
    OutputStream os;
    PrintWriter pw;
    String androidId;
    int flag;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_io_t_client);
        Random r = new Random();
        flag =r.nextInt(2)+1;
        if(flag%2==0){
            androidId = "1111";
        }else{
            androidId = "2222";
        }

        asyncTaskExam = new IoTAsyncTask();
        asyncTaskExam.execute(10,20);
    }
    public void send_msg(final View view){
        new Thread(new Runnable() {
            @Override
            public void run() {
                String message="";
                if(view.getId()==R.id.led_on){
                    message = "led_on";
                }else if(view.getId()==R.id.led_off){
                    message = "led_off";
                }else{
                    message = "다른거";
                }
                pw.println("job/"+message+"/phone/"+androidId);
                pw.flush();
            }
        }).start();
    }
    class IoTAsyncTask extends AsyncTask<Integer,String,String> {
        @Override
        protected String doInBackground(Integer... integers) {
            try {

                socket = new Socket("70.12.224.58", 12345);
                if (socket != null) {
                    ioWork();//서버에서 input.output얻어내기 위한 코드
                }
                Thread t1 = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        while (true) {
                            String msg;
                            try {
                                msg = br.readLine();
                                Log.d("myiot", "서버로 부터 수신된 메시지>>"
                                        + msg);
                            } catch (IOException e) {
                                try {
                                    //2. 서버쪽에서 연결이 끊어지는 경우 사용자는 자원을 반납======
                                    //자원반납
                                    is.close();
                                    isr.close();
                                    br.close();
                                    os.close();
                                    pw.close();
                                    socket.close();

                                } catch (IOException e1) {
                                    // TODO Auto-generated catch block
                                    e1.printStackTrace();
                                }
                                break;//반복문 빠져나가도록 설정
                            }
                        }
                    }
                });
                t1.start();
            } catch (UnknownHostException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "";
        }
        void ioWork(){
            //최초 접속할 때 서버에게 접속한 아이디에 정보를 보내기
            try {
                is = socket.getInputStream();
                isr = new InputStreamReader(is);
                br = new BufferedReader(isr);

                os = socket.getOutputStream();
                pw = new PrintWriter(os,true);
                pw.println("phone/"+androidId);
                pw.flush();

            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        try {
            if (socket != null) socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
