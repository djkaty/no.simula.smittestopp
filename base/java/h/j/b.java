package h.j;

import h.e;
import h.j.d;
import h.k.a.p;
import h.k.b.g;
import h.k.b.h;
import java.io.Serializable;

public final class b implements d, Serializable {
    public final d x;
    public final d.a y;

    public static final class a extends h implements p<String, d.a, String> {
        public static final a x = new a();

        public a() {
            super(2);
        }

        public Object a(Object obj, Object obj2) {
            String str = (String) obj;
            d.a aVar = (d.a) obj2;
            if (str == null) {
                g.a("acc");
                throw null;
            } else if (aVar != null) {
                if (str.length() == 0) {
                    return aVar.toString();
                }
                return str + ", " + aVar;
            } else {
                g.a("element");
                throw null;
            }
        }
    }

    public b(d dVar, d.a aVar) {
        if (dVar == null) {
            g.a("left");
            throw null;
        } else if (aVar != null) {
            this.x = dVar;
            this.y = aVar;
        } else {
            g.a("element");
            throw null;
        }
    }

    public final int a() {
        int i2 = 2;
        b bVar = this;
        while (true) {
            d dVar = bVar.x;
            if (!(dVar instanceof b)) {
                dVar = null;
            }
            bVar = (b) dVar;
            if (bVar == null) {
                return i2;
            }
            i2++;
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (bVar.a() != a()) {
                return false;
            }
            if (bVar != null) {
                b bVar2 = this;
                while (true) {
                    d.a aVar = bVar2.y;
                    if (!g.a((Object) bVar.get(aVar.getKey()), (Object) aVar)) {
                        z = false;
                        break;
                    }
                    d dVar = bVar2.x;
                    if (dVar instanceof b) {
                        bVar2 = (b) dVar;
                    } else if (dVar != null) {
                        d.a aVar2 = (d.a) dVar;
                        z = g.a((Object) bVar.get(aVar2.getKey()), (Object) aVar2);
                    } else {
                        throw new e("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    }
                }
                if (z) {
                    return true;
                }
                return false;
            }
            throw null;
        }
        return true;
    }

    public <R> R fold(R r, p<? super R, ? super d.a, ? extends R> pVar) {
        if (pVar != null) {
            return pVar.a(this.x.fold(r, pVar), this.y);
        }
        g.a("operation");
        throw null;
    }

    public <E extends d.a> E get(d.b<E> bVar) {
        if (bVar != null) {
            b bVar2 = this;
            while (true) {
                E e2 = bVar2.y.get(bVar);
                if (e2 != null) {
                    return e2;
                }
                d dVar = bVar2.x;
                if (!(dVar instanceof b)) {
                    return dVar.get(bVar);
                }
                bVar2 = (b) dVar;
            }
        } else {
            g.a("key");
            throw null;
        }
    }

    public int hashCode() {
        return this.y.hashCode() + this.x.hashCode();
    }

    public d minusKey(d.b<?> bVar) {
        if (bVar == null) {
            g.a("key");
            throw null;
        } else if (this.y.get(bVar) != null) {
            return this.x;
        } else {
            d minusKey = this.x.minusKey(bVar);
            if (minusKey == this.x) {
                return this;
            }
            if (minusKey == f.x) {
                return this.y;
            }
            return new b(minusKey, this.y);
        }
    }

    public String toString() {
        return e.a.a.a.a.a(e.a.a.a.a.a("["), (String) fold("", a.x), "]");
    }
}
