package com.microsoft.identity.common.internal.ui.browser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BrowserSelector {
    public static final String SCHEME_HTTP = "http";
    public static final String SCHEME_HTTPS = "https";
    public static final String TAG = "BrowserSelector";

    public static List<Browser> getAllBrowsers(Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        for (ResolveInfo next : packageManager.queryIntentActivities(intent, Build.VERSION.SDK_INT >= 23 ? 65600 : 64)) {
            if (isFullBrowser(next)) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(next.activityInfo.packageName, 64);
                    if (isCustomTabsServiceSupported(context, packageInfo)) {
                        arrayList.add(new Browser(packageInfo, true));
                    } else {
                        arrayList.add(new Browser(packageInfo, false));
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        String str = TAG;
        StringBuilder a = a.a("Found ");
        a.append(arrayList.size());
        a.append(" browsers.");
        Logger.verbose(str, (String) null, a.toString());
        return arrayList;
    }

    public static boolean isCustomTabsServiceSupported(Context context, PackageInfo packageInfo) {
        Intent intent = new Intent(TelemetryEventStrings.Os.OS_NAME + ".support.customtabs.action.CustomTabsService");
        intent.setPackage(packageInfo.packageName);
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean isFullBrowser(ResolveInfo resolveInfo) {
        if (!resolveInfo.filter.hasAction("android.intent.action.VIEW") || !resolveInfo.filter.hasCategory("android.intent.category.BROWSABLE") || resolveInfo.filter.schemesIterator() == null || resolveInfo.filter.authoritiesIterator() != null) {
            return false;
        }
        Iterator<String> schemesIterator = resolveInfo.filter.schemesIterator();
        boolean z = false;
        boolean z2 = false;
        while (schemesIterator.hasNext()) {
            String next = schemesIterator.next();
            z |= "http".equals(next);
            z2 |= "https".equals(next);
            if (z && z2) {
                return true;
            }
        }
        return false;
    }

    public static Browser select(Context context, List<BrowserDescriptor> list) {
        List<Browser> allBrowsers = getAllBrowsers(context);
        Logger.verbose(TAG, "Select the browser to launch.");
        for (Browser next : allBrowsers) {
            Iterator<BrowserDescriptor> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().matches(next)) {
                        String str = TAG;
                        StringBuilder a = a.a("Browser's package name: ");
                        a.append(next.getPackageName());
                        a.append(" version: ");
                        a.append(next.getVersion());
                        Logger.info(str, a.toString());
                        return next;
                    }
                }
            }
        }
        Logger.error(TAG, ErrorStrings.NO_AVAILABLE_BROWSER_FOUND, (Throwable) null);
        throw new ClientException(ErrorStrings.NO_AVAILABLE_BROWSER_FOUND, ErrorStrings.NO_AVAILABLE_BROWSER_FOUND);
    }
}
