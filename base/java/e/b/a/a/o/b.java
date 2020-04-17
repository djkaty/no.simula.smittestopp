package e.b.a.a.o;

import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.q.d;
import e.b.a.a.s.a;
import e.b.a.a.s.c;
import e.b.a.a.s.g;
import java.util.Arrays;

public abstract class b extends c {
    public final e.b.a.a.p.b E;
    public boolean F;
    public int G;
    public int H;
    public long I;
    public int J = 1;
    public int K;
    public int L = 1;
    public int M;
    public d N;
    public l O;
    public final g P;
    public char[] Q;
    public c R;
    public byte[] S;

    public b(e.b.a.a.p.b bVar, int i2) {
        super(i2);
        this.E = bVar;
        this.P = new g(bVar.f1056d);
        this.N = new d((d) null, i.a.STRICT_DUPLICATE_DETECTION.enabledIn(i2) ? new e.b.a.a.q.b(this) : null, 0, 1, 0);
    }

    public void a(int i2, char c2) {
        d dVar = this.N;
        throw a(String.format("Unexpected close marker '%s': expected '%c' (for %s starting at %s)", new Object[]{Character.valueOf((char) i2), Character.valueOf(c2), dVar.e(), new e.b.a.a.g(n(), -1, dVar.f1074g, dVar.f1075h)}));
    }

    public String c() {
        d dVar;
        l lVar = this.y;
        if ((lVar == l.START_OBJECT || lVar == l.START_ARRAY) && (dVar = this.N.f1070c) != null) {
            return dVar.f1073f;
        }
        return this.N.f1073f;
    }

    public void close() {
        if (!this.F) {
            this.G = Math.max(this.G, this.H);
            this.F = true;
            try {
                j();
            } finally {
                o();
            }
        }
    }

    public abstract void j();

    public abstract char k();

    public final int l() {
        if (this.N.d()) {
            return -1;
        }
        Object[] objArr = new Object[2];
        objArr[0] = this.N.b() ? "Array" : "Object";
        d dVar = this.N;
        Object n = n();
        if (dVar != null) {
            objArr[1] = new e.b.a.a.g(n, -1, dVar.f1074g, dVar.f1075h);
            a(String.format(": expected close marker for %s (start marker at %s)", objArr), (l) null);
            throw null;
        }
        throw null;
    }

    public c m() {
        c cVar = this.R;
        if (cVar == null) {
            this.R = new c((a) null);
        } else {
            cVar.b();
        }
        return this.R;
    }

    public Object n() {
        if (i.a.INCLUDE_SOURCE_IN_LOCATION.enabledIn(this.x)) {
            return this.E.a;
        }
        return null;
    }

    public void o() {
        g gVar = this.P;
        if (gVar.a == null) {
            gVar.i();
        } else if (gVar.f1117h != null) {
            gVar.i();
            char[] cArr = gVar.f1117h;
            gVar.f1117h = null;
            gVar.a.b[2] = cArr;
        }
        char[] cArr2 = this.Q;
        if (cArr2 != null) {
            this.Q = null;
            e.b.a.a.p.b bVar = this.E;
            if (bVar != null) {
                bVar.a(cArr2, bVar.f1061i);
                bVar.f1061i = null;
                bVar.f1056d.b[3] = cArr2;
                return;
            }
            throw null;
        }
    }

    public final l a(String str, double d2) {
        g gVar = this.P;
        gVar.b = null;
        gVar.f1112c = -1;
        gVar.f1113d = 0;
        gVar.f1119j = str;
        gVar.f1120k = null;
        if (gVar.f1115f) {
            gVar.a();
        }
        gVar.f1118i = 0;
        return l.VALUE_NUMBER_FLOAT;
    }

    public final int a(e.b.a.a.a aVar, int i2, int i3) {
        if (i2 == 92) {
            char k2 = k();
            if (k2 <= ' ' && i3 == 0) {
                return -1;
            }
            int a = aVar.a((int) k2);
            if (a >= 0) {
                return a;
            }
            throw a(aVar, k2, i3, (String) null);
        }
        throw a(aVar, i2, i3, (String) null);
    }

    public final int a(e.b.a.a.a aVar, char c2, int i2) {
        if (c2 == '\\') {
            char k2 = k();
            if (k2 <= ' ' && i2 == 0) {
                return -1;
            }
            int a = aVar.a(k2);
            if (a >= 0) {
                return a;
            }
            throw a(aVar, k2, i2, (String) null);
        }
        throw a(aVar, c2, i2, (String) null);
    }

    public IllegalArgumentException a(e.b.a.a.a aVar, int i2, int i3, String str) {
        String str2;
        boolean z = false;
        if (i2 <= 32) {
            str2 = String.format("Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units", new Object[]{Integer.toHexString(i2), Integer.valueOf(i3 + 1)});
        } else {
            if (i2 == aVar.C) {
                z = true;
            }
            if (z) {
                StringBuilder a = e.a.a.a.a.a("Unexpected padding character ('");
                a.append(aVar.C);
                a.append("') as character #");
                a.append(i3 + 1);
                a.append(" of 4-char base64 unit: padding only legal as 3rd or 4th character");
                str2 = a.toString();
            } else if (!Character.isDefined(i2) || Character.isISOControl(i2)) {
                StringBuilder a2 = e.a.a.a.a.a("Illegal character (code 0x");
                a2.append(Integer.toHexString(i2));
                a2.append(") in base64 content");
                str2 = a2.toString();
            } else {
                StringBuilder a3 = e.a.a.a.a.a("Illegal character '");
                a3.append((char) i2);
                a3.append("' (code 0x");
                a3.append(Integer.toHexString(i2));
                a3.append(") in base64 content");
                str2 = a3.toString();
            }
        }
        if (str != null) {
            str2 = e.a.a.a.a.a(str2, ": ", str);
        }
        return new IllegalArgumentException(str2);
    }

    public static int[] a(int[] iArr, int i2) {
        if (iArr == null) {
            return new int[i2];
        }
        return Arrays.copyOf(iArr, iArr.length + i2);
    }
}
