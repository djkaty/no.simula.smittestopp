package k.d.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

public class f extends Handler implements l {
    public boolean A;
    public final k x = new k();
    public final int y;
    public final c z;

    public f(c cVar, Looper looper, int i2) {
        super(looper);
        this.z = cVar;
        this.y = i2;
    }

    public void a(q qVar, Object obj) {
        j a = j.a(qVar, obj);
        synchronized (this) {
            this.x.a(a);
            if (!this.A) {
                this.A = true;
                if (!sendMessage(obtainMessage())) {
                    throw new e("Could not send handler message");
                }
            }
        }
    }

    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                j a = this.x.a();
                if (a == null) {
                    synchronized (this) {
                        a = this.x.a();
                        if (a == null) {
                            this.A = false;
                            this.A = false;
                            return;
                        }
                    }
                }
                this.z.a(a);
            } while (SystemClock.uptimeMillis() - uptimeMillis < ((long) this.y));
            if (sendMessage(obtainMessage())) {
                this.A = true;
                return;
            }
            throw new e("Could not send handler message");
        } catch (Throwable th) {
            this.A = false;
            throw th;
        }
    }
}
