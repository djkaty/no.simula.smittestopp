package androidx.recyclerview.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import d.t.a.r;
import d.t.a.s;
import java.util.List;

public class LinearLayoutManager extends s.k {
    public d A = null;
    public final a B = new a();
    public final b C = new b();
    public int D = 2;
    public int q = 1;
    public c r;
    public r s;
    public boolean t;
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public boolean x = true;
    public int y = -1;
    public int z = Integer.MIN_VALUE;

    public static class a {
        public r a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f95c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f96d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f97e;

        public a() {
            a();
        }

        public void a() {
            this.b = -1;
            this.f95c = Integer.MIN_VALUE;
            this.f96d = false;
            this.f97e = false;
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("AnchorInfo{mPosition=");
            a2.append(this.b);
            a2.append(", mCoordinate=");
            a2.append(this.f95c);
            a2.append(", mLayoutFromEnd=");
            a2.append(this.f96d);
            a2.append(", mValid=");
            a2.append(this.f97e);
            a2.append('}');
            return a2.toString();
        }
    }

    public static class b {
    }

    public static class c {
        public boolean a = true;
        public int b = 0;

        /* renamed from: c  reason: collision with root package name */
        public List<s.x> f98c = null;
    }

    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new a();
        public int x;
        public int y;
        public boolean z;

        public static class a implements Parcelable.Creator<d> {
            public Object createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            public Object[] newArray(int i2) {
                return new d[i2];
            }
        }

        public d() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.x);
            parcel.writeInt(this.y);
            parcel.writeInt(this.z ? 1 : 0);
        }

        public d(Parcel parcel) {
            this.x = parcel.readInt();
            this.y = parcel.readInt();
            this.z = parcel.readInt() != 1 ? false : true;
        }

        public d(d dVar) {
            this.x = dVar.x;
            this.y = dVar.y;
            this.z = dVar.z;
        }
    }

    public LinearLayoutManager(int i2, boolean z2) {
        d(i2);
        a((String) null);
        if (z2 != this.u) {
            this.u = z2;
            l();
        }
    }

    public void a(AccessibilityEvent accessibilityEvent) {
        int i2;
        super.a(accessibilityEvent);
        if (d() > 0) {
            View a2 = a(0, d(), false, true);
            int i3 = -1;
            if (a2 == null) {
                i2 = -1;
            } else {
                i2 = a(a2);
            }
            accessibilityEvent.setFromIndex(i2);
            View a3 = a(d() - 1, -1, false, true);
            if (a3 != null) {
                i3 = a(a3);
            }
            accessibilityEvent.setToIndex(i3);
        }
    }

    public void a(s sVar, s.q qVar) {
    }

    public boolean b() {
        return this.q == 1;
    }

    public s.l c() {
        return new s.l(-2, -2);
    }

    public void d(int i2) {
        if (i2 == 0 || i2 == 1) {
            a((String) null);
            if (i2 != this.q || this.s == null) {
                r a2 = r.a(this, i2);
                this.s = a2;
                this.B.a = a2;
                this.q = i2;
                l();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(e.a.a.a.a.a("invalid orientation:", i2));
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
        n();
        r rVar = this.s;
        View b2 = b(!this.x, true);
        return d.b.a.r.a(uVar, rVar, b2, a(!this.x, true), (s.k) this, this.x);
    }

    public final int h(s.u uVar) {
        if (d() == 0) {
            return 0;
        }
        n();
        r rVar = this.s;
        View b2 = b(!this.x, true);
        return d.b.a.r.a(uVar, rVar, b2, a(!this.x, true), (s.k) this, this.x, this.v);
    }

    public final int i(s.u uVar) {
        if (d() == 0) {
            return 0;
        }
        n();
        r rVar = this.s;
        View b2 = b(!this.x, true);
        return d.b.a.r.b(uVar, rVar, b2, a(!this.x, true), this, this.x);
    }

    public boolean j() {
        return true;
    }

    public Parcelable k() {
        if (this.A != null) {
            return new d(this.A);
        }
        d dVar = new d();
        if (d() > 0) {
            n();
            boolean z2 = this.t ^ this.v;
            dVar.z = z2;
            if (z2) {
                View o = o();
                dVar.y = this.s.a() - this.s.a(o);
                dVar.x = a(o);
            } else {
                View p = p();
                dVar.x = a(p);
                dVar.y = this.s.b(p) - this.s.b();
            }
        } else {
            dVar.x = -1;
        }
        return dVar;
    }

    public boolean m() {
        return this.A == null && this.t == this.w;
    }

    public void n() {
        if (this.r == null) {
            this.r = new c();
        }
    }

    public final View o() {
        return a(this.v ? 0 : d() - 1);
    }

    public final View p() {
        return a(this.v ? d() - 1 : 0);
    }

    public int b(s.u uVar) {
        return h(uVar);
    }

    public int c(s.u uVar) {
        return i(uVar);
    }

    public final View b(boolean z2, boolean z3) {
        if (this.v) {
            return a(d() - 1, -1, z2, z3);
        }
        return a(0, d(), z2, z3);
    }

    public int d(s.u uVar) {
        return g(uVar);
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof d) {
            this.A = (d) parcelable;
            l();
        }
    }

    public boolean a() {
        return this.q == 0;
    }

    public void a(boolean z2) {
        a((String) null);
        if (this.w != z2) {
            this.w = z2;
            l();
        }
    }

    public int a(s.u uVar) {
        return g(uVar);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        s.k.c a2 = s.k.a(context, attributeSet, i2, i3);
        d(a2.a);
        boolean z2 = a2.f827c;
        a((String) null);
        if (z2 != this.u) {
            this.u = z2;
            l();
        }
        a(a2.f828d);
    }

    public void a(String str) {
        s sVar;
        if (this.A == null && (sVar = this.b) != null) {
            sVar.a(str);
        }
    }

    public final View a(boolean z2, boolean z3) {
        if (this.v) {
            return a(0, d(), z2, z3);
        }
        return a(d() - 1, -1, z2, z3);
    }

    public View a(int i2, int i3, boolean z2, boolean z3) {
        n();
        int i4 = 320;
        int i5 = z2 ? 24579 : 320;
        if (!z3) {
            i4 = 0;
        }
        if (this.q == 0) {
            return this.f819e.a(i2, i3, i5, i4);
        }
        return this.f820f.a(i2, i3, i5, i4);
    }
}
