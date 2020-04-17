package k.a.b.a.d.g0.m0;

import java.nio.ByteBuffer;
import k.a.b.a.d.a0;
import k.a.b.a.d.b0;
import k.a.b.a.d.g0.d0;
import k.a.b.a.d.g0.f0;
import k.a.b.a.d.g0.l0;
import k.a.b.a.d.z;

public class g implements z, d0 {
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public final a0 f1905c;

    /* renamed from: d  reason: collision with root package name */
    public final c f1906d;

    /* renamed from: e  reason: collision with root package name */
    public final b0 f1907e;

    /* renamed from: f  reason: collision with root package name */
    public k.a.b.a.d.d0 f1908f;

    public class b implements h {
        public final k.a.b.a.d.g0.b0 a;
        public final f0 b;

        /* renamed from: c  reason: collision with root package name */
        public h f1909c;

        public /* synthetic */ b(k.a.b.a.d.g0.b0 b0Var, f0 f0Var, a aVar) {
            this.a = b0Var;
            this.b = f0Var;
        }

        public final void a() {
            try {
                if (g.this.f1908f == null && this.f1909c == null) {
                    d dVar = new d(g.this.f1906d.a(g.this.f1907e), this.a, this.b);
                    if (((e) g.this.f1905c) != null) {
                        this.f1909c = dVar;
                        return;
                    }
                    throw null;
                }
            } catch (k.a.b.a.d.d0 e2) {
                g.this.f1908f = e2;
            }
        }

        public int capacity() {
            a();
            if (g.this.f1908f == null) {
                return this.f1909c.capacity();
            }
            return -1;
        }

        public void close_head() {
            a();
            if (g.this.f1908f == null) {
                this.f1909c.close_head();
            }
        }

        public void close_tail() {
            a();
            if (g.this.f1908f == null) {
                this.f1909c.close_tail();
            }
        }

        public ByteBuffer head() {
            a();
            if (g.this.f1908f == null) {
                return this.f1909c.head();
            }
            return null;
        }

        public int pending() {
            a();
            if (g.this.f1908f == null) {
                return this.f1909c.pending();
            }
            throw new k.a.b.a.d.d0((Throwable) g.this.f1908f);
        }

        public void pop(int i2) {
            a();
            if (g.this.f1908f == null) {
                this.f1909c.pop(i2);
            }
        }

        public int position() {
            a();
            if (g.this.f1908f == null) {
                return this.f1909c.position();
            }
            return -1;
        }

        public void process() {
            a();
            if (g.this.f1908f == null) {
                this.f1909c.process();
                return;
            }
            throw new k.a.b.a.d.d0((Throwable) g.this.f1908f);
        }

        public ByteBuffer tail() {
            a();
            if (g.this.f1908f == null) {
                return this.f1909c.tail();
            }
            return null;
        }
    }

    public g(a0 a0Var, b0 b0Var) {
        this.f1905c = a0Var;
        this.f1906d = (c) a0Var;
        this.f1907e = b0Var;
        if (((e) a0Var).a == null) {
            throw new IllegalStateException("Client/server mode must be configured, SslDomain must have init called.");
        } else if (b0Var == null && ((e) a0Var).a() == a0.b.VERIFY_PEER_NAME) {
            throw new IllegalArgumentException("Peer hostname verification is enabled, but no peer details were provided");
        }
    }

    public l0 wrap(k.a.b.a.d.g0.b0 b0Var, f0 f0Var) {
        if (this.b == null) {
            b bVar = new b(b0Var, f0Var, (a) null);
            this.b = bVar;
            return bVar;
        }
        throw new IllegalStateException("Transport already wrapped");
    }
}
