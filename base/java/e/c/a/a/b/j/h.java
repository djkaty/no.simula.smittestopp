package e.c.a.a.b.j;

import android.accounts.Account;
import android.os.IInterface;
import com.google.android.gms.common.api.Scope;
import e.c.a.a.b.e;
import e.c.a.a.b.i.a;
import java.util.Set;

public abstract class h<T extends IInterface> extends b<T> implements a.f {
    public final Set<Scope> v;
    public final Account w;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public h(android.content.Context r10, android.os.Looper r11, int r12, e.c.a.a.b.j.d r13, e.c.a.a.b.i.d.a r14, e.c.a.a.b.i.d.b r15) {
        /*
            r9 = this;
            e.c.a.a.b.j.i r3 = e.c.a.a.b.j.i.a(r10)
            e.c.a.a.b.d r4 = e.c.a.a.b.d.f1123c
            d.b.a.r.a(r14)
            e.c.a.a.b.i.d$a r14 = (e.c.a.a.b.i.d.a) r14
            d.b.a.r.a(r15)
            e.c.a.a.b.i.d$b r15 = (e.c.a.a.b.i.d.b) r15
            r0 = 0
            if (r14 != 0) goto L_0x0015
            r6 = r0
            goto L_0x001b
        L_0x0015:
            e.c.a.a.b.j.v r1 = new e.c.a.a.b.j.v
            r1.<init>(r14)
            r6 = r1
        L_0x001b:
            if (r15 != 0) goto L_0x001f
            r7 = r0
            goto L_0x0025
        L_0x001f:
            e.c.a.a.b.j.w r14 = new e.c.a.a.b.j.w
            r14.<init>(r15)
            r7 = r14
        L_0x0025:
            java.lang.String r8 = r13.f1191f
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            android.accounts.Account r10 = r13.a
            r9.w = r10
            java.util.Set<com.google.android.gms.common.api.Scope> r10 = r13.f1188c
            java.util.Iterator r11 = r10.iterator()
        L_0x0038:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L_0x0053
            java.lang.Object r12 = r11.next()
            com.google.android.gms.common.api.Scope r12 = (com.google.android.gms.common.api.Scope) r12
            boolean r12 = r10.contains(r12)
            if (r12 == 0) goto L_0x004b
            goto L_0x0038
        L_0x004b:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "Expanding scopes is not permitted, use implied scopes instead"
            r10.<init>(r11)
            throw r10
        L_0x0053:
            r9.v = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.j.h.<init>(android.content.Context, android.os.Looper, int, e.c.a.a.b.j.d, e.c.a.a.b.i.d$a, e.c.a.a.b.i.d$b):void");
    }

    public int i() {
        return e.a;
    }
}
