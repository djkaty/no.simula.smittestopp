package e.c.c.w.z;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import e.c.c.g;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import e.c.c.p;
import e.c.c.y.b;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

public final class a extends e.c.c.y.a {
    public static final Reader R = new C0075a();
    public static final Object S = new Object();
    public Object[] N = new Object[32];
    public int O = 0;
    public String[] P = new String[32];
    public int[] Q = new int[32];

    /* renamed from: e.c.c.w.z.a$a  reason: collision with other inner class name */
    public static class C0075a extends Reader {
        public void close() {
            throw new AssertionError();
        }

        public int read(char[] cArr, int i2, int i3) {
            throw new AssertionError();
        }
    }

    public a(j jVar) {
        super(R);
        a((Object) jVar);
    }

    private String i() {
        StringBuilder a = e.a.a.a.a.a(" at path ");
        a.append(g());
        return a.toString();
    }

    public void a() {
        a(b.BEGIN_ARRAY);
        a((Object) ((g) v()).iterator());
        this.Q[this.O - 1] = 0;
    }

    public void b() {
        a(b.BEGIN_OBJECT);
        a((Object) ((m) v()).g().iterator());
    }

    public void close() {
        this.N = new Object[]{S};
        this.O = 1;
    }

    public void e() {
        a(b.END_ARRAY);
        w();
        w();
        int i2 = this.O;
        if (i2 > 0) {
            int[] iArr = this.Q;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public void f() {
        a(b.END_OBJECT);
        w();
        w();
        int i2 = this.O;
        if (i2 > 0) {
            int[] iArr = this.Q;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public String g() {
        StringBuilder sb = new StringBuilder();
        sb.append(Mqtt.MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_DECODED);
        int i2 = 0;
        while (i2 < this.O) {
            Object[] objArr = this.N;
            if (objArr[i2] instanceof g) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.Q[i2]);
                    sb.append(']');
                }
            } else if (objArr[i2] instanceof m) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.P;
                    if (strArr[i2] != null) {
                        sb.append(strArr[i2]);
                    }
                }
            }
            i2++;
        }
        return sb.toString();
    }

    public boolean h() {
        b r = r();
        return (r == b.END_OBJECT || r == b.END_ARRAY) ? false : true;
    }

    public boolean j() {
        a(b.BOOLEAN);
        boolean g2 = ((p) w()).g();
        int i2 = this.O;
        if (i2 > 0) {
            int[] iArr = this.Q;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return g2;
    }

    public double k() {
        b r = r();
        if (r == b.NUMBER || r == b.STRING) {
            p pVar = (p) v();
            double doubleValue = pVar.a instanceof Number ? pVar.h().doubleValue() : Double.parseDouble(pVar.f());
            if (this.y || (!Double.isNaN(doubleValue) && !Double.isInfinite(doubleValue))) {
                w();
                int i2 = this.O;
                if (i2 > 0) {
                    int[] iArr = this.Q;
                    int i3 = i2 - 1;
                    iArr[i3] = iArr[i3] + 1;
                }
                return doubleValue;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + doubleValue);
        }
        StringBuilder a = e.a.a.a.a.a("Expected ");
        a.append(b.NUMBER);
        a.append(" but was ");
        a.append(r);
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public int l() {
        b r = r();
        if (r == b.NUMBER || r == b.STRING) {
            int a = ((p) v()).a();
            w();
            int i2 = this.O;
            if (i2 > 0) {
                int[] iArr = this.Q;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return a;
        }
        StringBuilder a2 = e.a.a.a.a.a("Expected ");
        a2.append(b.NUMBER);
        a2.append(" but was ");
        a2.append(r);
        a2.append(i());
        throw new IllegalStateException(a2.toString());
    }

    public long m() {
        b r = r();
        if (r == b.NUMBER || r == b.STRING) {
            long e2 = ((p) v()).e();
            w();
            int i2 = this.O;
            if (i2 > 0) {
                int[] iArr = this.Q;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return e2;
        }
        StringBuilder a = e.a.a.a.a.a("Expected ");
        a.append(b.NUMBER);
        a.append(" but was ");
        a.append(r);
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public String n() {
        a(b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) v()).next();
        String str = (String) entry.getKey();
        this.P[this.O - 1] = str;
        a(entry.getValue());
        return str;
    }

    public void o() {
        a(b.NULL);
        w();
        int i2 = this.O;
        if (i2 > 0) {
            int[] iArr = this.Q;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public String p() {
        b r = r();
        if (r == b.STRING || r == b.NUMBER) {
            String f2 = ((p) w()).f();
            int i2 = this.O;
            if (i2 > 0) {
                int[] iArr = this.Q;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return f2;
        }
        StringBuilder a = e.a.a.a.a.a("Expected ");
        a.append(b.STRING);
        a.append(" but was ");
        a.append(r);
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public b r() {
        if (this.O == 0) {
            return b.END_DOCUMENT;
        }
        Object v = v();
        if (v instanceof Iterator) {
            boolean z = this.N[this.O - 2] instanceof m;
            Iterator it = (Iterator) v;
            if (!it.hasNext()) {
                return z ? b.END_OBJECT : b.END_ARRAY;
            }
            if (z) {
                return b.NAME;
            }
            a(it.next());
            return r();
        } else if (v instanceof m) {
            return b.BEGIN_OBJECT;
        } else {
            if (v instanceof g) {
                return b.BEGIN_ARRAY;
            }
            if (v instanceof p) {
                Object obj = ((p) v).a;
                if (obj instanceof String) {
                    return b.STRING;
                }
                if (obj instanceof Boolean) {
                    return b.BOOLEAN;
                }
                if (obj instanceof Number) {
                    return b.NUMBER;
                }
                throw new AssertionError();
            } else if (v instanceof l) {
                return b.NULL;
            } else {
                if (v == S) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    public String toString() {
        return a.class.getSimpleName();
    }

    public void u() {
        if (r() == b.NAME) {
            n();
            this.P[this.O - 2] = "null";
        } else {
            w();
            int i2 = this.O;
            if (i2 > 0) {
                this.P[i2 - 1] = "null";
            }
        }
        int i3 = this.O;
        if (i3 > 0) {
            int[] iArr = this.Q;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
        }
    }

    public final Object v() {
        return this.N[this.O - 1];
    }

    public final Object w() {
        Object[] objArr = this.N;
        int i2 = this.O - 1;
        this.O = i2;
        Object obj = objArr[i2];
        objArr[i2] = null;
        return obj;
    }

    public final void a(b bVar) {
        if (r() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + r() + i());
        }
    }

    public final void a(Object obj) {
        int i2 = this.O;
        Object[] objArr = this.N;
        if (i2 == objArr.length) {
            Object[] objArr2 = new Object[(i2 * 2)];
            int[] iArr = new int[(i2 * 2)];
            String[] strArr = new String[(i2 * 2)];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.Q, 0, iArr, 0, this.O);
            System.arraycopy(this.P, 0, strArr, 0, this.O);
            this.N = objArr2;
            this.Q = iArr;
            this.P = strArr;
        }
        Object[] objArr3 = this.N;
        int i3 = this.O;
        this.O = i3 + 1;
        objArr3[i3] = obj;
    }
}
