package e.c.a.a.b.i.k;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

public final class b implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    public static final b B = new b();
    @GuardedBy("sInstance")
    public boolean A = false;
    public final AtomicBoolean x = new AtomicBoolean();
    public final AtomicBoolean y = new AtomicBoolean();
    @GuardedBy("sInstance")
    public final ArrayList<a> z = new ArrayList<>();

    public interface a {
        void a(boolean z);
    }

    public static void a(Application application) {
        synchronized (B) {
            if (!B.A) {
                application.registerActivityLifecycleCallbacks(B);
                application.registerComponentCallbacks(B);
                B.A = true;
            }
        }
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.x.compareAndSet(true, false);
        this.y.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.x.compareAndSet(true, false);
        this.y.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void onConfigurationChanged(Configuration configuration) {
    }

    public final void onLowMemory() {
    }

    public final void onTrimMemory(int i2) {
        if (i2 == 20 && this.x.compareAndSet(false, true)) {
            this.y.set(true);
            a(true);
        }
    }

    public final void a(a aVar) {
        synchronized (B) {
            this.z.add(aVar);
        }
    }

    public final void a(boolean z2) {
        synchronized (B) {
            ArrayList<a> arrayList = this.z;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                a aVar = arrayList.get(i2);
                i2++;
                aVar.a(z2);
            }
        }
    }
}
