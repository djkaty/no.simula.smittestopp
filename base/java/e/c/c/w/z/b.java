package e.c.c.w.z;

import e.c.c.g;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import e.c.c.p;
import e.c.c.y.c;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class b extends c {
    public static final Writer L = new a();
    public static final p M = new p("closed");
    public final List<j> I = new ArrayList();
    public String J;
    public j K = l.a;

    public static class a extends Writer {
        public void close() {
            throw new AssertionError();
        }

        public void flush() {
            throw new AssertionError();
        }

        public void write(char[] cArr, int i2, int i3) {
            throw new AssertionError();
        }
    }

    public b() {
        super(L);
    }

    public final void a(j jVar) {
        if (this.J != null) {
            if (jVar != null) {
                if (!(jVar instanceof l) || this.F) {
                    ((m) h()).a(this.J, jVar);
                }
                this.J = null;
                return;
            }
            throw null;
        } else if (this.I.isEmpty()) {
            this.K = jVar;
        } else {
            j h2 = h();
            if (h2 instanceof g) {
                g gVar = (g) h2;
                if (gVar != null) {
                    if (jVar == null) {
                        jVar = l.a;
                    }
                    gVar.x.add(jVar);
                    return;
                }
                throw null;
            }
            throw new IllegalStateException();
        }
    }

    public c b() {
        g gVar = new g();
        a((j) gVar);
        this.I.add(gVar);
        return this;
    }

    public c c() {
        m mVar = new m();
        a((j) mVar);
        this.I.add(mVar);
        return this;
    }

    public void close() {
        if (this.I.isEmpty()) {
            this.I.add(M);
            return;
        }
        throw new IOException("Incomplete document");
    }

    public c d() {
        if (this.I.isEmpty() || this.J != null) {
            throw new IllegalStateException();
        } else if (h() instanceof g) {
            List<j> list = this.I;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c e() {
        if (this.I.isEmpty() || this.J != null) {
            throw new IllegalStateException();
        } else if (h() instanceof m) {
            List<j> list = this.I;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public void flush() {
    }

    public c g() {
        a((j) l.a);
        return this;
    }

    public final j h() {
        List<j> list = this.I;
        return list.get(list.size() - 1);
    }

    public j j() {
        if (this.I.isEmpty()) {
            return this.K;
        }
        StringBuilder a2 = e.a.a.a.a.a("Expected one JSON element but was ");
        a2.append(this.I);
        throw new IllegalStateException(a2.toString());
    }

    public c c(String str) {
        if (str == null) {
            a((j) l.a);
            return this;
        }
        a((j) new p(str));
        return this;
    }

    public c a(String str) {
        if (this.I.isEmpty() || this.J != null) {
            throw new IllegalStateException();
        } else if (h() instanceof m) {
            this.J = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c a(Boolean bool) {
        if (bool == null) {
            a((j) l.a);
            return this;
        }
        a((j) new p(bool));
        return this;
    }

    public c a(Number number) {
        if (number == null) {
            a((j) l.a);
            return this;
        }
        if (!this.C) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a((j) new p(number));
        return this;
    }

    public c a(boolean z) {
        a((j) new p(Boolean.valueOf(z)));
        return this;
    }

    public c a(long j2) {
        a((j) new p((Number) Long.valueOf(j2)));
        return this;
    }
}
