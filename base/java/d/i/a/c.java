package d.i.a;

import android.util.Log;

public final class c implements Runnable {
    public final /* synthetic */ Object x;
    public final /* synthetic */ Object y;

    public c(Object obj, Object obj2) {
        this.x = obj;
        this.y = obj2;
    }

    public void run() {
        try {
            if (b.f533d != null) {
                b.f533d.invoke(this.x, new Object[]{this.y, false, "AppCompat recreation"});
                return;
            }
            b.f534e.invoke(this.x, new Object[]{this.y, false});
        } catch (RuntimeException e2) {
            if (e2.getClass() == RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                throw e2;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
