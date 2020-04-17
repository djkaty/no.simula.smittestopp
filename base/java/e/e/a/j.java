package e.e.a;

import com.microsoft.azure.storage.Constants;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import e.e.a.u.d;
import e.e.a.v.a;
import e.e.a.v.c;
import java.net.URI;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class j extends b {
    public static final Set<String> U;
    public final d L;
    public final d M;
    public final c N;
    public final c O;
    public final c P;
    public final c Q;
    public final int R;
    public final c S;
    public final c T;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("alg");
        hashSet.add("enc");
        hashSet.add(Constants.QueryConstants.END_PARTITION_KEY);
        hashSet.add("zip");
        hashSet.add("jku");
        hashSet.add("jwk");
        hashSet.add("x5u");
        hashSet.add("x5t");
        hashSet.add("x5t#S256");
        hashSet.add("x5c");
        hashSet.add(AccessTokenRecord.SerializedNames.KID);
        hashSet.add("typ");
        hashSet.add("cty");
        hashSet.add("crit");
        hashSet.add("apu");
        hashSet.add("apv");
        hashSet.add("p2s");
        hashSet.add("p2c");
        hashSet.add("iv");
        hashSet.add("authTag");
        U = Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(a aVar, d dVar, h hVar, String str, Set<String> set, URI uri, d dVar2, URI uri2, c cVar, c cVar2, List<a> list, String str2, d dVar3, c cVar3, c cVar4, c cVar5, c cVar6, int i2, c cVar7, c cVar8, Map<String, Object> map, c cVar9) {
        super(aVar, hVar, str, set, uri, dVar2, uri2, cVar, cVar2, list, str2, map, cVar9);
        d dVar4 = dVar;
        d dVar5 = dVar3;
        if (aVar.x.equals(a.y.x)) {
            throw new IllegalArgumentException("The JWE algorithm cannot be \"none\"");
        } else if (dVar4 == null) {
            throw new IllegalArgumentException("The encryption method \"enc\" parameter must not be null");
        } else if (dVar5 == null || !dVar3.e()) {
            this.L = dVar4;
            this.M = dVar5;
            this.N = cVar3;
            this.O = cVar4;
            this.P = cVar5;
            this.Q = cVar6;
            this.R = i2;
            this.S = cVar7;
            this.T = cVar8;
        } else {
            throw new IllegalArgumentException("Ephemeral public key should not be a private key");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:118:0x0270  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0095  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static e.e.a.j a(e.e.a.v.c r29) {
        /*
            java.lang.String r0 = r29.e()
            i.a.b.d r0 = e.c.a.a.b.l.c.b((java.lang.String) r0)
            e.e.a.a r1 = e.e.a.e.a(r0)
            boolean r2 = r1 instanceof e.e.a.i
            r3 = 0
            if (r2 == 0) goto L_0x0278
            java.lang.String r2 = "enc"
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r2)
            e.e.a.d r5 = e.e.a.d.z
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x0024
            e.e.a.d r4 = e.e.a.d.z
            goto L_0x007e
        L_0x0024:
            e.e.a.d r5 = e.e.a.d.A
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x0031
            e.e.a.d r4 = e.e.a.d.A
            goto L_0x007e
        L_0x0031:
            e.e.a.d r5 = e.e.a.d.B
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x003e
            e.e.a.d r4 = e.e.a.d.B
            goto L_0x007e
        L_0x003e:
            e.e.a.d r5 = e.e.a.d.E
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x004b
            e.e.a.d r4 = e.e.a.d.E
            goto L_0x007e
        L_0x004b:
            e.e.a.d r5 = e.e.a.d.F
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x0058
            e.e.a.d r4 = e.e.a.d.F
            goto L_0x007e
        L_0x0058:
            e.e.a.d r5 = e.e.a.d.G
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x0065
            e.e.a.d r4 = e.e.a.d.G
            goto L_0x007e
        L_0x0065:
            e.e.a.d r5 = e.e.a.d.C
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x0072
            e.e.a.d r4 = e.e.a.d.C
            goto L_0x007e
        L_0x0072:
            e.e.a.d r5 = e.e.a.d.D
            java.lang.String r5 = r5.x
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x0080
            e.e.a.d r4 = e.e.a.d.D
        L_0x007e:
            r8 = r4
            goto L_0x0086
        L_0x0080:
            e.e.a.d r5 = new e.e.a.d
            r5.<init>(r4)
            r8 = r5
        L_0x0086:
            r7 = r1
            e.e.a.i r7 = (e.e.a.i) r7
            java.lang.String r1 = r7.x
            e.e.a.a r4 = e.e.a.a.y
            java.lang.String r4 = r4.x
            boolean r1 = r1.equals(r4)
            if (r1 != 0) goto L_0x0270
            if (r8 == 0) goto L_0x0268
            java.util.Set r1 = r0.keySet()
            java.util.Iterator r1 = r1.iterator()
            r4 = 0
            r5 = 0
            r9 = r4
            r10 = r9
            r11 = r10
            r12 = r11
            r13 = r12
            r14 = r13
            r15 = r14
            r16 = r15
            r17 = r16
            r18 = r17
            r19 = r18
            r20 = r19
            r21 = r20
            r22 = r21
            r23 = r22
            r25 = r23
            r26 = r25
            r27 = r26
            r24 = 0
        L_0x00c0:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L_0x025f
            java.lang.Object r4 = r1.next()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.String r5 = "alg"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x00d5
            goto L_0x00c0
        L_0x00d5:
            boolean r5 = r2.equals(r4)
            if (r5 == 0) goto L_0x00dc
            goto L_0x00c0
        L_0x00dc:
            java.lang.String r5 = "typ"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x00f0
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            if (r4 == 0) goto L_0x00c0
            e.e.a.h r9 = new e.e.a.h
            r9.<init>(r4)
            goto L_0x00c0
        L_0x00f0:
            java.lang.String r5 = "cty"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x00fd
            java.lang.String r10 = e.c.a.a.b.l.c.d(r0, r4)
            goto L_0x00c0
        L_0x00fd:
            java.lang.String r5 = "crit"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0111
            java.util.List r4 = e.c.a.a.b.l.c.e(r0, r4)
            if (r4 == 0) goto L_0x00c0
            java.util.HashSet r11 = new java.util.HashSet
            r11.<init>(r4)
            goto L_0x00c0
        L_0x0111:
            java.lang.String r5 = "jku"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x011e
            java.net.URI r12 = e.c.a.a.b.l.c.f(r0, r4)
            goto L_0x00c0
        L_0x011e:
            java.lang.String r5 = "jwk"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0131
            i.a.b.d r4 = e.c.a.a.b.l.c.b((i.a.b.d) r0, (java.lang.String) r4)
            if (r4 == 0) goto L_0x00c0
            e.e.a.u.d r13 = e.e.a.u.d.a(r4)
            goto L_0x00c0
        L_0x0131:
            java.lang.String r5 = "x5u"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x013e
            java.net.URI r14 = e.c.a.a.b.l.c.f(r0, r4)
            goto L_0x00c0
        L_0x013e:
            java.lang.String r5 = "x5t"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0150
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r15 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x0150:
            java.lang.String r5 = "x5t#S256"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0162
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r16 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x0162:
            java.lang.String r5 = "x5c"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0174
            i.a.b.a r4 = e.c.a.a.b.l.c.a((i.a.b.d) r0, (java.lang.String) r4)
            java.util.List r17 = e.c.a.a.b.l.c.a((i.a.b.a) r4)
            goto L_0x00c0
        L_0x0174:
            java.lang.String r5 = "kid"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0182
            java.lang.String r18 = e.c.a.a.b.l.c.d(r0, r4)
            goto L_0x00c0
        L_0x0182:
            java.lang.String r5 = "epk"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0194
            i.a.b.d r4 = e.c.a.a.b.l.c.b((i.a.b.d) r0, (java.lang.String) r4)
            e.e.a.u.d r19 = e.e.a.u.d.a(r4)
            goto L_0x00c0
        L_0x0194:
            java.lang.String r5 = "zip"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x01ab
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            if (r4 == 0) goto L_0x00c0
            e.e.a.c r5 = new e.e.a.c
            r5.<init>(r4)
            r20 = r5
            goto L_0x00c0
        L_0x01ab:
            java.lang.String r5 = "apu"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x01bd
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r21 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x01bd:
            java.lang.String r5 = "apv"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x01cf
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r22 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x01cf:
            java.lang.String r5 = "p2s"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x01e1
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r23 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x01e1:
            java.lang.String r5 = "p2c"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0211
            java.lang.Class<java.lang.Number> r5 = java.lang.Number.class
            java.lang.Object r5 = e.c.a.a.b.l.c.a((i.a.b.d) r0, (java.lang.String) r4, r5)
            java.lang.Number r5 = (java.lang.Number) r5
            if (r5 == 0) goto L_0x0203
            int r24 = r5.intValue()
            if (r24 < 0) goto L_0x01fb
            goto L_0x00c0
        L_0x01fb:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The PBES2 count parameter must not be negative"
            r0.<init>(r1)
            throw r0
        L_0x0203:
            java.text.ParseException r0 = new java.text.ParseException
            java.lang.String r1 = "JSON object member with key \""
            java.lang.String r2 = "\" is missing or null"
            java.lang.String r1 = e.a.a.a.a.a((java.lang.String) r1, (java.lang.String) r4, (java.lang.String) r2)
            r0.<init>(r1, r3)
            throw r0
        L_0x0211:
            java.lang.String r5 = "iv"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0223
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r25 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x0223:
            java.lang.String r5 = "tag"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L_0x0235
            java.lang.String r4 = e.c.a.a.b.l.c.d(r0, r4)
            e.e.a.v.c r26 = e.e.a.v.c.a((java.lang.String) r4)
            goto L_0x00c0
        L_0x0235:
            java.lang.Object r5 = r0.get(r4)
            java.util.Set<java.lang.String> r6 = U
            boolean r6 = r6.contains(r4)
            if (r6 != 0) goto L_0x0251
            if (r27 != 0) goto L_0x0248
            java.util.HashMap r27 = new java.util.HashMap
            r27.<init>()
        L_0x0248:
            r6 = r27
            r6.put(r4, r5)
            r27 = r6
            goto L_0x00c0
        L_0x0251:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The parameter name \""
            java.lang.String r2 = "\" matches a registered name"
            java.lang.String r1 = e.a.a.a.a.a((java.lang.String) r1, (java.lang.String) r4, (java.lang.String) r2)
            r0.<init>(r1)
            throw r0
        L_0x025f:
            e.e.a.j r0 = new e.e.a.j
            r6 = r0
            r28 = r29
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28)
            return r0
        L_0x0268:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The encryption method \"enc\" parameter must not be null"
            r0.<init>(r1)
            throw r0
        L_0x0270:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The JWE algorithm \"alg\" cannot be \"none\""
            r0.<init>(r1)
            throw r0
        L_0x0278:
            java.text.ParseException r0 = new java.text.ParseException
            java.lang.String r1 = "The algorithm \"alg\" header parameter must be for encryption"
            r0.<init>(r1, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.e.a.j.a(e.e.a.v.c):e.e.a.j");
    }

    public i.a.b.d b() {
        i.a.b.d b = super.b();
        d dVar = this.L;
        if (dVar != null) {
            b.put("enc", dVar.x);
        }
        d dVar2 = this.M;
        if (dVar2 != null) {
            b.put(Constants.QueryConstants.END_PARTITION_KEY, dVar2.f());
        }
        c cVar = this.N;
        if (cVar != null) {
            b.put("zip", cVar.x);
        }
        c cVar2 = this.O;
        if (cVar2 != null) {
            b.put("apu", cVar2.x);
        }
        c cVar3 = this.P;
        if (cVar3 != null) {
            b.put("apv", cVar3.x);
        }
        c cVar4 = this.Q;
        if (cVar4 != null) {
            b.put("p2s", cVar4.x);
        }
        int i2 = this.R;
        if (i2 > 0) {
            b.put("p2c", Integer.valueOf(i2));
        }
        c cVar5 = this.S;
        if (cVar5 != null) {
            b.put("iv", cVar5.x);
        }
        c cVar6 = this.T;
        if (cVar6 != null) {
            b.put("tag", cVar6.x);
        }
        return b;
    }
}
