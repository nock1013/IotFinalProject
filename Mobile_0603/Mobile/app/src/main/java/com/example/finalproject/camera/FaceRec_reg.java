package com.example.finalproject.camera;

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
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.example.finalproject.R;
import com.example.finalproject.login.AndroidBridge_reg;
import com.example.finalproject.login.LoginActivity;
import com.example.finalproject.login.MemberDTO;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.net.URL;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class FaceRec_reg extends AppCompatActivity {
    private static final int PERMISSIONS_REQUEST = 1;
    private static final String PERMISSION_CAMERA = Manifest.permission.CAMERA;
    private static final String PERMISSION_STORAGE = Manifest.permission.WRITE_EXTERNAL_STORAGE;



    WebView webView;
    String TAG = "태그";

    MemberDTO member;

    //인텐트로 넘어온 값
    Intent intent = null;
    String UserId = null;
    ProgressBar mProgressBar;
    //브리짓값
    String face_val = null;

    AndroidBridge_reg ab_reg;
    Button btn_face;


    @SuppressLint("JavascriptInterface")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_face_recog2);

        //인텐트로 넘어온 값
        intent = getIntent();
        UserId = intent.getStringExtra("유저아이디");
        //인텐트로 넘어온 값 확인하기
        Toast.makeText(this,"추출한 값:"+UserId,
                Toast.LENGTH_SHORT).show();

        webView =findViewById(R.id.webview);
        mProgressBar = (ProgressBar) findViewById(R.id.progressBarFace);
        btn_face = findViewById(R.id.btn_face);

        //webText.setText(webView.get);
        showDialog();




         webView.setWebChromeClient(new WebChromeClient() {
           public void onPermissionRequest(final PermissionRequest request) {
               Log.d(TAG, "onPermissionRequest");
               FaceRec_reg.this.runOnUiThread(new Runnable() {
                   @TargetApi(Build.VERSION_CODES.M)
                   @Override
                   public void run() {
                       Log.d(TAG, request.getOrigin().toString());
                       if(request.getOrigin().toString().equals("file:///")) {
                           Log.d(TAG, "GRANTED");
                           request.grant(request.getResources());
                           hideDialog();
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

        Handler handlerListening2= new Handler(){
            @Override
            public void handleMessage(@NonNull Message msg) {
                super.handleMessage(msg);
                switch (msg.arg1){
                    case 0:
                        face_val = ab_reg.getFace_val();
                    Log.d(TAG, "FaceRec_reg: "+face_val);
                    break;

                }
            }
        };
        ab_reg = new AndroidBridge_reg(webView, FaceRec_reg.this,handlerListening2);
        webView.addJavascriptInterface(ab_reg,"Android2");

        btn_face.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                member = new MemberDTO();
                member.setUserID(UserId);
                member.setFace(face_val);
                FaceRec_reg.HttpUpdate task = new FaceRec_reg.HttpUpdate();
                task.execute(member);
                Toast.makeText(FaceRec_reg.this,"등록 완료되었습니다.",Toast.LENGTH_SHORT).show();

            }
        });

    }


    @SuppressLint("JavascriptInterface")
    public void webView(){
        String url ="file:///android_asset/sample2.html";
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
                webView.loadUrl("file:///android_asset/sample2.html");
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
    private void showDialog(){
        mProgressBar.setVisibility(View.VISIBLE);

    }
    private void hideDialog(){
        if(mProgressBar.getVisibility() == View.VISIBLE){
            mProgressBar.setVisibility(View.INVISIBLE);
        }
    }

    //DB update
    class HttpUpdate extends AsyncTask<MemberDTO, Void, String> {

        @Override
        protected String doInBackground(MemberDTO... memberDTOS) {
            URL url = null;
            JSONObject object = new JSONObject();
            String data="";
            try {
                object.put("userID",memberDTOS[0].getUserID());
                object.put("face",memberDTOS[0].getFace());
                url = new URL("http://70.12.116.60:8088/gunzip_final/member/updateface.do");

                OkHttpClient client = new OkHttpClient();
                String json = object.toString();
                Log.d("msg json",json);
                Request request = new Request.Builder()
                        .url(url)
                        .post(RequestBody.create(MediaType.parse("application/json"),json))
                        .build();

                Response response = client.newCall(request).execute();
                data = response.body().string();
                Log.d("msg data",data);

            } catch (IOException e) {
                e.printStackTrace();
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return data;
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            if(s.equals("1")){
                Intent intent = new Intent(FaceRec_reg.this, LoginActivity.class);
                startActivity(intent);
            }else{
                Toast.makeText(FaceRec_reg.this,"다시작성해 주세요",Toast.LENGTH_SHORT).show();
                hideDialog();
            }
        }
    }

}
