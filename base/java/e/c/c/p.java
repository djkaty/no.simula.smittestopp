package e.c.c;

import e.c.c.w.q;
import java.math.BigInteger;

public final class p extends j {
    public static final Class<?>[] b = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    public Object a;

    public p(Boolean bool) {
        a((Object) bool);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (r0 != false) goto L_0x0036;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof java.lang.Character
            if (r0 == 0) goto L_0x0011
            java.lang.Character r8 = (java.lang.Character) r8
            char r8 = r8.charValue()
            java.lang.String r8 = java.lang.String.valueOf(r8)
            r7.a = r8
            goto L_0x003c
        L_0x0011:
            boolean r0 = r8 instanceof java.lang.Number
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x0036
            boolean r0 = r8 instanceof java.lang.String
            if (r0 == 0) goto L_0x001d
        L_0x001b:
            r0 = 1
            goto L_0x0034
        L_0x001d:
            java.lang.Class r0 = r8.getClass()
            java.lang.Class<?>[] r3 = b
            int r4 = r3.length
            r5 = 0
        L_0x0025:
            if (r5 >= r4) goto L_0x0033
            r6 = r3[r5]
            boolean r6 = r6.isAssignableFrom(r0)
            if (r6 == 0) goto L_0x0030
            goto L_0x001b
        L_0x0030:
            int r5 = r5 + 1
            goto L_0x0025
        L_0x0033:
            r0 = 0
        L_0x0034:
            if (r0 == 0) goto L_0x0037
        L_0x0036:
            r1 = 1
        L_0x0037:
            e.c.a.a.b.l.c.a((boolean) r1)
            r7.a = r8
        L_0x003c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.c.p.a(java.lang.Object):void");
    }

    public long e() {
        return this.a instanceof Number ? h().longValue() : Long.parseLong(f());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.a == null) {
            if (pVar.a == null) {
                return true;
            }
            return false;
        } else if (!a(this) || !a(pVar)) {
            if (!(this.a instanceof Number) || !(pVar.a instanceof Number)) {
                return this.a.equals(pVar.a);
            }
            double doubleValue = h().doubleValue();
            double doubleValue2 = pVar.h().doubleValue();
            if (doubleValue == doubleValue2) {
                return true;
            }
            if (!Double.isNaN(doubleValue) || !Double.isNaN(doubleValue2)) {
                return false;
            }
            return true;
        } else if (h().longValue() == pVar.h().longValue()) {
            return true;
        } else {
            return false;
        }
    }

    public String f() {
        Object obj = this.a;
        if (obj instanceof Number) {
            return h().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        return (String) obj;
    }

    public boolean g() {
        Object obj = this.a;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return Boolean.parseBoolean(f());
    }

    public Number h() {
        Object obj = this.a;
        return obj instanceof String ? new q((String) this.a) : (Number) obj;
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.a == null) {
            return 31;
        }
        if (a(this)) {
            doubleToLongBits = h().longValue();
        } else {
            Object obj = this.a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(h().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public p(Number number) {
        a((Object) number);
    }

    public p(String str) {
        a((Object) str);
    }

    public p(Object obj) {
        a(obj);
    }

    public int a() {
        return this.a instanceof Number ? h().intValue() : Integer.parseInt(f());
    }

    public static boolean a(p pVar) {
        Object obj = pVar.a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return true;
        }
        return false;
    }
}
