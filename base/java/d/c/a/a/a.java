package d.c.a.a;

import java.util.concurrent.Executor;

public class a extends c {

    /* renamed from: c  reason: collision with root package name */
    public static volatile a f414c;

    /* renamed from: d  reason: collision with root package name */
    public static final Executor f415d = new C0017a();
    public c a;
    public c b;

    /* renamed from: d.c.a.a.a$a  reason: collision with other inner class name */
    public static class C0017a implements Executor {
        public void execute(Runnable runnable) {
            a.b().a.a(runnable);
        }
    }

    public a() {
        b bVar = new b();
        this.b = bVar;
        this.a = bVar;
    }

    public static a b() {
        if (f414c != null) {
            return f414c;
        }
        synchronized (a.class) {
            if (f414c == null) {
                f414c = new a();
            }
        }
        return f414c;
    }

    public void a(Runnable runnable) {
        this.a.a(runnable);
    }

    public boolean a() {
        return this.a.a();
    }
}
