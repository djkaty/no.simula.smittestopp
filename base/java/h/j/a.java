package h.j;

import com.microsoft.identity.client.PublicClientApplication;
import h.j.d;
import h.k.a.p;
import h.k.b.g;

public abstract class a implements d.a {
    public final d.b<?> key;

    public a(d.b<?> bVar) {
        if (bVar != null) {
            this.key = bVar;
        } else {
            g.a("key");
            throw null;
        }
    }

    public <R> R fold(R r, p<? super R, ? super d.a, ? extends R> pVar) {
        if (pVar != null) {
            return pVar.a(r, this);
        }
        g.a("operation");
        throw null;
    }

    public <E extends d.a> E get(d.b<E> bVar) {
        if (bVar == null) {
            g.a("key");
            throw null;
        } else if (g.a((Object) getKey(), (Object) bVar)) {
            return this;
        } else {
            return null;
        }
    }

    public d.b<?> getKey() {
        return this.key;
    }

    public d minusKey(d.b<?> bVar) {
        if (bVar != null) {
            return g.a((Object) getKey(), (Object) bVar) ? f.x : this;
        }
        g.a("key");
        throw null;
    }

    public d plus(d dVar) {
        if (dVar == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (dVar == f.x) {
            return this;
        } else {
            return (d) dVar.fold(this, e.x);
        }
    }
}
