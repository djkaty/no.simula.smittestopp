package e.c.a.a.b.j;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import d.b.a.r;
import e.c.a.a.b.j.i;
import e.c.a.a.b.k.a;
import e.c.a.a.d.b.d;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;

public final class c0 extends i implements Handler.Callback {
    @GuardedBy("mConnectionStatus")

    /* renamed from: c  reason: collision with root package name */
    public final HashMap<i.a, d0> f1182c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final Context f1183d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f1184e;

    /* renamed from: f  reason: collision with root package name */
    public final a f1185f;

    /* renamed from: g  reason: collision with root package name */
    public final long f1186g;

    /* renamed from: h  reason: collision with root package name */
    public final long f1187h;

    public c0(Context context) {
        this.f1183d = context.getApplicationContext();
        this.f1184e = new d(context.getMainLooper(), this);
        this.f1185f = a.a();
        this.f1186g = 5000;
        this.f1187h = 300000;
    }

    public final boolean a(i.a aVar, ServiceConnection serviceConnection, String str) {
        boolean z;
        r.b(serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.f1182c) {
            d0 d0Var = this.f1182c.get(aVar);
            if (d0Var == null) {
                d0Var = new d0(this, aVar);
                a aVar2 = d0Var.f1202g.f1185f;
                d0Var.f1200e.a();
                d0Var.a.add(serviceConnection);
                d0Var.a(str);
                this.f1182c.put(aVar, d0Var);
            } else {
                this.f1184e.removeMessages(0, aVar);
                if (!d0Var.a.contains(serviceConnection)) {
                    a aVar3 = d0Var.f1202g.f1185f;
                    d0Var.f1200e.a();
                    d0Var.a.add(serviceConnection);
                    int i2 = d0Var.b;
                    if (i2 == 1) {
                        serviceConnection.onServiceConnected(d0Var.f1201f, d0Var.f1199d);
                    } else if (i2 == 2) {
                        d0Var.a(str);
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            z = d0Var.f1198c;
        }
        return z;
    }

    public final void b(i.a aVar, ServiceConnection serviceConnection, String str) {
        r.b(serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.f1182c) {
            d0 d0Var = this.f1182c.get(aVar);
            if (d0Var == null) {
                String valueOf = String.valueOf(aVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (d0Var.a.contains(serviceConnection)) {
                a aVar2 = d0Var.f1202g.f1185f;
                d0Var.a.remove(serviceConnection);
                if (d0Var.a.isEmpty()) {
                    this.f1184e.sendMessageDelayed(this.f1184e.obtainMessage(0, aVar), this.f1186g);
                }
            } else {
                String valueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            synchronized (this.f1182c) {
                i.a aVar = (i.a) message.obj;
                d0 d0Var = this.f1182c.get(aVar);
                if (d0Var != null && d0Var.a.isEmpty()) {
                    if (d0Var.f1198c) {
                        d0Var.f1202g.f1184e.removeMessages(1, d0Var.f1200e);
                        c0 c0Var = d0Var.f1202g;
                        a aVar2 = c0Var.f1185f;
                        Context context = c0Var.f1183d;
                        if (aVar2 != null) {
                            context.unbindService(d0Var);
                            d0Var.f1198c = false;
                            d0Var.b = 2;
                        } else {
                            throw null;
                        }
                    }
                    this.f1182c.remove(aVar);
                }
            }
            return true;
        } else if (i2 != 1) {
            return false;
        } else {
            synchronized (this.f1182c) {
                i.a aVar3 = (i.a) message.obj;
                d0 d0Var2 = this.f1182c.get(aVar3);
                if (d0Var2 != null && d0Var2.b == 3) {
                    String valueOf = String.valueOf(aVar3);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = d0Var2.f1201f;
                    if (componentName == null) {
                        componentName = aVar3.f1205c;
                    }
                    if (componentName == null) {
                        componentName = new ComponentName(aVar3.b, TelemetryEventStrings.Value.UNKNOWN);
                    }
                    d0Var2.onServiceDisconnected(componentName);
                }
            }
            return true;
        }
    }
}
