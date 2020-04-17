package e.c.a.a.g;

import d.b.a.r;
import java.util.concurrent.CancellationException;
import javax.annotation.concurrent.GuardedBy;

public final class h<TResult> extends h<TResult> {
    public final Object a = new Object();
    public final g<TResult> b = new g<>();
    @GuardedBy("mLock")

    /* renamed from: c  reason: collision with root package name */
    public boolean f1226c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f1227d;
    @GuardedBy("mLock")

    /* renamed from: e  reason: collision with root package name */
    public TResult f1228e;
    @GuardedBy("mLock")

    /* renamed from: f  reason: collision with root package name */
    public Exception f1229f;

    public final TResult a() {
        TResult tresult;
        synchronized (this.a) {
            r.a(this.f1226c, (Object) "Task is not yet complete");
            if (this.f1227d) {
                throw new CancellationException("Task is already canceled.");
            } else if (this.f1229f == null) {
                tresult = this.f1228e;
            } else {
                throw new a(this.f1229f);
            }
        }
        return tresult;
    }

    public final boolean b(TResult tresult) {
        synchronized (this.a) {
            if (this.f1226c) {
                return false;
            }
            this.f1226c = true;
            this.f1228e = tresult;
            this.b.a(this);
            return true;
        }
    }

    public final void c() {
        synchronized (this.a) {
            if (this.f1226c) {
                this.b.a(this);
            }
        }
    }

    public final void a(TResult tresult) {
        synchronized (this.a) {
            r.a(!this.f1226c, (Object) "Task is already complete");
            this.f1226c = true;
            this.f1228e = tresult;
        }
        this.b.a(this);
    }

    public final boolean b(Exception exc) {
        r.b(exc, (Object) "Exception must not be null");
        synchronized (this.a) {
            if (this.f1226c) {
                return false;
            }
            this.f1226c = true;
            this.f1229f = exc;
            this.b.a(this);
            return true;
        }
    }

    public final void a(Exception exc) {
        r.b(exc, (Object) "Exception must not be null");
        synchronized (this.a) {
            r.a(!this.f1226c, (Object) "Task is already complete");
            this.f1226c = true;
            this.f1229f = exc;
        }
        this.b.a(this);
    }

    public final boolean b() {
        synchronized (this.a) {
            if (this.f1226c) {
                return false;
            }
            this.f1226c = true;
            this.f1227d = true;
            this.b.a(this);
            return true;
        }
    }
}
