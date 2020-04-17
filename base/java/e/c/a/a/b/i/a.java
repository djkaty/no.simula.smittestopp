package e.c.a.a.b.i;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import d.b.a.r;
import e.c.a.a.b.i.a.d;
import e.c.a.a.b.i.d;
import e.c.a.a.b.j.b;
import e.c.a.a.b.j.k;
import java.util.Set;

public final class a<O extends d> {
    public final C0059a<?, O> a;
    public final String b;

    /* renamed from: e.c.a.a.b.i.a$a  reason: collision with other inner class name */
    public static abstract class C0059a<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, e.c.a.a.b.j.d dVar, O o, d.a aVar, d.b bVar);
    }

    public interface b {
    }

    public static class c<C extends b> {
    }

    public interface d {

        /* renamed from: e.c.a.a.b.i.a$d$a  reason: collision with other inner class name */
        public interface C0060a extends c, C0061d {
            Account getAccount();
        }

        public interface b extends c {
            GoogleSignInAccount a();
        }

        public interface c extends d {
        }

        /* renamed from: e.c.a.a.b.i.a$d$d  reason: collision with other inner class name */
        public interface C0061d extends d {
        }

        public interface e extends c, C0061d {
        }
    }

    public static abstract class e<T extends b, O> {
    }

    public interface f extends b {
        void a(b.c cVar);

        void a(b.e eVar);

        void a(k kVar, Set<Scope> set);

        boolean a();

        e.c.a.a.b.c[] b();

        boolean c();

        String d();

        void e();

        boolean g();

        boolean h();

        int i();
    }

    public static final class g<C extends f> extends c<C> {
    }

    public <C extends f> a(String str, C0059a<C, O> aVar, g<C> gVar) {
        r.b(aVar, (Object) "Cannot construct an Api with a null ClientBuilder");
        r.b(gVar, (Object) "Cannot construct an Api with a null ClientKey");
        this.b = str;
        this.a = aVar;
    }
}
