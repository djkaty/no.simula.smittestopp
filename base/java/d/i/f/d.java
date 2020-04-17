package d.i.f;

import android.os.Handler;
import d.i.f.c;
import java.util.concurrent.Callable;

public class d implements Runnable {
    public final /* synthetic */ Callable x;
    public final /* synthetic */ Handler y;
    public final /* synthetic */ c.C0025c z;

    public class a implements Runnable {
        public final /* synthetic */ Object x;

        public a(Object obj) {
            this.x = obj;
        }

        public void run() {
            d.this.z.a(this.x);
        }
    }

    public d(c cVar, Callable callable, Handler handler, c.C0025c cVar2) {
        this.x = callable;
        this.y = handler;
        this.z = cVar2;
    }

    public void run() {
        Object obj;
        try {
            obj = this.x.call();
        } catch (Exception unused) {
            obj = null;
        }
        this.y.post(new a(obj));
    }
}
