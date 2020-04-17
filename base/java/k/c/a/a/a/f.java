package k.c.a.a.a;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import java.util.Hashtable;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import k.c.a.a.a.s.g;
import k.c.a.a.a.s.i;
import k.c.a.a.a.s.j;
import k.c.a.a.a.s.p;
import k.c.a.a.a.s.s.e;
import k.c.a.a.a.s.s.k;
import k.c.a.a.a.s.s.l;
import k.c.a.a.a.s.s.o;
import k.c.a.a.a.s.s.r;
import k.c.a.a.a.s.s.t;
import k.c.a.a.a.s.s.u;

public class f implements b {
    public static final String I = f.class.getName();
    public static int J = 1000;
    public static final Object K = new Object();
    public k.c.a.a.a.s.a A;
    public k.c.a.a.a.u.a B;
    public g C;
    public i D;
    public Object E;
    public Timer F;
    public boolean G = false;
    public ScheduledExecutorService H;
    public k.c.a.a.a.t.b x;
    public String y;
    public String z;

    public class b implements h {
        public final boolean a;

        public b(boolean z) {
            this.a = z;
        }

        public void a(boolean z, String str) {
        }

        public void connectionLost(Throwable th) {
            if (this.a) {
                f fVar = f.this;
                if (fVar.A != null) {
                    fVar.G = true;
                    f.a(fVar);
                    return;
                }
                throw null;
            }
        }

        public void deliveryComplete(c cVar) {
        }

        public void messageArrived(String str, l lVar) {
        }
    }

    public class c extends TimerTask {
        public /* synthetic */ c(c cVar) {
        }

        public void run() {
            f.this.x.b(f.I, "ReconnectTask.run", "506");
            f fVar = f.this;
            fVar.x.b(f.I, "attemptReconnect", "500", new Object[]{fVar.y});
            try {
                fVar.a(fVar.D, fVar.E, new a("attemptReconnect"));
            } catch (p e2) {
                fVar.x.a(f.I, "attemptReconnect", "804", (Object[]) null, e2);
            } catch (k e3) {
                fVar.x.a(f.I, "attemptReconnect", "804", (Object[]) null, e3);
            }
        }
    }

    public f(String str, String str2, k.c.a.a.a.u.a aVar) {
        r rVar = new r();
        k.c.a.a.a.t.b a2 = k.c.a.a.a.t.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", I);
        this.x = a2;
        a2.a(str2);
        if (str2 != null) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < str2.length() - 1) {
                char charAt = str2.charAt(i2);
                if (charAt >= 55296 && charAt <= 56319) {
                    i2++;
                }
                i3++;
                i2++;
            }
            if (i3 <= 65535) {
                j.a(str);
                this.z = str;
                this.y = str2;
                this.B = aVar;
                if (aVar == null) {
                    this.B = new k.c.a.a.a.u.a();
                }
                this.H = null;
                this.x.b(I, "MqttAsyncClient", TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_INTERACTIVE, new Object[]{str2, str, aVar});
                this.B.b();
                this.A = new k.c.a.a.a.s.a(this, this.B, rVar, this.H);
                this.B.close();
                new Hashtable();
                return;
            }
            throw new IllegalArgumentException("ClientId longer than 65535 characters");
        }
        throw new IllegalArgumentException("Null clientId");
    }

    public e a(i iVar, Object obj, a aVar) {
        Object obj2 = obj;
        if (this.A.b()) {
            throw k.b.c.e.a.a(32100);
        } else if (this.A.c()) {
            throw new k(32110);
        } else if (this.A.e()) {
            throw new k(32102);
        } else if (!this.A.a()) {
            i iVar2 = iVar == null ? new i() : iVar;
            this.D = iVar2;
            this.E = obj2;
            boolean z2 = iVar2.o;
            k.c.a.a.a.t.b bVar = this.x;
            String str = I;
            Object[] objArr = new Object[8];
            objArr[0] = Boolean.valueOf(iVar2.f2191k);
            int i2 = 1;
            objArr[1] = Integer.valueOf(iVar2.f2192l);
            objArr[2] = Integer.valueOf(iVar2.a);
            objArr[3] = iVar2.f2185e;
            String str2 = "[null]";
            objArr[4] = iVar2.f2186f == null ? str2 : "[notnull]";
            if (iVar2.f2184d != null) {
                str2 = "[notnull]";
            }
            objArr[5] = str2;
            objArr[6] = obj2;
            objArr[7] = aVar;
            bVar.b(str, "connect", TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_SILENT, objArr);
            k.c.a.a.a.s.a aVar2 = this.A;
            String str3 = this.z;
            this.x.b(I, "createNetworkModules", "116", new Object[]{str3});
            String[] strArr = iVar2.m;
            if (strArr == null) {
                strArr = new String[]{str3};
            } else if (strArr.length == 0) {
                strArr = new String[]{str3};
            }
            i[] iVarArr = new i[strArr.length];
            int i3 = 0;
            while (i3 < strArr.length) {
                String str4 = strArr[i3];
                k.c.a.a.a.t.b bVar2 = this.x;
                String str5 = I;
                Object[] objArr2 = new Object[i2];
                objArr2[0] = str4;
                bVar2.b(str5, "createNetworkModule", "115", objArr2);
                iVarArr[i3] = j.a(str4, iVar2, this.y);
                i3++;
                i2 = 1;
            }
            this.x.b(I, "createNetworkModules", "108");
            if (aVar2 != null) {
                aVar2.f2201e = (i[]) iVarArr.clone();
                this.A.f2204h.z = new b(z2);
                q qVar = new q(this.y);
                g gVar = new g(this, this.B, this.A, iVar2, qVar, obj, aVar, this.G);
                p pVar = qVar.a;
                pVar.f2249l = gVar;
                pVar.m = this;
                g gVar2 = this.C;
                if (gVar2 instanceof h) {
                    gVar.f2227i = (h) gVar2;
                }
                this.A.f2200d = 0;
                gVar.a();
                return qVar;
            }
            throw null;
        } else {
            throw new k(32111);
        }
    }

    public boolean b() {
        return this.A.b();
    }

    public final void c() {
        this.x.b(I, "stopReconnectCycle", "504", new Object[]{this.y});
        synchronized (K) {
            if (this.D.o) {
                if (this.F != null) {
                    this.F.cancel();
                    this.F = null;
                }
                J = 1000;
            }
        }
    }

    public void close() {
        this.x.b(I, "close", "113");
        this.A.a(false);
        this.x.b(I, "close", "114");
    }

    public class a implements a {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        public void a(e eVar) {
            f.this.x.b(f.I, this.a, "501", new Object[]{((f) ((q) eVar).a.f2248k).y});
            f fVar = f.this;
            if (fVar.A != null) {
                fVar.c();
                return;
            }
            throw null;
        }

        public void a(e eVar, Throwable th) {
            f.this.x.b(f.I, this.a, "502", new Object[]{((f) ((q) eVar).a.f2248k).y});
            int i2 = f.J;
            if (i2 < f.this.D.p) {
                f.J = i2 * 2;
            }
            a(f.J);
        }

        public final void a(int i2) {
            f fVar = f.this;
            fVar.x.b(f.I, String.valueOf(this.a) + ":rescheduleReconnectCycle", "505", new Object[]{fVar.y, String.valueOf(f.J)});
            synchronized (f.K) {
                if (f.this.D.o) {
                    if (f.this.F != null) {
                        f.this.F.schedule(new c((c) null), (long) i2);
                    } else {
                        f.J = i2;
                        f.a(f.this);
                    }
                }
            }
        }
    }

    public e a() {
        this.x.b(I, "disconnect", "104", new Object[]{30000L, null, null});
        q qVar = new q(this.y);
        p pVar = qVar.a;
        pVar.f2249l = null;
        pVar.m = null;
        try {
            this.A.a(new e(), 30000, qVar);
            this.x.b(I, "disconnect", "108");
            return qVar;
        } catch (k e2) {
            this.x.a(I, "disconnect", "105", (Object[]) null, e2);
            throw e2;
        }
    }

    public e a(String str, int i2) {
        String[] strArr = {str};
        int[] iArr = {i2};
        for (int i3 = 0; i3 < 1; i3++) {
            String str2 = strArr[i3];
            k.b.c.e.a.a(str2, true);
            this.A.f2204h.A.remove(str2);
        }
        if (this.x.a(5)) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i4 = 0; i4 < 1; i4++) {
                if (i4 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append("topic=");
                stringBuffer.append(strArr[i4]);
                stringBuffer.append(" qos=");
                stringBuffer.append(iArr[i4]);
            }
            this.x.b(I, "subscribe", TelemetryEventStrings.Api.LOCAL_GET_ACCOUNTS, new Object[]{stringBuffer.toString(), null, null});
        }
        q qVar = new q(this.y);
        p pVar = qVar.a;
        pVar.f2249l = null;
        pVar.m = null;
        pVar.a(strArr);
        this.A.b(new r(strArr, iArr), qVar);
        this.x.b(I, "subscribe", "109");
        return qVar;
    }

    public e a(String str) {
        String[] strArr = {str};
        if (this.x.a(5)) {
            String str2 = "";
            for (int i2 = 0; i2 < 1; i2++) {
                if (i2 > 0) {
                    str2 = String.valueOf(str2) + ", ";
                }
                str2 = String.valueOf(str2) + strArr[i2];
            }
            this.x.b(I, "unsubscribe", TelemetryEventStrings.Api.LOCAL_REMOVE_ACCOUNT, new Object[]{str2, null, null});
        }
        for (int i3 = 0; i3 < 1; i3++) {
            k.b.c.e.a.a(strArr[i3], true);
        }
        for (int i4 = 0; i4 < 1; i4++) {
            this.A.f2204h.A.remove(strArr[i4]);
        }
        q qVar = new q(this.y);
        p pVar = qVar.a;
        pVar.f2249l = null;
        pVar.m = null;
        pVar.a(strArr);
        this.A.b(new t(strArr), qVar);
        this.x.b(I, "unsubscribe", "110");
        return qVar;
    }

    public void a(int i2, int i3) {
        k.c.a.a.a.s.c cVar = this.A.f2204h;
        if (cVar == null) {
            throw null;
        } else if (i3 == 1) {
            cVar.B.a((u) new k(i2), new q(((f) cVar.B.f2199c).y));
        } else if (i3 == 2) {
            k.c.a.a.a.s.b bVar = cVar.B.f2205i;
            bVar.a.b("k.c.a.a.a.s.b", "deliveryComplete", "641", new Object[]{Integer.valueOf(i2)});
            k.c.a.a.a.u.a aVar = bVar.f2217k;
            aVar.a("r-" + i2);
            bVar.B.remove(Integer.valueOf(i2));
            l lVar = new l(i2);
            k.c.a.a.a.s.a aVar2 = cVar.B;
            aVar2.a((u) lVar, new q(((f) aVar2.f2199c).y));
        }
    }

    public c a(String str, l lVar) {
        this.x.b(I, "publish", "111", new Object[]{str, null, null});
        k.b.c.e.a.a(str, false);
        j jVar = new j(this.y);
        p pVar = jVar.a;
        pVar.f2249l = null;
        pVar.m = null;
        pVar.a(new String[]{str});
        this.A.b(new o(str, lVar), jVar);
        this.x.b(I, "publish", "112");
        return jVar;
    }

    public static /* synthetic */ void a(f fVar) {
        fVar.x.b(I, "startReconnectCycle", "503", new Object[]{fVar.y, Long.valueOf((long) J)});
        Timer timer = new Timer("MQTT Reconnect: " + fVar.y);
        fVar.F = timer;
        timer.schedule(new c((c) null), (long) J);
    }
}
