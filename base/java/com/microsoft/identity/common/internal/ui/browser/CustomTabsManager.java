package com.microsoft.identity.common.internal.ui.browser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.microsoft.identity.common.internal.logging.Logger;
import d.d.a.a;
import d.d.a.b;
import d.d.a.c;
import d.d.a.d;
import d.d.a.e;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class CustomTabsManager {
    public static final long CUSTOM_TABS_MAX_CONNECTION_TIMEOUT = 1;
    public static final String TAG = "CustomTabsManager";
    public final CountDownLatch mClientLatch;
    public final WeakReference<Context> mContextRef;
    public final AtomicReference<b> mCustomTabsClient;
    public c mCustomTabsIntent;
    public d mCustomTabsServiceConnection = new d() {
        public void onCustomTabsServiceConnected(ComponentName componentName, b bVar) {
            Logger.info(CustomTabsManager.TAG, "CustomTabsService is connected");
            if (bVar != null) {
                try {
                    bVar.a.a(0);
                } catch (RemoteException unused) {
                }
                boolean unused2 = CustomTabsManager.this.mCustomTabsServiceIsBound = true;
                CustomTabsManager.this.mCustomTabsClient.set(bVar);
                CustomTabsManager.this.mClientLatch.countDown();
                return;
            }
            throw null;
        }

        public void onServiceDisconnected(ComponentName componentName) {
            Logger.info(CustomTabsManager.TAG, "CustomTabsService is disconnected");
            boolean unused = CustomTabsManager.this.mCustomTabsServiceIsBound = false;
            CustomTabsManager.this.mCustomTabsClient.set((Object) null);
            CustomTabsManager.this.mClientLatch.countDown();
        }
    };
    public boolean mCustomTabsServiceIsBound;

    public CustomTabsManager(Context context) {
        this.mContextRef = new WeakReference<>(context);
        this.mCustomTabsClient = new AtomicReference<>();
        this.mClientLatch = new CountDownLatch(1);
    }

    private e createSession(a aVar) {
        b client = getClient();
        if (client == null) {
            Logger.warn(TAG, "Failed to create custom tabs session with null CustomTabClient.");
            return null;
        }
        e a = client.a(aVar);
        if (a == null) {
            Logger.warn(TAG, "Failed to create custom tabs session through custom tabs client.");
        }
        return a;
    }

    public synchronized void bind(String str) {
        IBinder iBinder;
        if (this.mContextRef.get() == null || !b.a((Context) this.mContextRef.get(), str, this.mCustomTabsServiceConnection)) {
            Logger.info(TAG, "Unable to bind custom tabs service");
            this.mClientLatch.countDown();
        }
        e createSession = createSession((a) null);
        Intent intent = new Intent("android.intent.action.VIEW");
        if (createSession != null) {
            intent.setPackage(createSession.b.getPackageName());
        }
        Bundle bundle = new Bundle();
        if (createSession == null) {
            iBinder = null;
        } else {
            iBinder = createSession.a.asBinder();
        }
        bundle.putBinder("android.support.customtabs.extra.SESSION", iBinder);
        intent.putExtras(bundle);
        intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        c cVar = new c(intent, (Bundle) null);
        this.mCustomTabsIntent = cVar;
        cVar.a.setPackage(str);
    }

    public b getClient() {
        try {
            this.mClientLatch.await(1, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            Logger.info(TAG, "Interrupted while waiting for browser connection");
            this.mClientLatch.countDown();
        }
        return this.mCustomTabsClient.get();
    }

    public c getCustomTabsIntent() {
        return this.mCustomTabsIntent;
    }

    public synchronized void unbind() {
        if (this.mContextRef.get() != null && this.mCustomTabsServiceIsBound) {
            ((Context) this.mContextRef.get()).unbindService(this.mCustomTabsServiceConnection);
        }
        this.mCustomTabsServiceIsBound = false;
        this.mCustomTabsClient.set((Object) null);
        Logger.info(TAG, "CustomTabsService is unbound.");
    }
}
