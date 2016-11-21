package com.example.krish.myapplication;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class login extends AppCompatActivity implements View.OnClickListener {

    Button blogin;
    EditText etUsername, etPassword;
    TextView tvRegisterLink;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        etUsername = (EditText) findViewById(R.id.etUsername);
        etPassword = (EditText) findViewById(R.id.etPassword);
        blogin = (Button) findViewById(R.id.blogin);
        tvRegisterLink = (TextView) findViewById(R.id.tvRegristerLink);
        blogin.setOnClickListener(this);
        tvRegisterLink.setOnClickListener(this);
    }


    @Override
    public void onClick(View v) {
        switch (v.getId())
        {
            case R.id.blogin:
                break;
            case R.id.tvRegristerLink:
                startActivity(new Intent(this, Regrister.class));
                break;

        }
    }
}



////////////////////////////////////////////



<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:orientation="vertical"
    android:layout_height="match_parent"
    android:padding="10dp"
    android:layout_width="match_parent">
    <TextView
        android:layout_width="wrap_content"
        android:text="Username"
        android:layout_height="wrap_content" />
    <EditText
        android:id="@+id/etUsername"
        android:layout_width="match_parent"
        android:layout_marginBottom="10dp"
        android:layout_height="wrap_content" />
    <TextView
        android:layout_width="wrap_content"
        android:text="Password"
        android:layout_height="wrap_content" />
    <EditText
        android:id="@+id/etPassword"
        android:layout_width="match_parent"
        android:layout_marginBottom="10dp"
        android:inputType="textPassword"
        android:layout_height="wrap_content" />
    <Button
        android:id="@+id/blogin"
        android:text="Login"
        android:layout_width="match_parent"
        android:layout_height="wrap_content" />

    <TextView
        android:id="@+id/tvRegristerLink"
        android:layout_width="wrap_content"
        android:text="Register Here"
        android:textStyle="bold"
        android:layout_gravity="center_horizontal"
        android:layout_height="wrap_content" />
</LinearLayout>

















