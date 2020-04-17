package e.c.c.y;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class c implements Closeable, Flushable {
    public static final String[] G = new String[128];
    public static final String[] H;
    public String A;
    public String B;
    public boolean C;
    public boolean D;
    public String E;
    public boolean F;
    public final Writer x;
    public int[] y = new int[32];
    public int z = 0;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            G[i2] = String.format("\\u%04x", new Object[]{Integer.valueOf(i2)});
        }
        String[] strArr = G;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        H = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        this.B = ":";
        this.F = true;
        if (writer != null) {
            this.x = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    public final c a(int i2, int i3, String str) {
        int h2 = h();
        if (h2 != i3 && h2 != i2) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.E == null) {
            this.z--;
            if (h2 == i3) {
                f();
            }
            this.x.write(str);
            return this;
        } else {
            StringBuilder a = a.a("Dangling name: ");
            a.append(this.E);
            throw new IllegalStateException(a.toString());
        }
    }

    public c b() {
        i();
        a();
        a(1);
        this.x.write("[");
        return this;
    }

    public c c() {
        i();
        a();
        a(3);
        this.x.write("{");
        return this;
    }

    public void close() {
        this.x.close();
        int i2 = this.z;
        if (i2 > 1 || (i2 == 1 && this.y[i2 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.z = 0;
    }

    public c d() {
        a(1, 2, "]");
        return this;
    }

    public c e() {
        a(3, 5, "}");
        return this;
    }

    public final void f() {
        if (this.A != null) {
            this.x.write("\n");
            int i2 = this.z;
            for (int i3 = 1; i3 < i2; i3++) {
                this.x.write(this.A);
            }
        }
    }

    public void flush() {
        if (this.z != 0) {
            this.x.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public c g() {
        if (this.E != null) {
            if (this.F) {
                i();
            } else {
                this.E = null;
                return this;
            }
        }
        a();
        this.x.write("null");
        return this;
    }

    public final int h() {
        int i2 = this.z;
        if (i2 != 0) {
            return this.y[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void i() {
        if (this.E != null) {
            int h2 = h();
            if (h2 == 5) {
                this.x.write(44);
            } else if (h2 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            f();
            b(4);
            b(this.E);
            this.E = null;
        }
    }

    public final void b(int i2) {
        this.y[this.z - 1] = i2;
    }

    public c c(String str) {
        if (str == null) {
            return g();
        }
        i();
        a();
        b(str);
        return this;
    }

    public final void b(String str) {
        String str2;
        String[] strArr = this.D ? H : G;
        this.x.write("\"");
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt < 128) {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
            } else if (charAt == 8232) {
                str2 = "\\u2028";
            } else if (charAt == 8233) {
                str2 = "\\u2029";
            }
            if (i2 < i3) {
                this.x.write(str, i2, i3 - i2);
            }
            this.x.write(str2);
            i2 = i3 + 1;
        }
        if (i2 < length) {
            this.x.write(str, i2, length - i2);
        }
        this.x.write("\"");
    }

    public final void a(int i2) {
        int i3 = this.z;
        int[] iArr = this.y;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[(i3 * 2)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.y = iArr2;
        }
        int[] iArr3 = this.y;
        int i4 = this.z;
        this.z = i4 + 1;
        iArr3[i4] = i2;
    }

    public c a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.E != null) {
            throw new IllegalStateException();
        } else if (this.z != 0) {
            this.E = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    public c a(boolean z2) {
        i();
        a();
        this.x.write(z2 ? "true" : "false");
        return this;
    }

    public c a(Boolean bool) {
        if (bool == null) {
            return g();
        }
        i();
        a();
        this.x.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c a(long j2) {
        i();
        a();
        this.x.write(Long.toString(j2));
        return this;
    }

    public c a(Number number) {
        if (number == null) {
            return g();
        }
        i();
        String obj = number.toString();
        if (this.C || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            a();
            this.x.append(obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public final void a() {
        int h2 = h();
        if (h2 == 1) {
            b(2);
            f();
        } else if (h2 == 2) {
            this.x.append(WWWAuthenticateHeader.COMMA);
            f();
        } else if (h2 != 4) {
            if (h2 != 6) {
                if (h2 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.C) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            b(7);
        } else {
            this.x.append(this.B);
            b(5);
        }
    }
}
