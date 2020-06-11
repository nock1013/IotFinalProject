package com.project.platooning.LogIn;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.project.platooning.LogIn.Face.FaceRec_reg;
import com.project.platooning.R;


public class SignUp2 extends AppCompatActivity {
    Intent intent = null;
    String UserId = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up2);

        //인텐트로 넘어온 값
        intent = getIntent();
        UserId = intent.getStringExtra("유저아이디");
        //인텐트로 넘어온 값 확인하기
        Toast.makeText(this,"추출한 값:"+UserId,
                Toast.LENGTH_SHORT).show();
    }


    public void btn_yes(View view){
        Intent intent = new Intent(SignUp2.this, FaceRec_reg.class);
        //인텐트로 넘어온 값 또 넘기기
        intent.putExtra("유저아이디",UserId);
        startActivity(intent);
        finish();

    }

    public void btn_no(View view){
        Intent intent = new Intent(SignUp2.this, LoginActivity.class);
        startActivity(intent);
        finish();

    }

}
