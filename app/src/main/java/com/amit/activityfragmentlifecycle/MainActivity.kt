package com.amit.activityfragmentlifecycle

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button

class MainActivity : AppCompatActivity() {

    val TAG = "First Activity"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Log.d(TAG, "onCreate Called")
        initview()

    }


    private  fun initview(){
        val button = findViewById<Button>(R.id.button)
        button.setOnClickListener{
            val intent = Intent(this, ActivitySecond::class.java)
            startActivity(intent)

        }
    }

    override fun onStart() {
        super.onStart()
        Log.d(TAG, "onStart Called")

    }

    override fun onResume() {
        super.onResume()
        Log.d(TAG, "onResume Called")

    }

    override fun onStop() {
        super.onStop()
        Log.d(TAG, "onStop Called")

    }

    override fun onDestroy() {
        super.onDestroy()
        Log.d(TAG, "onDestroy Called")

    }
}
