package k.b.a;

import com.microsoft.identity.common.internal.eststelemetry.Schema;
import e.a.a.a.a;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.SimpleTimeZone;

public class j extends t {
    public byte[] x;

    public j(byte[] bArr) {
        if (bArr.length >= 4) {
            this.x = bArr;
            if (!b(0) || !b(1) || !b(2) || !b(3)) {
                throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
            }
            return;
        }
        throw new IllegalArgumentException("GeneralizedTime string too short");
    }

    public static j a(Object obj) {
        if (obj == null || (obj instanceof j)) {
            return (j) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (j) t.a((byte[]) obj);
            } catch (Exception e2) {
                throw new IllegalArgumentException(a.a(e2, a.a("encoding error in getInstance: ")));
            }
        } else {
            throw new IllegalArgumentException(a.a(obj, a.a("illegal object in getInstance: ")));
        }
    }

    public final String a(int i2) {
        return i2 < 10 ? a.a(Schema.Value.FALSE, i2) : Integer.toString(i2);
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 24, this.x);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof j)) {
            return false;
        }
        return Arrays.equals(this.x, ((j) tVar).x);
    }

    public final String b(String str) {
        StringBuilder sb;
        String str2;
        String substring = str.substring(14);
        int i2 = 1;
        while (i2 < substring.length() && '0' <= (r4 = substring.charAt(i2)) && r4 <= '9') {
            i2++;
        }
        int i3 = i2 - 1;
        if (i3 > 3) {
            str2 = substring.substring(0, 4) + substring.substring(i2);
            sb = new StringBuilder();
        } else if (i3 == 1) {
            StringBuilder sb2 = new StringBuilder();
            a.a(substring, 0, i2, sb2, "00");
            sb2.append(substring.substring(i2));
            str2 = sb2.toString();
            sb = new StringBuilder();
        } else if (i3 != 2) {
            return str;
        } else {
            StringBuilder sb3 = new StringBuilder();
            a.a(substring, 0, i2, sb3, Schema.Value.FALSE);
            sb3.append(substring.substring(i2));
            str2 = sb3.toString();
            sb = new StringBuilder();
        }
        sb.append(str.substring(0, 14));
        sb.append(str2);
        return sb.toString();
    }

    public final boolean b(int i2) {
        byte[] bArr = this.x;
        return bArr.length > i2 && bArr[i2] >= 48 && bArr[i2] <= 57;
    }

    public int f() {
        int length = this.x.length;
        return d2.a(length) + 1 + length;
    }

    public boolean g() {
        return false;
    }

    public t h() {
        return new v0(this.x);
    }

    public int hashCode() {
        return k.b.c.e.a.d(this.x);
    }

    public t i() {
        return new v0(this.x);
    }

    public final SimpleDateFormat j() {
        SimpleDateFormat simpleDateFormat = k() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : m() ? new SimpleDateFormat("yyyyMMddHHmmssz") : l() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    public boolean k() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.x;
            if (i2 == bArr.length) {
                return false;
            }
            if (bArr[i2] == 46 && i2 == 14) {
                return true;
            }
            i2++;
        }
    }

    public boolean l() {
        return b(10) && b(11);
    }

    public boolean m() {
        return b(12) && b(13);
    }
}
