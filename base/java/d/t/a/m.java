package d.t.a;

import android.os.Trace;
import d.t.a.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

public final class m implements Runnable {
    public static final ThreadLocal<m> B = new ThreadLocal<>();
    public static Comparator<c> C = new a();
    public ArrayList<c> A = new ArrayList<>();
    public ArrayList<s> x = new ArrayList<>();
    public long y;
    public long z;

    public static class a implements Comparator<c> {
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0019, code lost:
            if (r6.f805d == null) goto L_0x0025;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0022, code lost:
            if (r0 != false) goto L_0x0024;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int compare(java.lang.Object r6, java.lang.Object r7) {
            /*
                r5 = this;
                d.t.a.m$c r6 = (d.t.a.m.c) r6
                d.t.a.m$c r7 = (d.t.a.m.c) r7
                d.t.a.s r0 = r6.f805d
                r1 = 1
                r2 = 0
                if (r0 != 0) goto L_0x000c
                r0 = 1
                goto L_0x000d
            L_0x000c:
                r0 = 0
            L_0x000d:
                d.t.a.s r3 = r7.f805d
                if (r3 != 0) goto L_0x0013
                r3 = 1
                goto L_0x0014
            L_0x0013:
                r3 = 0
            L_0x0014:
                r4 = -1
                if (r0 == r3) goto L_0x001c
                d.t.a.s r6 = r6.f805d
                if (r6 != 0) goto L_0x0024
                goto L_0x0025
            L_0x001c:
                boolean r0 = r6.a
                boolean r3 = r7.a
                if (r0 == r3) goto L_0x0027
                if (r0 == 0) goto L_0x0025
            L_0x0024:
                r1 = -1
            L_0x0025:
                r2 = r1
                goto L_0x0038
            L_0x0027:
                int r0 = r7.b
                int r1 = r6.b
                int r0 = r0 - r1
                if (r0 == 0) goto L_0x0030
                r2 = r0
                goto L_0x0038
            L_0x0030:
                int r6 = r6.f804c
                int r7 = r7.f804c
                int r6 = r6 - r7
                if (r6 == 0) goto L_0x0038
                r2 = r6
            L_0x0038:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: d.t.a.m.a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    public static class b {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int[] f802c;

        /* renamed from: d  reason: collision with root package name */
        public int f803d;

        public boolean a(int i2) {
            if (this.f802c != null) {
                int i3 = this.f803d * 2;
                for (int i4 = 0; i4 < i3; i4 += 2) {
                    if (this.f802c[i4] == i2) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static class c {
        public boolean a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f804c;

        /* renamed from: d  reason: collision with root package name */
        public s f805d;

        /* renamed from: e  reason: collision with root package name */
        public int f806e;
    }

    public void a(long j2) {
        s sVar;
        c cVar;
        int size = this.x.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            s sVar2 = this.x.get(i3);
            if (sVar2.getWindowVisibility() == 0) {
                b bVar = sVar2.B0;
                bVar.f803d = 0;
                int[] iArr = bVar.f802c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                i2 += sVar2.B0.f803d;
            }
        }
        this.A.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            s sVar3 = this.x.get(i5);
            if (sVar3.getWindowVisibility() == 0) {
                b bVar2 = sVar3.B0;
                int abs = Math.abs(bVar2.b) + Math.abs(bVar2.a);
                for (int i6 = 0; i6 < bVar2.f803d * 2; i6 += 2) {
                    if (i4 >= this.A.size()) {
                        cVar = new c();
                        this.A.add(cVar);
                    } else {
                        cVar = this.A.get(i4);
                    }
                    int i7 = bVar2.f802c[i6 + 1];
                    cVar.a = i7 <= abs;
                    cVar.b = abs;
                    cVar.f804c = i7;
                    cVar.f805d = sVar3;
                    cVar.f806e = bVar2.f802c[i6];
                    i4++;
                }
            }
        }
        Collections.sort(this.A, C);
        int i8 = 0;
        while (i8 < this.A.size()) {
            c cVar2 = this.A.get(i8);
            if (cVar2.f805d != null) {
                s.x a2 = a(cVar2.f805d, cVar2.f806e, cVar2.a ? Long.MAX_VALUE : j2);
                if (!(a2 == null || a2.b == null || !a2.k() || a2.l() || (sVar = (s) a2.b.get()) == null)) {
                    if (sVar.b0 && sVar.B.b() != 0) {
                        sVar.o();
                    }
                    b bVar3 = sVar.B0;
                    bVar3.f803d = 0;
                    int[] iArr2 = bVar3.f802c;
                    if (iArr2 != null) {
                        Arrays.fill(iArr2, -1);
                    }
                    if (bVar3.f803d != 0) {
                        try {
                            d.i.e.b.a("RV Nested Prefetch");
                            sVar.C0.f840d = 1;
                            throw null;
                        } catch (Throwable th) {
                            d.i.e.b.a();
                            throw th;
                        }
                    }
                }
                cVar2.a = false;
                cVar2.b = 0;
                cVar2.f804c = 0;
                cVar2.f805d = null;
                cVar2.f806e = 0;
                i8++;
            } else {
                return;
            }
        }
    }

    public void run() {
        try {
            d.i.e.b.a("RV Prefetch");
            if (this.x.isEmpty()) {
                this.y = 0;
                Trace.endSection();
                return;
            }
            int size = this.x.size();
            long j2 = 0;
            for (int i2 = 0; i2 < size; i2++) {
                s sVar = this.x.get(i2);
                if (sVar.getWindowVisibility() == 0) {
                    j2 = Math.max(sVar.getDrawingTime(), j2);
                }
            }
            if (j2 == 0) {
                this.y = 0;
                Trace.endSection();
                return;
            }
            a(TimeUnit.MILLISECONDS.toNanos(j2) + this.z);
            this.y = 0;
            Trace.endSection();
        } catch (Throwable th) {
            this.y = 0;
            d.i.e.b.a();
            throw th;
        }
    }

    public final s.x a(s sVar, int i2, long j2) {
        boolean z2;
        int b2 = sVar.B.b();
        int i3 = 0;
        while (true) {
            if (i3 >= b2) {
                z2 = false;
                break;
            }
            s.x b3 = s.b(sVar.B.d(i3));
            if (b3.f848c == i2 && !b3.l()) {
                z2 = true;
                break;
            }
            i3++;
        }
        if (z2) {
            return null;
        }
        s.q qVar = sVar.y;
        try {
            sVar.m();
            s.x a2 = qVar.a(i2, false, j2);
            if (a2 != null) {
                if (!a2.k() || a2.l()) {
                    qVar.a(a2, false);
                } else {
                    qVar.a(a2.a);
                }
            }
            return a2;
        } finally {
            sVar.a(false);
        }
    }

    public void a(s sVar, int i2, int i3) {
        if (sVar.N && this.y == 0) {
            this.y = sVar.getNanoTime();
            sVar.post(this);
        }
        b bVar = sVar.B0;
        bVar.a = i2;
        bVar.b = i3;
    }
}
