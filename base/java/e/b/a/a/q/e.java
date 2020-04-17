package e.b.a.a.q;

import e.a.a.a.a;
import e.b.a.a.f;
import e.b.a.a.k;

public class e extends k {

    /* renamed from: c  reason: collision with root package name */
    public final e f1076c;

    /* renamed from: d  reason: collision with root package name */
    public b f1077d;

    /* renamed from: e  reason: collision with root package name */
    public e f1078e;

    /* renamed from: f  reason: collision with root package name */
    public String f1079f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1080g;

    public e(int i2, e eVar, b bVar) {
        this.a = i2;
        this.f1076c = eVar;
        this.f1077d = bVar;
        this.b = -1;
    }

    public final String a() {
        return this.f1079f;
    }

    public e f() {
        e eVar = this.f1078e;
        b bVar = null;
        if (eVar == null) {
            b bVar2 = this.f1077d;
            if (bVar2 != null) {
                bVar = bVar2.a();
            }
            e eVar2 = new e(2, this, bVar);
            this.f1078e = eVar2;
            return eVar2;
        }
        eVar.a = 2;
        eVar.b = -1;
        eVar.f1079f = null;
        eVar.f1080g = false;
        b bVar3 = eVar.f1077d;
        if (bVar3 != null) {
            bVar3.b = null;
            bVar3.f1068c = null;
            bVar3.f1069d = null;
        }
        return eVar;
    }

    public int g() {
        int i2 = this.a;
        if (i2 == 2) {
            if (!this.f1080g) {
                return 5;
            }
            this.f1080g = false;
            this.b++;
            return 2;
        } else if (i2 == 1) {
            int i3 = this.b;
            this.b = i3 + 1;
            if (i3 < 0) {
                return 0;
            }
            return 1;
        } else {
            int i4 = this.b + 1;
            this.b = i4;
            if (i4 == 0) {
                return 0;
            }
            return 3;
        }
    }

    public int a(String str) {
        if (this.a != 2 || this.f1080g) {
            return 4;
        }
        this.f1080g = true;
        this.f1079f = str;
        b bVar = this.f1077d;
        if (bVar != null && bVar.a(str)) {
            Object obj = bVar.a;
            throw new e.b.a.a.e(a.a("Duplicate field '", str, "'"), obj instanceof f ? (f) obj : null);
        } else if (this.b < 0) {
            return 0;
        } else {
            return 1;
        }
    }
}
