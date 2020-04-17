package d.t.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.recyclerview.R$dimen;
import androidx.recyclerview.R$styleable;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.azure.storage.Constants;
import d.i.i.x.d;
import d.t.a.a;
import d.t.a.b;
import d.t.a.k;
import d.t.a.m;
import d.t.a.x;
import d.t.a.y;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class s extends ViewGroup implements d.i.i.d {
    public static final int[] U0 = {16843830};
    public static final int[] V0 = {16842987};
    public static final boolean W0 = (Build.VERSION.SDK_INT >= 23);
    public static final boolean X0 = true;
    public static final boolean Y0 = false;
    public static final boolean Z0 = false;
    public static final Class<?>[] a1;
    public static final Interpolator b1 = new b();
    public a A;
    public m A0;
    public b B;
    public m.b B0;
    public final y C;
    public final u C0;
    public boolean D;
    public o D0;
    public final Rect E;
    public List<o> E0;
    public final Rect F;
    public boolean F0;
    public final RectF G;
    public boolean G0;
    public d H;
    public h.b H0;
    public k I;
    public boolean I0;
    public r J;
    public v J0;
    public final ArrayList<j> K;
    public f K0;
    public final ArrayList<n> L;
    public final int[] L0;
    public n M;
    public d.i.i.g M0;
    public boolean N;
    public final int[] N0;
    public boolean O;
    public final int[] O0;
    public boolean P;
    public final int[] P0;
    public boolean Q;
    public final int[] Q0;
    public int R;
    public final List<x> R0;
    public boolean S;
    public Runnable S0;
    public boolean T;
    public final y.b T0;
    public boolean U;
    public int V;
    public boolean W;
    public final AccessibilityManager a0;
    public boolean b0;
    public boolean c0;
    public int d0;
    public int e0;
    public g f0;
    public EdgeEffect g0;
    public EdgeEffect h0;
    public EdgeEffect i0;
    public EdgeEffect j0;
    public h k0;
    public int l0;
    public int m0;
    public VelocityTracker n0;
    public int o0;
    public int p0;
    public int q0;
    public int r0;
    public int s0;
    public m t0;
    public final int u0;
    public final int v0;
    public float w0;
    public final C0043s x;
    public float x0;
    public final q y;
    public boolean y0;
    public t z;
    public final w z0;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            h hVar = s.this.k0;
            if (hVar != null) {
                k kVar = (k) hVar;
                boolean z = !kVar.f780h.isEmpty();
                boolean z2 = !kVar.f782j.isEmpty();
                boolean z3 = !kVar.f783k.isEmpty();
                boolean z4 = !kVar.f781i.isEmpty();
                if (z || z2 || z4 || z3) {
                    Iterator<x> it = kVar.f780h.iterator();
                    while (it.hasNext()) {
                        x next = it.next();
                        View view = next.a;
                        ViewPropertyAnimator animate = view.animate();
                        kVar.q.add(next);
                        animate.setDuration(kVar.f814d).alpha(0.0f).setListener(new f(kVar, next, animate, view)).start();
                    }
                    kVar.f780h.clear();
                    if (z2) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(kVar.f782j);
                        kVar.m.add(arrayList);
                        kVar.f782j.clear();
                        c cVar = new c(kVar, arrayList);
                        if (z) {
                            d.i.i.n.a(((k.b) arrayList.get(0)).a.a, (Runnable) cVar, kVar.f814d);
                        } else {
                            cVar.run();
                        }
                    }
                    if (z3) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.addAll(kVar.f783k);
                        kVar.n.add(arrayList2);
                        kVar.f783k.clear();
                        d dVar = new d(kVar, arrayList2);
                        if (z) {
                            d.i.i.n.a(((k.a) arrayList2.get(0)).a.a, (Runnable) dVar, kVar.f814d);
                        } else {
                            dVar.run();
                        }
                    }
                    if (z4) {
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.addAll(kVar.f781i);
                        kVar.f784l.add(arrayList3);
                        kVar.f781i.clear();
                        e eVar = new e(kVar, arrayList3);
                        if (z || z2 || z3) {
                            long j2 = 0;
                            long j3 = z ? kVar.f814d : 0;
                            long j4 = z2 ? kVar.f815e : 0;
                            if (z3) {
                                j2 = kVar.f816f;
                            }
                            d.i.i.n.a(((x) arrayList3.get(0)).a, (Runnable) eVar, Math.max(j4, j2) + j3);
                        } else {
                            eVar.run();
                        }
                    }
                }
            }
            s.this.I0 = false;
        }
    }

    public static class b implements Interpolator {
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public class c implements y.b {
        public c() {
        }
    }

    public static abstract class d<VH extends x> {
    }

    public static abstract class e {
    }

    public interface f {
        int a(int i2, int i3);
    }

    public static class g {
        public EdgeEffect a(s sVar) {
            return new EdgeEffect(sVar.getContext());
        }
    }

    public class i implements h.b {
        public i() {
        }
    }

    public static abstract class j {
    }

    public static abstract class m {
    }

    public interface n {
        void a(boolean z);

        boolean a(s sVar, MotionEvent motionEvent);

        void b(s sVar, MotionEvent motionEvent);
    }

    public static abstract class o {
    }

    public static class p {
        public SparseArray<a> a = new SparseArray<>();
        public int b = 0;

        public static class a {
            public final ArrayList<x> a = new ArrayList<>();
            public int b = 5;

            /* renamed from: c  reason: collision with root package name */
            public long f831c = 0;

            /* renamed from: d  reason: collision with root package name */
            public long f832d = 0;
        }

        public final a a(int i2) {
            a aVar = this.a.get(i2);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.a.put(i2, aVar2);
            return aVar2;
        }
    }

    public interface r {
        void a(x xVar);
    }

    /* renamed from: d.t.a.s$s  reason: collision with other inner class name */
    public class C0043s extends e {
        public C0043s(s sVar) {
        }
    }

    public static class u {
        public int a = -1;
        public int b = 0;

        /* renamed from: c  reason: collision with root package name */
        public int f839c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f840d = 1;

        /* renamed from: e  reason: collision with root package name */
        public int f841e = 0;

        /* renamed from: f  reason: collision with root package name */
        public boolean f842f = false;

        /* renamed from: g  reason: collision with root package name */
        public boolean f843g = false;

        /* renamed from: h  reason: collision with root package name */
        public boolean f844h = false;

        /* renamed from: i  reason: collision with root package name */
        public boolean f845i = false;

        /* renamed from: j  reason: collision with root package name */
        public boolean f846j = false;

        /* renamed from: k  reason: collision with root package name */
        public boolean f847k = false;

        public int a() {
            return this.f843g ? this.b - this.f839c : this.f841e;
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("State{mTargetPosition=");
            a2.append(this.a);
            a2.append(", mData=");
            a2.append((Object) null);
            a2.append(", mItemCount=");
            a2.append(this.f841e);
            a2.append(", mIsMeasuring=");
            a2.append(this.f845i);
            a2.append(", mPreviousLayoutItemCount=");
            a2.append(this.b);
            a2.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            a2.append(this.f839c);
            a2.append(", mStructureChanged=");
            a2.append(this.f842f);
            a2.append(", mInPreLayout=");
            a2.append(this.f843g);
            a2.append(", mRunSimpleAnimations=");
            a2.append(this.f846j);
            a2.append(", mRunPredictiveAnimations=");
            a2.append(this.f847k);
            a2.append('}');
            return a2.toString();
        }
    }

    public static abstract class v {
    }

    public class w implements Runnable {
        public Interpolator A = s.b1;
        public boolean B = false;
        public boolean C = false;
        public int x;
        public int y;
        public OverScroller z;

        public w() {
            this.z = new OverScroller(s.this.getContext(), s.b1);
        }

        public void a() {
            if (this.B) {
                this.C = true;
                return;
            }
            s.this.removeCallbacks(this);
            d.i.i.n.a((View) s.this, (Runnable) this);
        }

        public void run() {
            s sVar = s.this;
            if (sVar.I == null) {
                sVar.removeCallbacks(this);
                this.z.abortAnimation();
                return;
            }
            this.C = false;
            this.B = true;
            sVar.b();
            OverScroller overScroller = this.z;
            k kVar = s.this.I;
            if (overScroller.computeScrollOffset()) {
                int[] iArr = s.this.O0;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i2 = currX - this.x;
                int i3 = currY - this.y;
                this.x = currX;
                this.y = currY;
                if (s.this.a(i2, i3, iArr, (int[]) null, 1)) {
                    i2 -= iArr[0];
                    i3 -= iArr[1];
                }
                if (!s.this.K.isEmpty()) {
                    s.this.invalidate();
                }
                if (s.this.getOverScrollMode() != 2) {
                    s.this.a(i2, i3);
                }
                s.this.a(0, 0, 0, 0, (int[]) null, 1);
                if (!s.this.awakenScrollBars()) {
                    s.this.invalidate();
                }
                boolean z2 = (i2 == 0 && i3 == 0) || (i2 != 0 && s.this.I.a() && i2 == 0) || (i3 != 0 && s.this.I.b() && i3 == 0);
                if (overScroller.isFinished() || (!z2 && !s.this.b(1))) {
                    s.this.setScrollState(0);
                    if (s.X0) {
                        m.b bVar = s.this.B0;
                        int[] iArr2 = bVar.f802c;
                        if (iArr2 != null) {
                            Arrays.fill(iArr2, -1);
                        }
                        bVar.f803d = 0;
                    }
                    s.this.a(1);
                } else {
                    a();
                    s sVar2 = s.this;
                    m mVar = sVar2.A0;
                    if (mVar != null) {
                        mVar.a(sVar2, i2, i3);
                    }
                }
            }
            this.B = false;
            if (this.C) {
                a();
            }
        }
    }

    public static abstract class x {
        public static final List<Object> r = Collections.emptyList();
        public final View a;
        public WeakReference<s> b;

        /* renamed from: c  reason: collision with root package name */
        public int f848c;

        /* renamed from: d  reason: collision with root package name */
        public int f849d;

        /* renamed from: e  reason: collision with root package name */
        public long f850e;

        /* renamed from: f  reason: collision with root package name */
        public int f851f;

        /* renamed from: g  reason: collision with root package name */
        public x f852g;

        /* renamed from: h  reason: collision with root package name */
        public x f853h;

        /* renamed from: i  reason: collision with root package name */
        public int f854i;

        /* renamed from: j  reason: collision with root package name */
        public List<Object> f855j;

        /* renamed from: k  reason: collision with root package name */
        public List<Object> f856k;

        /* renamed from: l  reason: collision with root package name */
        public int f857l;
        public q m;
        public boolean n;
        public int o;
        public int p;
        public s q;

        public void a(int i2, int i3, boolean z) {
            a(8);
            a(i3, z);
            this.f848c = i2;
        }

        public void b() {
            this.f854i &= -33;
        }

        public void c() {
            this.f854i &= -257;
        }

        public boolean d() {
            if ((this.f854i & 16) != 0) {
                return false;
            }
            throw null;
        }

        public final int e() {
            s sVar = this.q;
            if (sVar == null) {
                return -1;
            }
            return sVar.a(this);
        }

        public final int f() {
            return 0;
        }

        public final int g() {
            int i2 = this.f851f;
            return i2 == -1 ? this.f848c : i2;
        }

        public final int h() {
            return this.f849d;
        }

        public List<Object> i() {
            if ((this.f854i & 1024) != 0) {
                return r;
            }
            List<Object> list = this.f855j;
            if (list == null || list.size() == 0) {
                return r;
            }
            return this.f856k;
        }

        public boolean j() {
            return (this.f854i & Constants.PAGE_SIZE) != 0 || l();
        }

        public boolean k() {
            return (this.f854i & 1) != 0;
        }

        public boolean l() {
            return (this.f854i & 4) != 0;
        }

        public final boolean m() {
            if ((this.f854i & 16) != 0) {
                return false;
            }
            throw null;
        }

        public boolean n() {
            return (this.f854i & 8) != 0;
        }

        public boolean o() {
            return this.m != null;
        }

        public boolean p() {
            return (this.f854i & 256) != 0;
        }

        public boolean q() {
            return (this.f854i & 2) != 0;
        }

        public boolean r() {
            return (this.f854i & 2) != 0;
        }

        public void s() {
            this.f854i = 0;
            this.f848c = -1;
            this.f849d = -1;
            this.f850e = -1;
            this.f851f = -1;
            this.f857l = 0;
            this.f852g = null;
            this.f853h = null;
            a();
            this.o = 0;
            this.p = -1;
            s.b(this);
        }

        public boolean t() {
            return (this.f854i & 16) != 0;
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("ViewHolder{");
            a2.append(Integer.toHexString(hashCode()));
            a2.append(" position=");
            a2.append(this.f848c);
            a2.append(" id=");
            a2.append(this.f850e);
            a2.append(", oldPos=");
            a2.append(this.f849d);
            a2.append(", pLpos:");
            a2.append(this.f851f);
            StringBuilder sb = new StringBuilder(a2.toString());
            if (o()) {
                sb.append(" scrap ");
                sb.append(this.n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (l()) {
                sb.append(" invalid");
            }
            if (!k()) {
                sb.append(" unbound");
            }
            if (r()) {
                sb.append(" update");
            }
            if (n()) {
                sb.append(" removed");
            }
            if (u()) {
                sb.append(" ignored");
            }
            if (p()) {
                sb.append(" tmpDetached");
            }
            if (!m()) {
                StringBuilder a3 = e.a.a.a.a.a(" not recyclable(");
                a3.append(this.f857l);
                a3.append(")");
                sb.append(a3.toString());
            }
            if (j()) {
                sb.append(" undefined adapter position");
            }
            throw null;
        }

        public boolean u() {
            return (this.f854i & 128) != 0;
        }

        public void v() {
            this.m.b(this);
        }

        public boolean w() {
            return (this.f854i & 32) != 0;
        }

        public boolean b(int i2) {
            return (i2 & this.f854i) != 0;
        }

        public void a(int i2, boolean z) {
            if (this.f849d == -1) {
                this.f849d = this.f848c;
            }
            if (this.f851f == -1) {
                this.f851f = this.f848c;
            }
            if (z) {
                this.f851f += i2;
            }
            this.f848c += i2;
            throw null;
        }

        public void a(q qVar, boolean z) {
            this.m = qVar;
            this.n = z;
        }

        public void a(int i2, int i3) {
            this.f854i = (i2 & i3) | (this.f854i & (~i3));
        }

        public void a(int i2) {
            this.f854i = i2 | this.f854i;
        }

        public void a(Object obj) {
            if (obj == null) {
                a(1024);
            } else if ((1024 & this.f854i) == 0) {
                if (this.f855j == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f855j = arrayList;
                    this.f856k = Collections.unmodifiableList(arrayList);
                }
                this.f855j.add(obj);
            }
        }

        public void a() {
            List<Object> list = this.f855j;
            if (list != null) {
                list.clear();
            }
            this.f854i &= -1025;
        }

        public void a(s sVar) {
            sVar.a(this, this.o);
            this.o = 0;
        }

        public final void a(boolean z) {
            int i2 = this.f857l;
            int i3 = z ? i2 - 1 : i2 + 1;
            this.f857l = i3;
            if (i3 < 0) {
                this.f857l = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i3 == 1) {
                this.f854i |= 16;
            } else if (z && this.f857l == 0) {
                this.f854i &= -17;
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            r0 = 1
            int[] r1 = new int[r0]
            r2 = 16843830(0x1010436, float:2.369658E-38)
            r3 = 0
            r1[r3] = r2
            U0 = r1
            int[] r1 = new int[r0]
            r2 = 16842987(0x10100eb, float:2.3694217E-38)
            r1[r3] = r2
            V0 = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 23
            if (r1 < r2) goto L_0x001c
            r1 = 1
            goto L_0x001d
        L_0x001c:
            r1 = 0
        L_0x001d:
            W0 = r1
            X0 = r0
            Y0 = r3
            Z0 = r3
            r1 = 4
            java.lang.Class[] r1 = new java.lang.Class[r1]
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r1[r3] = r2
            java.lang.Class<android.util.AttributeSet> r2 = android.util.AttributeSet.class
            r1[r0] = r2
            r0 = 2
            java.lang.Class r2 = java.lang.Integer.TYPE
            r1[r0] = r2
            r0 = 3
            r1[r0] = r2
            a1 = r1
            d.t.a.s$b r0 = new d.t.a.s$b
            r0.<init>()
            b1 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.<clinit>():void");
    }

    public s(Context context) {
        this(context, (AttributeSet) null);
    }

    private d.i.i.g getScrollingChildHelper() {
        if (this.M0 == null) {
            this.M0 = new d.i.i.g(this);
        }
        return this.M0;
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        k kVar = this.I;
        if (kVar == null || kVar != null) {
            super.addFocusables(arrayList, i2, i3);
            return;
        }
        throw null;
    }

    public void b() {
        if (!this.Q || this.b0) {
            d.i.e.b.a("RV FullInvalidate");
            c();
            Trace.endSection();
        } else if (this.A.c()) {
            boolean z2 = false;
            if ((this.A.f764g & 4) != 0) {
                if (!((this.A.f764g & 11) != 0)) {
                    d.i.e.b.a("RV PartialInvalidate");
                    q();
                    m();
                    this.A.d();
                    if (!this.S) {
                        int a2 = this.B.a();
                        int i2 = 0;
                        while (true) {
                            if (i2 < a2) {
                                x b2 = b(this.B.b(i2));
                                if (b2 != null && !b2.u() && b2.q()) {
                                    z2 = true;
                                    break;
                                }
                                i2++;
                            } else {
                                break;
                            }
                        }
                        if (z2) {
                            c();
                        } else {
                            this.A.a();
                        }
                    }
                    b(true);
                    a(true);
                    Trace.endSection();
                    return;
                }
            }
            if (this.A.c()) {
                d.i.e.b.a("RV FullInvalidate");
                c();
                Trace.endSection();
            }
        }
    }

    public void c(int i2, int i3) {
        int i4;
        k kVar = this.I;
        if (kVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.T) {
            int i5 = !kVar.a() ? 0 : i2;
            int i6 = !this.I.b() ? 0 : i3;
            if (i5 != 0 || i6 != 0) {
                w wVar = this.z0;
                if (wVar != null) {
                    int abs = Math.abs(i5);
                    int abs2 = Math.abs(i6);
                    boolean z2 = abs > abs2;
                    int sqrt = (int) Math.sqrt((double) 0);
                    int sqrt2 = (int) Math.sqrt((double) ((i6 * i6) + (i5 * i5)));
                    s sVar = s.this;
                    int width = z2 ? sVar.getWidth() : sVar.getHeight();
                    int i7 = width / 2;
                    float f2 = (float) width;
                    float f3 = (float) i7;
                    float sin = (((float) Math.sin((double) ((Math.min(1.0f, (((float) sqrt2) * 1.0f) / f2) - 0.5f) * 0.47123894f))) * f3) + f3;
                    if (sqrt > 0) {
                        i4 = Math.round(Math.abs(sin / ((float) sqrt)) * 1000.0f) * 4;
                    } else {
                        if (!z2) {
                            abs = abs2;
                        }
                        i4 = (int) (((((float) abs) / f2) + 1.0f) * 300.0f);
                    }
                    int min = Math.min(i4, 2000);
                    Interpolator interpolator = b1;
                    if (wVar.A != interpolator) {
                        wVar.A = interpolator;
                        wVar.z = new OverScroller(s.this.getContext(), interpolator);
                    }
                    s.this.setScrollState(2);
                    wVar.y = 0;
                    wVar.x = 0;
                    wVar.z.startScroll(0, 0, i5, i6, min);
                    if (Build.VERSION.SDK_INT < 23) {
                        wVar.z.computeScrollOffset();
                    }
                    wVar.a();
                    return;
                }
                throw null;
            }
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof l) && this.I.a((l) layoutParams);
    }

    public int computeHorizontalScrollExtent() {
        k kVar = this.I;
        if (kVar != null && kVar.a()) {
            return this.I.a(this.C0);
        }
        return 0;
    }

    public int computeHorizontalScrollOffset() {
        k kVar = this.I;
        if (kVar != null && kVar.a()) {
            return this.I.b(this.C0);
        }
        return 0;
    }

    public int computeHorizontalScrollRange() {
        k kVar = this.I;
        if (kVar != null && kVar.a()) {
            return this.I.c(this.C0);
        }
        return 0;
    }

    public int computeVerticalScrollExtent() {
        k kVar = this.I;
        if (kVar != null && kVar.b()) {
            return this.I.d(this.C0);
        }
        return 0;
    }

    public int computeVerticalScrollOffset() {
        k kVar = this.I;
        if (kVar != null && kVar.b()) {
            return this.I.e(this.C0);
        }
        return 0;
    }

    public int computeVerticalScrollRange() {
        k kVar = this.I;
        if (kVar != null && kVar.b()) {
            return this.I.f(this.C0);
        }
        return 0;
    }

    public void d() {
        if (this.j0 == null) {
            EdgeEffect a2 = this.f0.a(this);
            this.j0 = a2;
            if (this.D) {
                a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        super.draw(canvas);
        int size = this.K.size();
        boolean z4 = false;
        int i2 = 0;
        while (true) {
            z2 = true;
            if (i2 >= size) {
                break;
            }
            l lVar = (l) this.K.get(i2);
            if (lVar.q != lVar.s.getWidth() || lVar.r != lVar.s.getHeight()) {
                lVar.q = lVar.s.getWidth();
                lVar.r = lVar.s.getHeight();
                lVar.a(0);
            } else if (lVar.A != 0) {
                if (lVar.t) {
                    int i3 = lVar.q;
                    int i4 = lVar.f794e;
                    int i5 = i3 - i4;
                    int i6 = lVar.f801l;
                    int i7 = lVar.f800k;
                    int i8 = i6 - (i7 / 2);
                    lVar.f792c.setBounds(0, 0, i4, i7);
                    lVar.f793d.setBounds(0, 0, lVar.f795f, lVar.r);
                    if (d.i.i.n.i(lVar.s) != 1) {
                        z2 = false;
                    }
                    if (z2) {
                        lVar.f793d.draw(canvas);
                        canvas.translate((float) lVar.f794e, (float) i8);
                        canvas.scale(-1.0f, 1.0f);
                        lVar.f792c.draw(canvas);
                        canvas.scale(1.0f, 1.0f);
                        canvas.translate((float) (-lVar.f794e), (float) (-i8));
                    } else {
                        canvas.translate((float) i5, 0.0f);
                        lVar.f793d.draw(canvas);
                        canvas.translate(0.0f, (float) i8);
                        lVar.f792c.draw(canvas);
                        canvas.translate((float) (-i5), (float) (-i8));
                    }
                }
                if (lVar.u) {
                    int i9 = lVar.r;
                    int i10 = lVar.f798i;
                    int i11 = i9 - i10;
                    int i12 = lVar.o;
                    int i13 = lVar.n;
                    int i14 = i12 - (i13 / 2);
                    lVar.f796g.setBounds(0, 0, i13, i10);
                    lVar.f797h.setBounds(0, 0, lVar.q, lVar.f799j);
                    canvas.translate(0.0f, (float) i11);
                    lVar.f797h.draw(canvas);
                    canvas.translate((float) i14, 0.0f);
                    lVar.f796g.draw(canvas);
                    canvas.translate((float) (-i14), (float) (-i11));
                }
            }
            i2++;
        }
        EdgeEffect edgeEffect = this.g0;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z3 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.D ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((float) ((-getHeight()) + paddingBottom), 0.0f);
            EdgeEffect edgeEffect2 = this.g0;
            z3 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.h0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.D) {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.h0;
            z3 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.i0;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.D ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate((float) (-paddingTop), (float) (-width));
            EdgeEffect edgeEffect6 = this.i0;
            z3 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.j0;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.D) {
                canvas.translate((float) (getPaddingRight() + (-getWidth())), (float) (getPaddingBottom() + (-getHeight())));
            } else {
                canvas.translate((float) (-getWidth()), (float) (-getHeight()));
            }
            EdgeEffect edgeEffect8 = this.j0;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z3 |= z4;
            canvas.restoreToCount(save4);
        }
        if (z3 || this.k0 == null || this.K.size() <= 0 || !this.k0.c()) {
            z2 = z3;
        }
        if (z2) {
            d.i.i.n.x(this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void e() {
        if (this.g0 == null) {
            EdgeEffect a2 = this.f0.a(this);
            this.g0 = a2;
            if (this.D) {
                a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void f() {
        if (this.i0 == null) {
            EdgeEffect a2 = this.f0.a(this);
            this.i0 = a2;
            if (this.D) {
                a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00ee, code lost:
        if (r4 > 0) goto L_0x0122;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0108, code lost:
        if (r5 > 0) goto L_0x0122;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x010b, code lost:
        if (r4 < 0) goto L_0x0122;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x010e, code lost:
        if (r5 < 0) goto L_0x0122;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0117, code lost:
        if ((r5 * r3) < 0) goto L_0x0123;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0120, code lost:
        if ((r5 * r3) > 0) goto L_0x0123;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View focusSearch(android.view.View r10, int r11) {
        /*
            r9 = this;
            d.t.a.s$k r0 = r9.I
            r1 = 0
            if (r0 == 0) goto L_0x012b
            android.view.FocusFinder r0 = android.view.FocusFinder.getInstance()
            android.view.View r0 = r0.findNextFocus(r9, r10, r11)
            if (r0 == 0) goto L_0x0024
            boolean r2 = r0.hasFocusable()
            if (r2 != 0) goto L_0x0024
            android.view.View r2 = r9.getFocusedChild()
            if (r2 != 0) goto L_0x0020
            android.view.View r10 = super.focusSearch(r10, r11)
            return r10
        L_0x0020:
            r9.a((android.view.View) r0, (android.view.View) r1)
            return r10
        L_0x0024:
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x0123
            if (r0 != r9) goto L_0x002c
            goto L_0x0123
        L_0x002c:
            android.view.View r3 = r9.a((android.view.View) r0)
            if (r3 != 0) goto L_0x0034
            goto L_0x0123
        L_0x0034:
            if (r10 != 0) goto L_0x0038
            goto L_0x0122
        L_0x0038:
            android.view.View r3 = r9.a((android.view.View) r10)
            if (r3 != 0) goto L_0x0040
            goto L_0x0122
        L_0x0040:
            android.graphics.Rect r3 = r9.E
            int r4 = r10.getWidth()
            int r5 = r10.getHeight()
            r3.set(r1, r1, r4, r5)
            android.graphics.Rect r3 = r9.F
            int r4 = r0.getWidth()
            int r5 = r0.getHeight()
            r3.set(r1, r1, r4, r5)
            android.graphics.Rect r3 = r9.E
            r9.offsetDescendantRectToMyCoords(r10, r3)
            android.graphics.Rect r3 = r9.F
            r9.offsetDescendantRectToMyCoords(r0, r3)
            d.t.a.s$k r3 = r9.I
            int r3 = r3.e()
            r4 = -1
            if (r3 != r2) goto L_0x006f
            r3 = -1
            goto L_0x0070
        L_0x006f:
            r3 = 1
        L_0x0070:
            android.graphics.Rect r5 = r9.E
            int r6 = r5.left
            android.graphics.Rect r7 = r9.F
            int r7 = r7.left
            if (r6 < r7) goto L_0x007e
            int r5 = r5.right
            if (r5 > r7) goto L_0x008a
        L_0x007e:
            android.graphics.Rect r5 = r9.E
            int r5 = r5.right
            android.graphics.Rect r6 = r9.F
            int r6 = r6.right
            if (r5 >= r6) goto L_0x008a
            r5 = 1
            goto L_0x00a5
        L_0x008a:
            android.graphics.Rect r5 = r9.E
            int r6 = r5.right
            android.graphics.Rect r7 = r9.F
            int r7 = r7.right
            if (r6 > r7) goto L_0x0098
            int r5 = r5.left
            if (r5 < r7) goto L_0x00a4
        L_0x0098:
            android.graphics.Rect r5 = r9.E
            int r5 = r5.left
            android.graphics.Rect r6 = r9.F
            int r6 = r6.left
            if (r5 <= r6) goto L_0x00a4
            r5 = -1
            goto L_0x00a5
        L_0x00a4:
            r5 = 0
        L_0x00a5:
            android.graphics.Rect r6 = r9.E
            int r7 = r6.top
            android.graphics.Rect r8 = r9.F
            int r8 = r8.top
            if (r7 < r8) goto L_0x00b3
            int r6 = r6.bottom
            if (r6 > r8) goto L_0x00bf
        L_0x00b3:
            android.graphics.Rect r6 = r9.E
            int r6 = r6.bottom
            android.graphics.Rect r7 = r9.F
            int r7 = r7.bottom
            if (r6 >= r7) goto L_0x00bf
            r4 = 1
            goto L_0x00d9
        L_0x00bf:
            android.graphics.Rect r6 = r9.E
            int r7 = r6.bottom
            android.graphics.Rect r8 = r9.F
            int r8 = r8.bottom
            if (r7 > r8) goto L_0x00cd
            int r6 = r6.top
            if (r6 < r8) goto L_0x00d8
        L_0x00cd:
            android.graphics.Rect r6 = r9.E
            int r6 = r6.top
            android.graphics.Rect r7 = r9.F
            int r7 = r7.top
            if (r6 <= r7) goto L_0x00d8
            goto L_0x00d9
        L_0x00d8:
            r4 = 0
        L_0x00d9:
            if (r11 == r2) goto L_0x011a
            r2 = 2
            if (r11 == r2) goto L_0x0111
            r2 = 17
            if (r11 == r2) goto L_0x010e
            r2 = 33
            if (r11 == r2) goto L_0x010b
            r2 = 66
            if (r11 == r2) goto L_0x0108
            r2 = 130(0x82, float:1.82E-43)
            if (r11 != r2) goto L_0x00f1
            if (r4 <= 0) goto L_0x0123
            goto L_0x0122
        L_0x00f1:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid direction: "
            r0.append(r1)
            r0.append(r11)
            java.lang.String r11 = e.a.a.a.a.a((d.t.a.s) r9, (java.lang.StringBuilder) r0)
            r10.<init>(r11)
            throw r10
        L_0x0108:
            if (r5 <= 0) goto L_0x0123
            goto L_0x0122
        L_0x010b:
            if (r4 >= 0) goto L_0x0123
            goto L_0x0122
        L_0x010e:
            if (r5 >= 0) goto L_0x0123
            goto L_0x0122
        L_0x0111:
            if (r4 > 0) goto L_0x0122
            if (r4 != 0) goto L_0x0123
            int r5 = r5 * r3
            if (r5 < 0) goto L_0x0123
            goto L_0x0122
        L_0x011a:
            if (r4 < 0) goto L_0x0122
            if (r4 != 0) goto L_0x0123
            int r5 = r5 * r3
            if (r5 > 0) goto L_0x0123
        L_0x0122:
            r1 = 1
        L_0x0123:
            if (r1 == 0) goto L_0x0126
            goto L_0x012a
        L_0x0126:
            android.view.View r0 = super.focusSearch(r10, r11)
        L_0x012a:
            return r0
        L_0x012b:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.focusSearch(android.view.View, int):android.view.View");
    }

    public void g() {
        if (this.h0 == null) {
            EdgeEffect a2 = this.f0.a(this);
            this.h0 = a2;
            if (this.D) {
                a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        k kVar = this.I;
        if (kVar != null) {
            return kVar.c();
        }
        throw new IllegalStateException(e.a.a.a.a.a(this, e.a.a.a.a.a("RecyclerView has no LayoutManager")));
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        k kVar = this.I;
        if (kVar != null) {
            return kVar.a(getContext(), attributeSet);
        }
        throw new IllegalStateException(e.a.a.a.a.a(this, e.a.a.a.a.a("RecyclerView has no LayoutManager")));
    }

    public d getAdapter() {
        return null;
    }

    public int getBaseline() {
        k kVar = this.I;
        if (kVar == null) {
            return super.getBaseline();
        }
        if (kVar != null) {
            return -1;
        }
        throw null;
    }

    public int getChildDrawingOrder(int i2, int i3) {
        f fVar = this.K0;
        if (fVar == null) {
            return super.getChildDrawingOrder(i2, i3);
        }
        return fVar.a(i2, i3);
    }

    public boolean getClipToPadding() {
        return this.D;
    }

    public v getCompatAccessibilityDelegate() {
        return this.J0;
    }

    public g getEdgeEffectFactory() {
        return this.f0;
    }

    public h getItemAnimator() {
        return this.k0;
    }

    public int getItemDecorationCount() {
        return this.K.size();
    }

    public k getLayoutManager() {
        return this.I;
    }

    public int getMaxFlingVelocity() {
        return this.v0;
    }

    public int getMinFlingVelocity() {
        return this.u0;
    }

    public long getNanoTime() {
        if (X0) {
            return System.nanoTime();
        }
        return 0;
    }

    public m getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.y0;
    }

    public p getRecycledViewPool() {
        return this.y.b();
    }

    public int getScrollState() {
        return this.l0;
    }

    public String h() {
        StringBuilder a2 = e.a.a.a.a.a(" ");
        a2.append(super.toString());
        a2.append(", adapter:");
        a2.append((Object) null);
        a2.append(", layout:");
        a2.append(this.I);
        a2.append(", context:");
        a2.append(getContext());
        return a2.toString();
    }

    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().b(0);
    }

    public boolean i() {
        return !this.Q || this.b0 || this.A.c();
    }

    public boolean isAttachedToWindow() {
        return this.N;
    }

    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f604d;
    }

    public void j() {
        this.j0 = null;
        this.h0 = null;
        this.i0 = null;
        this.g0 = null;
    }

    public boolean k() {
        return this.d0 > 0;
    }

    public void l() {
        int b2 = this.B.b();
        for (int i2 = 0; i2 < b2; i2++) {
            ((l) this.B.d(i2).getLayoutParams()).f829c = true;
        }
        q qVar = this.y;
        int size = qVar.f833c.size();
        for (int i3 = 0; i3 < size; i3++) {
            l lVar = (l) qVar.f833c.get(i3).a.getLayoutParams();
            if (lVar != null) {
                lVar.f829c = true;
            }
        }
    }

    public void m() {
        this.d0++;
    }

    public final void n() {
        boolean z2;
        boolean z3 = false;
        if (this.b0) {
            a aVar = this.A;
            aVar.a((List<a.b>) aVar.b);
            aVar.a((List<a.b>) aVar.f760c);
            aVar.f764g = 0;
            if (this.c0) {
                this.I.a(this);
            }
        }
        if (this.k0 != null && this.I.m()) {
            this.A.d();
        } else {
            this.A.b();
        }
        boolean z4 = this.F0 || this.G0;
        u uVar = this.C0;
        if (!this.Q || this.k0 == null || (!this.b0 && !z4 && !this.I.f821g)) {
            z2 = false;
        } else if (!this.b0) {
            z2 = true;
        } else {
            throw null;
        }
        uVar.f846j = z2;
        u uVar2 = this.C0;
        if (uVar2.f846j && z4 && !this.b0) {
            if (this.k0 != null && this.I.m()) {
                z3 = true;
            }
        }
        uVar2.f847k = z3;
    }

    public void o() {
        h hVar = this.k0;
        if (hVar != null) {
            hVar.b();
        }
        k kVar = this.I;
        if (kVar != null) {
            kVar.a(this.y);
            this.I.b(this.y);
        }
        this.y.a();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.d0 = 0;
        this.N = true;
        this.Q = this.Q && !isLayoutRequested();
        k kVar = this.I;
        if (kVar != null) {
            kVar.f822h = true;
        }
        this.I0 = false;
        if (X0) {
            m mVar = m.B.get();
            this.A0 = mVar;
            if (mVar == null) {
                this.A0 = new m();
                Display e2 = d.i.i.n.e(this);
                float f2 = 60.0f;
                if (!isInEditMode() && e2 != null) {
                    float refreshRate = e2.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                m mVar2 = this.A0;
                mVar2.z = (long) (1.0E9f / f2);
                m.B.set(mVar2);
            }
            this.A0.x.add(this);
        }
    }

    public void onDetachedFromWindow() {
        m mVar;
        super.onDetachedFromWindow();
        h hVar = this.k0;
        if (hVar != null) {
            hVar.b();
        }
        r();
        this.N = false;
        k kVar = this.I;
        if (kVar != null) {
            q qVar = this.y;
            kVar.f822h = false;
            kVar.a(this, qVar);
        }
        this.R0.clear();
        removeCallbacks(this.S0);
        if (this.C != null) {
            do {
            } while (y.a.f865d.a() != null);
            if (X0 && (mVar = this.A0) != null) {
                mVar.x.remove(this);
                this.A0 = null;
                return;
            }
            return;
        }
        throw null;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.K.size();
        int i2 = 0;
        while (i2 < size) {
            if (this.K.get(i2) != null) {
                i2++;
            } else {
                throw null;
            }
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        if (this.I != null && !this.T && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f3 = this.I.b() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.I.a()) {
                    f2 = motionEvent.getAxisValue(10);
                    if (!(f3 == 0.0f && f2 == 0.0f)) {
                        a((int) (f2 * this.w0), (int) (f3 * this.x0), motionEvent);
                    }
                }
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (this.I.b()) {
                        f3 = -axisValue;
                    } else if (this.I.a()) {
                        f2 = axisValue;
                        f3 = 0.0f;
                        a((int) (f2 * this.w0), (int) (f3 * this.x0), motionEvent);
                    }
                }
                f3 = 0.0f;
            }
            f2 = 0.0f;
            a((int) (f2 * this.w0), (int) (f3 * this.x0), motionEvent);
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        if (this.T) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.M = null;
        }
        int size = this.L.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z2 = false;
                break;
            }
            n nVar = this.L.get(i2);
            if (nVar.a(this, motionEvent) && action != 3) {
                this.M = nVar;
                z2 = true;
                break;
            }
            i2++;
        }
        if (z2) {
            a();
            return true;
        }
        k kVar = this.I;
        if (kVar == null) {
            return false;
        }
        boolean a2 = kVar.a();
        boolean b2 = this.I.b();
        if (this.n0 == null) {
            this.n0 = VelocityTracker.obtain();
        }
        this.n0.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.U) {
                this.U = false;
            }
            this.m0 = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.q0 = x2;
            this.o0 = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.r0 = y2;
            this.p0 = y2;
            if (this.l0 == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.P0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i3 = a2 ? 1 : 0;
            if (b2) {
                i3 |= 2;
            }
            d(i3, 0);
        } else if (actionMasked == 1) {
            this.n0.clear();
            a(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.m0);
            if (findPointerIndex < 0) {
                StringBuilder a3 = e.a.a.a.a.a("Error processing scroll; pointer index for id ");
                a3.append(this.m0);
                a3.append(" not found. Did any MotionEvents get skipped?");
                Log.e("RecyclerView", a3.toString());
                return false;
            }
            int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.l0 != 1) {
                int i4 = x3 - this.o0;
                int i5 = y3 - this.p0;
                if (!a2 || Math.abs(i4) <= this.s0) {
                    z3 = false;
                } else {
                    this.q0 = x3;
                    z3 = true;
                }
                if (b2 && Math.abs(i5) > this.s0) {
                    this.r0 = y3;
                    z3 = true;
                }
                if (z3) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            a();
        } else if (actionMasked == 5) {
            this.m0 = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.q0 = x4;
            this.o0 = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.r0 = y4;
            this.p0 = y4;
        } else if (actionMasked == 6) {
            a(motionEvent);
        }
        if (this.l0 == 1) {
            return true;
        }
        return false;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        d.i.e.b.a("RV OnLayout");
        c();
        Trace.endSection();
        this.Q = true;
    }

    public void onMeasure(int i2, int i3) {
        k kVar = this.I;
        if (kVar == null) {
            b(i2, i3);
        } else if (kVar.j()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.I.b.b(i2, i3);
            if (mode != 1073741824 || mode2 != 1073741824) {
            }
        } else if (this.O) {
            this.I.b.b(i2, i3);
        } else {
            if (this.W) {
                q();
                m();
                n();
                a(true);
                u uVar = this.C0;
                if (uVar.f847k) {
                    uVar.f843g = true;
                } else {
                    this.A.b();
                    this.C0.f843g = false;
                }
                this.W = false;
                b(false);
            } else if (this.C0.f847k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            this.C0.f841e = 0;
            q();
            this.I.b.b(i2, i3);
            b(false);
            this.C0.f843g = false;
        }
    }

    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (k()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof t)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        t tVar = (t) parcelable;
        this.z = tVar;
        super.onRestoreInstanceState(tVar.x);
        k kVar = this.I;
        if (kVar != null && (parcelable2 = this.z.z) != null) {
            kVar.a(parcelable2);
        }
    }

    public Parcelable onSaveInstanceState() {
        t tVar = new t(super.onSaveInstanceState());
        t tVar2 = this.z;
        if (tVar2 != null) {
            tVar.z = tVar2.z;
        } else {
            k kVar = this.I;
            if (kVar != null) {
                tVar.z = kVar.k();
            } else {
                tVar.z = null;
            }
        }
        return tVar;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            j();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:126:0x0241, code lost:
        if (r1 != false) goto L_0x0246;
     */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0050  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            r22 = this;
            r0 = r22
            r1 = r23
            boolean r2 = r0.T
            r3 = 0
            if (r2 != 0) goto L_0x027c
            boolean r2 = r0.U
            if (r2 == 0) goto L_0x000f
            goto L_0x027c
        L_0x000f:
            int r2 = r23.getAction()
            d.t.a.s$n r4 = r0.M
            r5 = 3
            r6 = 1
            if (r4 == 0) goto L_0x0029
            r7 = 0
            if (r2 != 0) goto L_0x001f
            r0.M = r7
            goto L_0x0029
        L_0x001f:
            r4.b(r0, r1)
            if (r2 == r5) goto L_0x0026
            if (r2 != r6) goto L_0x0044
        L_0x0026:
            r0.M = r7
            goto L_0x0044
        L_0x0029:
            if (r2 == 0) goto L_0x0049
            java.util.ArrayList<d.t.a.s$n> r2 = r0.L
            int r2 = r2.size()
            r4 = 0
        L_0x0032:
            if (r4 >= r2) goto L_0x0049
            java.util.ArrayList<d.t.a.s$n> r7 = r0.L
            java.lang.Object r7 = r7.get(r4)
            d.t.a.s$n r7 = (d.t.a.s.n) r7
            boolean r8 = r7.a(r0, r1)
            if (r8 == 0) goto L_0x0046
            r0.M = r7
        L_0x0044:
            r2 = 1
            goto L_0x004a
        L_0x0046:
            int r4 = r4 + 1
            goto L_0x0032
        L_0x0049:
            r2 = 0
        L_0x004a:
            if (r2 == 0) goto L_0x0050
            r22.a()
            return r6
        L_0x0050:
            d.t.a.s$k r2 = r0.I
            if (r2 != 0) goto L_0x0055
            return r3
        L_0x0055:
            boolean r2 = r2.a()
            d.t.a.s$k r4 = r0.I
            boolean r4 = r4.b()
            android.view.VelocityTracker r7 = r0.n0
            if (r7 != 0) goto L_0x0069
            android.view.VelocityTracker r7 = android.view.VelocityTracker.obtain()
            r0.n0 = r7
        L_0x0069:
            android.view.MotionEvent r7 = android.view.MotionEvent.obtain(r23)
            int r8 = r23.getActionMasked()
            int r9 = r23.getActionIndex()
            if (r8 != 0) goto L_0x007d
            int[] r10 = r0.P0
            r10[r6] = r3
            r10[r3] = r3
        L_0x007d:
            int[] r10 = r0.P0
            r11 = r10[r3]
            float r11 = (float) r11
            r10 = r10[r6]
            float r10 = (float) r10
            r7.offsetLocation(r11, r10)
            r10 = 1056964608(0x3f000000, float:0.5)
            if (r8 == 0) goto L_0x024b
            java.lang.String r11 = "RecyclerView"
            r12 = 2
            if (r8 == r6) goto L_0x0183
            if (r8 == r12) goto L_0x00c3
            if (r8 == r5) goto L_0x00be
            r2 = 5
            if (r8 == r2) goto L_0x00a2
            r2 = 6
            if (r8 == r2) goto L_0x009d
            goto L_0x0271
        L_0x009d:
            r22.a((android.view.MotionEvent) r23)
            goto L_0x0271
        L_0x00a2:
            int r2 = r1.getPointerId(r9)
            r0.m0 = r2
            float r2 = r1.getX(r9)
            float r2 = r2 + r10
            int r2 = (int) r2
            r0.q0 = r2
            r0.o0 = r2
            float r1 = r1.getY(r9)
            float r1 = r1 + r10
            int r1 = (int) r1
            r0.r0 = r1
            r0.p0 = r1
            goto L_0x0271
        L_0x00be:
            r22.a()
            goto L_0x0271
        L_0x00c3:
            int r5 = r0.m0
            int r5 = r1.findPointerIndex(r5)
            if (r5 >= 0) goto L_0x00e3
            java.lang.String r1 = "Error processing scroll; pointer index for id "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            int r2 = r0.m0
            r1.append(r2)
            java.lang.String r2 = " not found. Did any MotionEvents get skipped?"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r11, r1)
            return r3
        L_0x00e3:
            float r8 = r1.getX(r5)
            float r8 = r8 + r10
            int r8 = (int) r8
            float r1 = r1.getY(r5)
            float r1 = r1 + r10
            int r1 = (int) r1
            int r5 = r0.q0
            int r5 = r5 - r8
            int r9 = r0.r0
            int r15 = r9 - r1
            int[] r12 = r0.O0
            int[] r13 = r0.N0
            r14 = 0
            d.i.i.g r9 = r22.getScrollingChildHelper()
            r10 = r5
            r11 = r15
            boolean r9 = r9.a((int) r10, (int) r11, (int[]) r12, (int[]) r13, (int) r14)
            if (r9 == 0) goto L_0x012c
            int[] r9 = r0.O0
            r10 = r9[r3]
            int r5 = r5 - r10
            r9 = r9[r6]
            int r15 = r15 - r9
            int[] r9 = r0.N0
            r10 = r9[r3]
            float r10 = (float) r10
            r9 = r9[r6]
            float r9 = (float) r9
            r7.offsetLocation(r10, r9)
            int[] r9 = r0.P0
            r10 = r9[r3]
            int[] r11 = r0.N0
            r12 = r11[r3]
            int r10 = r10 + r12
            r9[r3] = r10
            r10 = r9[r6]
            r11 = r11[r6]
            int r10 = r10 + r11
            r9[r6] = r10
        L_0x012c:
            int r9 = r0.l0
            if (r9 == r6) goto L_0x0157
            if (r2 == 0) goto L_0x0141
            int r9 = java.lang.Math.abs(r5)
            int r10 = r0.s0
            if (r9 <= r10) goto L_0x0141
            if (r5 <= 0) goto L_0x013e
            int r5 = r5 - r10
            goto L_0x013f
        L_0x013e:
            int r5 = r5 + r10
        L_0x013f:
            r9 = 1
            goto L_0x0142
        L_0x0141:
            r9 = 0
        L_0x0142:
            if (r4 == 0) goto L_0x0152
            int r10 = java.lang.Math.abs(r15)
            int r11 = r0.s0
            if (r10 <= r11) goto L_0x0152
            if (r15 <= 0) goto L_0x0150
            int r15 = r15 - r11
            goto L_0x0151
        L_0x0150:
            int r15 = r15 + r11
        L_0x0151:
            r9 = 1
        L_0x0152:
            if (r9 == 0) goto L_0x0157
            r0.setScrollState(r6)
        L_0x0157:
            int r9 = r0.l0
            if (r9 != r6) goto L_0x0271
            int[] r9 = r0.N0
            r10 = r9[r3]
            int r8 = r8 - r10
            r0.q0 = r8
            r8 = r9[r6]
            int r1 = r1 - r8
            r0.r0 = r1
            if (r2 == 0) goto L_0x016b
            r1 = r5
            goto L_0x016c
        L_0x016b:
            r1 = 0
        L_0x016c:
            if (r4 == 0) goto L_0x0170
            r2 = r15
            goto L_0x0171
        L_0x0170:
            r2 = 0
        L_0x0171:
            r0.a((int) r1, (int) r2, (android.view.MotionEvent) r7)
            d.t.a.m r1 = r0.A0
            if (r1 == 0) goto L_0x0271
            if (r5 != 0) goto L_0x017c
            if (r15 == 0) goto L_0x0271
        L_0x017c:
            d.t.a.m r1 = r0.A0
            r1.a((d.t.a.s) r0, (int) r5, (int) r15)
            goto L_0x0271
        L_0x0183:
            android.view.VelocityTracker r1 = r0.n0
            r1.addMovement(r7)
            android.view.VelocityTracker r1 = r0.n0
            r5 = 1000(0x3e8, float:1.401E-42)
            int r8 = r0.v0
            float r8 = (float) r8
            r1.computeCurrentVelocity(r5, r8)
            r1 = 0
            if (r2 == 0) goto L_0x019f
            android.view.VelocityTracker r2 = r0.n0
            int r5 = r0.m0
            float r2 = r2.getXVelocity(r5)
            float r2 = -r2
            goto L_0x01a0
        L_0x019f:
            r2 = 0
        L_0x01a0:
            if (r4 == 0) goto L_0x01ac
            android.view.VelocityTracker r4 = r0.n0
            int r5 = r0.m0
            float r4 = r4.getYVelocity(r5)
            float r4 = -r4
            goto L_0x01ad
        L_0x01ac:
            r4 = 0
        L_0x01ad:
            int r5 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r5 != 0) goto L_0x01b5
            int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r1 == 0) goto L_0x0243
        L_0x01b5:
            int r1 = (int) r2
            int r2 = (int) r4
            d.t.a.s$k r4 = r0.I
            if (r4 != 0) goto L_0x01c2
            java.lang.String r1 = "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."
            android.util.Log.e(r11, r1)
            goto L_0x0240
        L_0x01c2:
            boolean r5 = r0.T
            if (r5 == 0) goto L_0x01c8
            goto L_0x0240
        L_0x01c8:
            boolean r4 = r4.a()
            d.t.a.s$k r5 = r0.I
            boolean r5 = r5.b()
            if (r4 == 0) goto L_0x01dc
            int r8 = java.lang.Math.abs(r1)
            int r9 = r0.u0
            if (r8 >= r9) goto L_0x01dd
        L_0x01dc:
            r1 = 0
        L_0x01dd:
            if (r5 == 0) goto L_0x01e7
            int r8 = java.lang.Math.abs(r2)
            int r9 = r0.u0
            if (r8 >= r9) goto L_0x01e8
        L_0x01e7:
            r2 = 0
        L_0x01e8:
            if (r1 != 0) goto L_0x01ed
            if (r2 != 0) goto L_0x01ed
            goto L_0x0240
        L_0x01ed:
            float r8 = (float) r1
            float r9 = (float) r2
            boolean r10 = r0.dispatchNestedPreFling(r8, r9)
            if (r10 != 0) goto L_0x0240
            if (r4 != 0) goto L_0x01fc
            if (r5 == 0) goto L_0x01fa
            goto L_0x01fc
        L_0x01fa:
            r10 = 0
            goto L_0x01fd
        L_0x01fc:
            r10 = 1
        L_0x01fd:
            r0.dispatchNestedFling(r8, r9, r10)
            if (r10 == 0) goto L_0x0240
            if (r5 == 0) goto L_0x0206
            r4 = r4 | 2
        L_0x0206:
            r0.d(r4, r6)
            int r4 = r0.v0
            int r5 = -r4
            int r1 = java.lang.Math.min(r1, r4)
            int r16 = java.lang.Math.max(r5, r1)
            int r1 = r0.v0
            int r4 = -r1
            int r1 = java.lang.Math.min(r2, r1)
            int r17 = java.lang.Math.max(r4, r1)
            d.t.a.s$w r1 = r0.z0
            d.t.a.s r2 = d.t.a.s.this
            r2.setScrollState(r12)
            r1.y = r3
            r1.x = r3
            android.widget.OverScroller r13 = r1.z
            r14 = 0
            r15 = 0
            r18 = -2147483648(0xffffffff80000000, float:-0.0)
            r19 = 2147483647(0x7fffffff, float:NaN)
            r20 = -2147483648(0xffffffff80000000, float:-0.0)
            r21 = 2147483647(0x7fffffff, float:NaN)
            r13.fling(r14, r15, r16, r17, r18, r19, r20, r21)
            r1.a()
            r1 = 1
            goto L_0x0241
        L_0x0240:
            r1 = 0
        L_0x0241:
            if (r1 != 0) goto L_0x0246
        L_0x0243:
            r0.setScrollState(r3)
        L_0x0246:
            r22.p()
            r3 = 1
            goto L_0x0271
        L_0x024b:
            int r5 = r1.getPointerId(r3)
            r0.m0 = r5
            float r5 = r23.getX()
            float r5 = r5 + r10
            int r5 = (int) r5
            r0.q0 = r5
            r0.o0 = r5
            float r1 = r23.getY()
            float r1 = r1 + r10
            int r1 = (int) r1
            r0.r0 = r1
            r0.p0 = r1
            if (r2 == 0) goto L_0x0269
            r1 = 1
            goto L_0x026a
        L_0x0269:
            r1 = 0
        L_0x026a:
            if (r4 == 0) goto L_0x026e
            r1 = r1 | 2
        L_0x026e:
            r0.d(r1, r3)
        L_0x0271:
            if (r3 != 0) goto L_0x0278
            android.view.VelocityTracker r1 = r0.n0
            r1.addMovement(r7)
        L_0x0278:
            r7.recycle()
            return r6
        L_0x027c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        VelocityTracker velocityTracker = this.n0;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z2 = false;
        a(0);
        EdgeEffect edgeEffect = this.g0;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z2 = this.g0.isFinished();
        }
        EdgeEffect edgeEffect2 = this.h0;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 |= this.h0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.i0;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z2 |= this.i0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.j0;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z2 |= this.j0.isFinished();
        }
        if (z2) {
            d.i.i.n.x(this);
        }
    }

    public void q() {
        int i2 = this.R + 1;
        this.R = i2;
        if (i2 == 1 && !this.T) {
            this.S = false;
        }
    }

    public void r() {
        setScrollState(0);
        s();
    }

    public void removeDetachedView(View view, boolean z2) {
        x b2 = b(view);
        if (b2 != null) {
            if (b2.p()) {
                b2.c();
            } else if (!b2.u()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(b2);
                throw new IllegalArgumentException(e.a.a.a.a.a(this, sb));
            }
        }
        view.clearAnimation();
        b(view);
        super.removeDetachedView(view, z2);
    }

    public void requestChildFocus(View view, View view2) {
        if (this.I != null) {
            if (!k() && view2 != null) {
                a(view, view2);
            }
            super.requestChildFocus(view, view2);
            return;
        }
        throw null;
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.I.a(this, view, rect, z2, false);
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.L.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.L.get(i2).a(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        if (this.R != 0 || this.T) {
            this.S = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s() {
        w wVar = this.z0;
        s.this.removeCallbacks(wVar);
        wVar.z.abortAnimation();
        k kVar = this.I;
    }

    public void scrollBy(int i2, int i3) {
        k kVar = this.I;
        if (kVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.T) {
            boolean a2 = kVar.a();
            boolean b2 = this.I.b();
            if (a2 || b2) {
                if (!a2) {
                    i2 = 0;
                }
                if (!b2) {
                    i3 = 0;
                }
                a(i2, i3, (MotionEvent) null);
            }
        }
    }

    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i2 = 0;
        if (k()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            if (contentChangeTypes != 0) {
                i2 = contentChangeTypes;
            }
            this.V |= i2;
            i2 = 1;
        }
        if (i2 == 0) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(v vVar) {
        this.J0 = vVar;
        d.i.i.n.a((View) this, (d.i.i.a) vVar);
    }

    public void setAdapter(d dVar) {
        setLayoutFrozen(false);
        o();
        a aVar = this.A;
        aVar.a((List<a.b>) aVar.b);
        aVar.a((List<a.b>) aVar.f760c);
        aVar.f764g = 0;
        this.H = dVar;
        if (dVar == null) {
            k kVar = this.I;
            q qVar = this.y;
            qVar.a();
            p b2 = qVar.b();
            if (b2 != null) {
                if (b2.b == 0) {
                    for (int i2 = 0; i2 < b2.a.size(); i2++) {
                        b2.a.valueAt(i2).a.clear();
                    }
                }
                this.C0.f842f = true;
                this.c0 |= false;
                this.b0 = true;
                int b3 = this.B.b();
                for (int i3 = 0; i3 < b3; i3++) {
                    x b4 = b(this.B.d(i3));
                    if (b4 != null && !b4.u()) {
                        b4.a(6);
                    }
                }
                l();
                q qVar2 = this.y;
                int size = qVar2.f833c.size();
                for (int i4 = 0; i4 < size; i4++) {
                    x xVar = qVar2.f833c.get(i4);
                    if (xVar != null) {
                        xVar.a(6);
                        xVar.a((Object) null);
                    }
                }
                qVar2.c();
                requestLayout();
                return;
            }
            throw null;
        }
        throw null;
    }

    public void setChildDrawingOrderCallback(f fVar) {
        if (fVar != this.K0) {
            this.K0 = fVar;
            setChildrenDrawingOrderEnabled(fVar != null);
        }
    }

    public void setClipToPadding(boolean z2) {
        if (z2 != this.D) {
            j();
        }
        this.D = z2;
        super.setClipToPadding(z2);
        if (this.Q) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(g gVar) {
        if (gVar != null) {
            this.f0 = gVar;
            j();
            return;
        }
        throw null;
    }

    public void setHasFixedSize(boolean z2) {
        this.O = z2;
    }

    public void setItemAnimator(h hVar) {
        h hVar2 = this.k0;
        if (hVar2 != null) {
            hVar2.b();
            this.k0.a = null;
        }
        this.k0 = hVar;
        if (hVar != null) {
            hVar.a = this.H0;
        }
    }

    public void setItemViewCacheSize(int i2) {
        q qVar = this.y;
        qVar.f835e = i2;
        qVar.d();
    }

    public void setLayoutFrozen(boolean z2) {
        if (z2 != this.T) {
            a("Do not setLayoutFrozen in layout or scroll");
            if (!z2) {
                this.T = false;
                if (this.S) {
                    k kVar = this.I;
                }
                this.S = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.T = true;
            this.U = true;
            r();
        }
    }

    public void setLayoutManager(k kVar) {
        if (kVar != this.I) {
            r();
            int i2 = 0;
            if (this.I != null) {
                h hVar = this.k0;
                if (hVar != null) {
                    hVar.b();
                }
                this.I.a(this.y);
                this.I.b(this.y);
                this.y.a();
                if (this.N) {
                    k kVar2 = this.I;
                    q qVar = this.y;
                    kVar2.f822h = false;
                    kVar2.a(this, qVar);
                }
                this.I.b((s) null);
                this.I = null;
            } else {
                this.y.a();
            }
            b bVar = this.B;
            b.a aVar = bVar.b;
            aVar.a = 0;
            b.a aVar2 = aVar.b;
            if (aVar2 != null) {
                aVar2.b();
            }
            int size = bVar.f767c.size();
            while (true) {
                size--;
                if (size >= 0) {
                    b.C0042b bVar2 = bVar.a;
                    View view = bVar.f767c.get(size);
                    t tVar = (t) bVar2;
                    if (tVar != null) {
                        x b2 = b(view);
                        if (b2 != null) {
                            b2.a(tVar.a);
                        }
                        bVar.f767c.remove(size);
                    } else {
                        throw null;
                    }
                } else {
                    t tVar2 = (t) bVar.a;
                    int a2 = tVar2.a();
                    while (i2 < a2) {
                        View a3 = tVar2.a(i2);
                        if (tVar2.a != null) {
                            b(a3);
                            a3.clearAnimation();
                            i2++;
                        } else {
                            throw null;
                        }
                    }
                    tVar2.a.removeAllViews();
                    this.I = kVar;
                    if (kVar != null) {
                        if (kVar.b == null) {
                            kVar.b(this);
                            if (this.N) {
                                this.I.f822h = true;
                            }
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("LayoutManager ");
                            sb.append(kVar);
                            sb.append(" is already attached to a RecyclerView:");
                            throw new IllegalArgumentException(e.a.a.a.a.a(kVar.b, sb));
                        }
                    }
                    this.y.d();
                    requestLayout();
                    return;
                }
            }
        }
    }

    public void setNestedScrollingEnabled(boolean z2) {
        d.i.i.g scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f604d) {
            d.i.i.n.z(scrollingChildHelper.f603c);
        }
        scrollingChildHelper.f604d = z2;
    }

    public void setOnFlingListener(m mVar) {
        this.t0 = mVar;
    }

    @Deprecated
    public void setOnScrollListener(o oVar) {
        this.D0 = oVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.y0 = z2;
    }

    public void setRecycledViewPool(p pVar) {
        q qVar = this.y;
        p pVar2 = qVar.f837g;
        if (pVar2 != null) {
            pVar2.b--;
        }
        qVar.f837g = pVar;
        if (pVar != null) {
            s.this.getAdapter();
        }
    }

    public void setRecyclerListener(r rVar) {
        this.J = rVar;
    }

    public void setScrollState(int i2) {
        if (i2 != this.l0) {
            this.l0 = i2;
            if (i2 != 2) {
                s();
            }
            k kVar = this.I;
            if (kVar != null) {
                kVar.b(i2);
            }
            o oVar = this.D0;
            List<o> list = this.E0;
            if (list != null) {
                int size = list.size();
                do {
                    size--;
                    if (size < 0) {
                        return;
                    }
                } while (this.E0.get(size) != null);
                throw null;
            }
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            } else {
                this.s0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.s0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(v vVar) {
    }

    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().a(i2, 0);
    }

    public void stopNestedScroll() {
        getScrollingChildHelper().c(0);
    }

    public final class q {
        public final ArrayList<x> a = new ArrayList<>();
        public ArrayList<x> b = null;

        /* renamed from: c  reason: collision with root package name */
        public final ArrayList<x> f833c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        public final List<x> f834d = Collections.unmodifiableList(this.a);

        /* renamed from: e  reason: collision with root package name */
        public int f835e = 2;

        /* renamed from: f  reason: collision with root package name */
        public int f836f = 2;

        /* renamed from: g  reason: collision with root package name */
        public p f837g;

        public q() {
        }

        public void a() {
            this.a.clear();
            c();
        }

        public void b(int i2) {
            a(this.f833c.get(i2), true);
            this.f833c.remove(i2);
        }

        public void c() {
            for (int size = this.f833c.size() - 1; size >= 0; size--) {
                b(size);
            }
            this.f833c.clear();
            if (s.X0) {
                m.b bVar = s.this.B0;
                int[] iArr = bVar.f802c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                bVar.f803d = 0;
            }
        }

        public void d() {
            k kVar = s.this.I;
            this.f836f = this.f835e + (kVar != null ? kVar.f826l : 0);
            for (int size = this.f833c.size() - 1; size >= 0 && this.f833c.size() > this.f836f; size--) {
                b(size);
            }
        }

        public int a(int i2) {
            if (i2 < 0 || i2 >= s.this.C0.a()) {
                StringBuilder sb = new StringBuilder();
                sb.append("invalid position ");
                sb.append(i2);
                sb.append(". State ");
                sb.append("item count is ");
                sb.append(s.this.C0.a());
                throw new IndexOutOfBoundsException(e.a.a.a.a.a(s.this, sb));
            }
            s sVar = s.this;
            if (!sVar.C0.f843g) {
                return i2;
            }
            return sVar.A.a(i2, 0);
        }

        public void b(View view) {
            x b2 = s.b(view);
            if (!b2.b(12) && b2.q()) {
                h hVar = s.this.k0;
                if (!(hVar == null || hVar.a(b2, b2.i()))) {
                    if (this.b == null) {
                        this.b = new ArrayList<>();
                    }
                    b2.a(this, true);
                    this.b.add(b2);
                    return;
                }
            }
            if (!b2.l() || b2.n()) {
                b2.a(this, false);
                this.a.add(b2);
                return;
            }
            throw null;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:128:0x0291, code lost:
            if (r2 == false) goto L_0x0293;
         */
        /* JADX WARNING: Removed duplicated region for block: B:102:0x0209 A[ADDED_TO_REGION] */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x004c  */
        /* JADX WARNING: Removed duplicated region for block: B:97:0x01c8  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public d.t.a.s.x a(int r11, boolean r12, long r13) {
            /*
                r10 = this;
                if (r11 < 0) goto L_0x02c7
                d.t.a.s r0 = d.t.a.s.this
                d.t.a.s$u r0 = r0.C0
                int r0 = r0.a()
                if (r11 >= r0) goto L_0x02c7
                d.t.a.s r0 = d.t.a.s.this
                d.t.a.s$u r0 = r0.C0
                boolean r0 = r0.f843g
                r1 = 32
                r2 = 1
                r3 = 0
                r4 = 0
                if (r0 == 0) goto L_0x0048
                java.util.ArrayList<d.t.a.s$x> r0 = r10.b
                if (r0 == 0) goto L_0x0043
                int r0 = r0.size()
                if (r0 != 0) goto L_0x0024
                goto L_0x0043
            L_0x0024:
                r5 = 0
            L_0x0025:
                if (r5 >= r0) goto L_0x0042
                java.util.ArrayList<d.t.a.s$x> r6 = r10.b
                java.lang.Object r6 = r6.get(r5)
                d.t.a.s$x r6 = (d.t.a.s.x) r6
                boolean r7 = r6.w()
                if (r7 != 0) goto L_0x003f
                int r7 = r6.g()
                if (r7 != r11) goto L_0x003f
                r6.a((int) r1)
                goto L_0x0044
            L_0x003f:
                int r5 = r5 + 1
                goto L_0x0025
            L_0x0042:
                throw r3
            L_0x0043:
                r6 = r3
            L_0x0044:
                if (r6 == 0) goto L_0x0049
                r0 = 1
                goto L_0x004a
            L_0x0048:
                r6 = r3
            L_0x0049:
                r0 = 0
            L_0x004a:
                if (r6 != 0) goto L_0x01c6
                java.util.ArrayList<d.t.a.s$x> r5 = r10.a
                int r5 = r5.size()
                r6 = 0
            L_0x0053:
                if (r6 >= r5) goto L_0x0086
                java.util.ArrayList<d.t.a.s$x> r7 = r10.a
                java.lang.Object r7 = r7.get(r6)
                d.t.a.s$x r7 = (d.t.a.s.x) r7
                boolean r8 = r7.w()
                if (r8 != 0) goto L_0x0083
                int r8 = r7.g()
                if (r8 != r11) goto L_0x0083
                boolean r8 = r7.l()
                if (r8 != 0) goto L_0x0083
                d.t.a.s r8 = d.t.a.s.this
                d.t.a.s$u r8 = r8.C0
                boolean r8 = r8.f843g
                if (r8 != 0) goto L_0x007d
                boolean r8 = r7.n()
                if (r8 != 0) goto L_0x0083
            L_0x007d:
                r7.a((int) r1)
                r6 = r7
                goto L_0x0171
            L_0x0083:
                int r6 = r6 + 1
                goto L_0x0053
            L_0x0086:
                if (r12 != 0) goto L_0x0148
                d.t.a.s r1 = d.t.a.s.this
                d.t.a.b r1 = r1.B
                java.util.List<android.view.View> r5 = r1.f767c
                int r5 = r5.size()
                r6 = 0
            L_0x0093:
                if (r6 >= r5) goto L_0x00be
                java.util.List<android.view.View> r7 = r1.f767c
                java.lang.Object r7 = r7.get(r6)
                android.view.View r7 = (android.view.View) r7
                d.t.a.b$b r8 = r1.a
                d.t.a.t r8 = (d.t.a.t) r8
                if (r8 == 0) goto L_0x00bd
                d.t.a.s$x r8 = d.t.a.s.b((android.view.View) r7)
                int r9 = r8.g()
                if (r9 != r11) goto L_0x00ba
                boolean r9 = r8.l()
                if (r9 != 0) goto L_0x00ba
                boolean r8 = r8.n()
                if (r8 != 0) goto L_0x00ba
                goto L_0x00bf
            L_0x00ba:
                int r6 = r6 + 1
                goto L_0x0093
            L_0x00bd:
                throw r3
            L_0x00be:
                r7 = r3
            L_0x00bf:
                if (r7 == 0) goto L_0x0148
                d.t.a.s$x r1 = d.t.a.s.b((android.view.View) r7)
                d.t.a.s r5 = d.t.a.s.this
                d.t.a.b r5 = r5.B
                d.t.a.b$b r6 = r5.a
                d.t.a.t r6 = (d.t.a.t) r6
                d.t.a.s r6 = r6.a
                int r6 = r6.indexOfChild(r7)
                if (r6 < 0) goto L_0x0131
                d.t.a.b$a r8 = r5.b
                boolean r8 = r8.c(r6)
                if (r8 == 0) goto L_0x011a
                d.t.a.b$a r8 = r5.b
                r8.a(r6)
                r5.c((android.view.View) r7)
                d.t.a.s r5 = d.t.a.s.this
                d.t.a.b r5 = r5.B
                int r5 = r5.a((android.view.View) r7)
                r6 = -1
                if (r5 == r6) goto L_0x0101
                d.t.a.s r6 = d.t.a.s.this
                d.t.a.b r6 = r6.B
                r6.a((int) r5)
                r10.b((android.view.View) r7)
                r5 = 8224(0x2020, float:1.1524E-41)
                r1.a((int) r5)
                r6 = r1
                goto L_0x0171
            L_0x0101:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                r12.<init>()
                java.lang.String r13 = "layout index should not be -1 after unhiding a view:"
                r12.append(r13)
                r12.append(r1)
                d.t.a.s r13 = d.t.a.s.this
                java.lang.String r12 = e.a.a.a.a.a((d.t.a.s) r13, (java.lang.StringBuilder) r12)
                r11.<init>(r12)
                throw r11
            L_0x011a:
                java.lang.RuntimeException r11 = new java.lang.RuntimeException
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                r12.<init>()
                java.lang.String r13 = "trying to unhide a view that was not hidden"
                r12.append(r13)
                r12.append(r7)
                java.lang.String r12 = r12.toString()
                r11.<init>(r12)
                throw r11
            L_0x0131:
                java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                r12.<init>()
                java.lang.String r13 = "view is not a child, cannot hide "
                r12.append(r13)
                r12.append(r7)
                java.lang.String r12 = r12.toString()
                r11.<init>(r12)
                throw r11
            L_0x0148:
                java.util.ArrayList<d.t.a.s$x> r1 = r10.f833c
                int r1 = r1.size()
                r5 = 0
            L_0x014f:
                if (r5 >= r1) goto L_0x0170
                java.util.ArrayList<d.t.a.s$x> r6 = r10.f833c
                java.lang.Object r6 = r6.get(r5)
                d.t.a.s$x r6 = (d.t.a.s.x) r6
                boolean r7 = r6.l()
                if (r7 != 0) goto L_0x016d
                int r7 = r6.g()
                if (r7 != r11) goto L_0x016d
                if (r12 != 0) goto L_0x0171
                java.util.ArrayList<d.t.a.s$x> r1 = r10.f833c
                r1.remove(r5)
                goto L_0x0171
            L_0x016d:
                int r5 = r5 + 1
                goto L_0x014f
            L_0x0170:
                r6 = r3
            L_0x0171:
                if (r6 == 0) goto L_0x01c6
                boolean r1 = r6.n()
                if (r1 == 0) goto L_0x01a8
                d.t.a.s r1 = d.t.a.s.this
                d.t.a.s$u r1 = r1.C0
                boolean r1 = r1.f843g
                if (r1 != 0) goto L_0x01a6
                if (r12 != 0) goto L_0x01a4
                r12 = 4
                r6.a((int) r12)
                boolean r12 = r6.o()
                if (r12 == 0) goto L_0x0198
                d.t.a.s r12 = d.t.a.s.this
                android.view.View r1 = r6.a
                r12.removeDetachedView(r1, r4)
                r6.v()
                goto L_0x01a1
            L_0x0198:
                boolean r12 = r6.w()
                if (r12 == 0) goto L_0x01a1
                r6.b()
            L_0x01a1:
                r10.a((d.t.a.s.x) r6)
            L_0x01a4:
                r6 = r3
                goto L_0x01c6
            L_0x01a6:
                r0 = 1
                goto L_0x01c6
            L_0x01a8:
                int r11 = r6.f848c
                if (r11 < 0) goto L_0x01ad
                throw r3
            L_0x01ad:
                java.lang.IndexOutOfBoundsException r11 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                r12.<init>()
                java.lang.String r13 = "Inconsistency detected. Invalid view holder adapter position"
                r12.append(r13)
                r12.append(r6)
                d.t.a.s r13 = d.t.a.s.this
                java.lang.String r12 = e.a.a.a.a.a((d.t.a.s) r13, (java.lang.StringBuilder) r12)
                r11.<init>(r12)
                throw r11
            L_0x01c6:
                if (r6 != 0) goto L_0x0209
                d.t.a.s r12 = d.t.a.s.this
                d.t.a.a r12 = r12.A
                int r12 = r12.a((int) r11, (int) r4)
                if (r12 < 0) goto L_0x01d3
                throw r3
            L_0x01d3:
                java.lang.IndexOutOfBoundsException r13 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r14 = new java.lang.StringBuilder
                r14.<init>()
                java.lang.String r0 = "Inconsistency detected. Invalid item position "
                r14.append(r0)
                r14.append(r11)
                java.lang.String r11 = "(offset:"
                r14.append(r11)
                r14.append(r12)
                java.lang.String r11 = ")."
                r14.append(r11)
                java.lang.String r11 = "state:"
                r14.append(r11)
                d.t.a.s r11 = d.t.a.s.this
                d.t.a.s$u r11 = r11.C0
                int r11 = r11.a()
                r14.append(r11)
                d.t.a.s r11 = d.t.a.s.this
                java.lang.String r11 = e.a.a.a.a.a((d.t.a.s) r11, (java.lang.StringBuilder) r14)
                r13.<init>(r11)
                throw r13
            L_0x0209:
                if (r0 == 0) goto L_0x023b
                d.t.a.s r12 = d.t.a.s.this
                d.t.a.s$u r12 = r12.C0
                boolean r12 = r12.f843g
                if (r12 != 0) goto L_0x023b
                r12 = 8192(0x2000, float:1.14794E-41)
                boolean r0 = r6.b(r12)
                if (r0 == 0) goto L_0x023b
                r6.a((int) r4, (int) r12)
                d.t.a.s r12 = d.t.a.s.this
                d.t.a.s$u r12 = r12.C0
                boolean r12 = r12.f846j
                if (r12 == 0) goto L_0x023b
                d.t.a.s.h.d(r6)
                d.t.a.s r12 = d.t.a.s.this
                d.t.a.s$h r0 = r12.k0
                d.t.a.s$u r12 = r12.C0
                r6.i()
                d.t.a.s$h$c r12 = r0.c(r6)
                d.t.a.s r0 = d.t.a.s.this
                r0.a((d.t.a.s.x) r6, (d.t.a.s.h.c) r12)
            L_0x023b:
                d.t.a.s r12 = d.t.a.s.this
                d.t.a.s$u r12 = r12.C0
                boolean r12 = r12.f843g
                if (r12 == 0) goto L_0x024c
                boolean r12 = r6.k()
                if (r12 == 0) goto L_0x024c
                r6.f851f = r11
                goto L_0x0293
            L_0x024c:
                boolean r12 = r6.k()
                if (r12 == 0) goto L_0x025e
                boolean r12 = r6.r()
                if (r12 != 0) goto L_0x025e
                boolean r12 = r6.l()
                if (r12 == 0) goto L_0x0293
            L_0x025e:
                d.t.a.s r12 = d.t.a.s.this
                d.t.a.a r12 = r12.A
                r12.a((int) r11, (int) r4)
                d.t.a.s r11 = d.t.a.s.this
                r6.q = r11
                int r11 = r6.f()
                d.t.a.s r12 = d.t.a.s.this
                long r0 = r12.getNanoTime()
                r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r12 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
                if (r12 == 0) goto L_0x02c6
                d.t.a.s$p r12 = r10.f837g
                d.t.a.s$p$a r11 = r12.a(r11)
                long r11 = r11.f832d
                r7 = 0
                int r5 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
                if (r5 == 0) goto L_0x0291
                long r0 = r0 + r11
                int r11 = (r0 > r13 ? 1 : (r0 == r13 ? 0 : -1))
                if (r11 >= 0) goto L_0x0290
                goto L_0x0291
            L_0x0290:
                r2 = 0
            L_0x0291:
                if (r2 != 0) goto L_0x02c6
            L_0x0293:
                android.view.View r11 = r6.a
                android.view.ViewGroup$LayoutParams r11 = r11.getLayoutParams()
                if (r11 != 0) goto L_0x02a9
                d.t.a.s r11 = d.t.a.s.this
                android.view.ViewGroup$LayoutParams r11 = r11.generateDefaultLayoutParams()
                d.t.a.s$l r11 = (d.t.a.s.l) r11
                android.view.View r12 = r6.a
                r12.setLayoutParams(r11)
                goto L_0x02c1
            L_0x02a9:
                d.t.a.s r12 = d.t.a.s.this
                boolean r12 = r12.checkLayoutParams(r11)
                if (r12 != 0) goto L_0x02bf
                d.t.a.s r12 = d.t.a.s.this
                android.view.ViewGroup$LayoutParams r11 = r12.generateLayoutParams((android.view.ViewGroup.LayoutParams) r11)
                d.t.a.s$l r11 = (d.t.a.s.l) r11
                android.view.View r12 = r6.a
                r12.setLayoutParams(r11)
                goto L_0x02c1
            L_0x02bf:
                d.t.a.s$l r11 = (d.t.a.s.l) r11
            L_0x02c1:
                r11.a = r6
                r11.f830d = r4
                return r6
            L_0x02c6:
                throw r3
            L_0x02c7:
                java.lang.IndexOutOfBoundsException r12 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r13 = new java.lang.StringBuilder
                r13.<init>()
                java.lang.String r14 = "Invalid item position "
                r13.append(r14)
                r13.append(r11)
                java.lang.String r14 = "("
                r13.append(r14)
                r13.append(r11)
                java.lang.String r11 = "). Item count:"
                r13.append(r11)
                d.t.a.s r11 = d.t.a.s.this
                d.t.a.s$u r11 = r11.C0
                int r11 = r11.a()
                r13.append(r11)
                d.t.a.s r11 = d.t.a.s.this
                java.lang.String r11 = e.a.a.a.a.a((d.t.a.s) r11, (java.lang.StringBuilder) r13)
                r12.<init>(r11)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.q.a(int, boolean, long):d.t.a.s$x");
        }

        public void b(x xVar) {
            if (xVar.n) {
                this.b.remove(xVar);
            } else {
                this.a.remove(xVar);
            }
            xVar.m = null;
            xVar.n = false;
            xVar.b();
        }

        public p b() {
            if (this.f837g == null) {
                this.f837g = new p();
            }
            return this.f837g;
        }

        public void a(View view) {
            x b2 = s.b(view);
            if (b2.p()) {
                s.this.removeDetachedView(view, false);
            }
            if (b2.o()) {
                b2.v();
            } else if (b2.w()) {
                b2.b();
            }
            a(b2);
        }

        public void a(x xVar) {
            boolean z = false;
            boolean z2 = true;
            if (xVar.o() || xVar.a.getParent() != null) {
                StringBuilder a2 = e.a.a.a.a.a("Scrapped or attached views may not be recycled. isScrap:");
                a2.append(xVar.o());
                a2.append(" isAttached:");
                if (xVar.a.getParent() != null) {
                    z = true;
                }
                a2.append(z);
                throw new IllegalArgumentException(e.a.a.a.a.a(s.this, a2));
            } else if (xVar.p()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
                sb.append(xVar);
                throw new IllegalArgumentException(e.a.a.a.a.a(s.this, sb));
            } else if (!xVar.u()) {
                boolean d2 = xVar.d();
                if (xVar.m()) {
                    if (this.f836f <= 0 || xVar.b(526)) {
                        z = false;
                    } else {
                        int size = this.f833c.size();
                        if (size >= this.f836f && size > 0) {
                            b(0);
                            size--;
                        }
                        if (s.X0 && size > 0 && !s.this.B0.a(xVar.f848c)) {
                            do {
                                size--;
                                if (size < 0) {
                                    break;
                                }
                            } while (s.this.B0.a(this.f833c.get(size).f848c));
                            size++;
                        }
                        this.f833c.add(size, xVar);
                        z = true;
                    }
                    if (!z) {
                        a(xVar, true);
                        s.this.C.a(xVar);
                        if (!z && !z2 && d2) {
                            xVar.q = null;
                            return;
                        }
                        return;
                    }
                }
                z2 = false;
                s.this.C.a(xVar);
                if (!z) {
                }
            } else {
                throw new IllegalArgumentException(e.a.a.a.a.a(s.this, e.a.a.a.a.a("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
            }
        }

        public void a(x xVar, boolean z) {
            s.b(xVar);
            if (xVar.b(Constants.MIN_PERMITTED_BLOCK_SIZE)) {
                xVar.a(0, (int) Constants.MIN_PERMITTED_BLOCK_SIZE);
                d.i.i.n.a(xVar.a, (d.i.i.a) null);
            }
            if (z) {
                r rVar = s.this.J;
                if (rVar != null) {
                    rVar.a(xVar);
                }
                s sVar = s.this;
                if (sVar.C0 != null) {
                    sVar.C.a(xVar);
                }
            }
            xVar.q = null;
            p b2 = b();
            if (b2 != null) {
                int f2 = xVar.f();
                ArrayList<x> arrayList = b2.a(f2).a;
                if (b2.a.get(f2).b > arrayList.size()) {
                    xVar.s();
                    arrayList.add(xVar);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public s(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        float f2;
        TypedArray typedArray;
        char c2;
        ClassLoader classLoader;
        Object[] objArr;
        Constructor<? extends U> constructor;
        NoSuchMethodException noSuchMethodException;
        Context context2 = context;
        AttributeSet attributeSet2 = attributeSet;
        int i3 = i2;
        this.x = new C0043s(this);
        this.y = new q();
        this.C = new y();
        this.E = new Rect();
        this.F = new Rect();
        this.G = new RectF();
        this.K = new ArrayList<>();
        this.L = new ArrayList<>();
        this.R = 0;
        this.b0 = false;
        this.c0 = false;
        this.d0 = 0;
        this.e0 = 0;
        this.f0 = new g();
        this.k0 = new k();
        this.l0 = 0;
        this.m0 = -1;
        this.w0 = Float.MIN_VALUE;
        this.x0 = Float.MIN_VALUE;
        boolean z2 = true;
        this.y0 = true;
        this.z0 = new w();
        this.B0 = X0 ? new m.b() : null;
        this.C0 = new u();
        this.F0 = false;
        this.G0 = false;
        this.H0 = new i();
        this.I0 = false;
        this.L0 = new int[2];
        this.N0 = new int[2];
        this.O0 = new int[2];
        this.P0 = new int[2];
        this.Q0 = new int[2];
        this.R0 = new ArrayList();
        this.S0 = new a();
        this.T0 = new c();
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet2, V0, i3, 0);
            this.D = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.D = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.s0 = viewConfiguration.getScaledTouchSlop();
        this.w0 = d.i.i.r.b(viewConfiguration, context2);
        if (Build.VERSION.SDK_INT >= 26) {
            f2 = viewConfiguration.getScaledVerticalScrollFactor();
        } else {
            f2 = d.i.i.r.a(viewConfiguration, context2);
        }
        this.x0 = f2;
        this.u0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.v0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.k0.a = this.H0;
        this.A = new a(new u(this));
        this.B = new b(new t(this));
        if (d.i.i.n.h(this) == 0 && Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.a0 = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new v(this));
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet2, R$styleable.RecyclerView, i3, 0);
            String string = obtainStyledAttributes2.getString(R$styleable.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(R$styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            boolean z3 = obtainStyledAttributes2.getBoolean(R$styleable.RecyclerView_fastScrollEnabled, false);
            this.P = z3;
            if (z3) {
                StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollVerticalThumbDrawable);
                Drawable drawable = obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollVerticalTrackDrawable);
                StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalThumbDrawable);
                Drawable drawable2 = obtainStyledAttributes2.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalTrackDrawable);
                if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                    throw new IllegalArgumentException(e.a.a.a.a.a(this, e.a.a.a.a.a("Trying to set fast scroller without both required drawables.")));
                }
                Resources resources = getContext().getResources();
                c2 = 2;
                typedArray = obtainStyledAttributes2;
                new l(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R$dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R$dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R$dimen.fastscroll_margin));
            } else {
                typedArray = obtainStyledAttributes2;
                c2 = 2;
            }
            typedArray.recycle();
            if (string != null) {
                String trim = string.trim();
                if (!trim.isEmpty()) {
                    if (trim.charAt(0) == '.') {
                        trim = context.getPackageName() + trim;
                    } else if (!trim.contains(CryptoConstants.ALIAS_SEPARATOR)) {
                        trim = s.class.getPackage().getName() + '.' + trim;
                    }
                    String str = trim;
                    try {
                        if (isInEditMode()) {
                            classLoader = getClass().getClassLoader();
                        } else {
                            classLoader = context.getClassLoader();
                        }
                        Class<? extends U> asSubclass = classLoader.loadClass(str).asSubclass(k.class);
                        try {
                            constructor = asSubclass.getConstructor(a1);
                            objArr = new Object[4];
                            objArr[0] = context2;
                            objArr[1] = attributeSet2;
                            objArr[c2] = Integer.valueOf(i2);
                            objArr[3] = 0;
                        } catch (NoSuchMethodException e2) {
                            noSuchMethodException = e2;
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        }
                        constructor.setAccessible(true);
                        setLayoutManager((k) constructor.newInstance(objArr));
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(noSuchMethodException);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e3);
                    } catch (ClassNotFoundException e4) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e4);
                    } catch (InvocationTargetException e5) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e5);
                    } catch (InstantiationException e6) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e6);
                    } catch (IllegalAccessException e7) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e7);
                    } catch (ClassCastException e8) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e8);
                    }
                }
            }
            TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet2, U0, i3, 0);
            z2 = obtainStyledAttributes3.getBoolean(0, true);
            obtainStyledAttributes3.recycle();
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00c5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int r11, int r12, android.view.MotionEvent r13) {
        /*
            r10 = this;
            r10.b()
            r2 = 0
            r1 = 0
            r7 = 0
            r8 = 0
            java.util.ArrayList<d.t.a.s$j> r0 = r10.K
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0012
            r10.invalidate()
        L_0x0012:
            int[] r5 = r10.N0
            r6 = 0
            r0 = r10
            r3 = r8
            r4 = r7
            boolean r0 = r0.a(r1, r2, r3, r4, r5, r6)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x004f
            int r11 = r10.q0
            int[] r12 = r10.N0
            r0 = r12[r2]
            int r11 = r11 - r0
            r10.q0 = r11
            int r11 = r10.r0
            r0 = r12[r1]
            int r11 = r11 - r0
            r10.r0 = r11
            if (r13 == 0) goto L_0x003b
            r11 = r12[r2]
            float r11 = (float) r11
            r12 = r12[r1]
            float r12 = (float) r12
            r13.offsetLocation(r11, r12)
        L_0x003b:
            int[] r11 = r10.P0
            r12 = r11[r2]
            int[] r13 = r10.N0
            r0 = r13[r2]
            int r12 = r12 + r0
            r11[r2] = r12
            r12 = r11[r1]
            r13 = r13[r1]
            int r12 = r12 + r13
            r11[r1] = r12
            goto L_0x00f1
        L_0x004f:
            int r0 = r10.getOverScrollMode()
            r3 = 2
            if (r0 == r3) goto L_0x00f1
            if (r13 == 0) goto L_0x00ee
            r0 = 8194(0x2002, float:1.1482E-41)
            int r3 = r13.getSource()
            r3 = r3 & r0
            if (r3 != r0) goto L_0x0063
            r0 = 1
            goto L_0x0064
        L_0x0063:
            r0 = 0
        L_0x0064:
            if (r0 != 0) goto L_0x00ee
            float r0 = r13.getX()
            float r3 = (float) r8
            float r13 = r13.getY()
            float r4 = (float) r7
            r5 = 1065353216(0x3f800000, float:1.0)
            r6 = 0
            int r7 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r7 >= 0) goto L_0x008f
            r10.e()
            android.widget.EdgeEffect r7 = r10.g0
            float r8 = -r3
            int r9 = r10.getWidth()
            float r9 = (float) r9
            float r8 = r8 / r9
            int r9 = r10.getHeight()
            float r9 = (float) r9
            float r13 = r13 / r9
            float r13 = r5 - r13
            r7.onPull(r8, r13)
            goto L_0x00a8
        L_0x008f:
            int r7 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r7 <= 0) goto L_0x00aa
            r10.f()
            android.widget.EdgeEffect r7 = r10.i0
            int r8 = r10.getWidth()
            float r8 = (float) r8
            float r8 = r3 / r8
            int r9 = r10.getHeight()
            float r9 = (float) r9
            float r13 = r13 / r9
            r7.onPull(r8, r13)
        L_0x00a8:
            r13 = 1
            goto L_0x00ab
        L_0x00aa:
            r13 = 0
        L_0x00ab:
            int r7 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r7 >= 0) goto L_0x00c5
            r10.g()
            android.widget.EdgeEffect r13 = r10.h0
            float r5 = -r4
            int r7 = r10.getHeight()
            float r7 = (float) r7
            float r5 = r5 / r7
            int r7 = r10.getWidth()
            float r7 = (float) r7
            float r0 = r0 / r7
            r13.onPull(r5, r0)
            goto L_0x00e1
        L_0x00c5:
            int r7 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r7 <= 0) goto L_0x00e0
            r10.d()
            android.widget.EdgeEffect r13 = r10.j0
            int r7 = r10.getHeight()
            float r7 = (float) r7
            float r7 = r4 / r7
            int r8 = r10.getWidth()
            float r8 = (float) r8
            float r0 = r0 / r8
            float r5 = r5 - r0
            r13.onPull(r7, r5)
            goto L_0x00e1
        L_0x00e0:
            r1 = r13
        L_0x00e1:
            if (r1 != 0) goto L_0x00eb
            int r13 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r13 != 0) goto L_0x00eb
            int r13 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r13 == 0) goto L_0x00ee
        L_0x00eb:
            d.i.i.n.x(r10)
        L_0x00ee:
            r10.a((int) r11, (int) r12)
        L_0x00f1:
            boolean r11 = r10.awakenScrollBars()
            if (r11 != 0) goto L_0x00fa
            r10.invalidate()
        L_0x00fa:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.a(int, int, android.view.MotionEvent):boolean");
    }

    public static abstract class k {
        public b a;
        public s b;

        /* renamed from: c  reason: collision with root package name */
        public final x.b f817c = new a();

        /* renamed from: d  reason: collision with root package name */
        public final x.b f818d = new b();

        /* renamed from: e  reason: collision with root package name */
        public x f819e = new x(this.f817c);

        /* renamed from: f  reason: collision with root package name */
        public x f820f = new x(this.f818d);

        /* renamed from: g  reason: collision with root package name */
        public boolean f821g = false;

        /* renamed from: h  reason: collision with root package name */
        public boolean f822h = false;

        /* renamed from: i  reason: collision with root package name */
        public boolean f823i = false;

        /* renamed from: j  reason: collision with root package name */
        public boolean f824j = true;

        /* renamed from: k  reason: collision with root package name */
        public boolean f825k = true;

        /* renamed from: l  reason: collision with root package name */
        public int f826l;
        public int m;
        public int n;
        public int o;
        public int p;

        public class a implements x.b {
            public a() {
            }

            public View a(int i2) {
                return k.this.a(i2);
            }

            public int b() {
                return k.this.g();
            }

            public int a() {
                k kVar = k.this;
                return kVar.o - kVar.h();
            }

            public int b(View view) {
                l lVar = (l) view.getLayoutParams();
                if (k.this != null) {
                    return (view.getLeft() - ((l) view.getLayoutParams()).b.left) - lVar.leftMargin;
                }
                throw null;
            }

            public int a(View view) {
                l lVar = (l) view.getLayoutParams();
                if (k.this != null) {
                    return view.getRight() + ((l) view.getLayoutParams()).b.right + lVar.rightMargin;
                }
                throw null;
            }
        }

        public class b implements x.b {
            public b() {
            }

            public View a(int i2) {
                return k.this.a(i2);
            }

            public int b() {
                return k.this.i();
            }

            public int a() {
                k kVar = k.this;
                return kVar.p - kVar.f();
            }

            public int b(View view) {
                l lVar = (l) view.getLayoutParams();
                if (k.this != null) {
                    return (view.getTop() - ((l) view.getLayoutParams()).b.top) - lVar.topMargin;
                }
                throw null;
            }

            public int a(View view) {
                l lVar = (l) view.getLayoutParams();
                if (k.this != null) {
                    return view.getBottom() + ((l) view.getLayoutParams()).b.bottom + lVar.bottomMargin;
                }
                throw null;
            }
        }

        public static class c {
            public int a;
            public int b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f827c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f828d;
        }

        public static int a(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i3, i4) : size;
            }
            return Math.min(size, Math.max(i3, i4));
        }

        public int a(u uVar) {
            return 0;
        }

        public void a(Parcelable parcelable) {
        }

        public void a(s sVar) {
        }

        public void a(s sVar, int i2, int i3) {
        }

        public void a(s sVar, int i2, int i3, int i4) {
        }

        public void a(s sVar, int i2, int i3, Object obj) {
        }

        public void a(s sVar, q qVar) {
        }

        public boolean a() {
            return false;
        }

        public boolean a(l lVar) {
            return lVar != null;
        }

        public int b(u uVar) {
            return 0;
        }

        public void b(int i2) {
        }

        public void b(q qVar) {
            int size = qVar.a.size();
            for (int i2 = size - 1; i2 >= 0; i2--) {
                View view = qVar.a.get(i2).a;
                x b2 = s.b(view);
                if (!b2.u()) {
                    b2.a(false);
                    if (b2.p()) {
                        this.b.removeDetachedView(view, false);
                    }
                    h hVar = this.b.k0;
                    if (hVar != null) {
                        hVar.b(b2);
                    }
                    b2.a(true);
                    x b3 = s.b(view);
                    b3.m = null;
                    b3.n = false;
                    b3.b();
                    qVar.a(b3);
                }
            }
            qVar.a.clear();
            ArrayList<x> arrayList = qVar.b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.b.invalidate();
            }
        }

        public void b(s sVar, int i2, int i3) {
        }

        public boolean b() {
            return false;
        }

        public int c(u uVar) {
            return 0;
        }

        public abstract l c();

        /* JADX WARNING: Code restructure failed: missing block: B:2:0x0006, code lost:
            r0 = r3.a;
            r4 = r0.c(r4);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void c(int r4) {
            /*
                r3 = this;
                android.view.View r0 = r3.a((int) r4)
                if (r0 == 0) goto L_0x0029
                d.t.a.b r0 = r3.a
                int r4 = r0.c((int) r4)
                d.t.a.b$b r1 = r0.a
                d.t.a.t r1 = (d.t.a.t) r1
                android.view.View r1 = r1.a(r4)
                if (r1 != 0) goto L_0x0017
                goto L_0x0029
            L_0x0017:
                d.t.a.b$a r2 = r0.b
                boolean r2 = r2.d(r4)
                if (r2 == 0) goto L_0x0022
                r0.c((android.view.View) r1)
            L_0x0022:
                d.t.a.b$b r0 = r0.a
                d.t.a.t r0 = (d.t.a.t) r0
                r0.b(r4)
            L_0x0029:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.k.c(int):void");
        }

        public int d() {
            b bVar = this.a;
            if (bVar != null) {
                return bVar.a();
            }
            return 0;
        }

        public int d(u uVar) {
            return 0;
        }

        public int e() {
            return d.i.i.n.i(this.b);
        }

        public int e(u uVar) {
            return 0;
        }

        public int f() {
            s sVar = this.b;
            if (sVar != null) {
                return sVar.getPaddingBottom();
            }
            return 0;
        }

        public int f(u uVar) {
            return 0;
        }

        public int g() {
            s sVar = this.b;
            if (sVar != null) {
                return sVar.getPaddingLeft();
            }
            return 0;
        }

        public int h() {
            s sVar = this.b;
            if (sVar != null) {
                return sVar.getPaddingRight();
            }
            return 0;
        }

        public int i() {
            s sVar = this.b;
            if (sVar != null) {
                return sVar.getPaddingTop();
            }
            return 0;
        }

        public boolean j() {
            return this.f823i;
        }

        public Parcelable k() {
            return null;
        }

        public void l() {
            s sVar = this.b;
            if (sVar != null) {
                sVar.requestLayout();
            }
        }

        public boolean m() {
            return false;
        }

        public void a(String str) {
            s sVar = this.b;
            if (sVar != null) {
                sVar.a(str);
            }
        }

        public l a(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof l) {
                return new l((l) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new l((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new l(layoutParams);
        }

        public l a(Context context, AttributeSet attributeSet) {
            return new l(context, attributeSet);
        }

        public int a(View view) {
            return ((l) view.getLayoutParams()).a();
        }

        public void a(int i2, q qVar) {
            View a2 = a(i2);
            c(i2);
            qVar.a(a2);
        }

        public View a(int i2) {
            b bVar = this.a;
            if (bVar == null) {
                return null;
            }
            return ((t) bVar.a).a(bVar.c(i2));
        }

        /* JADX WARNING: Code restructure failed: missing block: B:23:0x00b3, code lost:
            if (r14 == false) goto L_0x00ba;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(d.t.a.s r10, android.view.View r11, android.graphics.Rect r12, boolean r13, boolean r14) {
            /*
                r9 = this;
                r0 = 2
                int[] r0 = new int[r0]
                int r1 = r9.g()
                int r2 = r9.i()
                int r3 = r9.o
                int r4 = r9.h()
                int r3 = r3 - r4
                int r4 = r9.p
                int r5 = r9.f()
                int r4 = r4 - r5
                int r5 = r11.getLeft()
                int r6 = r12.left
                int r5 = r5 + r6
                int r6 = r11.getScrollX()
                int r5 = r5 - r6
                int r6 = r11.getTop()
                int r7 = r12.top
                int r6 = r6 + r7
                int r11 = r11.getScrollY()
                int r6 = r6 - r11
                int r11 = r12.width()
                int r11 = r11 + r5
                int r12 = r12.height()
                int r12 = r12 + r6
                int r5 = r5 - r1
                r1 = 0
                int r7 = java.lang.Math.min(r1, r5)
                int r6 = r6 - r2
                int r2 = java.lang.Math.min(r1, r6)
                int r11 = r11 - r3
                int r3 = java.lang.Math.max(r1, r11)
                int r12 = r12 - r4
                int r12 = java.lang.Math.max(r1, r12)
                int r4 = r9.e()
                r8 = 1
                if (r4 != r8) goto L_0x005f
                if (r3 == 0) goto L_0x005a
                goto L_0x0067
            L_0x005a:
                int r3 = java.lang.Math.max(r7, r11)
                goto L_0x0067
            L_0x005f:
                if (r7 == 0) goto L_0x0062
                goto L_0x0066
            L_0x0062:
                int r7 = java.lang.Math.min(r5, r3)
            L_0x0066:
                r3 = r7
            L_0x0067:
                if (r2 == 0) goto L_0x006a
                goto L_0x006e
            L_0x006a:
                int r2 = java.lang.Math.min(r6, r12)
            L_0x006e:
                r0[r1] = r3
                r0[r8] = r2
                r11 = r0[r1]
                r12 = r0[r8]
                if (r14 == 0) goto L_0x00b5
                android.view.View r14 = r10.getFocusedChild()
                if (r14 != 0) goto L_0x0080
            L_0x007e:
                r14 = 0
                goto L_0x00b3
            L_0x0080:
                int r0 = r9.g()
                int r2 = r9.i()
                int r3 = r9.o
                int r4 = r9.h()
                int r3 = r3 - r4
                int r4 = r9.p
                int r5 = r9.f()
                int r4 = r4 - r5
                d.t.a.s r5 = r9.b
                android.graphics.Rect r5 = r5.E
                d.t.a.s.a((android.view.View) r14, (android.graphics.Rect) r5)
                int r14 = r5.left
                int r14 = r14 - r11
                if (r14 >= r3) goto L_0x007e
                int r14 = r5.right
                int r14 = r14 - r11
                if (r14 <= r0) goto L_0x007e
                int r14 = r5.top
                int r14 = r14 - r12
                if (r14 >= r4) goto L_0x007e
                int r14 = r5.bottom
                int r14 = r14 - r12
                if (r14 > r2) goto L_0x00b2
                goto L_0x007e
            L_0x00b2:
                r14 = 1
            L_0x00b3:
                if (r14 == 0) goto L_0x00ba
            L_0x00b5:
                if (r11 != 0) goto L_0x00bb
                if (r12 == 0) goto L_0x00ba
                goto L_0x00bb
            L_0x00ba:
                return r1
            L_0x00bb:
                if (r13 == 0) goto L_0x00c1
                r10.scrollBy(r11, r12)
                goto L_0x00c4
            L_0x00c1:
                r10.c(r11, r12)
            L_0x00c4:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: d.t.a.s.k.a(d.t.a.s, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public void b(s sVar) {
            if (sVar == null) {
                this.b = null;
                this.a = null;
                this.o = 0;
                this.p = 0;
            } else {
                this.b = sVar;
                this.a = sVar.B;
                this.o = sVar.getWidth();
                this.p = sVar.getHeight();
            }
            this.m = Constants.GB;
            this.n = Constants.GB;
        }

        public int b(q qVar, u uVar) {
            s sVar = this.b;
            return 1;
        }

        public void a(q qVar) {
            for (int d2 = d() - 1; d2 >= 0; d2--) {
                if (!s.b(a(d2)).u()) {
                    a(d2, qVar);
                }
            }
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            s sVar = this.b;
            q qVar = sVar.y;
            u uVar = sVar.C0;
            if (sVar != null && accessibilityEvent != null) {
                boolean z = true;
                if (!sVar.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
            }
        }

        public void a(View view, d.i.i.x.d dVar) {
            x b2 = s.b(view);
            if (b2 != null && !b2.n() && !this.a.b(b2.a)) {
                s sVar = this.b;
                a(sVar.y, sVar.C0, view, dVar);
            }
        }

        public void a(q qVar, u uVar, View view, d.i.i.x.d dVar) {
            dVar.a((Object) d.b.a(b() ? a(view) : 0, 1, a() ? a(view) : 0, 1, false, false));
        }

        public int a(q qVar, u uVar) {
            s sVar = this.b;
            return 1;
        }

        public static c a(Context context, AttributeSet attributeSet, int i2, int i3) {
            c cVar = new c();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i2, i3);
            cVar.a = obtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 1);
            cVar.b = obtainStyledAttributes.getInt(R$styleable.RecyclerView_spanCount, 1);
            cVar.f827c = obtainStyledAttributes.getBoolean(R$styleable.RecyclerView_reverseLayout, false);
            cVar.f828d = obtainStyledAttributes.getBoolean(R$styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return cVar;
        }
    }

    public static class l extends ViewGroup.MarginLayoutParams {
        public x a;
        public final Rect b = new Rect();

        /* renamed from: c  reason: collision with root package name */
        public boolean f829c = true;

        /* renamed from: d  reason: collision with root package name */
        public boolean f830d = false;

        public l(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public int a() {
            return this.a.g();
        }

        public l(int i2, int i3) {
            super(i2, i3);
        }

        public l(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public l(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public l(l lVar) {
            super(lVar);
        }
    }

    public static class t extends d.k.a.a {
        public static final Parcelable.Creator<t> CREATOR = new a();
        public Parcelable z;

        public static class a implements Parcelable.ClassLoaderCreator<t> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new t(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new t[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new t(parcel, (ClassLoader) null);
            }
        }

        public t(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.z = parcel.readParcelable(classLoader == null ? k.class.getClassLoader() : classLoader);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeParcelable(this.z, 0);
        }

        public t(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        k kVar = this.I;
        if (kVar != null) {
            return kVar.a(layoutParams);
        }
        throw new IllegalStateException(e.a.a.a.a.a(this, e.a.a.a.a.a("RecyclerView has no LayoutManager")));
    }

    public boolean d(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    public static abstract class h {
        public b a = null;
        public ArrayList<a> b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        public long f813c = 120;

        /* renamed from: d  reason: collision with root package name */
        public long f814d = 120;

        /* renamed from: e  reason: collision with root package name */
        public long f815e = 250;

        /* renamed from: f  reason: collision with root package name */
        public long f816f = 250;

        public interface a {
            void a();
        }

        public interface b {
        }

        public static class c {
            public int a;
            public int b;
        }

        public static int d(x xVar) {
            int i2 = xVar.f854i & 14;
            if (xVar.l()) {
                return 4;
            }
            if ((i2 & 4) != 0) {
                return i2;
            }
            int h2 = xVar.h();
            int e2 = xVar.e();
            return (h2 == -1 || e2 == -1 || h2 == e2) ? i2 : i2 | 2048;
        }

        public final void a(x xVar) {
            b bVar = this.a;
            if (bVar != null) {
                i iVar = (i) bVar;
                if (iVar != null) {
                    boolean z = true;
                    xVar.a(true);
                    if (xVar.f852g != null && xVar.f853h == null) {
                        xVar.f852g = null;
                    }
                    xVar.f853h = null;
                    if (!xVar.t()) {
                        s sVar = s.this;
                        View view = xVar.a;
                        sVar.q();
                        b bVar2 = sVar.B;
                        int indexOfChild = ((t) bVar2.a).a.indexOfChild(view);
                        if (indexOfChild == -1) {
                            bVar2.c(view);
                        } else if (bVar2.b.c(indexOfChild)) {
                            bVar2.b.d(indexOfChild);
                            bVar2.c(view);
                            ((t) bVar2.a).b(indexOfChild);
                        } else {
                            z = false;
                        }
                        if (z) {
                            x b2 = s.b(view);
                            sVar.y.b(b2);
                            sVar.y.a(b2);
                        }
                        sVar.b(!z);
                        if (!z && xVar.p()) {
                            s.this.removeDetachedView(xVar.a, false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw null;
            }
        }

        public abstract void b();

        public abstract void b(x xVar);

        public c c(x xVar) {
            c cVar = new c();
            View view = xVar.a;
            cVar.a = view.getLeft();
            cVar.b = view.getTop();
            view.getRight();
            view.getBottom();
            return cVar;
        }

        public abstract boolean c();

        public boolean a(x xVar, List<Object> list) {
            return !((w) this).f861g || xVar.l();
        }

        public final void a() {
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.b.get(i2).a();
            }
            this.b.clear();
        }
    }

    public void b(boolean z2) {
        if (this.R < 1) {
            this.R = 1;
        }
        if (!z2 && !this.T) {
            this.S = false;
        }
        if (this.R == 1) {
            if (z2 && this.S && !this.T) {
                k kVar = this.I;
            }
            if (!this.T) {
                this.S = false;
            }
        }
        this.R--;
    }

    public void c() {
        Log.e("RecyclerView", "No adapter attached; skipping layout");
    }

    public void a(int i2, int i3) {
        boolean z2;
        EdgeEffect edgeEffect = this.g0;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z2 = false;
        } else {
            this.g0.onRelease();
            z2 = this.g0.isFinished();
        }
        EdgeEffect edgeEffect2 = this.i0;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.i0.onRelease();
            z2 |= this.i0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.h0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.h0.onRelease();
            z2 |= this.h0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.j0;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.j0.onRelease();
            z2 |= this.j0.isFinished();
        }
        if (z2) {
            d.i.i.n.x(this);
        }
    }

    public void b(int i2, int i3) {
        setMeasuredDimension(k.a(i2, getPaddingRight() + getPaddingLeft(), d.i.i.n.k(this)), k.a(i3, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public static x b(View view) {
        if (view == null) {
            return null;
        }
        return ((l) view.getLayoutParams()).a;
    }

    public final void a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.E.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof l) {
            l lVar = (l) layoutParams;
            if (!lVar.f829c) {
                Rect rect = lVar.b;
                Rect rect2 = this.E;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.E);
            offsetRectIntoDescendantCoords(view, this.E);
        }
        this.I.a(this, view, this.E, !this.Q, view2 == null);
    }

    public static void b(x xVar) {
        WeakReference<s> weakReference = xVar.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view != xVar.a) {
                    ViewParent parent = view.getParent();
                    view = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            xVar.b = null;
        }
    }

    public boolean b(int i2) {
        return getScrollingChildHelper().a(i2) != null;
    }

    public void a(String str) {
        if (k()) {
            if (str == null) {
                throw new IllegalStateException(e.a.a.a.a.a(this, e.a.a.a.a.a("Cannot call this method while RecyclerView is computing a layout or scrolling")));
            }
            throw new IllegalStateException(str);
        } else if (this.e0 > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(e.a.a.a.a.a(this, e.a.a.a.a.a(""))));
        }
    }

    public final void a() {
        p();
        setScrollState(0);
    }

    public final void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.m0) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.m0 = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.q0 = x2;
            this.o0 = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.r0 = y2;
            this.p0 = y2;
        }
    }

    public void a(boolean z2) {
        int i2;
        boolean z3 = true;
        int i3 = this.d0 - 1;
        this.d0 = i3;
        if (i3 < 1) {
            this.d0 = 0;
            if (z2) {
                int i4 = this.V;
                this.V = 0;
                if (i4 != 0) {
                    AccessibilityManager accessibilityManager = this.a0;
                    if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
                        z3 = false;
                    }
                    if (z3) {
                        AccessibilityEvent obtain = AccessibilityEvent.obtain();
                        obtain.setEventType(2048);
                        obtain.setContentChangeTypes(i4);
                        sendAccessibilityEventUnchecked(obtain);
                    }
                }
                for (int size = this.R0.size() - 1; size >= 0; size--) {
                    x xVar = this.R0.get(size);
                    if (xVar.a.getParent() == this && !xVar.u() && (i2 = xVar.p) != -1) {
                        d.i.i.n.e(xVar.a, i2);
                        xVar.p = -1;
                    }
                }
                this.R0.clear();
            }
        }
    }

    public void a(x xVar, h.c cVar) {
        xVar.a(0, 8192);
        if (!this.C0.f844h || !xVar.q() || xVar.n() || xVar.u()) {
            this.C.a(xVar, cVar);
            return;
        }
        throw null;
    }

    public void a(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int b2 = this.B.b();
        for (int i5 = 0; i5 < b2; i5++) {
            x b3 = b(this.B.d(i5));
            if (b3 != null && !b3.u()) {
                int i6 = b3.f848c;
                if (i6 >= i4) {
                    b3.a(-i3, z2);
                    this.C0.f842f = true;
                } else if (i6 >= i2) {
                    b3.a(i2 - 1, -i3, z2);
                    this.C0.f842f = true;
                }
            }
        }
        q qVar = this.y;
        int size = qVar.f833c.size();
        while (true) {
            size--;
            if (size >= 0) {
                x xVar = qVar.f833c.get(size);
                if (xVar != null) {
                    int i7 = xVar.f848c;
                    if (i7 >= i4) {
                        xVar.a(-i3, z2);
                    } else if (i7 >= i2) {
                        xVar.a(8);
                        qVar.b(size);
                    }
                }
            } else {
                requestLayout();
                return;
            }
        }
    }

    public View a(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = (View) parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public static void a(View view, Rect rect) {
        l lVar = (l) view.getLayoutParams();
        Rect rect2 = lVar.b;
        rect.set((view.getLeft() - rect2.left) - lVar.leftMargin, (view.getTop() - rect2.top) - lVar.topMargin, view.getRight() + rect2.right + lVar.rightMargin, view.getBottom() + rect2.bottom + lVar.bottomMargin);
    }

    public boolean a(x xVar, int i2) {
        if (k()) {
            xVar.p = i2;
            this.R0.add(xVar);
            return false;
        }
        d.i.i.n.e(xVar.a, i2);
        return true;
    }

    public int a(x xVar) {
        if (xVar.b(524) || !xVar.k()) {
            return -1;
        }
        a aVar = this.A;
        int i2 = xVar.f848c;
        int size = aVar.b.size();
        for (int i3 = 0; i3 < size; i3++) {
            a.b bVar = aVar.b.get(i3);
            int i4 = bVar.a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = bVar.b;
                    if (i5 <= i2) {
                        int i6 = bVar.f766d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = bVar.b;
                    if (i7 == i2) {
                        i2 = bVar.f766d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (bVar.f766d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (bVar.b <= i2) {
                i2 += bVar.f766d;
            }
        }
        return i2;
    }

    public void a(int i2) {
        getScrollingChildHelper().c(i2);
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6, (int[]) null);
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }
}
