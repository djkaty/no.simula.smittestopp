package e.c.a.a.b.i;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import d.b.a.r;
import e.c.a.a.b.i.a;
import e.c.a.a.b.i.a.d;
import e.c.a.a.b.i.k.h0;
import e.c.a.a.b.j.d;
import java.util.Collections;
import java.util.Set;

public class c<O extends a.d> {
    public final Context a;
    public final a<O> b;

    /* renamed from: c  reason: collision with root package name */
    public final O f1125c;

    /* renamed from: d  reason: collision with root package name */
    public final h0<O> f1126d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1127e;

    /* renamed from: f  reason: collision with root package name */
    public final e.c.a.a.b.i.k.c f1128f;

    public static class a {
        public final e.c.a.a.b.i.k.a a;
        public final Looper b;

        /* renamed from: e.c.a.a.b.i.c$a$a  reason: collision with other inner class name */
        public static class C0062a {
            public e.c.a.a.b.i.k.a a;
            public Looper b;

            public a a() {
                if (this.a == null) {
                    this.a = new e.c.a.a.b.i.k.a();
                }
                if (this.b == null) {
                    this.b = Looper.getMainLooper();
                }
                return new a(this.a, (Account) null, this.b);
            }
        }

        static {
            new C0062a().a();
        }

        public /* synthetic */ a(e.c.a.a.b.i.k.a aVar, Account account, Looper looper) {
            this.a = aVar;
            this.b = looper;
        }
    }

    @Deprecated
    public c(Context context, a<O> aVar, O o, e.c.a.a.b.i.k.a aVar2) {
        r.b(aVar2, (Object) "StatusExceptionMapper must not be null.");
        a aVar3 = new a(aVar2, (Account) null, Looper.getMainLooper());
        r.b(context, (Object) "Null context is not permitted.");
        r.b(aVar, (Object) "Api must not be null.");
        r.b(aVar3, (Object) "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.a = context.getApplicationContext();
        this.b = aVar;
        this.f1125c = o;
        this.f1126d = new h0<>(aVar, o);
        e.c.a.a.b.i.k.c a2 = e.c.a.a.b.i.k.c.a(this.a);
        this.f1128f = a2;
        this.f1127e = a2.f1133g.getAndIncrement();
        Handler handler = this.f1128f.m;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    public d.a a() {
        Set<Scope> set;
        GoogleSignInAccount a2;
        GoogleSignInAccount a3;
        d.a aVar = new d.a();
        O o = this.f1125c;
        Account account = null;
        if (!(o instanceof a.d.b) || (a3 = ((a.d.b) o).a()) == null) {
            O o2 = this.f1125c;
            if (o2 instanceof a.d.C0060a) {
                account = ((a.d.C0060a) o2).getAccount();
            }
        } else if (a3.A != null) {
            account = new Account(a3.A, "com.google");
        }
        aVar.a = account;
        O o3 = this.f1125c;
        if (!(o3 instanceof a.d.b) || (a2 = ((a.d.b) o3).a()) == null) {
            set = Collections.emptySet();
        } else {
            set = a2.b();
        }
        if (aVar.b == null) {
            aVar.b = new d.f.c<>();
        }
        aVar.b.addAll(set);
        aVar.f1196e = this.a.getClass().getName();
        aVar.f1195d = this.a.getPackageName();
        return aVar;
    }
}
