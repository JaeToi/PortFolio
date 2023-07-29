package com.androidstudy.androidapp_frontend;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.androidstudy.androidapp_frontend.retrofit.User;
import com.androidstudy.androidapp_frontend.retrofit.UserApi;
import com.squareup.moshi.Moshi;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;

public class SignUpActivity extends AppCompatActivity {

    private final String TAG = getClass().getSimpleName();

    Button btnCancel, btnSignUp;
    EditText idInput, pwInput;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up);

        idInput = (EditText)findViewById(R.id.idInput);
        pwInput = (EditText)findViewById(R.id.pwInput);

        btnCancel = (Button)findViewById(R.id.btnCancel);
        btnCancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);
            }
        });

        btnSignUp = (Button)findViewById(R.id.btnSignUp);
        btnSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String id = idInput.getText().toString();
                String pw = pwInput.getText().toString();

                User signUpInfo = new User();
                signUpInfo.setUserId(id);
                signUpInfo.setUserPassword(pw);

                Moshi moshi = new Moshi.Builder().build();
                Retrofit retrofit = new Retrofit.Builder()
                        .baseUrl("http://192.168.0.48:9003/")
                        .addConverterFactory(MoshiConverterFactory.create(moshi))
                        .build();

                UserApi api = retrofit.create(UserApi.class);

                Call<Boolean> call = api.createUser(signUpInfo);
                call.enqueue(new Callback<Boolean>() {
                    @Override
                    public void onResponse(Call<Boolean> call, Response<Boolean> response) {
                        boolean signUpSuccess = response.body();

                        if (signUpSuccess){
                            Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                            startActivity(intent);
                        } else {
                            Toast.makeText(getApplicationContext(), "회원가입에 실패했습니다!", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onFailure(Call<Boolean> call, Throwable t) {
                        Log.d(TAG, "Fail msg : " + t.getMessage());
                        Toast.makeText(getApplicationContext(), "회원가입에 실패했습니다!", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
}

