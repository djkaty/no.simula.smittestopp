package e.c.a.a.g;

import e.c.a.a.b.i.k.b0;
import java.util.concurrent.Executor;

public final class d<TResult, TContinuationResult> implements f<TResult> {
    public final Executor a;
    public final b0<TResult, TContinuationResult> b;

    /* renamed from: c  reason: collision with root package name */
    public final h<TContinuationResult> f1224c;

    public d(Executor executor, b0<TResult, TContinuationResult> b0Var, h<TContinuationResult> hVar) {
        this.a = executor;
        this.b = b0Var;
        this.f1224c = hVar;
    }

    public final void a(h<TResult> hVar) {
        this.a.execute(new e(this, hVar));
    }
}
