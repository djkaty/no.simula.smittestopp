package d.s.r;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.navigation.fragment.R$styleable;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import d.m.a.p;
import d.s.i;
import d.s.p;
import java.util.ArrayDeque;
import java.util.Iterator;

@p.b("fragment")
public class a extends p<C0040a> {
    public final Context a;
    public final d.m.a.p b;

    /* renamed from: c  reason: collision with root package name */
    public final int f754c;

    /* renamed from: d  reason: collision with root package name */
    public ArrayDeque<Integer> f755d = new ArrayDeque<>();

    /* renamed from: d.s.r.a$a  reason: collision with other inner class name */
    public static class C0040a extends i {
        public String F;

        public C0040a(p<? extends C0040a> pVar) {
            super(pVar);
        }

        public void a(Context context, AttributeSet attributeSet) {
            super.a(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.FragmentNavigator);
            String string = obtainAttributes.getString(R$styleable.FragmentNavigator_android_name);
            if (string != null) {
                this.F = string;
            }
            obtainAttributes.recycle();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this.F;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            return sb.toString();
        }
    }

    public static final class b implements p.a {
    }

    public a(Context context, d.m.a.p pVar, int i2) {
        this.a = context;
        this.b = pVar;
        this.f754c = i2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:67:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x01b1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d.s.i a(d.s.i r9, android.os.Bundle r10, d.s.n r11, d.s.p.a r12) {
        /*
            r8 = this;
            d.s.r.a$a r9 = (d.s.r.a.C0040a) r9
            d.m.a.p r0 = r8.b
            boolean r0 = r0.i()
            r1 = 0
            if (r0 == 0) goto L_0x0014
            java.lang.String r9 = "FragmentNavigator"
            java.lang.String r10 = "Ignoring navigate() call: FragmentManager has already saved its state"
            android.util.Log.i(r9, r10)
            goto L_0x01bb
        L_0x0014:
            java.lang.String r0 = r9.F
            if (r0 == 0) goto L_0x01cc
            r2 = 0
            char r3 = r0.charAt(r2)
            r4 = 46
            if (r3 != r4) goto L_0x0036
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            android.content.Context r4 = r8.a
            java.lang.String r4 = r4.getPackageName()
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
        L_0x0036:
            android.content.Context r3 = r8.a
            d.m.a.p r4 = r8.b
            d.m.a.l r4 = r4.h()
            java.lang.ClassLoader r3 = r3.getClassLoader()
            androidx.fragment.app.Fragment r0 = r4.a(r3, r0)
            r0.setArguments(r10)
            d.m.a.p r10 = r8.b
            if (r10 == 0) goto L_0x01cb
            d.m.a.a r3 = new d.m.a.a
            r3.<init>(r10)
            r10 = -1
            if (r11 == 0) goto L_0x0058
            int r4 = r11.f740d
            goto L_0x0059
        L_0x0058:
            r4 = -1
        L_0x0059:
            if (r11 == 0) goto L_0x005e
            int r5 = r11.f741e
            goto L_0x005f
        L_0x005e:
            r5 = -1
        L_0x005f:
            if (r11 == 0) goto L_0x0064
            int r6 = r11.f742f
            goto L_0x0065
        L_0x0064:
            r6 = -1
        L_0x0065:
            if (r11 == 0) goto L_0x006a
            int r7 = r11.f743g
            goto L_0x006b
        L_0x006a:
            r7 = -1
        L_0x006b:
            if (r4 != r10) goto L_0x0073
            if (r5 != r10) goto L_0x0073
            if (r6 != r10) goto L_0x0073
            if (r7 == r10) goto L_0x008b
        L_0x0073:
            if (r4 == r10) goto L_0x0076
            goto L_0x0077
        L_0x0076:
            r4 = 0
        L_0x0077:
            if (r5 == r10) goto L_0x007a
            goto L_0x007b
        L_0x007a:
            r5 = 0
        L_0x007b:
            if (r6 == r10) goto L_0x007e
            goto L_0x007f
        L_0x007e:
            r6 = 0
        L_0x007f:
            if (r7 == r10) goto L_0x0082
            goto L_0x0083
        L_0x0082:
            r7 = 0
        L_0x0083:
            r3.b = r4
            r3.f688c = r5
            r3.f689d = r6
            r3.f690e = r7
        L_0x008b:
            int r4 = r8.f754c
            if (r4 == 0) goto L_0x01c3
            r5 = 2
            r3.a(r4, r0, r1, r5)
            r3.b(r0)
            int r0 = r9.z
            java.util.ArrayDeque<java.lang.Integer> r4 = r8.f755d
            boolean r4 = r4.isEmpty()
            r5 = 1
            if (r11 == 0) goto L_0x00b7
            if (r4 != 0) goto L_0x00b7
            boolean r11 = r11.a
            if (r11 == 0) goto L_0x00b7
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.f755d
            java.lang.Object r11 = r11.peekLast()
            java.lang.Integer r11 = (java.lang.Integer) r11
            int r11 = r11.intValue()
            if (r11 != r0) goto L_0x00b7
            r11 = 1
            goto L_0x00b8
        L_0x00b7:
            r11 = 0
        L_0x00b8:
            if (r4 == 0) goto L_0x00bb
            goto L_0x0118
        L_0x00bb:
            java.lang.String r4 = "This FragmentTransaction is not allowed to be added to the back stack."
            if (r11 == 0) goto L_0x0105
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.f755d
            int r11 = r11.size()
            if (r11 <= r5) goto L_0x0103
            d.m.a.p r11 = r8.b
            java.util.ArrayDeque<java.lang.Integer> r6 = r8.f755d
            int r6 = r6.size()
            java.util.ArrayDeque<java.lang.Integer> r7 = r8.f755d
            java.lang.Object r7 = r7.peekLast()
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            java.lang.String r6 = r8.a(r6, r7)
            if (r11 == 0) goto L_0x0102
            d.m.a.p$f r7 = new d.m.a.p$f
            r7.<init>(r6, r10, r5)
            r11.a((d.m.a.p.e) r7, (boolean) r2)
            java.util.ArrayDeque<java.lang.Integer> r10 = r8.f755d
            int r10 = r10.size()
            java.lang.String r10 = r8.a(r10, r0)
            boolean r11 = r3.f693h
            if (r11 == 0) goto L_0x00fc
            r3.f692g = r5
            r3.f694i = r10
            goto L_0x0103
        L_0x00fc:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r4)
            throw r9
        L_0x0102:
            throw r1
        L_0x0103:
            r10 = 0
            goto L_0x0119
        L_0x0105:
            java.util.ArrayDeque<java.lang.Integer> r10 = r8.f755d
            int r10 = r10.size()
            int r10 = r10 + r5
            java.lang.String r10 = r8.a(r10, r0)
            boolean r11 = r3.f693h
            if (r11 == 0) goto L_0x01bd
            r3.f692g = r5
            r3.f694i = r10
        L_0x0118:
            r10 = 1
        L_0x0119:
            boolean r11 = r12 instanceof d.s.r.a.b
            if (r11 == 0) goto L_0x01aa
            d.s.r.a$b r12 = (d.s.r.a.b) r12
            if (r12 == 0) goto L_0x01a9
            java.util.Map r11 = java.util.Collections.unmodifiableMap(r1)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        L_0x012d:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L_0x01aa
            java.lang.Object r12 = r11.next()
            java.util.Map$Entry r12 = (java.util.Map.Entry) r12
            java.lang.Object r2 = r12.getKey()
            android.view.View r2 = (android.view.View) r2
            java.lang.Object r12 = r12.getValue()
            java.lang.String r12 = (java.lang.String) r12
            d.m.a.k0 r4 = d.m.a.f0.b
            if (r4 != 0) goto L_0x0150
            d.m.a.k0 r4 = d.m.a.f0.f650c
            if (r4 == 0) goto L_0x014e
            goto L_0x0150
        L_0x014e:
            r4 = 0
            goto L_0x0151
        L_0x0150:
            r4 = 1
        L_0x0151:
            if (r4 == 0) goto L_0x012d
            java.lang.String r2 = d.i.i.n.n(r2)
            if (r2 == 0) goto L_0x01a1
            java.util.ArrayList<java.lang.String> r4 = r3.n
            if (r4 != 0) goto L_0x016c
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r3.n = r4
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r3.o = r4
            goto L_0x017e
        L_0x016c:
            java.util.ArrayList<java.lang.String> r4 = r3.o
            boolean r4 = r4.contains(r12)
            java.lang.String r6 = "' has already been added to the transaction."
            if (r4 != 0) goto L_0x0195
            java.util.ArrayList<java.lang.String> r4 = r3.n
            boolean r4 = r4.contains(r2)
            if (r4 != 0) goto L_0x0189
        L_0x017e:
            java.util.ArrayList<java.lang.String> r4 = r3.n
            r4.add(r2)
            java.util.ArrayList<java.lang.String> r2 = r3.o
            r2.add(r12)
            goto L_0x012d
        L_0x0189:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "A shared element with the source name '"
            java.lang.String r10 = e.a.a.a.a.a((java.lang.String) r10, (java.lang.String) r2, (java.lang.String) r6)
            r9.<init>(r10)
            throw r9
        L_0x0195:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "A shared element with the target name '"
            java.lang.String r10 = e.a.a.a.a.a((java.lang.String) r10, (java.lang.String) r12, (java.lang.String) r6)
            r9.<init>(r10)
            throw r9
        L_0x01a1:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Unique transitionNames are required for all sharedElements"
            r9.<init>(r10)
            throw r9
        L_0x01a9:
            throw r1
        L_0x01aa:
            r3.p = r5
            r3.a()
            if (r10 == 0) goto L_0x01bb
            java.util.ArrayDeque<java.lang.Integer> r10 = r8.f755d
            java.lang.Integer r11 = java.lang.Integer.valueOf(r0)
            r10.add(r11)
            goto L_0x01bc
        L_0x01bb:
            r9 = r1
        L_0x01bc:
            return r9
        L_0x01bd:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r4)
            throw r9
        L_0x01c3:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Must use non-zero containerViewId"
            r9.<init>(r10)
            throw r9
        L_0x01cb:
            throw r1
        L_0x01cc:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Fragment class was not set"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.r.a.a(d.s.i, android.os.Bundle, d.s.n, d.s.p$a):d.s.i");
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        int[] iArr = new int[this.f755d.size()];
        Iterator<Integer> it = this.f755d.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        bundle.putIntArray("androidx-nav-fragment:navigator:backStackIds", iArr);
        return bundle;
    }

    public boolean c() {
        if (this.f755d.isEmpty()) {
            return false;
        }
        if (this.b.i()) {
            Log.i("FragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return false;
        }
        d.m.a.p pVar = this.b;
        String a2 = a(this.f755d.size(), this.f755d.peekLast().intValue());
        if (pVar != null) {
            pVar.a((p.e) new p.f(a2, -1, 1), false);
            this.f755d.removeLast();
            return true;
        }
        throw null;
    }

    public i a() {
        return new C0040a(this);
    }

    public void a(Bundle bundle) {
        int[] intArray;
        if (bundle != null && (intArray = bundle.getIntArray("androidx-nav-fragment:navigator:backStackIds")) != null) {
            this.f755d.clear();
            for (int valueOf : intArray) {
                this.f755d.add(Integer.valueOf(valueOf));
            }
        }
    }

    public final String a(int i2, int i3) {
        return i2 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i3;
    }
}
