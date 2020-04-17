package i.a.b;

import i.a.b.j;

public class g {

    /* renamed from: h  reason: collision with root package name */
    public static final g f1405h = new g(0);
    public boolean a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1406c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1407d;

    /* renamed from: e  reason: collision with root package name */
    public j.f f1408e;

    /* renamed from: f  reason: collision with root package name */
    public j.f f1409f;

    /* renamed from: g  reason: collision with root package name */
    public j.g f1410g;

    static {
        new g(-1);
        new g(2);
    }

    public g(int i2) {
        j.f fVar;
        boolean z = false;
        this.a = (i2 & 1) == 0;
        this.f1406c = (i2 & 4) == 0;
        this.b = (i2 & 2) == 0;
        this.f1407d = (i2 & 16) > 0 ? true : z;
        if ((i2 & 8) > 0) {
            fVar = j.f1412c;
        } else {
            fVar = j.a;
        }
        if (this.f1406c) {
            this.f1409f = j.b;
        } else {
            this.f1409f = fVar;
        }
        if (this.a) {
            this.f1408e = j.b;
        } else {
            this.f1408e = fVar;
        }
        if (this.b) {
            this.f1410g = j.f1414e;
        } else {
            this.f1410g = j.f1413d;
        }
    }

    public void a(Appendable appendable, String str) {
        if (!this.f1409f.a(str)) {
            appendable.append(str);
            return;
        }
        appendable.append('\"');
        i.a(str, appendable, this);
        appendable.append('\"');
    }
}
