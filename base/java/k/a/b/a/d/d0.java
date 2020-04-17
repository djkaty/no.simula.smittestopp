package k.a.b.a.d;

import java.util.logging.Logger;
import k.a.b.a.a;

public class d0 extends a {
    public static final Logger x = Logger.getLogger(d0.class.getName());

    public d0() {
    }

    public d0(String str) {
        super(str);
    }

    public d0(String str, Throwable th) {
        super(str, th);
    }

    public d0(Throwable th) {
        super(th);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d0(java.lang.String r5, java.lang.Object... r6) {
        /*
            r4 = this;
            java.lang.String r5 = java.lang.String.format(r5, r6)     // Catch:{ IllegalFormatException -> 0x0005 }
            goto L_0x001e
        L_0x0005:
            r6 = move-exception
            java.util.logging.Logger r0 = x
            java.util.logging.Level r1 = java.util.logging.Level.SEVERE
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Formating error in string "
            r2.append(r3)
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            r0.log(r1, r2, r6)
        L_0x001e:
            r4.<init>((java.lang.String) r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.d0.<init>(java.lang.String, java.lang.Object[]):void");
    }
}
