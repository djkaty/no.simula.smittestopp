package e.e.a.u;

import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.e.a.v.c;
import i.a.b.d;
import java.io.Serializable;
import java.security.PrivateKey;
import java.security.spec.RSAOtherPrimeInfo;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;

public final class k extends d {
    public final c I;
    public final c J;
    public final c K;
    public final c L;
    public final c M;
    public final c N;
    public final c O;
    public final c P;
    public final List<a> Q;
    public final PrivateKey R;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b9 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00d6 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x011b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k(e.e.a.v.c r17, e.e.a.v.c r18, e.e.a.v.c r19, e.e.a.v.c r20, e.e.a.v.c r21, e.e.a.v.c r22, e.e.a.v.c r23, e.e.a.v.c r24, java.util.List<e.e.a.u.k.a> r25, java.security.PrivateKey r26, e.e.a.u.g r27, java.util.Set<e.e.a.u.e> r28, e.e.a.a r29, java.lang.String r30, java.net.URI r31, e.e.a.v.c r32, e.e.a.v.c r33, java.util.List<e.e.a.v.a> r34, java.security.KeyStore r35) {
        /*
            r16 = this;
            r11 = r16
            r12 = r17
            r13 = r18
            r14 = r20
            r15 = r21
            r10 = r22
            r9 = r23
            r8 = r24
            e.e.a.u.f r1 = e.e.a.u.f.z
            r0 = r16
            r2 = r27
            r3 = r28
            r4 = r29
            r5 = r30
            r6 = r31
            r7 = r32
            r8 = r33
            r9 = r34
            r10 = r35
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            if (r12 == 0) goto L_0x012b
            r11.I = r12
            if (r13 == 0) goto L_0x0123
            r11.J = r13
            java.util.List r0 = r16.b()
            if (r0 == 0) goto L_0x0080
            java.util.List r0 = r16.b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            java.util.List r0 = r16.b()     // Catch:{ ClassCastException -> 0x0075 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ ClassCastException -> 0x0075 }
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0     // Catch:{ ClassCastException -> 0x0075 }
            java.security.PublicKey r0 = r0.getPublicKey()     // Catch:{ ClassCastException -> 0x0075 }
            java.security.interfaces.RSAPublicKey r0 = (java.security.interfaces.RSAPublicKey) r0     // Catch:{ ClassCastException -> 0x0075 }
            e.e.a.v.c r2 = r11.J
            java.math.BigInteger r2 = r2.d()
            java.math.BigInteger r3 = r0.getPublicExponent()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x0063
            goto L_0x0075
        L_0x0063:
            e.e.a.v.c r2 = r11.I
            java.math.BigInteger r2 = r2.d()
            java.math.BigInteger r0 = r0.getModulus()
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto L_0x0074
            goto L_0x0075
        L_0x0074:
            r1 = 1
        L_0x0075:
            if (r1 == 0) goto L_0x0078
            goto L_0x0080
        L_0x0078:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The public subject key info of the first X.509 certificate in the chain must match the JWK type and public parameters"
            r0.<init>(r1)
            throw r0
        L_0x0080:
            r0 = r19
            r11.K = r0
            if (r14 == 0) goto L_0x00b0
            if (r15 == 0) goto L_0x00b0
            r0 = r22
            r1 = r23
            if (r0 == 0) goto L_0x00b4
            r2 = r24
            if (r1 == 0) goto L_0x00b6
            if (r2 == 0) goto L_0x00b6
            r11.L = r14
            r11.M = r15
            r11.N = r0
            r11.O = r1
            r11.P = r2
            if (r25 == 0) goto L_0x00a7
            java.util.List r0 = java.util.Collections.unmodifiableList(r25)
            r11.Q = r0
            goto L_0x00ad
        L_0x00a7:
            java.util.List r0 = java.util.Collections.emptyList()
            r11.Q = r0
        L_0x00ad:
            r0 = r26
            goto L_0x00f0
        L_0x00b0:
            r0 = r22
            r1 = r23
        L_0x00b4:
            r2 = r24
        L_0x00b6:
            r3 = 0
            if (r14 != 0) goto L_0x00d4
            if (r15 != 0) goto L_0x00d4
            if (r0 != 0) goto L_0x00d4
            if (r1 != 0) goto L_0x00d4
            if (r2 != 0) goto L_0x00d4
            if (r25 != 0) goto L_0x00d4
            r11.L = r3
            r11.M = r3
            r11.N = r3
            r11.O = r3
            r11.P = r3
            java.util.List r0 = java.util.Collections.emptyList()
            r11.Q = r0
            goto L_0x00ad
        L_0x00d4:
            if (r14 != 0) goto L_0x00f3
            if (r15 != 0) goto L_0x00f3
            if (r0 != 0) goto L_0x00f3
            if (r1 != 0) goto L_0x00f3
            if (r2 == 0) goto L_0x00df
            goto L_0x00f3
        L_0x00df:
            r11.L = r3
            r11.M = r3
            r11.N = r3
            r11.O = r3
            r11.P = r3
            java.util.List r0 = java.util.Collections.emptyList()
            r11.Q = r0
            goto L_0x00ad
        L_0x00f0:
            r11.R = r0
            return
        L_0x00f3:
            if (r14 == 0) goto L_0x011b
            if (r15 == 0) goto L_0x0113
            if (r0 == 0) goto L_0x010b
            if (r1 != 0) goto L_0x0103
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Incomplete second private (CRT) representation: The second factor CRT exponent must not be null"
            r0.<init>(r1)
            throw r0
        L_0x0103:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Incomplete second private (CRT) representation: The first CRT coefficient must not be null"
            r0.<init>(r1)
            throw r0
        L_0x010b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Incomplete second private (CRT) representation: The first factor CRT exponent must not be null"
            r0.<init>(r1)
            throw r0
        L_0x0113:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Incomplete second private (CRT) representation: The second prime factor must not be null"
            r0.<init>(r1)
            throw r0
        L_0x011b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Incomplete second private (CRT) representation: The first prime factor must not be null"
            r0.<init>(r1)
            throw r0
        L_0x0123:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The public exponent value must not be null"
            r0.<init>(r1)
            throw r0
        L_0x012b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The modulus value must not be null"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.e.a.u.k.<init>(e.e.a.v.c, e.e.a.v.c, e.e.a.v.c, e.e.a.v.c, e.e.a.v.c, e.e.a.v.c, e.e.a.v.c, e.e.a.v.c, java.util.List, java.security.PrivateKey, e.e.a.u.g, java.util.Set, e.e.a.a, java.lang.String, java.net.URI, e.e.a.v.c, e.e.a.v.c, java.util.List, java.security.KeyStore):void");
    }

    public LinkedHashMap<String, ?> d() {
        LinkedHashMap<String, ?> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.put("e", this.J.x);
        linkedHashMap.put("kty", this.x.x);
        linkedHashMap.put("n", this.I.x);
        return linkedHashMap;
    }

    public boolean e() {
        return (this.K == null && this.L == null && this.R == null) ? false : true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k) || !super.equals(obj)) {
            return false;
        }
        k kVar = (k) obj;
        if (!Objects.equals(this.I, kVar.I) || !Objects.equals(this.J, kVar.J) || !Objects.equals(this.K, kVar.K) || !Objects.equals(this.L, kVar.L) || !Objects.equals(this.M, kVar.M) || !Objects.equals(this.N, kVar.N) || !Objects.equals(this.O, kVar.O) || !Objects.equals(this.P, kVar.P) || !Objects.equals(this.Q, kVar.Q) || !Objects.equals(this.R, kVar.R)) {
            return false;
        }
        return true;
    }

    public d f() {
        d f2 = super.f();
        f2.put("n", this.I.x);
        f2.put("e", this.J.x);
        c cVar = this.K;
        if (cVar != null) {
            f2.put("d", cVar.x);
        }
        c cVar2 = this.L;
        if (cVar2 != null) {
            f2.put(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_PATH, cVar2.x);
        }
        c cVar3 = this.M;
        if (cVar3 != null) {
            f2.put("q", cVar3.x);
        }
        c cVar4 = this.N;
        if (cVar4 != null) {
            f2.put("dp", cVar4.x);
        }
        c cVar5 = this.O;
        if (cVar5 != null) {
            f2.put("dq", cVar5.x);
        }
        c cVar6 = this.P;
        if (cVar6 != null) {
            f2.put("qi", cVar6.x);
        }
        List<a> list = this.Q;
        if (list != null && !list.isEmpty()) {
            i.a.b.a aVar = new i.a.b.a();
            for (a next : this.Q) {
                d dVar = new d();
                dVar.put("r", next.x.x);
                dVar.put("d", next.y.x);
                dVar.put("t", next.z.x);
                aVar.add(dVar);
            }
            f2.put("oth", aVar);
        }
        return f2;
    }

    public int hashCode() {
        return Objects.hash(new Object[]{Integer.valueOf(super.hashCode()), this.I, this.J, this.K, this.L, this.M, this.N, this.O, this.P, this.Q, this.R});
    }

    public static class a implements Serializable {
        public final c x;
        public final c y;
        public final c z;

        public a(c cVar, c cVar2, c cVar3) {
            if (cVar != null) {
                this.x = cVar;
                if (cVar2 != null) {
                    this.y = cVar2;
                    if (cVar3 != null) {
                        this.z = cVar3;
                        return;
                    }
                    throw new IllegalArgumentException("The factor CRT coefficient must not be null");
                }
                throw new IllegalArgumentException("The factor CRT exponent must not be null");
            }
            throw new IllegalArgumentException("The prime factor must not be null");
        }

        public a(RSAOtherPrimeInfo rSAOtherPrimeInfo) {
            this.x = c.a(rSAOtherPrimeInfo.getPrime());
            this.y = c.a(rSAOtherPrimeInfo.getExponent());
            this.z = c.a(rSAOtherPrimeInfo.getCrtCoefficient());
        }
    }
}
