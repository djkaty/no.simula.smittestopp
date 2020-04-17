package k.a.b.a.b.k;

import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.h;

public abstract class w {
    public String a;
    public x b = x.NONE;

    /* renamed from: c  reason: collision with root package name */
    public y f1589c = y.SESSION_END;

    /* renamed from: d  reason: collision with root package name */
    public h f1590d = h.a(0);

    /* renamed from: e  reason: collision with root package name */
    public boolean f1591e;

    /* renamed from: f  reason: collision with root package name */
    public Map f1592f;

    /* renamed from: g  reason: collision with root package name */
    public f[] f1593g;

    public w() {
    }

    public final String b() {
        return this.a;
    }

    public w(w wVar) {
        this.a = wVar.a;
        this.b = wVar.b;
        this.f1589c = wVar.f1589c;
        this.f1590d = wVar.f1590d;
        this.f1591e = wVar.f1591e;
        if (wVar.f1592f != null) {
            this.f1592f = new HashMap(wVar.f1592f);
        }
        f[] fVarArr = wVar.f1593g;
        if (fVarArr != null) {
            this.f1593g = (f[]) fVarArr.clone();
        }
    }
}
