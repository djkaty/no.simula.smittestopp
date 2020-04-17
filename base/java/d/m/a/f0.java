package d.m.a;

import android.view.View;
import androidx.fragment.app.Fragment;
import d.f.g;
import d.i.i.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class f0 {
    public static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    public static final k0 b = new g0();

    /* renamed from: c  reason: collision with root package name */
    public static final k0 f650c;

    public interface a {
    }

    public static class b {
        public Fragment a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public a f651c;

        /* renamed from: d  reason: collision with root package name */
        public Fragment f652d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f653e;

        /* renamed from: f  reason: collision with root package name */
        public a f654f;
    }

    static {
        k0 k0Var;
        try {
            k0Var = (k0) Class.forName("d.x.d").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            k0Var = null;
        }
        f650c = k0Var;
    }

    /* JADX WARNING: type inference failed for: r3v8, types: [android.view.View] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:165:0x0459  */
    /* JADX WARNING: Removed duplicated region for block: B:174:0x0497 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x0246 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(d.m.a.p r39, java.util.ArrayList<d.m.a.a> r40, java.util.ArrayList<java.lang.Boolean> r41, int r42, int r43, boolean r44, d.m.a.f0.a r45) {
        /*
            r0 = r39
            r1 = r40
            r2 = r41
            r3 = r43
            r4 = r44
            int r5 = r0.m
            r6 = 1
            if (r5 >= r6) goto L_0x0010
            return
        L_0x0010:
            android.util.SparseArray r5 = new android.util.SparseArray
            r5.<init>()
            r7 = r42
        L_0x0017:
            r8 = 0
            if (r7 >= r3) goto L_0x0068
            java.lang.Object r9 = r1.get(r7)
            d.m.a.a r9 = (d.m.a.a) r9
            java.lang.Object r10 = r2.get(r7)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L_0x004e
            d.m.a.p r8 = r9.r
            d.m.a.i r8 = r8.o
            boolean r8 = r8.a()
            if (r8 != 0) goto L_0x0037
            goto L_0x0065
        L_0x0037:
            java.util.ArrayList<d.m.a.y$a> r8 = r9.a
            int r8 = r8.size()
            int r8 = r8 - r6
        L_0x003e:
            if (r8 < 0) goto L_0x0065
            java.util.ArrayList<d.m.a.y$a> r10 = r9.a
            java.lang.Object r10 = r10.get(r8)
            d.m.a.y$a r10 = (d.m.a.y.a) r10
            a((d.m.a.a) r9, (d.m.a.y.a) r10, (android.util.SparseArray<d.m.a.f0.b>) r5, (boolean) r6, (boolean) r4)
            int r8 = r8 + -1
            goto L_0x003e
        L_0x004e:
            java.util.ArrayList<d.m.a.y$a> r10 = r9.a
            int r10 = r10.size()
            r11 = 0
        L_0x0055:
            if (r11 >= r10) goto L_0x0065
            java.util.ArrayList<d.m.a.y$a> r12 = r9.a
            java.lang.Object r12 = r12.get(r11)
            d.m.a.y$a r12 = (d.m.a.y.a) r12
            a((d.m.a.a) r9, (d.m.a.y.a) r12, (android.util.SparseArray<d.m.a.f0.b>) r5, (boolean) r8, (boolean) r4)
            int r11 = r11 + 1
            goto L_0x0055
        L_0x0065:
            int r7 = r7 + 1
            goto L_0x0017
        L_0x0068:
            int r7 = r5.size()
            if (r7 == 0) goto L_0x04ab
            android.view.View r7 = new android.view.View
            d.m.a.m<?> r9 = r0.n
            android.content.Context r9 = r9.y
            r7.<init>(r9)
            int r15 = r5.size()
            r14 = 0
        L_0x007c:
            if (r14 >= r15) goto L_0x04ab
            int r9 = r5.keyAt(r14)
            d.f.a r13 = new d.f.a
            r13.<init>()
            int r10 = r3 + -1
            r12 = r42
        L_0x008b:
            if (r10 < r12) goto L_0x00f6
            java.lang.Object r11 = r1.get(r10)
            d.m.a.a r11 = (d.m.a.a) r11
            boolean r16 = r11.b((int) r9)
            if (r16 != 0) goto L_0x009a
            goto L_0x00eb
        L_0x009a:
            java.lang.Object r16 = r2.get(r10)
            java.lang.Boolean r16 = (java.lang.Boolean) r16
            boolean r16 = r16.booleanValue()
            java.util.ArrayList<java.lang.String> r6 = r11.n
            if (r6 == 0) goto L_0x00eb
            int r6 = r6.size()
            if (r16 == 0) goto L_0x00b3
            java.util.ArrayList<java.lang.String> r8 = r11.n
            java.util.ArrayList<java.lang.String> r11 = r11.o
            goto L_0x00bc
        L_0x00b3:
            java.util.ArrayList<java.lang.String> r8 = r11.n
            java.util.ArrayList<java.lang.String> r11 = r11.o
            r38 = r11
            r11 = r8
            r8 = r38
        L_0x00bc:
            r1 = 0
        L_0x00bd:
            if (r1 >= r6) goto L_0x00eb
            java.lang.Object r16 = r11.get(r1)
            r2 = r16
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r16 = r8.get(r1)
            r3 = r16
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r16 = r13.remove(r3)
            r17 = r6
            r6 = r16
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L_0x00df
            r13.put(r2, r6)
            goto L_0x00e2
        L_0x00df:
            r13.put(r2, r3)
        L_0x00e2:
            int r1 = r1 + 1
            r2 = r41
            r3 = r43
            r6 = r17
            goto L_0x00bd
        L_0x00eb:
            int r10 = r10 + -1
            r1 = r40
            r2 = r41
            r3 = r43
            r6 = 1
            r8 = 0
            goto L_0x008b
        L_0x00f6:
            java.lang.Object r1 = r5.valueAt(r14)
            d.m.a.f0$b r1 = (d.m.a.f0.b) r1
            if (r4 == 0) goto L_0x0310
            d.m.a.i r3 = r0.o
            boolean r3 = r3.a()
            if (r3 == 0) goto L_0x010f
            d.m.a.i r3 = r0.o
            android.view.View r3 = r3.a(r9)
            android.view.ViewGroup r3 = (android.view.ViewGroup) r3
            goto L_0x0110
        L_0x010f:
            r3 = 0
        L_0x0110:
            if (r3 != 0) goto L_0x011a
        L_0x0112:
            r31 = r5
            r32 = r14
            r33 = r15
            goto L_0x0309
        L_0x011a:
            androidx.fragment.app.Fragment r6 = r1.a
            androidx.fragment.app.Fragment r8 = r1.f652d
            d.m.a.k0 r9 = a((androidx.fragment.app.Fragment) r8, (androidx.fragment.app.Fragment) r6)
            if (r9 != 0) goto L_0x0125
            goto L_0x0112
        L_0x0125:
            boolean r10 = r1.b
            boolean r11 = r1.f653e
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r31 = r5
            java.lang.Object r5 = a((d.m.a.k0) r9, (androidx.fragment.app.Fragment) r6, (boolean) r10)
            java.lang.Object r11 = b(r9, r8, r11)
            androidx.fragment.app.Fragment r12 = r1.a
            r32 = r14
            androidx.fragment.app.Fragment r14 = r1.f652d
            r33 = r15
            if (r12 == 0) goto L_0x014f
            android.view.View r15 = r12.requireView()
            r0 = 0
            r15.setVisibility(r0)
        L_0x014f:
            if (r12 == 0) goto L_0x01ef
            if (r14 != 0) goto L_0x0155
            goto L_0x01ef
        L_0x0155:
            boolean r0 = r1.b
            boolean r15 = r13.isEmpty()
            if (r15 == 0) goto L_0x0161
            r34 = r10
            r15 = 0
            goto L_0x0167
        L_0x0161:
            java.lang.Object r15 = a((d.m.a.k0) r9, (androidx.fragment.app.Fragment) r12, (androidx.fragment.app.Fragment) r14, (boolean) r0)
            r34 = r10
        L_0x0167:
            d.f.a r10 = b(r9, r13, r15, r1)
            r35 = r6
            d.f.a r6 = a((d.m.a.k0) r9, (d.f.a<java.lang.String, java.lang.String>) r13, (java.lang.Object) r15, (d.m.a.f0.b) r1)
            boolean r16 = r13.isEmpty()
            if (r16 == 0) goto L_0x0183
            if (r10 == 0) goto L_0x017c
            r10.clear()
        L_0x017c:
            if (r6 == 0) goto L_0x0181
            r6.clear()
        L_0x0181:
            r15 = 0
            goto L_0x0195
        L_0x0183:
            r16 = r15
            java.util.Set r15 = r13.keySet()
            a((java.util.ArrayList<android.view.View>) r4, (d.f.a<java.lang.String, android.view.View>) r10, (java.util.Collection<java.lang.String>) r15)
            java.util.Collection r15 = r13.values()
            a((java.util.ArrayList<android.view.View>) r2, (d.f.a<java.lang.String, android.view.View>) r6, (java.util.Collection<java.lang.String>) r15)
            r15 = r16
        L_0x0195:
            if (r5 != 0) goto L_0x019e
            if (r11 != 0) goto L_0x019e
            if (r15 != 0) goto L_0x019e
            r37 = r2
            goto L_0x01f5
        L_0x019e:
            r36 = r13
            r13 = 1
            a((androidx.fragment.app.Fragment) r12, (androidx.fragment.app.Fragment) r14, (boolean) r0, (d.f.a<java.lang.String, android.view.View>) r10, (boolean) r13)
            if (r15 == 0) goto L_0x01d4
            r2.add(r7)
            r9.b((java.lang.Object) r15, (android.view.View) r7, (java.util.ArrayList<android.view.View>) r4)
            boolean r13 = r1.f653e
            r37 = r2
            d.m.a.a r2 = r1.f654f
            r16 = r9
            r17 = r15
            r18 = r11
            r19 = r10
            r20 = r13
            r21 = r2
            a((d.m.a.k0) r16, (java.lang.Object) r17, (java.lang.Object) r18, (d.f.a<java.lang.String, android.view.View>) r19, (boolean) r20, (d.m.a.a) r21)
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            android.view.View r1 = a((d.f.a<java.lang.String, android.view.View>) r6, (d.m.a.f0.b) r1, (java.lang.Object) r5, (boolean) r0)
            if (r1 == 0) goto L_0x01cf
            r9.a((java.lang.Object) r5, (android.graphics.Rect) r2)
        L_0x01cf:
            r27 = r1
            r29 = r2
            goto L_0x01da
        L_0x01d4:
            r37 = r2
            r27 = 0
            r29 = 0
        L_0x01da:
            d.m.a.d0 r1 = new d.m.a.d0
            r22 = r1
            r23 = r12
            r24 = r14
            r25 = r0
            r26 = r6
            r28 = r9
            r22.<init>(r23, r24, r25, r26, r27, r28, r29)
            d.i.i.l.a(r3, r1)
            goto L_0x01f8
        L_0x01ef:
            r37 = r2
            r35 = r6
            r34 = r10
        L_0x01f5:
            r36 = r13
            r15 = 0
        L_0x01f8:
            if (r5 != 0) goto L_0x0200
            if (r15 != 0) goto L_0x0200
            if (r11 != 0) goto L_0x0200
            goto L_0x0309
        L_0x0200:
            java.util.ArrayList r0 = a((d.m.a.k0) r9, (java.lang.Object) r11, (androidx.fragment.app.Fragment) r8, (java.util.ArrayList<android.view.View>) r4, (android.view.View) r7)
            r1 = r35
            r2 = r37
            java.util.ArrayList r6 = a((d.m.a.k0) r9, (java.lang.Object) r5, (androidx.fragment.app.Fragment) r1, (java.util.ArrayList<android.view.View>) r2, (android.view.View) r7)
            r10 = 4
            a((java.util.ArrayList<android.view.View>) r6, (int) r10)
            r16 = r9
            r17 = r5
            r18 = r11
            r19 = r15
            r20 = r1
            r21 = r34
            java.lang.Object r1 = a((d.m.a.k0) r16, (java.lang.Object) r17, (java.lang.Object) r18, (java.lang.Object) r19, (androidx.fragment.app.Fragment) r20, (boolean) r21)
            if (r8 == 0) goto L_0x0244
            if (r0 == 0) goto L_0x0244
            int r10 = r0.size()
            if (r10 > 0) goto L_0x0230
            int r10 = r4.size()
            if (r10 <= 0) goto L_0x0244
        L_0x0230:
            d.i.e.a r10 = new d.i.e.a
            r10.<init>()
            r12 = r45
            d.m.a.p$b r12 = (d.m.a.p.b) r12
            r12.b(r8, r10)
            d.m.a.z r13 = new d.m.a.z
            r13.<init>(r12, r8, r10)
            r9.a(r8, r1, r10, r13)
        L_0x0244:
            if (r1 == 0) goto L_0x0309
            if (r8 == 0) goto L_0x026b
            if (r11 == 0) goto L_0x026b
            boolean r10 = r8.mAdded
            if (r10 == 0) goto L_0x026b
            boolean r10 = r8.mHidden
            if (r10 == 0) goto L_0x026b
            boolean r10 = r8.mHiddenChanged
            if (r10 == 0) goto L_0x026b
            r10 = 1
            r8.setHideReplaced(r10)
            android.view.View r10 = r8.getView()
            r9.a((java.lang.Object) r11, (android.view.View) r10, (java.util.ArrayList<android.view.View>) r0)
            android.view.ViewGroup r8 = r8.mContainer
            d.m.a.a0 r10 = new d.m.a.a0
            r10.<init>(r0)
            d.i.i.l.a(r8, r10)
        L_0x026b:
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            int r10 = r2.size()
            r12 = 0
        L_0x0275:
            if (r12 >= r10) goto L_0x028b
            java.lang.Object r13 = r2.get(r12)
            android.view.View r13 = (android.view.View) r13
            java.lang.String r14 = d.i.i.n.n(r13)
            r8.add(r14)
            r14 = 0
            r13.setTransitionName(r14)
            int r12 = r12 + 1
            goto L_0x0275
        L_0x028b:
            r22 = r9
            r23 = r1
            r24 = r5
            r25 = r6
            r26 = r11
            r27 = r0
            r28 = r15
            r29 = r2
            r22.a(r23, r24, r25, r26, r27, r28, r29)
            r9.a((android.view.ViewGroup) r3, (java.lang.Object) r1)
            int r0 = r2.size()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5 = 0
        L_0x02ab:
            if (r5 >= r0) goto L_0x02eb
            java.lang.Object r10 = r4.get(r5)
            android.view.View r10 = (android.view.View) r10
            java.lang.String r11 = d.i.i.n.n(r10)
            r1.add(r11)
            if (r11 != 0) goto L_0x02bf
            r13 = r36
            goto L_0x02e6
        L_0x02bf:
            r14 = 0
            r10.setTransitionName(r14)
            r13 = r36
            java.lang.Object r10 = r13.get(r11)
            java.lang.String r10 = (java.lang.String) r10
            r12 = 0
        L_0x02cc:
            if (r12 >= r0) goto L_0x02e6
            java.lang.Object r14 = r8.get(r12)
            boolean r14 = r10.equals(r14)
            if (r14 == 0) goto L_0x02e2
            java.lang.Object r10 = r2.get(r12)
            android.view.View r10 = (android.view.View) r10
            r10.setTransitionName(r11)
            goto L_0x02e6
        L_0x02e2:
            int r12 = r12 + 1
            r14 = 0
            goto L_0x02cc
        L_0x02e6:
            int r5 = r5 + 1
            r36 = r13
            goto L_0x02ab
        L_0x02eb:
            d.m.a.h0 r5 = new d.m.a.h0
            r22 = r5
            r23 = r9
            r24 = r0
            r25 = r2
            r26 = r8
            r27 = r4
            r28 = r1
            r22.<init>(r23, r24, r25, r26, r27, r28)
            d.i.i.l.a(r3, r5)
            r0 = 0
            a((java.util.ArrayList<android.view.View>) r6, (int) r0)
            r9.b((java.lang.Object) r15, (java.util.ArrayList<android.view.View>) r4, (java.util.ArrayList<android.view.View>) r2)
            goto L_0x030a
        L_0x0309:
            r0 = 0
        L_0x030a:
            r27 = r32
            r30 = r33
            goto L_0x0497
        L_0x0310:
            r31 = r5
            r32 = r14
            r33 = r15
            r0 = 0
            r2 = r39
            d.m.a.i r3 = r2.o
            boolean r3 = r3.a()
            if (r3 == 0) goto L_0x032c
            d.m.a.i r3 = r2.o
            android.view.View r3 = r3.a(r9)
            r14 = r3
            android.view.ViewGroup r14 = (android.view.ViewGroup) r14
            r3 = r14
            goto L_0x032d
        L_0x032c:
            r3 = 0
        L_0x032d:
            if (r3 != 0) goto L_0x0330
            goto L_0x030a
        L_0x0330:
            androidx.fragment.app.Fragment r4 = r1.a
            androidx.fragment.app.Fragment r5 = r1.f652d
            d.m.a.k0 r6 = a((androidx.fragment.app.Fragment) r5, (androidx.fragment.app.Fragment) r4)
            if (r6 != 0) goto L_0x033b
            goto L_0x030a
        L_0x033b:
            boolean r8 = r1.b
            boolean r9 = r1.f653e
            java.lang.Object r8 = a((d.m.a.k0) r6, (androidx.fragment.app.Fragment) r4, (boolean) r8)
            java.lang.Object r12 = b(r6, r5, r9)
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            androidx.fragment.app.Fragment r9 = r1.a
            androidx.fragment.app.Fragment r15 = r1.f652d
            if (r9 == 0) goto L_0x03f3
            if (r15 != 0) goto L_0x035b
            goto L_0x03f3
        L_0x035b:
            boolean r14 = r1.b
            boolean r16 = r13.isEmpty()
            if (r16 == 0) goto L_0x0365
            r0 = 0
            goto L_0x036b
        L_0x0365:
            java.lang.Object r16 = a((d.m.a.k0) r6, (androidx.fragment.app.Fragment) r9, (androidx.fragment.app.Fragment) r15, (boolean) r14)
            r0 = r16
        L_0x036b:
            d.f.a r2 = b(r6, r13, r0, r1)
            boolean r16 = r13.isEmpty()
            if (r16 == 0) goto L_0x0377
            r0 = 0
            goto L_0x0382
        L_0x0377:
            r16 = r0
            java.util.Collection r0 = r2.values()
            r11.addAll(r0)
            r0 = r16
        L_0x0382:
            if (r8 != 0) goto L_0x038a
            if (r12 != 0) goto L_0x038a
            if (r0 != 0) goto L_0x038a
            goto L_0x03f3
        L_0x038a:
            r22 = r4
            r4 = 1
            a((androidx.fragment.app.Fragment) r9, (androidx.fragment.app.Fragment) r15, (boolean) r14, (d.f.a<java.lang.String, android.view.View>) r2, (boolean) r4)
            if (r0 == 0) goto L_0x03b9
            android.graphics.Rect r4 = new android.graphics.Rect
            r4.<init>()
            r6.b((java.lang.Object) r0, (android.view.View) r7, (java.util.ArrayList<android.view.View>) r11)
            r20 = r9
            boolean r9 = r1.f653e
            r21 = r10
            d.m.a.a r10 = r1.f654f
            r23 = r14
            r14 = r6
            r24 = r15
            r15 = r0
            r16 = r12
            r17 = r2
            r18 = r9
            r19 = r10
            a((d.m.a.k0) r14, (java.lang.Object) r15, (java.lang.Object) r16, (d.f.a<java.lang.String, android.view.View>) r17, (boolean) r18, (d.m.a.a) r19)
            if (r8 == 0) goto L_0x03c2
            r6.a((java.lang.Object) r8, (android.graphics.Rect) r4)
            goto L_0x03c2
        L_0x03b9:
            r20 = r9
            r21 = r10
            r23 = r14
            r24 = r15
            r4 = 0
        L_0x03c2:
            d.m.a.e0 r2 = new d.m.a.e0
            r16 = r20
            r9 = r2
            r15 = r21
            r10 = r6
            r14 = r11
            r11 = r13
            r25 = r5
            r5 = r12
            r12 = r0
            r26 = r0
            r0 = r13
            r13 = r1
            r28 = r14
            r27 = r32
            r29 = 0
            r14 = r15
            r32 = r15
            r30 = r33
            r15 = r7
            r17 = r24
            r18 = r23
            r19 = r28
            r20 = r8
            r21 = r4
            r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            d.i.i.l.a(r3, r2)
            r20 = r26
            goto L_0x0405
        L_0x03f3:
            r22 = r4
            r25 = r5
            r28 = r11
            r5 = r12
            r0 = r13
            r27 = r32
            r30 = r33
            r29 = 0
            r32 = r10
            r20 = r29
        L_0x0405:
            if (r8 != 0) goto L_0x040d
            if (r20 != 0) goto L_0x040d
            if (r5 != 0) goto L_0x040d
            goto L_0x0497
        L_0x040d:
            r2 = r25
            r4 = r28
            java.util.ArrayList r23 = a((d.m.a.k0) r6, (java.lang.Object) r5, (androidx.fragment.app.Fragment) r2, (java.util.ArrayList<android.view.View>) r4, (android.view.View) r7)
            if (r23 == 0) goto L_0x0420
            boolean r9 = r23.isEmpty()
            if (r9 == 0) goto L_0x041e
            goto L_0x0420
        L_0x041e:
            r29 = r5
        L_0x0420:
            r6.a((java.lang.Object) r8, (android.view.View) r7)
            boolean r1 = r1.b
            r14 = r6
            r15 = r8
            r16 = r29
            r17 = r20
            r18 = r22
            r19 = r1
            java.lang.Object r1 = a((d.m.a.k0) r14, (java.lang.Object) r15, (java.lang.Object) r16, (java.lang.Object) r17, (androidx.fragment.app.Fragment) r18, (boolean) r19)
            if (r2 == 0) goto L_0x0457
            if (r23 == 0) goto L_0x0457
            int r5 = r23.size()
            if (r5 > 0) goto L_0x0443
            int r4 = r4.size()
            if (r4 <= 0) goto L_0x0457
        L_0x0443:
            d.i.e.a r4 = new d.i.e.a
            r4.<init>()
            r5 = r45
            d.m.a.p$b r5 = (d.m.a.p.b) r5
            r5.b(r2, r4)
            d.m.a.b0 r9 = new d.m.a.b0
            r9.<init>(r5, r2, r4)
            r6.a(r2, r1, r4, r9)
        L_0x0457:
            if (r1 == 0) goto L_0x0497
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r14 = r6
            r15 = r1
            r16 = r8
            r17 = r2
            r18 = r29
            r19 = r23
            r21 = r32
            r14.a(r15, r16, r17, r18, r19, r20, r21)
            d.m.a.c0 r4 = new d.m.a.c0
            r9 = r4
            r10 = r8
            r11 = r6
            r12 = r7
            r13 = r22
            r14 = r32
            r15 = r2
            r16 = r23
            r17 = r29
            r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17)
            d.i.i.l.a(r3, r4)
            d.m.a.i0 r2 = new d.m.a.i0
            r4 = r32
            r2.<init>(r6, r4, r0)
            d.i.i.l.a(r3, r2)
            r6.a((android.view.ViewGroup) r3, (java.lang.Object) r1)
            d.m.a.j0 r1 = new d.m.a.j0
            r1.<init>(r6, r4, r0)
            d.i.i.l.a(r3, r1)
        L_0x0497:
            int r14 = r27 + 1
            r0 = r39
            r1 = r40
            r2 = r41
            r3 = r43
            r4 = r44
            r15 = r30
            r5 = r31
            r6 = 1
            r8 = 0
            goto L_0x007c
        L_0x04ab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.f0.a(d.m.a.p, java.util.ArrayList, java.util.ArrayList, int, int, boolean, d.m.a.f0$a):void");
    }

    public static Object b(k0 k0Var, Fragment fragment, boolean z) {
        Object obj;
        if (fragment == null) {
            return null;
        }
        if (z) {
            obj = fragment.getReturnTransition();
        } else {
            obj = fragment.getExitTransition();
        }
        return k0Var.b(obj);
    }

    public static d.f.a<String, View> b(k0 k0Var, d.f.a<String, String> aVar, Object obj, b bVar) {
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = bVar.f652d;
        d.f.a<String, View> aVar2 = new d.f.a<>();
        k0Var.a((Map<String, View>) aVar2, fragment.requireView());
        a aVar3 = bVar.f654f;
        if (bVar.f653e) {
            fragment.getEnterTransitionCallback();
            arrayList = aVar3.o;
        } else {
            fragment.getExitTransitionCallback();
            arrayList = aVar3.n;
        }
        if (arrayList != null) {
            g.a(aVar2, (Collection<?>) arrayList);
        }
        g.a(aVar, (Collection<?>) aVar2.keySet());
        return aVar2;
    }

    public static k0 a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        k0 k0Var = b;
        if (k0Var != null && a(k0Var, (List<Object>) arrayList)) {
            return b;
        }
        k0 k0Var2 = f650c;
        if (k0Var2 != null && a(k0Var2, (List<Object>) arrayList)) {
            return f650c;
        }
        if (b == null && f650c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    public static boolean a(k0 k0Var, List<Object> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!k0Var.a(list.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static Object a(k0 k0Var, Fragment fragment, Fragment fragment2, boolean z) {
        Object obj;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            obj = fragment2.getSharedElementReturnTransition();
        } else {
            obj = fragment.getSharedElementEnterTransition();
        }
        return k0Var.c(k0Var.b(obj));
    }

    public static Object a(k0 k0Var, Fragment fragment, boolean z) {
        Object obj;
        if (fragment == null) {
            return null;
        }
        if (z) {
            obj = fragment.getReenterTransition();
        } else {
            obj = fragment.getEnterTransition();
        }
        return k0Var.b(obj);
    }

    public static void a(ArrayList<View> arrayList, d.f.a<String, View> aVar, Collection<String> collection) {
        for (int i2 = aVar.z - 1; i2 >= 0; i2--) {
            View e2 = aVar.e(i2);
            if (collection.contains(n.n(e2))) {
                arrayList.add(e2);
            }
        }
    }

    public static d.f.a<String, View> a(k0 k0Var, d.f.a<String, String> aVar, Object obj, b bVar) {
        ArrayList<String> arrayList;
        Fragment fragment = bVar.a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        d.f.a<String, View> aVar2 = new d.f.a<>();
        k0Var.a((Map<String, View>) aVar2, view);
        a aVar3 = bVar.f651c;
        if (bVar.b) {
            fragment.getExitTransitionCallback();
            arrayList = aVar3.n;
        } else {
            fragment.getEnterTransitionCallback();
            arrayList = aVar3.o;
        }
        if (arrayList != null) {
            g.a(aVar2, (Collection<?>) arrayList);
            g.a(aVar2, (Collection<?>) aVar.values());
        }
        int i2 = aVar.z;
        while (true) {
            i2--;
            if (i2 < 0) {
                return aVar2;
            }
            if (!aVar2.containsKey(aVar.e(i2))) {
                aVar.d(i2);
            }
        }
    }

    public static View a(d.f.a<String, View> aVar, b bVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        String str;
        a aVar2 = bVar.f651c;
        if (obj == null || aVar == null || (arrayList = aVar2.n) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z) {
            str = aVar2.n.get(0);
        } else {
            str = aVar2.o.get(0);
        }
        return aVar.get(str);
    }

    public static void a(k0 k0Var, Object obj, Object obj2, d.f.a<String, View> aVar, boolean z, a aVar2) {
        String str;
        ArrayList<String> arrayList = aVar2.n;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (z) {
                str = aVar2.o.get(0);
            } else {
                str = aVar2.n.get(0);
            }
            View view = aVar.get(str);
            k0Var.c(obj, view);
            if (obj2 != null) {
                k0Var.c(obj2, view);
            }
        }
    }

    public static void a(Fragment fragment, Fragment fragment2, boolean z, d.f.a<String, View> aVar, boolean z2) {
        if (z) {
            fragment2.getEnterTransitionCallback();
        } else {
            fragment.getEnterTransitionCallback();
        }
    }

    public static ArrayList<View> a(k0 k0Var, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            k0Var.a(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        k0Var.a(obj, arrayList2);
        return arrayList2;
    }

    public static void a(ArrayList<View> arrayList, int i2) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i2);
            }
        }
    }

    public static Object a(k0 k0Var, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean z2;
        if (obj == null || obj2 == null || fragment == null) {
            z2 = true;
        } else {
            z2 = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        }
        if (z2) {
            return k0Var.b(obj2, obj, obj3);
        }
        return k0Var.a(obj2, obj, obj3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0038, code lost:
        if (r0.mAdded != false) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0076, code lost:
        r9 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0088, code lost:
        if (r0.mHidden == false) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x008a, code lost:
        r9 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:100:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x00e6 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(d.m.a.a r8, d.m.a.y.a r9, android.util.SparseArray<d.m.a.f0.b> r10, boolean r11, boolean r12) {
        /*
            androidx.fragment.app.Fragment r0 = r9.b
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            int r1 = r0.mContainerId
            if (r1 != 0) goto L_0x000a
            return
        L_0x000a:
            if (r11 == 0) goto L_0x0013
            int[] r2 = a
            int r9 = r9.a
            r9 = r2[r9]
            goto L_0x0015
        L_0x0013:
            int r9 = r9.a
        L_0x0015:
            r2 = 1
            r3 = 0
            if (r9 == r2) goto L_0x007d
            r4 = 3
            if (r9 == r4) goto L_0x0056
            r4 = 4
            if (r9 == r4) goto L_0x003e
            r4 = 5
            if (r9 == r4) goto L_0x002c
            r4 = 6
            if (r9 == r4) goto L_0x0056
            r4 = 7
            if (r9 == r4) goto L_0x007d
            r9 = 0
            r4 = 0
            goto L_0x008e
        L_0x002c:
            if (r12 == 0) goto L_0x003b
            boolean r9 = r0.mHiddenChanged
            if (r9 == 0) goto L_0x008c
            boolean r9 = r0.mHidden
            if (r9 != 0) goto L_0x008c
            boolean r9 = r0.mAdded
            if (r9 == 0) goto L_0x008c
            goto L_0x008a
        L_0x003b:
            boolean r9 = r0.mHidden
            goto L_0x008d
        L_0x003e:
            if (r12 == 0) goto L_0x004d
            boolean r9 = r0.mHiddenChanged
            if (r9 == 0) goto L_0x0078
            boolean r9 = r0.mAdded
            if (r9 == 0) goto L_0x0078
            boolean r9 = r0.mHidden
            if (r9 == 0) goto L_0x0078
            goto L_0x0076
        L_0x004d:
            boolean r9 = r0.mAdded
            if (r9 == 0) goto L_0x0078
            boolean r9 = r0.mHidden
            if (r9 != 0) goto L_0x0078
            goto L_0x0076
        L_0x0056:
            if (r12 == 0) goto L_0x006e
            boolean r9 = r0.mAdded
            if (r9 != 0) goto L_0x0078
            android.view.View r9 = r0.mView
            if (r9 == 0) goto L_0x0078
            int r9 = r9.getVisibility()
            if (r9 != 0) goto L_0x0078
            float r9 = r0.mPostponedAlpha
            r4 = 0
            int r9 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r9 < 0) goto L_0x0078
            goto L_0x0076
        L_0x006e:
            boolean r9 = r0.mAdded
            if (r9 == 0) goto L_0x0078
            boolean r9 = r0.mHidden
            if (r9 != 0) goto L_0x0078
        L_0x0076:
            r9 = 1
            goto L_0x0079
        L_0x0078:
            r9 = 0
        L_0x0079:
            r5 = r9
            r9 = 1
            r4 = 0
            goto L_0x0091
        L_0x007d:
            if (r12 == 0) goto L_0x0082
            boolean r9 = r0.mIsNewlyAdded
            goto L_0x008d
        L_0x0082:
            boolean r9 = r0.mAdded
            if (r9 != 0) goto L_0x008c
            boolean r9 = r0.mHidden
            if (r9 != 0) goto L_0x008c
        L_0x008a:
            r9 = 1
            goto L_0x008d
        L_0x008c:
            r9 = 0
        L_0x008d:
            r4 = 1
        L_0x008e:
            r3 = r9
            r9 = 0
            r5 = 0
        L_0x0091:
            java.lang.Object r6 = r10.get(r1)
            d.m.a.f0$b r6 = (d.m.a.f0.b) r6
            if (r3 == 0) goto L_0x00aa
            if (r6 != 0) goto L_0x00a4
            d.m.a.f0$b r3 = new d.m.a.f0$b
            r3.<init>()
            r10.put(r1, r3)
            r6 = r3
        L_0x00a4:
            r6.a = r0
            r6.b = r11
            r6.f651c = r8
        L_0x00aa:
            r3 = 0
            if (r12 != 0) goto L_0x00cb
            if (r4 == 0) goto L_0x00cb
            if (r6 == 0) goto L_0x00b7
            androidx.fragment.app.Fragment r4 = r6.f652d
            if (r4 != r0) goto L_0x00b7
            r6.f652d = r3
        L_0x00b7:
            d.m.a.p r4 = r8.r
            int r7 = r0.mState
            if (r7 >= r2) goto L_0x00cb
            int r7 = r4.m
            if (r7 < r2) goto L_0x00cb
            boolean r7 = r8.p
            if (r7 != 0) goto L_0x00cb
            r4.l(r0)
            r4.a((androidx.fragment.app.Fragment) r0, (int) r2)
        L_0x00cb:
            if (r5 == 0) goto L_0x00e4
            if (r6 == 0) goto L_0x00d3
            androidx.fragment.app.Fragment r2 = r6.f652d
            if (r2 != 0) goto L_0x00e4
        L_0x00d3:
            if (r6 != 0) goto L_0x00de
            d.m.a.f0$b r2 = new d.m.a.f0$b
            r2.<init>()
            r10.put(r1, r2)
            r6 = r2
        L_0x00de:
            r6.f652d = r0
            r6.f653e = r11
            r6.f654f = r8
        L_0x00e4:
            if (r12 != 0) goto L_0x00f0
            if (r9 == 0) goto L_0x00f0
            if (r6 == 0) goto L_0x00f0
            androidx.fragment.app.Fragment r8 = r6.a
            if (r8 != r0) goto L_0x00f0
            r6.a = r3
        L_0x00f0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.f0.a(d.m.a.a, d.m.a.y$a, android.util.SparseArray, boolean, boolean):void");
    }
}
