package k.c.a.a.a;

import java.util.Timer;
import java.util.TimerTask;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class r implements o {
    public b a = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.r");
    public k.c.a.a.a.s.a b;

    /* renamed from: c  reason: collision with root package name */
    public Timer f2197c;

    /* renamed from: d  reason: collision with root package name */
    public String f2198d;

    public class a extends TimerTask {
        public /* synthetic */ a(a aVar) {
        }

        public void run() {
            r.this.a.b("k.c.a.a.a.r", "PingTask.run", "660", new Object[]{Long.valueOf(System.nanoTime())});
            k.c.a.a.a.s.a aVar = r.this.b;
            if (aVar != null) {
                try {
                    aVar.f2205i.a((a) null);
                } catch (k e2) {
                    aVar.a((Exception) e2);
                } catch (Exception e3) {
                    aVar.a(e3);
                }
            } else {
                throw null;
            }
        }
    }
}
