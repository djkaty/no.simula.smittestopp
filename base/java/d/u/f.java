package d.u;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.MultiInstanceInvalidationService;
import d.u.c;
import d.u.d;
import d.u.e;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public class f {
    public final Context a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public int f891c;

    /* renamed from: d  reason: collision with root package name */
    public final e f892d;

    /* renamed from: e  reason: collision with root package name */
    public final e.c f893e;

    /* renamed from: f  reason: collision with root package name */
    public d f894f;

    /* renamed from: g  reason: collision with root package name */
    public final Executor f895g;

    /* renamed from: h  reason: collision with root package name */
    public final c f896h = new a();

    /* renamed from: i  reason: collision with root package name */
    public final AtomicBoolean f897i = new AtomicBoolean(false);

    /* renamed from: j  reason: collision with root package name */
    public final ServiceConnection f898j = new b();

    /* renamed from: k  reason: collision with root package name */
    public final Runnable f899k = new c();

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f900l = new d();

    public class a extends c.a {

        /* renamed from: d.u.f$a$a  reason: collision with other inner class name */
        public class C0046a implements Runnable {
            public final /* synthetic */ String[] x;

            public C0046a(String[] strArr) {
                this.x = strArr;
            }

            public void run() {
                f.this.f892d.a(this.x);
            }
        }

        public a() {
        }

        public void a(String[] strArr) {
            f.this.f895g.execute(new C0046a(strArr));
        }
    }

    public class b implements ServiceConnection {
        public b() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            f.this.f894f = d.a.a(iBinder);
            f fVar = f.this;
            fVar.f895g.execute(fVar.f899k);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            f fVar = f.this;
            fVar.f895g.execute(fVar.f900l);
            f.this.f894f = null;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        public void run() {
            try {
                d dVar = f.this.f894f;
                if (dVar != null) {
                    f.this.f891c = dVar.a(f.this.f896h, f.this.b);
                    f.this.f892d.a(f.this.f893e);
                }
            } catch (RemoteException e2) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e2);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        public void run() {
            f fVar = f.this;
            fVar.f892d.b(fVar.f893e);
        }
    }

    public class e extends e.c {
        public e(String[] strArr) {
            super(strArr);
        }

        public void a(Set<String> set) {
            if (!f.this.f897i.get()) {
                try {
                    d dVar = f.this.f894f;
                    if (dVar != null) {
                        dVar.a(f.this.f891c, (String[]) set.toArray(new String[0]));
                    }
                } catch (RemoteException e2) {
                    Log.w("ROOM", "Cannot broadcast invalidation", e2);
                }
            }
        }
    }

    public f(Context context, String str, e eVar, Executor executor) {
        this.a = context.getApplicationContext();
        this.b = str;
        this.f892d = eVar;
        this.f895g = executor;
        this.f893e = new e(eVar.b);
        this.a.bindService(new Intent(this.a, MultiInstanceInvalidationService.class), this.f898j, 1);
    }
}
