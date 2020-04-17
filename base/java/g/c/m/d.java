package g.c.m;

import g.c.c;
import g.c.f;
import g.c.i;
import g.c.j;

public class d extends f {
    public final String a;
    public final Throwable b;

    public d(String str, Throwable th) {
        this.a = str;
        this.b = th;
    }

    public i a(c cVar) {
        c();
        throw null;
    }

    public f b() {
        c();
        throw null;
    }

    public final UnsatisfiedLinkError c() {
        UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(this.a);
        unsatisfiedLinkError.initCause(this.b);
        throw unsatisfiedLinkError;
    }

    public i a(j jVar) {
        c();
        throw null;
    }

    public int a() {
        c();
        throw null;
    }
}
