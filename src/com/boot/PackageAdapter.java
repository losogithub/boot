package com.boot;

import java.util.List;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.DataSetObserver;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;

public class PackageAdapter implements ListAdapter {

	private List<ApplicationInfo> mAllAppInfo = null;

	public PackageAdapter() {
		mAllAppInfo = Package.listAllApplications(AppEngine
				.getApplicationContext().getPackageManager(), false);
	}

	@Override
	public int getCount() {
		if (mAllAppInfo != null) {
			return mAllAppInfo.size();
		}
		return 0;
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getItemViewType(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if (convertView == null) {
			convertView = new TextView(AppEngine.getBootActivity());
//			((TextView) convertView)
//					.setTransformationMethod(new SingleLineTransformationMethod());
			((TextView) convertView).setMaxLines(1);
			((TextView) convertView).setEllipsize(TextUtils.TruncateAt.END);

		}
		if (mAllAppInfo != null) {
			if (position < mAllAppInfo.size()) {
				PackageManager pm = AppEngine.getApplicationContext()
						.getPackageManager();
				ApplicationInfo ai = mAllAppInfo.get(position);
				((TextView) convertView).setText(pm.getApplicationLabel(ai)
						.toString()
						+ "+"
						+ mAllAppInfo.get(position).packageName);
			}
		}
		return convertView;
	}

	@Override
	public int getViewTypeCount() {
		return 1;
	}

	@Override
	public boolean hasStableIds() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEmpty() {
		return getCount() == 0;
	}

	@Override
	public void registerDataSetObserver(DataSetObserver observer) {
		// TODO Auto-generated method stub

	}

	@Override
	public void unregisterDataSetObserver(DataSetObserver observer) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean areAllItemsEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled(int position) {
		// TODO Auto-generated method stub
		return false;
	}

}
