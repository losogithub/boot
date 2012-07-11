package com.boot;

import java.util.ArrayList;
import java.util.List;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

public class Package {

	static public List<ApplicationInfo> listAllApplications(PackageManager pm,
			boolean allapp) {
		List<ApplicationInfo> apps = pm
				.getInstalledApplications(PackageManager.GET_ACTIVITIES
						| PackageManager.GET_META_DATA
						| PackageManager.GET_UNINSTALLED_PACKAGES);
		if (apps != null) {
			if (!allapp) {
				List<ApplicationInfo> normalApps = new ArrayList<ApplicationInfo>();
				List<Integer> pos = new ArrayList<Integer>();
				for (int index = 0; index < apps.size(); index++) {
					ApplicationInfo ai = apps.get(index);
					if ((ai.flags & ApplicationInfo.FLAG_SYSTEM) == 0) {
						pos.add(index);
					}
				}
				for (Integer i : pos) {
					normalApps.add(apps.get(i));
				}
				return normalApps;
			}
		}
		return apps;
	}
	
}
