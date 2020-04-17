package d.b.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import d.b.d.i.g;
import d.b.d.i.i;
import d.b.d.i.k;
import d.b.d.i.l;
import d.b.d.i.m;
import d.b.d.i.n;
import d.b.d.i.p;
import d.b.d.i.r;
import java.util.ArrayList;

public class c extends d.b.d.i.b {
    public d G;
    public Drawable H;
    public boolean I;
    public boolean J;
    public boolean K;
    public int L;
    public int M;
    public int N;
    public boolean O;
    public int P;
    public final SparseBooleanArray Q = new SparseBooleanArray();
    public e R;
    public a S;
    public C0015c T;
    public b U;
    public final f V = new f();
    public int W;

    public class a extends l {
        public a(Context context, r rVar, View view) {
            super(context, rVar, view, false, R$attr.actionOverflowMenuStyle, 0);
            if (!rVar.B.d()) {
                View view2 = c.this.G;
                this.f321f = view2 == null ? (View) c.this.E : view2;
            }
            a(c.this.V);
        }

        public void c() {
            c cVar = c.this;
            cVar.S = null;
            cVar.W = 0;
            super.c();
        }
    }

    public class b extends ActionMenuItemView.b {
        public b() {
        }
    }

    /* renamed from: d.b.e.c$c  reason: collision with other inner class name */
    public class C0015c implements Runnable {
        public e x;

        public C0015c(e eVar) {
            this.x = eVar;
        }

        public void run() {
            g.a aVar;
            d.b.d.i.g gVar = c.this.z;
            if (!(gVar == null || (aVar = gVar.f296e) == null)) {
                aVar.a(gVar);
            }
            View view = (View) c.this.E;
            if (!(view == null || view.getWindowToken() == null || !this.x.d())) {
                c.this.R = this.x;
            }
            c.this.T = null;
        }
    }

    public class d extends n implements ActionMenuView.a {

        public class a extends h0 {
            public a(View view, c cVar) {
                super(view);
            }

            public p b() {
                e eVar = c.this.R;
                if (eVar == null) {
                    return null;
                }
                return eVar.a();
            }

            public boolean c() {
                c.this.g();
                return true;
            }

            public boolean d() {
                c cVar = c.this;
                if (cVar.T != null) {
                    return false;
                }
                cVar.c();
                return true;
            }
        }

        public d(Context context) {
            super(context, (AttributeSet) null, R$attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            d.b.a.r.a((View) this, getContentDescription());
            setOnTouchListener(new a(this, c.this));
        }

        public boolean a() {
            return false;
        }

        public boolean b() {
            return false;
        }

        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.g();
            return true;
        }

        public boolean setFrame(int i2, int i3, int i4, int i5) {
            boolean frame = super.setFrame(i2, i3, i4, i5);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    public class e extends l {
        public e(Context context, d.b.d.i.g gVar, View view, boolean z) {
            super(context, gVar, view, z, R$attr.actionOverflowMenuStyle, 0);
            this.f322g = 8388613;
            a(c.this.V);
        }

        public void c() {
            d.b.d.i.g gVar = c.this.z;
            if (gVar != null) {
                gVar.a(true);
            }
            c.this.R = null;
            super.c();
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();
        public int x;

        public static class a implements Parcelable.Creator<g> {
            public Object createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            public Object[] newArray(int i2) {
                return new g[i2];
            }
        }

        public g() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.x);
        }

        public g(Parcel parcel) {
            this.x = parcel.readInt();
        }
    }

    public c(Context context) {
        super(context, R$layout.abc_action_menu_layout, R$layout.abc_action_menu_item_layout);
    }

    public void a(Context context, d.b.d.i.g gVar) {
        this.y = context;
        LayoutInflater.from(context);
        this.z = gVar;
        Resources resources = context.getResources();
        if (!this.K) {
            this.J = true;
        }
        int i2 = 2;
        this.L = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i3 = configuration.screenWidthDp;
        int i4 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i3 > 600 || ((i3 > 960 && i4 > 720) || (i3 > 720 && i4 > 960))) {
            i2 = 5;
        } else if (i3 >= 500 || ((i3 > 640 && i4 > 480) || (i3 > 480 && i4 > 640))) {
            i2 = 4;
        } else if (i3 >= 360) {
            i2 = 3;
        }
        this.N = i2;
        int i5 = this.L;
        if (this.J) {
            if (this.G == null) {
                d dVar = new d(this.x);
                this.G = dVar;
                if (this.I) {
                    dVar.setImageDrawable(this.H);
                    this.H = null;
                    this.I = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.G.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i5 -= this.G.getMeasuredWidth();
        } else {
            this.G = null;
        }
        this.M = i5;
        this.P = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public boolean b() {
        int i2;
        ArrayList<i> arrayList;
        int i3;
        boolean z;
        d.b.d.i.g gVar = this.z;
        View view = null;
        if (gVar != null) {
            arrayList = gVar.d();
            i2 = arrayList.size();
        } else {
            arrayList = null;
            i2 = 0;
        }
        int i4 = this.N;
        int i5 = this.M;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.E;
        int i6 = 0;
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i3 = 2;
            z = true;
            if (i6 >= i2) {
                break;
            }
            i iVar = arrayList.get(i6);
            if ((iVar.y & 2) == 2) {
                i8++;
            } else {
                if ((iVar.y & 1) == 1) {
                    i7++;
                } else {
                    z2 = true;
                }
            }
            if (this.O && iVar.C) {
                i4 = 0;
            }
            i6++;
        }
        if (this.J && (z2 || i7 + i8 > i4)) {
            i4--;
        }
        int i9 = i4 - i8;
        SparseBooleanArray sparseBooleanArray = this.Q;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i2) {
            i iVar2 = arrayList.get(i10);
            if ((iVar2.y & i3) == i3) {
                View a2 = a(iVar2, view, viewGroup);
                a2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = a2.getMeasuredWidth();
                i5 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                int i12 = iVar2.b;
                if (i12 != 0) {
                    sparseBooleanArray.put(i12, z);
                }
                iVar2.c(z);
            } else {
                if ((iVar2.y & z) == z) {
                    int i13 = iVar2.b;
                    boolean z3 = sparseBooleanArray.get(i13);
                    boolean z4 = (i9 > 0 || z3) && i5 > 0;
                    if (z4) {
                        View a3 = a(iVar2, view, viewGroup);
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                        int measuredWidth2 = a3.getMeasuredWidth();
                        i5 -= measuredWidth2;
                        if (i11 == 0) {
                            i11 = measuredWidth2;
                        }
                        z4 &= i5 + i11 > 0;
                    }
                    boolean z5 = z4;
                    if (z5 && i13 != 0) {
                        sparseBooleanArray.put(i13, z);
                    } else if (z3) {
                        sparseBooleanArray.put(i13, false);
                        for (int i14 = 0; i14 < i10; i14++) {
                            i iVar3 = arrayList.get(i14);
                            if (iVar3.b == i13) {
                                if (iVar3.d()) {
                                    i9++;
                                }
                                iVar3.c(false);
                            }
                        }
                    }
                    if (z5) {
                        i9--;
                    }
                    iVar2.c(z5);
                } else {
                    iVar2.c(false);
                    i10++;
                    view = null;
                    i3 = 2;
                    z = true;
                }
            }
            i10++;
            view = null;
            i3 = 2;
            z = true;
        }
        return true;
    }

    public boolean c() {
        n nVar;
        C0015c cVar = this.T;
        if (cVar == null || (nVar = this.E) == null) {
            e eVar = this.R;
            if (eVar == null) {
                return false;
            }
            if (eVar.b()) {
                eVar.f325j.dismiss();
            }
            return true;
        }
        ((View) nVar).removeCallbacks(cVar);
        this.T = null;
        return true;
    }

    public Parcelable d() {
        g gVar = new g();
        gVar.x = this.W;
        return gVar;
    }

    public boolean e() {
        a aVar = this.S;
        if (aVar == null) {
            return false;
        }
        if (!aVar.b()) {
            return true;
        }
        aVar.f325j.dismiss();
        return true;
    }

    public boolean f() {
        e eVar = this.R;
        return eVar != null && eVar.b();
    }

    public boolean g() {
        d.b.d.i.g gVar;
        if (!this.J || f() || (gVar = this.z) == null || this.E == null || this.T != null) {
            return false;
        }
        gVar.a();
        if (gVar.f301j.isEmpty()) {
            return false;
        }
        C0015c cVar = new C0015c(new e(this.y, this.z, this.G, true));
        this.T = cVar;
        ((View) this.E).post(cVar);
        super.a((r) null);
        return true;
    }

    public class f implements m.a {
        public f() {
        }

        public boolean a(d.b.d.i.g gVar) {
            if (gVar == null) {
                return false;
            }
            c.this.W = ((r) gVar).B.getItemId();
            m.a aVar = c.this.B;
            if (aVar != null) {
                return aVar.a(gVar);
            }
            return false;
        }

        public void a(d.b.d.i.g gVar, boolean z) {
            if (gVar instanceof r) {
                gVar.c().a(false);
            }
            m.a aVar = c.this.B;
            if (aVar != null) {
                aVar.a(gVar, z);
            }
        }
    }

    public View a(i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.c()) {
            actionView = super.a(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.C ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (actionMenuView != null) {
            if (!(layoutParams instanceof ActionMenuView.c)) {
                actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
            }
            return actionView;
        }
        throw null;
    }

    public void a(boolean z) {
        ArrayList<i> arrayList;
        n nVar;
        super.a(z);
        ((View) this.E).requestLayout();
        d.b.d.i.g gVar = this.z;
        boolean z2 = false;
        if (gVar != null) {
            gVar.a();
            ArrayList<i> arrayList2 = gVar.f300i;
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                d.i.i.b bVar = arrayList2.get(i2).A;
            }
        }
        d.b.d.i.g gVar2 = this.z;
        if (gVar2 != null) {
            gVar2.a();
            arrayList = gVar2.f301j;
        } else {
            arrayList = null;
        }
        if (this.J && arrayList != null) {
            int size2 = arrayList.size();
            if (size2 == 1) {
                z2 = !arrayList.get(0).C;
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.G == null) {
                this.G = new d(this.x);
            }
            ViewGroup viewGroup = (ViewGroup) this.G.getParent();
            if (viewGroup != this.E) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.G);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.E;
                d dVar = this.G;
                ActionMenuView.c generateDefaultLayoutParams = actionMenuView.generateDefaultLayoutParams();
                generateDefaultLayoutParams.f20c = true;
                actionMenuView.addView(dVar, generateDefaultLayoutParams);
            }
        } else {
            d dVar2 = this.G;
            if (dVar2 != null && dVar2.getParent() == (nVar = this.E)) {
                ((ViewGroup) nVar).removeView(this.G);
            }
        }
        ((ActionMenuView) this.E).setOverflowReserved(this.J);
    }

    public boolean a(r rVar) {
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        r rVar2 = rVar;
        while (true) {
            d.b.d.i.g gVar = rVar2.A;
            if (gVar == this.z) {
                break;
            }
            rVar2 = gVar;
        }
        i iVar = rVar2.B;
        ViewGroup viewGroup = (ViewGroup) this.E;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i2);
                if ((childAt instanceof n.a) && ((n.a) childAt).getItemData() == iVar) {
                    view = childAt;
                    break;
                }
                i2++;
            }
        }
        if (view == null) {
            return false;
        }
        this.W = rVar.B.getItemId();
        int size = rVar.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            MenuItem item = rVar.getItem(i3);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i3++;
        }
        a aVar = new a(this.y, rVar, view);
        this.S = aVar;
        aVar.f323h = z;
        k kVar = aVar.f325j;
        if (kVar != null) {
            kVar.b(z);
        }
        if (this.S.d()) {
            m.a aVar2 = this.B;
            if (aVar2 != null) {
                aVar2.a(rVar);
            }
            return true;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    public boolean a() {
        return c() | e();
    }

    public void a(d.b.d.i.g gVar, boolean z) {
        a();
        m.a aVar = this.B;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public void a(Parcelable parcelable) {
        int i2;
        MenuItem findItem;
        if ((parcelable instanceof g) && (i2 = ((g) parcelable).x) > 0 && (findItem = this.z.findItem(i2)) != null) {
            a((r) findItem.getSubMenu());
        }
    }
}
