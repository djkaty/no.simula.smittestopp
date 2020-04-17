package e.c.a.a.d.c;

import android.os.IInterface;

public final class w {
    public final /* synthetic */ v a;

    public w(v vVar) {
        this.a = vVar;
    }

    public final void a() {
        if (!this.a.c()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final /* synthetic */ IInterface b() {
        return (g) this.a.k();
    }
}
