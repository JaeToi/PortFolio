package com.androidstudy.androidapp_frontend;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class WebViewCallActivity extends AppCompatActivity {

    //    Code - Override Methods...
    //    - Ctrl + 마우스왼클릭으로 6가지 라이프사이클 메서드 선택
    //    - OK 버튼 클릭
    @Override
    protected void onStart() {
        super.onStart();
        android.util.Log.i("액티비티 테스트","onStart()");
    }

    @Override
    protected void onStop() {
        super.onStop();
        android.util.Log.i("액티비티 테스트","onStop()");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        android.util.Log.i("액티비티 테스트","onDestroy()");
    }

    @Override
    protected void onPause() {
        super.onPause();
        android.util.Log.i("액티비티 테스트","onPause()");
    }

    @Override
    protected void onResume() {
        super.onResume();
        android.util.Log.i("액티비티 테스트","onResume()");
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        android.util.Log.i("액티비티 테스트","onRestart()");
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_web_call);
        setTitle("회사 홈페이지 연결 및 전화 걸기 기능 적용");

        android.util.Log.i("액티비티 테스트","onCreate()");

        Button btnWeb = (Button) findViewById(R.id.btnWeb);
        Button btnDial = (Button) findViewById(R.id.btnDial);
        Button btnFinish = (Button) findViewById(R.id.btnFinish);
        Button btnGoMain = (Button) findViewById(R.id.btnGoMain);
        Button btnLogout = (Button) findViewById(R.id.btnLogout);

        btnGoMain.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), SingUpSuccess.class);
                startActivity(intent);
            }
        });

        btnLogout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
            }
        });

        btnWeb.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Uri uri = Uri.parse("http://www.kbs.co.kr");
                Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                startActivity(intent);
            }
        });

        btnDial.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Uri uri = Uri.parse("tel:01012345678");
                Intent intent = new Intent(Intent.ACTION_DIAL, uri);
                startActivity(intent);
            }
        });

        btnFinish.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // finish() 메서드로 현재 액티비티를 종료 처리합니다.
                finish();
            }
        });
    }
}
