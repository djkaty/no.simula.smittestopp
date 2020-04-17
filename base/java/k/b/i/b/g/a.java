package k.b.i.b.g;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;
import k.b.a.o;
import k.b.i.b.g.g;
import k.b.i.b.g.i;
import k.b.i.b.g.j;

public final class a implements Serializable {
    public int A;
    public u B;
    public List<u> C;
    public Map<Integer, LinkedList<u>> D;
    public Stack<u> E;
    public Map<Integer, u> F;
    public int G;
    public boolean H;
    public transient int I;
    public transient k x;
    public final int y;
    public final List<c> z;

    public a(a aVar) {
        this.x = new k(aVar.x.a);
        this.y = aVar.y;
        this.A = aVar.A;
        this.B = aVar.B;
        ArrayList arrayList = new ArrayList();
        this.C = arrayList;
        arrayList.addAll(aVar.C);
        this.D = new TreeMap();
        for (Integer next : aVar.D.keySet()) {
            this.D.put(next, (LinkedList) aVar.D.get(next).clone());
        }
        Stack<u> stack = new Stack<>();
        this.E = stack;
        stack.addAll(aVar.E);
        this.z = new ArrayList();
        for (c clone : aVar.z) {
            this.z.add(clone.clone());
        }
        this.F = new TreeMap(aVar.F);
        this.G = aVar.G;
        this.I = aVar.I;
        this.H = aVar.H;
    }

    public a(k kVar, int i2, int i3, int i4) {
        this.x = kVar;
        this.y = i2;
        this.I = i4;
        this.A = i3;
        if (i3 <= i2 && i3 >= 2) {
            int i5 = i2 - i3;
            if (i5 % 2 == 0) {
                this.C = new ArrayList();
                this.D = new TreeMap();
                this.E = new Stack<>();
                this.z = new ArrayList();
                for (int i6 = 0; i6 < i5; i6++) {
                    this.z.add(new c(i6));
                }
                this.F = new TreeMap();
                this.G = 0;
                this.H = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    public final void a(byte[] bArr, byte[] bArr2, j jVar) {
        int i2;
        int i3;
        if (jVar != null) {
            i iVar = (i) ((i.b) ((i.b) new i.b().b(jVar.a)).a(jVar.b)).b();
            g gVar = (g) ((g.b) ((g.b) new g.b().b(jVar.a)).a(jVar.b)).b();
            for (int i4 = 0; i4 < (1 << this.y); i4++) {
                j.b bVar = (j.b) ((j.b) new j.b().b(jVar.a)).a(jVar.b);
                bVar.f2119e = i4;
                bVar.f2120f = jVar.f2117f;
                bVar.f2121g = jVar.f2118g;
                jVar = (j) ((j.b) bVar.a(jVar.f2131d)).b();
                k kVar = this.x;
                kVar.a(kVar.a(bArr2, jVar), bArr);
                n a = this.x.a(jVar);
                i.b bVar2 = (i.b) ((i.b) new i.b().b(iVar.a)).a(iVar.b);
                bVar2.f2113e = i4;
                bVar2.f2114f = iVar.f2111f;
                bVar2.f2115g = iVar.f2112g;
                iVar = (i) ((i.b) bVar2.a(iVar.f2131d)).b();
                u a2 = k.b.c.e.a.a(this.x, a, iVar);
                g.b bVar3 = (g.b) ((g.b) new g.b().b(gVar.a)).a(gVar.b);
                bVar3.f2109f = i4;
                gVar = (g) ((g.b) bVar3.a(gVar.f2131d)).b();
                while (!this.E.isEmpty() && this.E.peek().x == (i2 = a2.x)) {
                    int i5 = i4 / (1 << i2);
                    if (i5 == 1) {
                        this.C.add(a2);
                    }
                    if (i5 == 3 && (i3 = a2.x) < this.y - this.A) {
                        c cVar = this.z.get(i3);
                        cVar.x = a2;
                        int i6 = a2.x;
                        cVar.z = i6;
                        if (i6 == cVar.y) {
                            cVar.C = true;
                        }
                    }
                    if (i5 >= 3 && (i5 & 1) == 1) {
                        int i7 = a2.x;
                        int i8 = this.y;
                        if (i7 >= i8 - this.A && i7 <= i8 - 2) {
                            if (this.D.get(Integer.valueOf(i7)) == null) {
                                LinkedList linkedList = new LinkedList();
                                linkedList.add(a2);
                                this.D.put(Integer.valueOf(a2.x), linkedList);
                            } else {
                                this.D.get(Integer.valueOf(a2.x)).add(a2);
                            }
                        }
                    }
                    g.b bVar4 = (g.b) ((g.b) new g.b().b(gVar.a)).a(gVar.b);
                    bVar4.f2108e = gVar.f2106f;
                    bVar4.f2109f = (gVar.f2107g - 1) / 2;
                    g gVar2 = (g) ((g.b) bVar4.a(gVar.f2131d)).b();
                    u a3 = k.b.c.e.a.a(this.x, this.E.pop(), a2, (o) gVar2);
                    u uVar = new u(a3.x + 1, a3.a());
                    g.b bVar5 = (g.b) ((g.b) new g.b().b(gVar2.a)).a(gVar2.b);
                    bVar5.f2108e = gVar2.f2106f + 1;
                    bVar5.f2109f = gVar2.f2107g;
                    gVar = (g) ((g.b) bVar5.a(gVar2.f2131d)).b();
                    a2 = uVar;
                }
                this.E.push(a2);
            }
            this.B = this.E.pop();
            return;
        }
        throw new NullPointerException("otsHashAddress == null");
    }

    public final void b(byte[] bArr, byte[] bArr2, j jVar) {
        Object obj;
        List<u> list;
        if (jVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else if (!this.H) {
            int i2 = this.G;
            if (i2 <= this.I - 1) {
                int i3 = this.y;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        i4 = 0;
                        break;
                    } else if (((i2 >> i4) & 1) == 0) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (((this.G >> (i4 + 1)) & 1) == 0 && i4 < this.y - 1) {
                    this.F.put(Integer.valueOf(i4), this.C.get(i4));
                }
                i iVar = (i) ((i.b) ((i.b) new i.b().b(jVar.a)).a(jVar.b)).b();
                g gVar = (g) ((g.b) ((g.b) new g.b().b(jVar.a)).a(jVar.b)).b();
                if (i4 == 0) {
                    j.b bVar = (j.b) ((j.b) new j.b().b(jVar.a)).a(jVar.b);
                    bVar.f2119e = this.G;
                    bVar.f2120f = jVar.f2117f;
                    bVar.f2121g = jVar.f2118g;
                    jVar = (j) ((j.b) bVar.a(jVar.f2131d)).b();
                    k kVar = this.x;
                    kVar.a(kVar.a(bArr2, jVar), bArr);
                    n a = this.x.a(jVar);
                    i.b bVar2 = (i.b) ((i.b) new i.b().b(iVar.a)).a(iVar.b);
                    bVar2.f2113e = this.G;
                    bVar2.f2114f = iVar.f2111f;
                    bVar2.f2115g = iVar.f2112g;
                    this.C.set(0, k.b.c.e.a.a(this.x, a, (i) ((i.b) bVar2.a(iVar.f2131d)).b()));
                } else {
                    g.b bVar3 = (g.b) ((g.b) new g.b().b(gVar.a)).a(gVar.b);
                    int i5 = i4 - 1;
                    bVar3.f2108e = i5;
                    bVar3.f2109f = this.G >> i4;
                    k kVar2 = this.x;
                    kVar2.a(kVar2.a(bArr2, jVar), bArr);
                    u a2 = k.b.c.e.a.a(this.x, this.C.get(i5), this.F.get(Integer.valueOf(i5)), (o) (g) ((g.b) bVar3.a(gVar.f2131d)).b());
                    this.C.set(i4, new u(a2.x + 1, a2.a()));
                    this.F.remove(Integer.valueOf(i5));
                    for (int i6 = 0; i6 < i4; i6++) {
                        if (i6 < this.y - this.A) {
                            list = this.C;
                            obj = this.z.get(i6).x;
                        } else {
                            list = this.C;
                            obj = this.D.get(Integer.valueOf(i6)).removeFirst();
                        }
                        list.set(i6, obj);
                    }
                    int min = Math.min(i4, this.y - this.A);
                    for (int i7 = 0; i7 < min; i7++) {
                        int i8 = ((1 << i7) * 3) + this.G + 1;
                        if (i8 < (1 << this.y)) {
                            c cVar = this.z.get(i7);
                            cVar.x = null;
                            cVar.z = cVar.y;
                            cVar.A = i8;
                            cVar.B = true;
                            cVar.C = false;
                        }
                    }
                }
                for (int i9 = 0; i9 < ((this.y - this.A) >> 1); i9++) {
                    c cVar2 = null;
                    for (c next : this.z) {
                        if (!next.C && next.B) {
                            if (cVar2 == null || next.a() < cVar2.a() || (next.a() == cVar2.a() && next.A < cVar2.A)) {
                                cVar2 = next;
                            }
                        }
                    }
                    if (cVar2 != null) {
                        Stack<u> stack = this.E;
                        k kVar3 = this.x;
                        if (cVar2.C || !cVar2.B) {
                            throw new IllegalStateException("finished or not initialized");
                        }
                        j.b bVar4 = (j.b) ((j.b) new j.b().b(jVar.a)).a(jVar.b);
                        bVar4.f2119e = cVar2.A;
                        bVar4.f2120f = jVar.f2117f;
                        bVar4.f2121g = jVar.f2118g;
                        j jVar2 = (j) ((j.b) bVar4.a(jVar.f2131d)).b();
                        i.b bVar5 = (i.b) ((i.b) new i.b().b(jVar2.a)).a(jVar2.b);
                        bVar5.f2113e = cVar2.A;
                        g.b bVar6 = (g.b) ((g.b) new g.b().b(jVar2.a)).a(jVar2.b);
                        bVar6.f2109f = cVar2.A;
                        g gVar2 = (g) bVar6.b();
                        kVar3.a(kVar3.a(bArr2, jVar2), bArr);
                        u a3 = k.b.c.e.a.a(kVar3, kVar3.a(jVar2), (i) bVar5.b());
                        while (!stack.isEmpty() && stack.peek().x == a3.x && stack.peek().x != cVar2.y) {
                            g.b bVar7 = (g.b) ((g.b) new g.b().b(gVar2.a)).a(gVar2.b);
                            bVar7.f2108e = gVar2.f2106f;
                            bVar7.f2109f = (gVar2.f2107g - 1) / 2;
                            g gVar3 = (g) ((g.b) bVar7.a(gVar2.f2131d)).b();
                            u a4 = k.b.c.e.a.a(kVar3, stack.pop(), a3, (o) gVar3);
                            u uVar = new u(a4.x + 1, a4.a());
                            g.b bVar8 = (g.b) ((g.b) new g.b().b(gVar3.a)).a(gVar3.b);
                            bVar8.f2108e = gVar3.f2106f + 1;
                            bVar8.f2109f = gVar3.f2107g;
                            u uVar2 = uVar;
                            gVar2 = (g) ((g.b) bVar8.a(gVar3.f2131d)).b();
                            a3 = uVar2;
                        }
                        u uVar3 = cVar2.x;
                        if (uVar3 == null) {
                            cVar2.x = a3;
                        } else if (uVar3.x == a3.x) {
                            g.b bVar9 = (g.b) ((g.b) new g.b().b(gVar2.a)).a(gVar2.b);
                            bVar9.f2108e = gVar2.f2106f;
                            bVar9.f2109f = (gVar2.f2107g - 1) / 2;
                            g gVar4 = (g) ((g.b) bVar9.a(gVar2.f2131d)).b();
                            a3 = new u(cVar2.x.x + 1, k.b.c.e.a.a(kVar3, cVar2.x, a3, (o) gVar4).a());
                            cVar2.x = a3;
                            g.b bVar10 = (g.b) ((g.b) new g.b().b(gVar4.a)).a(gVar4.b);
                            bVar10.f2108e = gVar4.f2106f + 1;
                            bVar10.f2109f = gVar4.f2107g;
                            g gVar5 = (g) ((g.b) bVar10.a(gVar4.f2131d)).b();
                        } else {
                            stack.push(a3);
                        }
                        if (cVar2.x.x == cVar2.y) {
                            cVar2.C = true;
                        } else {
                            cVar2.z = a3.x;
                            cVar2.A++;
                        }
                    }
                }
                this.G++;
                return;
            }
            throw new IllegalStateException("index out of bounds");
        } else {
            throw new IllegalStateException("index already used");
        }
    }

    public a(a aVar, o oVar) {
        this.x = new k(new m(oVar));
        this.y = aVar.y;
        this.A = aVar.A;
        this.B = aVar.B;
        ArrayList arrayList = new ArrayList();
        this.C = arrayList;
        arrayList.addAll(aVar.C);
        this.D = new TreeMap();
        for (Integer next : aVar.D.keySet()) {
            this.D.put(next, (LinkedList) aVar.D.get(next).clone());
        }
        Stack<u> stack = new Stack<>();
        this.E = stack;
        stack.addAll(aVar.E);
        this.z = new ArrayList();
        for (c clone : aVar.z) {
            this.z.add(clone.clone());
        }
        TreeMap treeMap = new TreeMap(aVar.F);
        this.F = treeMap;
        int i2 = aVar.G;
        this.G = i2;
        this.I = aVar.I;
        this.H = aVar.H;
        if (this.C == null) {
            throw new IllegalStateException("authenticationPath == null");
        } else if (this.D == null) {
            throw new IllegalStateException("retain == null");
        } else if (this.E == null) {
            throw new IllegalStateException("stack == null");
        } else if (this.z == null) {
            throw new IllegalStateException("treeHashInstances == null");
        } else if (treeMap == null) {
            throw new IllegalStateException("keep == null");
        } else if (!k.b.c.e.a.a(this.y, (long) i2)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    public a(a aVar, byte[] bArr, byte[] bArr2, j jVar) {
        this.x = new k(aVar.x.a);
        this.y = aVar.y;
        this.A = aVar.A;
        this.B = aVar.B;
        ArrayList arrayList = new ArrayList();
        this.C = arrayList;
        arrayList.addAll(aVar.C);
        this.D = new TreeMap();
        for (Integer next : aVar.D.keySet()) {
            this.D.put(next, (LinkedList) aVar.D.get(next).clone());
        }
        Stack<u> stack = new Stack<>();
        this.E = stack;
        stack.addAll(aVar.E);
        this.z = new ArrayList();
        for (c clone : aVar.z) {
            this.z.add(clone.clone());
        }
        this.F = new TreeMap(aVar.F);
        this.G = aVar.G;
        this.I = aVar.I;
        this.H = false;
        b(bArr, bArr2, jVar);
    }
}
