package e.b.a.a.q;

import e.a.a.a.a;
import e.b.a.a.h;
import e.b.a.a.i;
import e.b.a.a.k;

public final class d extends k {

    /* renamed from: c  reason: collision with root package name */
    public final d f1070c;

    /* renamed from: d  reason: collision with root package name */
    public b f1071d;

    /* renamed from: e  reason: collision with root package name */
    public d f1072e;

    /* renamed from: f  reason: collision with root package name */
    public String f1073f;

    /* renamed from: g  reason: collision with root package name */
    public int f1074g;

    /* renamed from: h  reason: collision with root package name */
    public int f1075h;

    public d(d dVar, b bVar, int i2, int i3, int i4) {
        this.f1070c = dVar;
        this.f1071d = bVar;
        this.a = i2;
        this.f1074g = i3;
        this.f1075h = i4;
        this.b = -1;
    }

    public void a(int i2, int i3, int i4) {
        this.a = i2;
        this.b = -1;
        this.f1074g = i3;
        this.f1075h = i4;
        this.f1073f = null;
        b bVar = this.f1071d;
        if (bVar != null) {
            bVar.b = null;
            bVar.f1068c = null;
            bVar.f1069d = null;
        }
    }

    public d b(int i2, int i3) {
        d dVar = this.f1072e;
        if (dVar == null) {
            b bVar = this.f1071d;
            d dVar2 = new d(this, bVar == null ? null : bVar.a(), 2, i2, i3);
            this.f1072e = dVar2;
            return dVar2;
        }
        dVar.a(2, i2, i3);
        return dVar;
    }

    public d a(int i2, int i3) {
        d dVar = this.f1072e;
        if (dVar == null) {
            b bVar = this.f1071d;
            dVar = new d(this, bVar == null ? null : bVar.a(), 1, i2, i3);
            this.f1072e = dVar;
        } else {
            dVar.a(1, i2, i3);
        }
        return dVar;
    }

    public String a() {
        return this.f1073f;
    }

    public void a(String str) {
        this.f1073f = str;
        b bVar = this.f1071d;
        if (bVar != null && bVar.a(str)) {
            Object obj = bVar.a;
            throw new h(obj instanceof i ? (i) obj : null, a.a("Duplicate field '", str, "'"));
        }
    }
}
