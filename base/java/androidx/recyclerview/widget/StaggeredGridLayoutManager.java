package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import d.i.i.x.d;
import d.t.a.n;
import d.t.a.r;
import d.t.a.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager extends s.k {
    public int A;
    public d B;
    public int C;
    public boolean D;
    public boolean E;
    public e F;
    public final Rect G;
    public final b H;
    public boolean I;
    public boolean J;
    public final Runnable K;
    public int q = -1;
    public f[] r;
    public r s;
    public r t;
    public int u;
    public final n v;
    public boolean w;
    public boolean x;
    public BitSet y;
    public int z;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            StaggeredGridLayoutManager.this.n();
        }
    }

    public class b {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f99c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f100d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f101e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f102f;

        public b() {
            a();
        }

        public void a() {
            this.a = -1;
            this.b = Integer.MIN_VALUE;
            this.f99c = false;
            this.f100d = false;
            this.f101e = false;
            int[] iArr = this.f102f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    public static class c extends s.l {

        /* renamed from: e  reason: collision with root package name */
        public f f104e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f105f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i2, int i3) {
            super(i2, i3);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();
        public int[] A;
        public int B;
        public int[] C;
        public List<d.a> D;
        public boolean E;
        public boolean F;
        public boolean G;
        public int x;
        public int y;
        public int z;

        public static class a implements Parcelable.Creator<e> {
            public Object createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            public Object[] newArray(int i2) {
                return new e[i2];
            }
        }

        public e() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.x);
            parcel.writeInt(this.y);
            parcel.writeInt(this.z);
            if (this.z > 0) {
                parcel.writeIntArray(this.A);
            }
            parcel.writeInt(this.B);
            if (this.B > 0) {
                parcel.writeIntArray(this.C);
            }
            parcel.writeInt(this.E ? 1 : 0);
            parcel.writeInt(this.F ? 1 : 0);
            parcel.writeInt(this.G ? 1 : 0);
            parcel.writeList(this.D);
        }

        public e(Parcel parcel) {
            this.x = parcel.readInt();
            this.y = parcel.readInt();
            int readInt = parcel.readInt();
            this.z = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.A = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.B = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.C = iArr2;
                parcel.readIntArray(iArr2);
            }
            boolean z2 = false;
            this.E = parcel.readInt() == 1;
            this.F = parcel.readInt() == 1;
            this.G = parcel.readInt() == 1 ? true : z2;
            this.D = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.z = eVar.z;
            this.x = eVar.x;
            this.y = eVar.y;
            this.A = eVar.A;
            this.B = eVar.B;
            this.C = eVar.C;
            this.E = eVar.E;
            this.F = eVar.F;
            this.G = eVar.G;
            this.D = eVar.D;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.w = false;
        this.x = false;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = new d();
        this.C = 2;
        this.G = new Rect();
        this.H = new b();
        this.I = false;
        this.J = true;
        this.K = new a();
        s.k.c a2 = s.k.a(context, attributeSet, i2, i3);
        int i4 = a2.a;
        if (i4 == 0 || i4 == 1) {
            a((String) null);
            if (i4 != this.u) {
                this.u = i4;
                r rVar = this.s;
                this.s = this.t;
                this.t = rVar;
                l();
            }
            int i5 = a2.b;
            a((String) null);
            if (i5 != this.q) {
                this.B.a();
                l();
                this.q = i5;
                this.y = new BitSet(this.q);
                this.r = new f[this.q];
                for (int i6 = 0; i6 < this.q; i6++) {
                    this.r[i6] = new f(i6);
                }
                l();
            }
            boolean z2 = a2.f827c;
            a((String) null);
            e eVar = this.F;
            if (!(eVar == null || eVar.E == z2)) {
                eVar.E = z2;
            }
            this.w = z2;
            l();
            this.v = new n();
            this.s = r.a(this, this.u);
            this.t = r.a(this, 1 - this.u);
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    public void a(s sVar, s.q qVar) {
        Runnable runnable = this.K;
        s sVar2 = this.b;
        if (sVar2 != null) {
            sVar2.removeCallbacks(runnable);
        }
        for (int i2 = 0; i2 < this.q; i2++) {
            this.r[i2].c();
        }
        sVar.requestLayout();
    }

    public void b(int i2) {
        if (i2 == 0) {
            n();
        }
    }

    public int c(s.u uVar) {
        return i(uVar);
    }

    public int d(s.u uVar) {
        return g(uVar);
    }

    public int e(s.u uVar) {
        return h(uVar);
    }

    public int f(s.u uVar) {
        return i(uVar);
    }

    public final int g(s.u uVar) {
        if (d() == 0) {
            return 0;
        }
        return d.b.a.r.a(uVar, this.s, b(!this.J), a(!this.J), (s.k) this, this.J);
    }

    public final int h(s.u uVar) {
        if (d() == 0) {
            return 0;
        }
        return d.b.a.r.a(uVar, this.s, b(!this.J), a(!this.J), (s.k) this, this.J, this.x);
    }

    public final int i(s.u uVar) {
        if (d() == 0) {
            return 0;
        }
        return d.b.a.r.b(uVar, this.s, b(!this.J), a(!this.J), this, this.J);
    }

    public boolean j() {
        return this.C != 0;
    }

    public Parcelable k() {
        int i2;
        View view;
        int i3;
        int i4;
        int[] iArr;
        if (this.F != null) {
            return new e(this.F);
        }
        e eVar = new e();
        eVar.E = this.w;
        eVar.F = this.D;
        eVar.G = this.E;
        d dVar = this.B;
        if (dVar == null || (iArr = dVar.a) == null) {
            eVar.B = 0;
        } else {
            eVar.C = iArr;
            eVar.B = iArr.length;
            eVar.D = dVar.b;
        }
        int i5 = -1;
        if (d() > 0) {
            if (this.D) {
                i2 = p();
            } else {
                i2 = o();
            }
            eVar.x = i2;
            if (this.x) {
                view = a(true);
            } else {
                view = b(true);
            }
            if (view != null) {
                i5 = a(view);
            }
            eVar.y = i5;
            int i6 = this.q;
            eVar.z = i6;
            eVar.A = new int[i6];
            for (int i7 = 0; i7 < this.q; i7++) {
                if (this.D) {
                    i3 = this.r[i7].a(Integer.MIN_VALUE);
                    if (i3 != Integer.MIN_VALUE) {
                        i4 = this.s.a();
                    } else {
                        eVar.A[i7] = i3;
                    }
                } else {
                    i3 = this.r[i7].b(Integer.MIN_VALUE);
                    if (i3 != Integer.MIN_VALUE) {
                        i4 = this.s.b();
                    } else {
                        eVar.A[i7] = i3;
                    }
                }
                i3 -= i4;
                eVar.A[i7] = i3;
            }
        } else {
            eVar.x = -1;
            eVar.y = -1;
            eVar.z = 0;
        }
        return eVar;
    }

    public boolean m() {
        return this.F == null;
    }

    public boolean n() {
        int i2;
        int i3;
        if (d() == 0 || this.C == 0 || !this.f822h) {
            return false;
        }
        if (this.x) {
            i3 = p();
            i2 = o();
        } else {
            i3 = o();
            i2 = p();
        }
        if (i3 == 0 && q() != null) {
            this.B.a();
            this.f821g = true;
            l();
            return true;
        } else if (!this.I) {
            return false;
        } else {
            int i4 = this.x ? -1 : 1;
            int i5 = i2 + 1;
            d.a a2 = this.B.a(i3, i5, i4, true);
            if (a2 == null) {
                this.I = false;
                this.B.b(i5);
                return false;
            }
            d.a a3 = this.B.a(i3, a2.x, i4 * -1, true);
            if (a3 == null) {
                this.B.b(a2.x);
            } else {
                this.B.b(a3.x + 1);
            }
            this.f821g = true;
            l();
            return true;
        }
    }

    public int o() {
        if (d() == 0) {
            return 0;
        }
        return a(a(0));
    }

    public int p() {
        int d2 = d();
        if (d2 == 0) {
            return 0;
        }
        return a(a(d2 - 1));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c1, code lost:
        if (r11 == r12) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00d3, code lost:
        if (r11 == r12) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00d7, code lost:
        r11 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0099 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View q() {
        /*
            r13 = this;
            int r0 = r13.d()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r13.q
            r2.<init>(r3)
            int r3 = r13.q
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r13.u
            r5 = -1
            if (r3 != r1) goto L_0x0020
            boolean r3 = r13.r()
            if (r3 == 0) goto L_0x0020
            r3 = 1
            goto L_0x0021
        L_0x0020:
            r3 = -1
        L_0x0021:
            boolean r6 = r13.x
            if (r6 == 0) goto L_0x0027
            r6 = -1
            goto L_0x002b
        L_0x0027:
            int r0 = r0 + 1
            r6 = r0
            r0 = 0
        L_0x002b:
            if (r0 >= r6) goto L_0x002f
            r7 = 1
            goto L_0x0030
        L_0x002f:
            r7 = -1
        L_0x0030:
            if (r0 == r6) goto L_0x00f9
            android.view.View r8 = r13.a((int) r0)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r10 = r9.f104e
            int r10 = r10.f108e
            boolean r10 = r2.get(r10)
            if (r10 == 0) goto L_0x00a1
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r10 = r9.f104e
            boolean r11 = r13.x
            r12 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r11 == 0) goto L_0x0074
            int r11 = r10.f106c
            if (r11 == r12) goto L_0x0053
            goto L_0x0058
        L_0x0053:
            r10.a()
            int r11 = r10.f106c
        L_0x0058:
            d.t.a.r r12 = r13.s
            int r12 = r12.a()
            if (r11 >= r12) goto L_0x0096
            java.util.ArrayList<android.view.View> r11 = r10.a
            int r12 = r11.size()
            int r12 = r12 + r5
            java.lang.Object r11 = r11.get(r12)
            android.view.View r11 = (android.view.View) r11
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r10 = r10.a((android.view.View) r11)
            boolean r10 = r10.f105f
            goto L_0x0094
        L_0x0074:
            int r11 = r10.b
            if (r11 == r12) goto L_0x0079
            goto L_0x007e
        L_0x0079:
            r10.b()
            int r11 = r10.b
        L_0x007e:
            d.t.a.r r12 = r13.s
            int r12 = r12.b()
            if (r11 <= r12) goto L_0x0096
            java.util.ArrayList<android.view.View> r11 = r10.a
            java.lang.Object r11 = r11.get(r4)
            android.view.View r11 = (android.view.View) r11
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r10 = r10.a((android.view.View) r11)
            boolean r10 = r10.f105f
        L_0x0094:
            r10 = r10 ^ r1
            goto L_0x0097
        L_0x0096:
            r10 = 0
        L_0x0097:
            if (r10 == 0) goto L_0x009a
            return r8
        L_0x009a:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r10 = r9.f104e
            int r10 = r10.f108e
            r2.clear(r10)
        L_0x00a1:
            boolean r10 = r9.f105f
            if (r10 == 0) goto L_0x00a6
            goto L_0x00f6
        L_0x00a6:
            int r10 = r0 + r7
            if (r10 == r6) goto L_0x00f6
            android.view.View r10 = r13.a((int) r10)
            boolean r11 = r13.x
            if (r11 == 0) goto L_0x00c4
            d.t.a.r r11 = r13.s
            int r11 = r11.a(r8)
            d.t.a.r r12 = r13.s
            int r12 = r12.a(r10)
            if (r11 >= r12) goto L_0x00c1
            return r8
        L_0x00c1:
            if (r11 != r12) goto L_0x00d7
            goto L_0x00d5
        L_0x00c4:
            d.t.a.r r11 = r13.s
            int r11 = r11.b(r8)
            d.t.a.r r12 = r13.s
            int r12 = r12.b(r10)
            if (r11 <= r12) goto L_0x00d3
            return r8
        L_0x00d3:
            if (r11 != r12) goto L_0x00d7
        L_0x00d5:
            r11 = 1
            goto L_0x00d8
        L_0x00d7:
            r11 = 0
        L_0x00d8:
            if (r11 == 0) goto L_0x00f6
            android.view.ViewGroup$LayoutParams r10 = r10.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r10 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r10
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r9.f104e
            int r9 = r9.f108e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r10 = r10.f104e
            int r10 = r10.f108e
            int r9 = r9 - r10
            if (r9 >= 0) goto L_0x00ed
            r9 = 1
            goto L_0x00ee
        L_0x00ed:
            r9 = 0
        L_0x00ee:
            if (r3 >= 0) goto L_0x00f2
            r10 = 1
            goto L_0x00f3
        L_0x00f2:
            r10 = 0
        L_0x00f3:
            if (r9 == r10) goto L_0x00f6
            return r8
        L_0x00f6:
            int r0 = r0 + r7
            goto L_0x0030
        L_0x00f9:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.q():android.view.View");
    }

    public boolean r() {
        return e() == 1;
    }

    public int b(s.u uVar) {
        return h(uVar);
    }

    public s.l c() {
        if (this.u == 0) {
            return new c(-2, -1);
        }
        return new c(-1, -2);
    }

    public int b(s.q qVar, s.u uVar) {
        if (this.u == 0) {
            return this.q;
        }
        return 1;
    }

    public class f {
        public ArrayList<View> a = new ArrayList<>();
        public int b = Integer.MIN_VALUE;

        /* renamed from: c  reason: collision with root package name */
        public int f106c = Integer.MIN_VALUE;

        /* renamed from: d  reason: collision with root package name */
        public int f107d = 0;

        /* renamed from: e  reason: collision with root package name */
        public final int f108e;

        public f(int i2) {
            this.f108e = i2;
        }

        public int a(int i2) {
            int i3 = this.f106c;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.a.size() == 0) {
                return i2;
            }
            a();
            return this.f106c;
        }

        public int b(int i2) {
            int i3 = this.b;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.a.size() == 0) {
                return i2;
            }
            b();
            return this.b;
        }

        public void c() {
            this.a.clear();
            this.b = Integer.MIN_VALUE;
            this.f106c = Integer.MIN_VALUE;
            this.f107d = 0;
        }

        public void a() {
            d.a c2;
            ArrayList<View> arrayList = this.a;
            View view = arrayList.get(arrayList.size() - 1);
            c a2 = a(view);
            this.f106c = StaggeredGridLayoutManager.this.s.a(view);
            if (a2.f105f && (c2 = StaggeredGridLayoutManager.this.B.c(a2.a())) != null && c2.y == 1) {
                int i2 = this.f106c;
                int i3 = this.f108e;
                int[] iArr = c2.z;
                this.f106c = i2 + (iArr == null ? 0 : iArr[i3]);
            }
        }

        public void b() {
            d.a c2;
            int i2 = 0;
            View view = this.a.get(0);
            c a2 = a(view);
            this.b = StaggeredGridLayoutManager.this.s.b(view);
            if (a2.f105f && (c2 = StaggeredGridLayoutManager.this.B.c(a2.a())) != null && c2.y == -1) {
                int i3 = this.b;
                int i4 = this.f108e;
                int[] iArr = c2.z;
                if (iArr != null) {
                    i2 = iArr[i4];
                }
                this.b = i3 - i2;
            }
        }

        public c a(View view) {
            return (c) view.getLayoutParams();
        }
    }

    public View b(boolean z2) {
        int b2 = this.s.b();
        int a2 = this.s.a();
        int d2 = d();
        View view = null;
        for (int i2 = 0; i2 < d2; i2++) {
            View a3 = a(i2);
            int b3 = this.s.b(a3);
            if (this.s.a(a3) > b2 && b3 < a2) {
                if (b3 >= b2 || !z2) {
                    return a3;
                }
                if (view == null) {
                    view = a3;
                }
            }
        }
        return view;
    }

    public static class d {
        public int[] a;
        public List<a> b;

        public void a(int i2) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[(Math.max(i2, 10) + 1)];
                this.a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i2 >= iArr.length) {
                int length = iArr.length;
                while (length <= i2) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public int b(int i2) {
            List<a> list = this.b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).x >= i2) {
                        this.b.remove(size);
                    }
                }
            }
            return d(i2);
        }

        public a c(int i2) {
            List<a> list = this.b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.b.get(size);
                if (aVar.x == i2) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX WARNING: Removed duplicated region for block: B:21:0x0048  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0052  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int d(int r5) {
            /*
                r4 = this;
                int[] r0 = r4.a
                r1 = -1
                if (r0 != 0) goto L_0x0006
                return r1
            L_0x0006:
                int r0 = r0.length
                if (r5 < r0) goto L_0x000a
                return r1
            L_0x000a:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r4.b
                if (r0 != 0) goto L_0x0010
            L_0x000e:
                r0 = -1
                goto L_0x0046
            L_0x0010:
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = r4.c(r5)
                if (r0 == 0) goto L_0x001b
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r2 = r4.b
                r2.remove(r0)
            L_0x001b:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r4.b
                int r0 = r0.size()
                r2 = 0
            L_0x0022:
                if (r2 >= r0) goto L_0x0034
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r3 = r4.b
                java.lang.Object r3 = r3.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a) r3
                int r3 = r3.x
                if (r3 < r5) goto L_0x0031
                goto L_0x0035
            L_0x0031:
                int r2 = r2 + 1
                goto L_0x0022
            L_0x0034:
                r2 = -1
            L_0x0035:
                if (r2 == r1) goto L_0x000e
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r4.b
                java.lang.Object r0 = r0.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a) r0
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r3 = r4.b
                r3.remove(r2)
                int r0 = r0.x
            L_0x0046:
                if (r0 != r1) goto L_0x0052
                int[] r0 = r4.a
                int r2 = r0.length
                java.util.Arrays.fill(r0, r5, r2, r1)
                int[] r5 = r4.a
                int r5 = r5.length
                return r5
            L_0x0052:
                int[] r2 = r4.a
                int r0 = r0 + 1
                java.util.Arrays.fill(r2, r5, r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.d.d(int):int");
        }

        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0001a();
            public boolean A;
            public int x;
            public int y;
            public int[] z;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a  reason: collision with other inner class name */
            public static class C0001a implements Parcelable.Creator<a> {
                public Object createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                public Object[] newArray(int i2) {
                    return new a[i2];
                }
            }

            public a(Parcel parcel) {
                this.x = parcel.readInt();
                this.y = parcel.readInt();
                this.A = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.z = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            public int describeContents() {
                return 0;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("FullSpanItem{mPosition=");
                a.append(this.x);
                a.append(", mGapDir=");
                a.append(this.y);
                a.append(", mHasUnwantedGapAfter=");
                a.append(this.A);
                a.append(", mGapPerSpan=");
                a.append(Arrays.toString(this.z));
                a.append('}');
                return a.toString();
            }

            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.x);
                parcel.writeInt(this.y);
                parcel.writeInt(this.A ? 1 : 0);
                int[] iArr = this.z;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.z);
            }

            public a() {
            }
        }

        public void b(int i2, int i3) {
            int[] iArr = this.a;
            if (iArr != null && i2 < iArr.length) {
                int i4 = i2 + i3;
                a(i4);
                int[] iArr2 = this.a;
                System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
                int[] iArr3 = this.a;
                Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
                List<a> list = this.b;
                if (list != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        a aVar = this.b.get(size);
                        int i5 = aVar.x;
                        if (i5 >= i2) {
                            if (i5 < i4) {
                                this.b.remove(size);
                            } else {
                                aVar.x = i5 - i3;
                            }
                        }
                    }
                }
            }
        }

        public void a() {
            int[] iArr = this.a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        public void a(int i2, int i3) {
            int[] iArr = this.a;
            if (iArr != null && i2 < iArr.length) {
                int i4 = i2 + i3;
                a(i4);
                int[] iArr2 = this.a;
                System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
                Arrays.fill(this.a, i2, i4, -1);
                List<a> list = this.b;
                if (list != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        a aVar = this.b.get(size);
                        int i5 = aVar.x;
                        if (i5 >= i2) {
                            aVar.x = i5 + i3;
                        }
                    }
                }
            }
        }

        public a a(int i2, int i3, int i4, boolean z) {
            List<a> list = this.b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                a aVar = this.b.get(i5);
                int i6 = aVar.x;
                if (i6 >= i3) {
                    return null;
                }
                if (i6 >= i2 && (i4 == 0 || aVar.y == i4 || (z && aVar.A))) {
                    return aVar;
                }
            }
            return null;
        }
    }

    public void a(String str) {
        s sVar;
        if (this.F == null && (sVar = this.b) != null) {
            sVar.a(str);
        }
    }

    public int a(s.u uVar) {
        return g(uVar);
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof e) {
            this.F = (e) parcelable;
            l();
        }
    }

    public void b(s sVar, int i2, int i3) {
        b(i2, i3, 2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0043 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0044  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.x
            if (r0 == 0) goto L_0x0009
            int r0 = r6.p()
            goto L_0x000d
        L_0x0009:
            int r0 = r6.o()
        L_0x000d:
            r1 = 8
            if (r9 != r1) goto L_0x001a
            if (r7 >= r8) goto L_0x0016
            int r2 = r8 + 1
            goto L_0x001c
        L_0x0016:
            int r2 = r7 + 1
            r3 = r8
            goto L_0x001d
        L_0x001a:
            int r2 = r7 + r8
        L_0x001c:
            r3 = r7
        L_0x001d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r4 = r6.B
            r4.d(r3)
            r4 = 1
            if (r9 == r4) goto L_0x003c
            r5 = 2
            if (r9 == r5) goto L_0x0036
            if (r9 == r1) goto L_0x002b
            goto L_0x0041
        L_0x002b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.b(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r7 = r6.B
            r7.a(r8, r4)
            goto L_0x0041
        L_0x0036:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.b(r7, r8)
            goto L_0x0041
        L_0x003c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.a(r7, r8)
        L_0x0041:
            if (r2 > r0) goto L_0x0044
            return
        L_0x0044:
            boolean r7 = r6.x
            if (r7 == 0) goto L_0x004d
            int r7 = r6.o()
            goto L_0x0051
        L_0x004d:
            int r7 = r6.p()
        L_0x0051:
            if (r3 > r7) goto L_0x0056
            r6.l()
        L_0x0056:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, int, int):void");
    }

    public void a(s.q qVar, s.u uVar, View view, d.i.i.x.d dVar) {
        int i2;
        int i3;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof c)) {
            super.a(view, dVar);
            return;
        }
        c cVar = (c) layoutParams;
        if (this.u == 0) {
            f fVar = cVar.f104e;
            if (fVar == null) {
                i3 = -1;
            } else {
                i3 = fVar.f108e;
            }
            dVar.a((Object) d.b.a(i3, cVar.f105f ? this.q : 1, -1, -1, cVar.f105f, false));
            return;
        }
        f fVar2 = cVar.f104e;
        if (fVar2 == null) {
            i2 = -1;
        } else {
            i2 = fVar2.f108e;
        }
        dVar.a((Object) d.b.a(-1, -1, i2, cVar.f105f ? this.q : 1, cVar.f105f, false));
    }

    public boolean b() {
        return this.u == 1;
    }

    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (d() > 0) {
            View b2 = b(false);
            View a2 = a(false);
            if (b2 != null && a2 != null) {
                int a3 = a(b2);
                int a4 = a(a2);
                if (a3 < a4) {
                    accessibilityEvent.setFromIndex(a3);
                    accessibilityEvent.setToIndex(a4);
                    return;
                }
                accessibilityEvent.setFromIndex(a4);
                accessibilityEvent.setToIndex(a3);
            }
        }
    }

    public int a(s.q qVar, s.u uVar) {
        if (this.u == 1) {
            return this.q;
        }
        return 1;
    }

    public View a(boolean z2) {
        int b2 = this.s.b();
        int a2 = this.s.a();
        View view = null;
        for (int d2 = d() - 1; d2 >= 0; d2--) {
            View a3 = a(d2);
            int b3 = this.s.b(a3);
            int a4 = this.s.a(a3);
            if (a4 > b2 && b3 < a2) {
                if (a4 <= a2 || !z2) {
                    return a3;
                }
                if (view == null) {
                    view = a3;
                }
            }
        }
        return view;
    }

    public void a(s sVar, int i2, int i3) {
        b(i2, i3, 1);
    }

    public void a(s sVar) {
        this.B.a();
        l();
    }

    public void a(s sVar, int i2, int i3, int i4) {
        b(i2, i3, 8);
    }

    public void a(s sVar, int i2, int i3, Object obj) {
        b(i2, i3, 4);
    }

    public boolean a() {
        return this.u == 0;
    }

    public s.l a(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    public s.l a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new c((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new c(layoutParams);
    }

    public boolean a(s.l lVar) {
        return lVar instanceof c;
    }
}
