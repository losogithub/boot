package com.boot;

import android.content.Context;

public class AppEngine {

	static Context applicationContext = null;
	static BootActivity bootActivity = null;

	public static void setApplicationContext(Context context) {
		applicationContext = context;
	}

	public static Context getApplicationContext() {
		return applicationContext;
	}

	public static void setBootActivity(BootActivity activity) {
		bootActivity = activity;
	}

	public static Context getBootActivity() {
		return bootActivity;
	}
}
