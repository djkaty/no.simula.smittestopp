package k.b.a.l2;

import k.b.a.b0;
import k.b.a.d;
import k.b.a.e;
import k.b.a.h1;
import k.b.a.n;
import k.b.a.t;
import k.b.a.x;
import k.b.j.f;

public class i extends n implements d {
    public e x;
    public int y;

    public i(b0 b0Var) {
        int i2 = b0Var.x;
        this.y = i2;
        this.x = i2 == 0 ? m.a(b0Var, false) : x.a(b0Var, false);
    }

    public final void a(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(":");
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public t c() {
        return new h1(false, this.y, this.x);
    }

    public String toString() {
        String str;
        String str2;
        String str3 = f.a;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPointName: [");
        stringBuffer.append(str3);
        if (this.y == 0) {
            str2 = this.x.toString();
            str = "fullName";
        } else {
            str2 = this.x.toString();
            str = "nameRelativeToCRLIssuer";
        }
        a(stringBuffer, str3, str, str2);
        stringBuffer.append("]");
        stringBuffer.append(str3);
        return stringBuffer.toString();
    }
}
