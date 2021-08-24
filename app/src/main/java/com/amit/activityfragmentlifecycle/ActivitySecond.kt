package com.amit.activityfragmentlifecycle

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity

class ActivitySecond : AppCompatActivity(){
    val TAG = "Second Activity"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Log.d(TAG, "onCreate Called")
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

    companion object{
        fun start(context: Context){
            val intent = Intent(context,ActivitySecond::class.java)
        }
    }
}