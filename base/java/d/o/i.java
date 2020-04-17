package d.o;

import android.app.Activity;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;

public class i {
    public static AtomicBoolean a = new AtomicBoolean(false);

    public static class a extends c {
        public void onActivityCreated(Activity activity, Bundle bundle) {
            v.b(activity);
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }
}
