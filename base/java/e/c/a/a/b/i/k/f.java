package e.c.a.a.b.i.k;

import android.os.Looper;
import android.os.Message;
import d.b.a.r;

public final class f<L> {
    public final c a;
    public volatile L b;

    /* renamed from: c  reason: collision with root package name */
    public final a<L> f1153c;

    public static final class a<L> {
        public final L a;
        public final String b;

        public a(L l2, String str) {
            this.a = l2;
            this.b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b.equals(aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (System.identityHashCode(this.a) * 31);
        }
    }

    public interface b<L> {
        void a();

        void a(L l2);
    }

    public final class c extends e.c.a.a.d.a.c {
        public c(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            r.a(z);
            f fVar = f.this;
            b bVar = (b) message.obj;
            L l2 = fVar.b;
            if (l2 == null) {
                bVar.a();
                return;
            }
            try {
                bVar.a(l2);
            } catch (RuntimeException e2) {
                bVar.a();
                throw e2;
            }
        }
    }

    public f(Looper looper, L l2, String str) {
        this.a = new c(looper);
        r.b(l2, (Object) "Listener must not be null");
        this.b = l2;
        r.a(str);
        this.f1153c = new a<>(l2, str);
    }

    public final void a(b<? super L> bVar) {
        r.b(bVar, (Object) "Notifier must not be null");
        this.a.sendMessage(this.a.obtainMessage(1, bVar));
    }
}
