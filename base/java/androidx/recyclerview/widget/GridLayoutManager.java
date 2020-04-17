package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import d.i.i.x.d;
import d.t.a.s;

public class GridLayoutManager extends LinearLayoutManager {
    public boolean E = false;
    public int F = -1;
    public final SparseIntArray G = new SparseIntArray();
    public final SparseIntArray H = new SparseIntArray();
    public c I = new a();
    public final Rect J = new Rect();

    public static final class a extends c {
    }

    public static abstract class c {
        public final SparseIntArray a = new SparseIntArray();
        public boolean b = false;

        public int a(int i2, int i3) {
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                i4++;
                if (i4 == i3) {
                    i5++;
                    i4 = 0;
                } else if (i4 > i3) {
                    i5++;
                    i4 = 1;
                }
            }
            return i4 + 1 > i3 ? i5 + 1 : i5;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        int i4 = s.k.a(context, attributeSet, i2, i3).b;
        if (i4 != this.F) {
            this.E = true;
            if (i4 >= 1) {
                this.F = i4;
                this.I.a.clear();
                l();
                return;
            }
            throw new IllegalArgumentException(e.a.a.a.a.a("Span count should be at least 1. Provided ", i4));
        }
    }

    public int a(s.q qVar, s.u uVar) {
        if (this.q == 1) {
            return this.F;
        }
        if (uVar.a() < 1) {
            return 0;
        }
        return a(qVar, uVar, uVar.a() - 1) + 1;
    }

    public int b(s.q qVar, s.u uVar) {
        if (this.q == 0) {
            return this.F;
        }
        if (uVar.a() < 1) {
            return 0;
        }
        return a(qVar, uVar, uVar.a() - 1) + 1;
    }

    public s.l c() {
        if (this.q == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    public boolean m() {
        return this.A == null && !this.E;
    }

    public static class b extends s.l {

        /* renamed from: e  reason: collision with root package name */
        public int f93e = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f94f = 0;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public void a(s.q qVar, s.u uVar, View view, d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        int a2 = a(qVar, uVar, bVar.a());
        if (this.q == 0) {
            int i2 = bVar.f93e;
            int i3 = bVar.f94f;
            int i4 = this.F;
            dVar.a((Object) d.b.a(i2, i3, a2, 1, i4 > 1 && i3 == i4, false));
            return;
        }
        int i5 = bVar.f93e;
        int i6 = bVar.f94f;
        int i7 = this.F;
        dVar.a((Object) d.b.a(a2, 1, i5, i6, i7 > 1 && i6 == i7, false));
    }

    public void b(s sVar, int i2, int i3) {
        this.I.a.clear();
    }

    public void a(s sVar, int i2, int i3) {
        this.I.a.clear();
    }

    public void a(s sVar) {
        this.I.a.clear();
    }

    public void a(s sVar, int i2, int i3, Object obj) {
        this.I.a.clear();
    }

    public void a(s sVar, int i2, int i3, int i4) {
        this.I.a.clear();
    }

    public s.l a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public s.l a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    public boolean a(s.l lVar) {
        return lVar instanceof b;
    }

    public void a(boolean z) {
        if (!z) {
            a((String) null);
            if (this.w) {
                this.w = false;
                l();
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    public final int a(s.q qVar, s.u uVar, int i2) {
        if (!uVar.f843g) {
            return this.I.a(i2, this.F);
        }
        int a2 = qVar.a(i2);
        if (a2 != -1) {
            return this.I.a(a2, this.F);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
        return 0;
    }
}
