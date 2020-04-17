package d.i.a;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;

public class a extends d.i.b.a {

    /* renamed from: d.i.a.a$a  reason: collision with other inner class name */
    public static class C0021a implements Runnable {
        public final /* synthetic */ String[] x;
        public final /* synthetic */ Activity y;
        public final /* synthetic */ int z;

        public C0021a(String[] strArr, Activity activity, int i2) {
            this.x = strArr;
            this.y = activity;
            this.z = i2;
        }

        public void run() {
            int[] iArr = new int[this.x.length];
            PackageManager packageManager = this.y.getPackageManager();
            String packageName = this.y.getPackageName();
            int length = this.x.length;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = packageManager.checkPermission(this.x[i2], packageName);
            }
            ((b) this.y).onRequestPermissionsResult(this.z, this.x, iArr);
        }
    }

    public interface b {
        void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr);
    }

    public interface c {
    }

    public interface d {
        void validateRequestPermissionsRequestCode(int i2);
    }

    public static c a() {
        return null;
    }

    public static void a(Activity activity, Intent intent, int i2, Bundle bundle) {
        activity.startActivityForResult(intent, i2, bundle);
    }

    public static void b(Activity activity) {
        activity.finishAfterTransition();
    }

    public static void c(Activity activity) {
        activity.postponeEnterTransition();
    }

    public static void d(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (!b.a(activity)) {
            activity.recreate();
        }
    }

    public static void e(Activity activity) {
        activity.setEnterSharedElementCallback((SharedElementCallback) null);
    }

    public static void f(Activity activity) {
        activity.setExitSharedElementCallback((SharedElementCallback) null);
    }

    public static void g(Activity activity) {
        activity.startPostponedEnterTransition();
    }

    public static void a(Activity activity, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
    }

    public static void a(Activity activity) {
        activity.finishAffinity();
    }

    public static <T extends View> T a(Activity activity, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            return activity.requireViewById(i2);
        }
        T findViewById = activity.findViewById(i2);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Activity");
    }

    public static void a(Activity activity, String[] strArr, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof d) {
                ((d) activity).validateRequestPermissionsRequestCode(i2);
            }
            activity.requestPermissions(strArr, i2);
        } else if (activity instanceof b) {
            new Handler(Looper.getMainLooper()).post(new C0021a(strArr, activity, i2));
        }
    }

    public static boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }
}
