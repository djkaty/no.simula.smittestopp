package d.o;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import d.o.g;

public class v extends Fragment {
    public a x;

    public interface a {
    }

    public static class b implements Application.ActivityLifecycleCallbacks {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            v.a(activity, g.a.ON_CREATE);
        }

        public void onActivityPostResumed(Activity activity) {
            v.a(activity, g.a.ON_RESUME);
        }

        public void onActivityPostStarted(Activity activity) {
            v.a(activity, g.a.ON_START);
        }

        public void onActivityPreDestroyed(Activity activity) {
            v.a(activity, g.a.ON_DESTROY);
        }

        public void onActivityPrePaused(Activity activity) {
            v.a(activity, g.a.ON_PAUSE);
        }

        public void onActivityPreStopped(Activity activity) {
            v.a(activity, g.a.ON_STOP);
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public static void a(Activity activity, g.a aVar) {
        if (activity instanceof n) {
            ((n) activity).getLifecycle().a(aVar);
        } else if (activity instanceof l) {
            g lifecycle = ((l) activity).getLifecycle();
            if (lifecycle instanceof m) {
                ((m) lifecycle).a(aVar);
            }
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            activity.registerActivityLifecycleCallbacks(new b());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new v(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(g.a.ON_CREATE);
    }

    public void onDestroy() {
        super.onDestroy();
        a(g.a.ON_DESTROY);
        this.x = null;
    }

    public void onPause() {
        super.onPause();
        a(g.a.ON_PAUSE);
    }

    public void onResume() {
        super.onResume();
        a aVar = this.x;
        if (aVar != null) {
            t tVar = t.this;
            int i2 = tVar.y + 1;
            tVar.y = i2;
            if (i2 == 1) {
                if (tVar.z) {
                    tVar.C.a(g.a.ON_RESUME);
                    tVar.z = false;
                } else {
                    tVar.B.removeCallbacks(tVar.D);
                }
            }
        }
        a(g.a.ON_RESUME);
    }

    public void onStart() {
        super.onStart();
        a aVar = this.x;
        if (aVar != null) {
            t tVar = t.this;
            int i2 = tVar.x + 1;
            tVar.x = i2;
            if (i2 == 1 && tVar.A) {
                tVar.C.a(g.a.ON_START);
                tVar.A = false;
            }
        }
        a(g.a.ON_START);
    }

    public void onStop() {
        super.onStop();
        a(g.a.ON_STOP);
    }

    public static v a(Activity activity) {
        return (v) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    public final void a(g.a aVar) {
        if (Build.VERSION.SDK_INT < 29) {
            a(getActivity(), aVar);
        }
    }
}
