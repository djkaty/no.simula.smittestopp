package e.c.a.b.m;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

public class e {

    /* renamed from: c  reason: collision with root package name */
    public static e f1293c;
    public final Object a = new Object();
    public final Handler b = new Handler(Looper.getMainLooper(), new a());

    public class a implements Handler.Callback {
        public a() {
        }

        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            e.this.a((c) message.obj);
            return true;
        }
    }

    public interface b {
        void a(int i2);
    }

    public static class c {
        public final WeakReference<b> a;
    }

    public void a(b bVar) {
        synchronized (this.a) {
        }
    }

    public void b(b bVar) {
        synchronized (this.a) {
        }
    }

    public void a(c cVar) {
        synchronized (this.a) {
            if (cVar == null || cVar == null) {
                b bVar = (b) cVar.a.get();
                if (bVar != null) {
                    this.b.removeCallbacksAndMessages(cVar);
                    bVar.a(2);
                }
            }
        }
    }
}
