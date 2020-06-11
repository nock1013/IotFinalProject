package com.project.platooning.LogIn.Face;

import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

import androidx.appcompat.app.AppCompatActivity;


public class AndroidBridge extends AppCompatActivity {
    private String TAG = "AndroidBridge";

    //생성자
    private WebView mAppview;
    private FaceRec mContext;

    //웹뷰 > AndroidBridge 핸들러
    final public Handler handler= new Handler();

    //여기서 > FaceRec_reg 핸들러
    Handler handlerFromFaceRec;
    Message message;

    //웹뷰 데이터 값
    String face_Login;

    public AndroidBridge() {

    }
    public AndroidBridge(WebView webView, FaceRec faceRec,Handler handler1) {
        mAppview = webView;
        mContext = faceRec;
        handlerFromFaceRec=handler1;

    }

    @JavascriptInterface
    public void call_log(final String msg){

        //Log.d(TAG, msg);
        handler.post(new Runnable() {
            @Override
            public void run() {

                face_Login = msg;
                if(face_Login!=null){
                    message=handlerFromFaceRec.obtainMessage();
                    message.arg1 = 0;
                    handlerFromFaceRec.sendMessage(message);
                }
            }
        });
    }

    public String getFace_val() {
        return face_Login;
    }

}
