package e.b.a.a.o;

import e.a.a.a.a;
import e.b.a.a.i;
import e.b.a.a.l;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class c extends i {
    public static final BigInteger A = BigInteger.valueOf(-2147483648L);
    public static final BigInteger B = BigInteger.valueOf(2147483647L);
    public static final BigInteger C = BigInteger.valueOf(Long.MIN_VALUE);
    public static final BigInteger D = BigInteger.valueOf(Long.MAX_VALUE);
    public static final byte[] z = new byte[0];
    public l y;

    static {
        new BigDecimal(C);
        new BigDecimal(D);
        new BigDecimal(A);
        new BigDecimal(B);
    }

    public c(int i2) {
        super(i2);
    }

    public void a(int i2, String str) {
        if (i2 >= 0) {
            String format = String.format("Unexpected character (%s)", new Object[]{b(i2)});
            if (str != null) {
                format = a.a(format, ": ", str);
            }
            throw a(format);
        }
        h();
        throw null;
    }

    public String b(String str) {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            return i();
        }
        if (lVar == l.FIELD_NAME) {
            return c();
        }
        return (lVar == null || lVar == l.VALUE_NULL || !lVar.isScalarValue()) ? str : i();
    }

    public void c(int i2, String str) {
        String format = String.format("Unexpected character (%s) in numeric value", new Object[]{b(i2)});
        if (str != null) {
            format = a.a(format, ": ", str);
        }
        throw a(format);
    }

    public boolean e() {
        return this.y != null;
    }

    public l g() {
        l f2 = f();
        return f2 == l.FIELD_NAME ? f() : f2;
    }

    public void h() {
        StringBuilder a = a.a(" in ");
        a.append(this.y);
        a(a.toString(), this.y);
        throw null;
    }

    public abstract String i();

    public void a(l lVar) {
        a(lVar != l.VALUE_STRING ? (lVar == l.VALUE_NUMBER_INT || lVar == l.VALUE_NUMBER_FLOAT) ? " in a Number value" : " in a value" : " in a String value", lVar);
        throw null;
    }

    public void b(int i2, String str) {
        if (!a(i.a.ALLOW_UNQUOTED_CONTROL_CHARS) || i2 > 32) {
            StringBuilder a = a.a("Illegal unquoted character (");
            a.append(b((int) (char) i2));
            a.append("): has to be escaped using backslash to be included in ");
            a.append(str);
            throw a(a.toString());
        }
    }

    public void a(String str, l lVar) {
        throw new e.b.a.a.p.c(this, lVar, a.b("Unexpected end-of-input", str));
    }

    public void a(int i2) {
        StringBuilder a = a.a("Illegal character (");
        a.append(b((int) (char) i2));
        a.append("): only regular white space (\\r, \\n, \\t) is allowed between tokens");
        throw a(a.toString());
    }

    public static final String b(int i2) {
        char c2 = (char) i2;
        if (Character.isISOControl(c2)) {
            return a.b("(CTRL-CHAR, code ", i2, ")");
        }
        if (i2 > 255) {
            return "'" + c2 + "' (code " + i2 + " / 0x" + Integer.toHexString(i2) + ")";
        }
        return "'" + c2 + "' (code " + i2 + ")";
    }

    public char a(char c2) {
        if (a(i.a.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER)) {
            return c2;
        }
        if (c2 == '\'' && a(i.a.ALLOW_SINGLE_QUOTES)) {
            return c2;
        }
        StringBuilder a = a.a("Unrecognized character escape ");
        a.append(b((int) c2));
        throw a(a.toString());
    }

    public final void a(String str, Object obj, Object obj2) {
        throw a(String.format(str, new Object[]{obj, obj2}));
    }
}
