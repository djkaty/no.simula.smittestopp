package h.o;

import h.e;
import h.k.a.p;
import h.k.b.g;
import h.l.c;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class b implements h.n.a<c> {
    public final CharSequence a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1389c;

    /* renamed from: d  reason: collision with root package name */
    public final p<CharSequence, Integer, h.c<Integer, Integer>> f1390d;

    public static final class a implements Iterator<c> {
        public c A;
        public int B;
        public final /* synthetic */ b C;
        public int x = -1;
        public int y;
        public int z;

        public a(b bVar) {
            this.C = bVar;
            int i2 = bVar.b;
            int length = bVar.a.length();
            if (length >= 0) {
                if (i2 < 0) {
                    i2 = 0;
                } else if (i2 > length) {
                    i2 = length;
                }
                this.y = i2;
                this.z = i2;
                return;
            }
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + length + " is less than minimum " + 0 + '.');
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x0019, code lost:
            if (r4 < r0) goto L_0x001b;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a() {
            /*
                r7 = this;
                int r0 = r7.z
                r1 = 0
                if (r0 >= 0) goto L_0x000c
                r7.x = r1
                r0 = 0
                r7.A = r0
                goto L_0x0093
            L_0x000c:
                h.o.b r0 = r7.C
                int r0 = r0.f1389c
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L_0x001b
                int r4 = r7.B
                int r4 = r4 + r3
                r7.B = r4
                if (r4 >= r0) goto L_0x0027
            L_0x001b:
                int r0 = r7.z
                h.o.b r4 = r7.C
                java.lang.CharSequence r4 = r4.a
                int r4 = r4.length()
                if (r0 <= r4) goto L_0x003b
            L_0x0027:
                int r0 = r7.y
                h.l.c r1 = new h.l.c
                h.o.b r4 = r7.C
                java.lang.CharSequence r4 = r4.a
                int r4 = h.o.g.a(r4)
                r1.<init>(r0, r4)
                r7.A = r1
                r7.z = r2
                goto L_0x0091
            L_0x003b:
                h.o.b r0 = r7.C
                h.k.a.p<java.lang.CharSequence, java.lang.Integer, h.c<java.lang.Integer, java.lang.Integer>> r4 = r0.f1390d
                java.lang.CharSequence r0 = r0.a
                int r5 = r7.z
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r4.a(r0, r5)
                h.c r0 = (h.c) r0
                if (r0 != 0) goto L_0x0063
                int r0 = r7.y
                h.l.c r1 = new h.l.c
                h.o.b r4 = r7.C
                java.lang.CharSequence r4 = r4.a
                int r4 = h.o.g.a(r4)
                r1.<init>(r0, r4)
                r7.A = r1
                r7.z = r2
                goto L_0x0091
            L_0x0063:
                A r2 = r0.x
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                B r0 = r0.y
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r7.y
                r5 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r2 > r5) goto L_0x007e
                h.l.c r4 = h.l.c.B
                h.l.c r4 = h.l.c.A
                goto L_0x0086
            L_0x007e:
                h.l.c r5 = new h.l.c
                int r6 = r2 + -1
                r5.<init>(r4, r6)
                r4 = r5
            L_0x0086:
                r7.A = r4
                int r2 = r2 + r0
                r7.y = r2
                if (r0 != 0) goto L_0x008e
                r1 = 1
            L_0x008e:
                int r2 = r2 + r1
                r7.z = r2
            L_0x0091:
                r7.x = r3
            L_0x0093:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: h.o.b.a.a():void");
        }

        public boolean hasNext() {
            if (this.x == -1) {
                a();
            }
            return this.x == 1;
        }

        public Object next() {
            if (this.x == -1) {
                a();
            }
            if (this.x != 0) {
                c cVar = this.A;
                if (cVar != null) {
                    this.A = null;
                    this.x = -1;
                    return cVar;
                }
                throw new e("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public b(CharSequence charSequence, int i2, int i3, p<? super CharSequence, ? super Integer, h.c<Integer, Integer>> pVar) {
        if (charSequence == null) {
            g.a("input");
            throw null;
        } else if (pVar != null) {
            this.a = charSequence;
            this.b = i2;
            this.f1389c = i3;
            this.f1390d = pVar;
        } else {
            g.a("getNextMatch");
            throw null;
        }
    }

    public Iterator<c> iterator() {
        return new a(this);
    }
}
