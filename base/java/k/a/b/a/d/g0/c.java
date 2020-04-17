package k.a.b.a.d.g0;

import k.a.b.a.d.b;
import k.a.b.a.d.i;

public class c implements b {
    public g a;
    public g b;

    /* renamed from: c  reason: collision with root package name */
    public g f1840c;

    public g a(i iVar, Object obj) {
        if (iVar == null) {
            throw new IllegalArgumentException("Type cannot be null");
        } else if (iVar.isValid()) {
            g gVar = this.b;
            if (gVar != null && gVar.x == iVar && gVar.y == obj) {
                return null;
            }
            g gVar2 = this.f1840c;
            if (gVar2 == null) {
                gVar2 = new g();
            } else {
                this.f1840c = gVar2.z;
                gVar2.z = null;
            }
            gVar2.x = iVar;
            gVar2.y = obj;
            gVar2.A.a.clear();
            if (this.a == null) {
                this.a = gVar2;
                this.b = gVar2;
            } else {
                this.b.z = gVar2;
                this.b = gVar2;
            }
            return gVar2;
        } else {
            throw new IllegalArgumentException("Cannot put events of type " + iVar);
        }
    }
}
