package com.microsoft.identity.client;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.internal.logging.Logger;
import d.d.a.a;
import d.d.a.b;
import d.d.a.c;
import d.d.a.d;
import d.d.a.e;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class MsalChromeCustomTabManager {
    public static final long CUSTOM_TABS_MAX_CONNECTION_TIMEOUT = 1;
    public static final String TAG = "MsalChromeCustomTabManager";
    public String mChromePackageWithCustomTabSupport;
    public c mCustomTabsIntent;
    public MsalCustomTabsServiceConnection mCustomTabsServiceConnection;
    public Activity mParentActivity;

    public static class MsalCustomTabsServiceConnection extends d {
        public b mCustomTabsClient;
        public boolean mCustomTabsServiceIsBound;
        public e mCustomTabsSession;
        public final WeakReference<CountDownLatch> mLatchWeakReference;

        public MsalCustomTabsServiceConnection(CountDownLatch countDownLatch) {
            this.mLatchWeakReference = new WeakReference<>(countDownLatch);
        }

        /* access modifiers changed from: private */
        public void unbindCustomTabsService() {
            this.mCustomTabsClient = null;
            this.mCustomTabsServiceIsBound = false;
        }

        public boolean getCustomTabsServiceIsBound() {
            return this.mCustomTabsServiceIsBound;
        }

        public e getCustomTabsSession() {
            return this.mCustomTabsSession;
        }

        public void onCustomTabsServiceConnected(ComponentName componentName, b bVar) {
            CountDownLatch countDownLatch = (CountDownLatch) this.mLatchWeakReference.get();
            this.mCustomTabsServiceIsBound = true;
            this.mCustomTabsClient = bVar;
            if (bVar != null) {
                try {
                    bVar.a.a(0);
                } catch (RemoteException unused) {
                }
                this.mCustomTabsSession = this.mCustomTabsClient.a((a) null);
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                    return;
                }
                return;
            }
            throw null;
        }

        public void onServiceDisconnected(ComponentName componentName) {
            unbindCustomTabsService();
        }
    }

    public MsalChromeCustomTabManager(Activity activity) {
        if (activity != null) {
            this.mParentActivity = activity;
            this.mChromePackageWithCustomTabSupport = MsalUtils.getChromePackageWithCustomTabSupport(activity.getApplicationContext());
            return;
        }
        throw new IllegalArgumentException("Activity parameter cannot be null");
    }

    private boolean waitForServiceConnectionToEstablish(CountDownLatch countDownLatch) {
        try {
            if (!(!countDownLatch.await(1, TimeUnit.SECONDS))) {
                return true;
            }
            Logger.warn(TAG, "Connection to CustomTabs timed out. Skipping warmup.");
            return false;
        } catch (InterruptedException e2) {
            Logger.error(TAG, "Failed to connect to CustomTabs. Skipping warmup.", e2);
            return false;
        }
    }

    public synchronized void bindCustomTabsService() {
        c.a aVar;
        if (this.mChromePackageWithCustomTabSupport != null) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            MsalCustomTabsServiceConnection msalCustomTabsServiceConnection = new MsalCustomTabsServiceConnection(countDownLatch);
            this.mCustomTabsServiceConnection = msalCustomTabsServiceConnection;
            b.a(this.mParentActivity, this.mChromePackageWithCustomTabSupport, msalCustomTabsServiceConnection);
            if (waitForServiceConnectionToEstablish(countDownLatch)) {
                aVar = new c.a(this.mCustomTabsServiceConnection.getCustomTabsSession());
            } else {
                aVar = new c.a((e) null);
            }
            aVar.a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
            c a = aVar.a();
            this.mCustomTabsIntent = a;
            a.a.setPackage(this.mChromePackageWithCustomTabSupport);
        }
    }

    public void launchChromeTabOrBrowserForUrl(String str) {
        if (this.mChromePackageWithCustomTabSupport == null || this.mCustomTabsIntent == null) {
            Logger.info(TAG, "Chrome tab support is not available, launching chrome browser.");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setPackage(MsalUtils.getChromePackage(this.mParentActivity.getApplicationContext()));
            intent.addCategory("android.intent.category.BROWSABLE");
            this.mParentActivity.startActivity(intent);
            return;
        }
        Logger.info(TAG, "ChromeCustomTab support is available, launching chrome tab.");
        c cVar = this.mCustomTabsIntent;
        Activity activity = this.mParentActivity;
        cVar.a.setData(Uri.parse(str));
        d.i.b.a.a((Context) activity, cVar.a, cVar.b);
    }

    public synchronized void unbindCustomTabsService() {
        if (this.mCustomTabsServiceConnection != null && this.mCustomTabsServiceConnection.getCustomTabsServiceIsBound()) {
            this.mParentActivity.unbindService(this.mCustomTabsServiceConnection);
            this.mCustomTabsServiceConnection.unbindCustomTabsService();
        }
    }

    public void verifyChromeTabOrBrowser() {
        if (this.mChromePackageWithCustomTabSupport == null) {
            Logger.warn(TAG, "Custom tab is not supported by Chrome.");
        } else if (MsalUtils.getChromePackage(this.mParentActivity.getApplicationContext()) == null) {
            Logger.warn(TAG, "Chrome is not installed.");
            throw new MsalClientException("chrome_not_installed", "Chrome is not installed.");
        }
    }
}
