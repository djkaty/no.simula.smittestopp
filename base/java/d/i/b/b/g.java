package d.i.b.b;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import d.b.e.y;

public abstract class g {

    public class a implements Runnable {
        public final /* synthetic */ Typeface x;

        public a(Typeface typeface) {
            this.x = typeface;
        }

        public void run() {
            g.this.a(this.x);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ int x;

        public b(int i2) {
            this.x = i2;
        }

        public void run() {
            if (((y.a) g.this) == null) {
                throw null;
            }
        }
    }

    public abstract void a(Typeface typeface);

    public final void a(Typeface typeface, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new a(typeface));
    }

    public final void a(int i2, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new b(i2));
    }
}
