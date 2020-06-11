package com.project.platooning.LogIn.Face;

import android.Manifest;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;


import com.project.platooning.LogIn.MemberDTO;
import com.project.platooning.MainActivity;
import com.project.platooning.R;
import com.project.platooning.control.ControlActivity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

public class FaceRec extends AppCompatActivity {
    private static final int PERMISSIONS_REQUEST = 1;
    private static final String PERMISSION_CAMERA = Manifest.permission.CAMERA;
    private static final String PERMISSION_STORAGE = Manifest.permission.WRITE_EXTERNAL_STORAGE;



    WebView webView;
    String TAG = "태그";
    //프로그레스빠
    ProgressBar mProgressBar;
    //브리짓값
    String face_login = null;
    AndroidBridge ab_login;

    //로그인 정보
    String face;
    MemberDTO member;

    //WAS에서 받아온 회원정보
    String id;
    String password2;


    @SuppressLint("JavascriptInterface")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_face_recog);
        setTitle("군만두");

        webView =findViewById(R.id.webview);

        mProgressBar = (ProgressBar) findViewById(R.id.progressBarFaceLoin);
        showDialog();

        webView.setWebChromeClient(new WebChromeClient() {
            public void onPermissionRequest(final PermissionRequest request) {
                Log.d(TAG, "onPermissionRequest");
                FaceRec.this.runOnUiThread(new Runnable() {
                    @TargetApi(Build.VERSION_CODES.M)
                    @Override
                    public void run() {
                        Log.d(TAG, request.getOrigin().toString());
                        if(request.getOrigin().toString().equals("file:///")) {
                            Log.d(TAG, "GRANTED");
                            hideDialog();
                            request.grant(request.getResources());
                        } else {
                            Log.d(TAG, "DENIED");
                            request.deny();
                        }
                    }
                });
            }
        });

        if (hasPermission()) {
            webView();
        } else {
            requestPermission();
        }

        Handler handlerListening1= new Handler(){
            @Override
            public void handleMessage(@NonNull Message msg) {
                super.handleMessage(msg);
                switch (msg.arg1){
                    case 0:
                        face_login = ab_login.getFace_val();
                        Log.d(TAG, "FaceRec face_login값: "+face_login);
                        if(face_login!=null){
                           /* userID = "hwang2@gmail.com";
                            password = "123456";
                            member = new MemberDTO(userID,password);*/
                            member = new MemberDTO();
                            face = face_login;
                            member.setFace(face);
                            HttpFaceSelect task = new HttpFaceSelect();
                            task.execute(member);
                        }
                        break;

                }
            }
        };

        ab_login = new AndroidBridge(webView, FaceRec.this,handlerListening1);
        webView.addJavascriptInterface(ab_login,"Android");
        //Toast.makeText(FaceRec.this,"안녕하세요: "+face_login,Toast.LENGTH_SHORT).show();
    }

    private void showDialog(){
        mProgressBar.setVisibility(View.VISIBLE);

    }
    private void hideDialog(){
        if(mProgressBar.getVisibility() == View.VISIBLE){
            mProgressBar.setVisibility(View.INVISIBLE);
        }
    }

    @SuppressLint("JavascriptInterface")
    public void webView(){
        String url ="file:///android_asset/sample.html";
        WebSettings settings = webView.getSettings();
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(WebSettings.LOAD_NO_CACHE);




        webView.post(new Runnable() {
            @Override
            public void run() {
                webView.loadUrl(url);
            }
        });

    }




    @Override
    public void onRequestPermissionsResult(
            final int requestCode, final String[] permissions, final int[] grantResults) {
        if (requestCode == PERMISSIONS_REQUEST) {
            if (grantResults.length > 0
                    && grantResults[0] == PackageManager.PERMISSION_GRANTED
                    && grantResults[1] == PackageManager.PERMISSION_GRANTED) {
                WebSettings settings = webView.getSettings();
                settings.setJavaScriptEnabled(true);
                webView.loadUrl("file:///android_asset/sample.html");
            } else {
                requestPermission();
            }
        }
    }
    private boolean hasPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            return checkSelfPermission(PERMISSION_CAMERA) == PackageManager.PERMISSION_GRANTED &&
                    checkSelfPermission(PERMISSION_STORAGE) == PackageManager.PERMISSION_GRANTED;
        } else {
            return true;
        }
    }

    private void requestPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (shouldShowRequestPermissionRationale(PERMISSION_CAMERA) ||
                    shouldShowRequestPermissionRationale(PERMISSION_STORAGE)) {

            }
            requestPermissions(new String[] {PERMISSION_CAMERA, PERMISSION_STORAGE}, PERMISSIONS_REQUEST);
        }
    }

    //얼굴 조회
    class HttpFaceSelect extends AsyncTask<MemberDTO, Void, String>{

        @Override
        protected String doInBackground(MemberDTO... memberDTOS) {
            URL url = null;
            BufferedReader br = null;
            String data;
            String str="";
            try {
                url = new URL("http://70.12.116.60:8088/gunzip_final/member/faceLogin.do");

                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("POST");
                connection.setRequestProperty("Content-Type","application/x-www-form-urlencoded");

                OutputStreamWriter osw = new OutputStreamWriter(connection.getOutputStream());
                data = "face="+memberDTOS[0].getFace()+"&carnum="+"100나7500";
                Log.d("HttpFaceSelect 보내는 값",data);
                osw.write(data);
                osw.flush();

                Log.d("connection",""+connection.getResponseCode());
                if(connection.getResponseCode()== HttpURLConnection.HTTP_OK){
                    br = new BufferedReader(new InputStreamReader(connection.getInputStream()
                            ,"UTF-8"));
                    str = br.readLine();
                    Log.d("HttpFaceSelect 받아 온 값",str);
                    String [] strSplit = str.split("/");
                    id = strSplit[0];
                    password2 = strSplit[1];
                    Log.d("HttpFaceSelect 받아 온 ID",id);
                    Log.d("HttpFaceSelect 받아 온 비번",password2);



                }else{
                    Log.d("HttpFaceSelect","연결되지 않았습니다.");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return str;
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            if(password2.equals("1")){

                Intent intent = new Intent(FaceRec.this, ControlActivity.class);
                intent.putExtra("userID",id);
                Log.d("FaceRect: ","얼굴 로그인 아이디"+id);
                startActivity(intent);
                finish();
            }else if(s.equals("0")){
                Toast.makeText(FaceRec.this,"로그인 실패",Toast.LENGTH_SHORT).show();
            }
        }

    }

}
