package com.boot;

import android.app.Application;

public class BootApplication extends Application {

	@Override
	public void onCreate() {
		super.onCreate();
		AppEngine.setApplicationContext(this);
	}

}
