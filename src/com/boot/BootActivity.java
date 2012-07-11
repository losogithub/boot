package com.boot;

import android.app.Activity;
import android.os.Bundle;
import android.widget.GridView;

public class BootActivity extends Activity {
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		AppEngine.setBootActivity(this);
		setContentView(R.layout.main);
		initAdapter((GridView)findViewById(R.id.icon_grid));
	}
	
	private void initAdapter(GridView gridView) {
		gridView.setAdapter(new PackageAdapter());
	}

}