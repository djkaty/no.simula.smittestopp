package e.c.a.a.g;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class c {
    public static final Executor a = new a();

    public static final class a implements Executor {
        public final Handler a = new Handler(Looper.getMainLooper());

        public final void execute(Runnable runnable) {
            this.a.post(runnable);
        }
    }
}
