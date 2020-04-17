package k.e.a;

public final class p {
    public final q a;
    public final q b;

    /* renamed from: c  reason: collision with root package name */
    public final q f2382c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2383d;

    /* renamed from: e  reason: collision with root package name */
    public final String f2384e;

    /* renamed from: f  reason: collision with root package name */
    public p f2385f;

    public p(q qVar, q qVar2, q qVar3, int i2, String str) {
        this.a = qVar;
        this.b = qVar2;
        this.f2382c = qVar3;
        this.f2383d = i2;
        this.f2384e = str;
    }

    public static p a(p pVar, q qVar, q qVar2) {
        int i2;
        if (pVar == null) {
            return null;
        }
        pVar.f2385f = a(pVar.f2385f, qVar, qVar2);
        int i3 = pVar.a.f2387d;
        int i4 = pVar.b.f2387d;
        int i5 = qVar.f2387d;
        if (qVar2 == null) {
            i2 = Integer.MAX_VALUE;
        } else {
            i2 = qVar2.f2387d;
        }
        if (i5 >= i4 || i2 <= i3) {
            return pVar;
        }
        if (i5 <= i3) {
            if (i2 >= i4) {
                return pVar.f2385f;
            }
            return new p(pVar, qVar2, pVar.b);
        } else if (i2 >= i4) {
            return new p(pVar, pVar.a, qVar);
        } else {
            pVar.f2385f = new p(pVar, qVar2, pVar.b);
            return new p(pVar, pVar.a, qVar);
        }
    }

    public p(p pVar, q qVar, q qVar2) {
        q qVar3 = pVar.f2382c;
        int i2 = pVar.f2383d;
        String str = pVar.f2384e;
        this.a = qVar;
        this.b = qVar2;
        this.f2382c = qVar3;
        this.f2383d = i2;
        this.f2384e = str;
        this.f2385f = pVar.f2385f;
    }
}
