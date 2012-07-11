package com.boot;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class BootReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context arg0, Intent arg1) {
		Log.d("Frank", "asdf");
		final Context context = arg0;
		new Thread(new Runnable() {
			@Override
			public void run() {
//				String action = "android.intent.action.MAIN";
//				String category = "android.intent.category.LAUNCHER";
//				Intent myi = new Intent(context, BootActivity.class);
//				myi.setAction(action);
//				myi.addCategory(category);
//				myi.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//				context.startActivity(myi);
				Intent s=new Intent(context,BootService.class);
				context.startService(s);
			}
		}).start();
	}
}
