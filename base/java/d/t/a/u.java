package d.t.a;

import android.view.View;
import d.t.a.a;
import d.t.a.s;

public class u implements a.C0041a {
    public final /* synthetic */ s a;

    public u(s sVar) {
        this.a = sVar;
    }

    public s.x a(int i2) {
        s sVar = this.a;
        int b = sVar.B.b();
        int i3 = 0;
        s.x xVar = null;
        while (true) {
            if (i3 >= b) {
                break;
            }
            s.x b2 = s.b(sVar.B.d(i3));
            if (b2 != null && !b2.n() && b2.f848c == i2) {
                if (!sVar.B.b(b2.a)) {
                    xVar = b2;
                    break;
                }
                xVar = b2;
            }
            i3++;
        }
        if (xVar != null && !this.a.B.b(xVar.a)) {
            return xVar;
        }
        return null;
    }

    public void b(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        s sVar = this.a;
        int b = sVar.B.b();
        int i11 = -1;
        if (i2 < i3) {
            i6 = i2;
            i5 = i3;
            i4 = -1;
        } else {
            i5 = i2;
            i6 = i3;
            i4 = 1;
        }
        for (int i12 = 0; i12 < b; i12++) {
            s.x b2 = s.b(sVar.B.d(i12));
            if (b2 != null && (i10 = b2.f848c) >= i6 && i10 <= i5) {
                if (i10 == i2) {
                    b2.a(i3 - i2, false);
                } else {
                    b2.a(i4, false);
                }
                sVar.C0.f842f = true;
            }
        }
        s.q qVar = sVar.y;
        if (i2 < i3) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i8 = i3;
            i11 = 1;
        }
        int size = qVar.f833c.size();
        for (int i13 = 0; i13 < size; i13++) {
            s.x xVar = qVar.f833c.get(i13);
            if (xVar != null && (i9 = xVar.f848c) >= i8 && i9 <= i7) {
                if (i9 == i2) {
                    xVar.a(i3 - i2, false);
                } else {
                    xVar.a(i11, false);
                }
            }
        }
        sVar.requestLayout();
        this.a.F0 = true;
    }

    public void a(int i2, int i3, Object obj) {
        int i4;
        int i5;
        s sVar = this.a;
        int b = sVar.B.b();
        int i6 = i3 + i2;
        for (int i7 = 0; i7 < b; i7++) {
            View d2 = sVar.B.d(i7);
            s.x b2 = s.b(d2);
            if (b2 != null && !b2.u() && (i5 = b2.f848c) >= i2 && i5 < i6) {
                b2.a(2);
                b2.a(obj);
                ((s.l) d2.getLayoutParams()).f829c = true;
            }
        }
        s.q qVar = sVar.y;
        int size = qVar.f833c.size();
        while (true) {
            size--;
            if (size >= 0) {
                s.x xVar = qVar.f833c.get(size);
                if (xVar != null && (i4 = xVar.f848c) >= i2 && i4 < i6) {
                    xVar.a(2);
                    qVar.b(size);
                }
            } else {
                this.a.G0 = true;
                return;
            }
        }
    }

    public void a(a.b bVar) {
        int i2 = bVar.a;
        if (i2 == 1) {
            s sVar = this.a;
            sVar.I.a(sVar, bVar.b, bVar.f766d);
        } else if (i2 == 2) {
            s sVar2 = this.a;
            sVar2.I.b(sVar2, bVar.b, bVar.f766d);
        } else if (i2 == 4) {
            s sVar3 = this.a;
            sVar3.I.a(sVar3, bVar.b, bVar.f766d, bVar.f765c);
        } else if (i2 == 8) {
            s sVar4 = this.a;
            sVar4.I.a(sVar4, bVar.b, bVar.f766d, 1);
        }
    }

    public void a(int i2, int i3) {
        s sVar = this.a;
        int b = sVar.B.b();
        for (int i4 = 0; i4 < b; i4++) {
            s.x b2 = s.b(sVar.B.d(i4));
            if (b2 != null && !b2.u() && b2.f848c >= i2) {
                b2.a(i3, false);
                sVar.C0.f842f = true;
            }
        }
        s.q qVar = sVar.y;
        int size = qVar.f833c.size();
        for (int i5 = 0; i5 < size; i5++) {
            s.x xVar = qVar.f833c.get(i5);
            if (xVar != null && xVar.f848c >= i2) {
                xVar.a(i3, true);
            }
        }
        sVar.requestLayout();
        this.a.F0 = true;
    }
}
