package com.project.platooning.LogIn.Face;

import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

import androidx.appcompat.app.AppCompatActivity;


public class AndroidBridge_reg extends AppCompatActivity {
    private String TAG = "AndroidBridge_reg";

    //생성자
    private WebView mAppview;
    private FaceRec_reg mContext;

    //웹뷰 > AndroidBridge_reg 핸들러
    final public Handler handler= new Handler();

    //여기서 > FaceRec_reg 핸들러
    Handler handlerFromReg;
    Message message;

    //웹뷰 데이터 값
    String face_val;


    public AndroidBridge_reg() {

    }
    public AndroidBridge_reg(WebView register_face, FaceRec_reg face, Handler handler1) {
        mAppview = register_face;
        mContext = face;
        handlerFromReg=handler1;
    }

    @JavascriptInterface
    public void call_log2(final String msg){

        //Log.d(TAG, msg);
        handler.post(new Runnable() {
            @Override
            public void run() {
                //mAppview.loadUrl("javascript:alert('["+msg+"] 라고 로그를 남겼습니다.')");
                //Log.d(TAG, msg);
                face_val = msg;
                /*webText = findViewById(R.id.webText);
                webText.setText(msg);*/
                if(face_val!=null){
                    message=handlerFromReg.obtainMessage();
                    message.arg1 = 0;
                    handlerFromReg.sendMessage(message);
                }
            }

        });

    }


    public String getFace_val() {
        return face_val;
    }
}
