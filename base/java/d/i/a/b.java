package d.i.a;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class b {
    public static final Class<?> a;
    public static final Field b;

    /* renamed from: c  reason: collision with root package name */
    public static final Field f532c;

    /* renamed from: d  reason: collision with root package name */
    public static final Method f533d;

    /* renamed from: e  reason: collision with root package name */
    public static final Method f534e;

    /* renamed from: f  reason: collision with root package name */
    public static final Method f535f;

    /* renamed from: g  reason: collision with root package name */
    public static final Handler f536g = new Handler(Looper.getMainLooper());

    public static class a implements Runnable {
        public final /* synthetic */ c x;
        public final /* synthetic */ Object y;

        public a(c cVar, Object obj) {
            this.x = cVar;
            this.y = obj;
        }

        public void run() {
            this.x.x = this.y;
        }
    }

    /* renamed from: d.i.a.b$b  reason: collision with other inner class name */
    public static class C0022b implements Runnable {
        public final /* synthetic */ Application x;
        public final /* synthetic */ c y;

        public C0022b(Application application, c cVar) {
            this.x = application;
            this.y = cVar;
        }

        public void run() {
            this.x.unregisterActivityLifecycleCallbacks(this.y);
        }
    }

    public static final class c implements Application.ActivityLifecycleCallbacks {
        public boolean A = false;
        public boolean B = false;
        public Object x;
        public Activity y;
        public boolean z = false;

        public c(Activity activity) {
            this.y = activity;
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
            if (this.y == activity) {
                this.y = null;
                this.A = true;
            }
        }

        public void onActivityPaused(Activity activity) {
            if (this.A && !this.B && !this.z) {
                Object obj = this.x;
                boolean z2 = false;
                try {
                    Object obj2 = b.f532c.get(activity);
                    if (obj2 == obj) {
                        b.f536g.postAtFrontOfQueue(new c(b.b.get(activity), obj2));
                        z2 = true;
                    }
                } catch (Throwable th) {
                    Log.e("ActivityRecreator", "Exception while fetching field values", th);
                }
                if (z2) {
                    this.B = true;
                    this.x = null;
                }
            }
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
            if (this.y == activity) {
                this.z = true;
            }
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x005d A[SYNTHETIC, Splitter:B:25:0x005d] */
    static {
        /*
            android.os.Handler r0 = new android.os.Handler
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            r0.<init>(r1)
            f536g = r0
            r0 = 0
            java.lang.String r1 = "android.app.ActivityThread"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch:{ all -> 0x0013 }
            goto L_0x0014
        L_0x0013:
            r1 = r0
        L_0x0014:
            a = r1
            r1 = 1
            java.lang.Class<android.app.Activity> r2 = android.app.Activity.class
            java.lang.String r3 = "mMainThread"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch:{ all -> 0x0023 }
            r2.setAccessible(r1)     // Catch:{ all -> 0x0023 }
            goto L_0x0024
        L_0x0023:
            r2 = r0
        L_0x0024:
            b = r2
            java.lang.Class<android.app.Activity> r2 = android.app.Activity.class
            java.lang.String r3 = "mToken"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch:{ all -> 0x0032 }
            r2.setAccessible(r1)     // Catch:{ all -> 0x0032 }
            goto L_0x0033
        L_0x0032:
            r2 = r0
        L_0x0033:
            f532c = r2
            java.lang.Class<?> r2 = a
            r3 = 3
            java.lang.String r4 = "performStopActivity"
            r5 = 2
            r6 = 0
            if (r2 != 0) goto L_0x0040
        L_0x003e:
            r2 = r0
            goto L_0x0055
        L_0x0040:
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch:{ all -> 0x003e }
            java.lang.Class<android.os.IBinder> r8 = android.os.IBinder.class
            r7[r6] = r8     // Catch:{ all -> 0x003e }
            java.lang.Class r8 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x003e }
            r7[r1] = r8     // Catch:{ all -> 0x003e }
            java.lang.Class<java.lang.String> r8 = java.lang.String.class
            r7[r5] = r8     // Catch:{ all -> 0x003e }
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r4, r7)     // Catch:{ all -> 0x003e }
            r2.setAccessible(r1)     // Catch:{ all -> 0x003e }
        L_0x0055:
            f533d = r2
            java.lang.Class<?> r2 = a
            if (r2 != 0) goto L_0x005d
        L_0x005b:
            r2 = r0
            goto L_0x006e
        L_0x005d:
            java.lang.Class[] r7 = new java.lang.Class[r5]     // Catch:{ all -> 0x005b }
            java.lang.Class<android.os.IBinder> r8 = android.os.IBinder.class
            r7[r6] = r8     // Catch:{ all -> 0x005b }
            java.lang.Class r8 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x005b }
            r7[r1] = r8     // Catch:{ all -> 0x005b }
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r4, r7)     // Catch:{ all -> 0x005b }
            r2.setAccessible(r1)     // Catch:{ all -> 0x005b }
        L_0x006e:
            f534e = r2
            java.lang.Class<?> r2 = a
            boolean r4 = a()
            if (r4 == 0) goto L_0x00b3
            if (r2 != 0) goto L_0x007b
            goto L_0x00b3
        L_0x007b:
            java.lang.String r4 = "requestRelaunchActivity"
            r7 = 9
            java.lang.Class[] r7 = new java.lang.Class[r7]     // Catch:{ all -> 0x00b3 }
            java.lang.Class<android.os.IBinder> r8 = android.os.IBinder.class
            r7[r6] = r8     // Catch:{ all -> 0x00b3 }
            java.lang.Class<java.util.List> r6 = java.util.List.class
            r7[r1] = r6     // Catch:{ all -> 0x00b3 }
            java.lang.Class<java.util.List> r6 = java.util.List.class
            r7[r5] = r6     // Catch:{ all -> 0x00b3 }
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch:{ all -> 0x00b3 }
            r7[r3] = r5     // Catch:{ all -> 0x00b3 }
            r3 = 4
            java.lang.Class r5 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x00b3 }
            r7[r3] = r5     // Catch:{ all -> 0x00b3 }
            r3 = 5
            java.lang.Class<android.content.res.Configuration> r5 = android.content.res.Configuration.class
            r7[r3] = r5     // Catch:{ all -> 0x00b3 }
            r3 = 6
            java.lang.Class<android.content.res.Configuration> r5 = android.content.res.Configuration.class
            r7[r3] = r5     // Catch:{ all -> 0x00b3 }
            r3 = 7
            java.lang.Class r5 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x00b3 }
            r7[r3] = r5     // Catch:{ all -> 0x00b3 }
            r3 = 8
            java.lang.Class r5 = java.lang.Boolean.TYPE     // Catch:{ all -> 0x00b3 }
            r7[r3] = r5     // Catch:{ all -> 0x00b3 }
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r4, r7)     // Catch:{ all -> 0x00b3 }
            r2.setAccessible(r1)     // Catch:{ all -> 0x00b3 }
            r0 = r2
        L_0x00b3:
            f535f = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.a.b.<clinit>():void");
    }

    public static boolean a(Activity activity) {
        Object obj;
        Application application;
        c cVar;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (a() && f535f == null) {
            return false;
        } else {
            if (f534e == null && f533d == null) {
                return false;
            }
            try {
                Object obj2 = f532c.get(activity);
                if (obj2 == null || (obj = b.get(activity)) == null) {
                    return false;
                }
                application = activity.getApplication();
                cVar = new c(activity);
                application.registerActivityLifecycleCallbacks(cVar);
                f536g.post(new a(cVar, obj2));
                if (a()) {
                    f535f.invoke(obj, new Object[]{obj2, null, null, 0, false, null, null, false, false});
                } else {
                    activity.recreate();
                }
                f536g.post(new C0022b(application, cVar));
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }

    public static boolean a() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 == 26 || i2 == 27;
    }
}
