package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.navigation.NavController;
import androidx.navigation.ui.R$anim;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import d.b.d.f;
import d.b.d.i.g;
import d.b.d.i.m;
import d.b.e.x0;
import d.s.i;
import d.s.j;
import d.s.n;
import e.c.a.b.d.e;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public class BottomNavigationView extends FrameLayout {
    public MenuInflater A;
    public c B;
    public b C;
    public final g x;
    public final e.c.a.b.d.d y;
    public final e z;

    public class a implements g.a {
        public a() {
        }

        public void a(g gVar) {
        }

        public boolean a(g gVar, MenuItem menuItem) {
            int i2;
            if (BottomNavigationView.this.C == null || menuItem.getItemId() != BottomNavigationView.this.getSelectedItemId()) {
                c cVar = BottomNavigationView.this.B;
                if (cVar != null) {
                    NavController navController = ((d.s.s.d) cVar).a;
                    int i3 = R$anim.nav_default_enter_anim;
                    int i4 = R$anim.nav_default_exit_anim;
                    int i5 = R$anim.nav_default_pop_enter_anim;
                    int i6 = R$anim.nav_default_pop_exit_anim;
                    if ((menuItem.getOrder() & 196608) == 0) {
                        i iVar = navController.f81d;
                        if (iVar != null) {
                            while (iVar instanceof j) {
                                j jVar = (j) iVar;
                                iVar = jVar.b(jVar.G);
                            }
                            i2 = iVar.z;
                        } else {
                            throw new IllegalStateException("You must call setGraph() before calling getGraph()");
                        }
                    } else {
                        i2 = -1;
                    }
                    boolean z = false;
                    try {
                        navController.a(menuItem.getItemId(), (Bundle) null, new n(true, i2, false, i3, i4, i5, i6));
                        z = true;
                    } catch (IllegalArgumentException unused) {
                    }
                    if (!z) {
                        return true;
                    }
                }
                return false;
            }
            BottomNavigationView.this.C.a(menuItem);
            return true;
        }
    }

    public interface b {
        void a(MenuItem menuItem);
    }

    public interface c {
    }

    public static class d extends d.k.a.a {
        public static final Parcelable.Creator<d> CREATOR = new a();
        public Bundle z;

        public static class a implements Parcelable.ClassLoaderCreator<d> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new d(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new d[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new d(parcel, (ClassLoader) null);
            }
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeBundle(this.z);
        }

        public d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.z = parcel.readBundle(classLoader);
        }
    }

    public BottomNavigationView(Context context) {
        this(context, (AttributeSet) null);
    }

    private MenuInflater getMenuInflater() {
        if (this.A == null) {
            this.A = new f(getContext());
        }
        return this.A;
    }

    public Drawable getItemBackground() {
        return this.y.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.y.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.y.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.y.getIconTintList();
    }

    public int getItemTextAppearanceActive() {
        return this.y.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.y.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.y.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.y.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    public Menu getMenu() {
        return this.x;
    }

    public int getSelectedItemId() {
        return this.y.getSelectedItemId();
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.x);
        g gVar = this.x;
        Bundle bundle = dVar.z;
        if (gVar != null) {
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
            if (sparseParcelableArray != null && !gVar.v.isEmpty()) {
                Iterator<WeakReference<m>> it = gVar.v.iterator();
                while (it.hasNext()) {
                    WeakReference next = it.next();
                    m mVar = (m) next.get();
                    if (mVar == null) {
                        gVar.v.remove(next);
                    } else {
                        int id = mVar.getId();
                        if (id > 0 && (parcelable2 = (Parcelable) sparseParcelableArray.get(id)) != null) {
                            mVar.a(parcelable2);
                        }
                    }
                }
                return;
            }
            return;
        }
        throw null;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable d2;
        d dVar = new d(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        dVar.z = bundle;
        g gVar = this.x;
        if (!gVar.v.isEmpty()) {
            SparseArray sparseArray = new SparseArray();
            Iterator<WeakReference<m>> it = gVar.v.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                m mVar = (m) next.get();
                if (mVar == null) {
                    gVar.v.remove(next);
                } else {
                    int id = mVar.getId();
                    if (id > 0 && (d2 = mVar.d()) != null) {
                        sparseArray.put(id, d2);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
        return dVar;
    }

    public void setItemBackground(Drawable drawable) {
        this.y.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i2) {
        this.y.setItemBackgroundRes(i2);
    }

    public void setItemHorizontalTranslationEnabled(boolean z2) {
        e.c.a.b.d.d dVar = this.y;
        if (dVar.F != z2) {
            dVar.setItemHorizontalTranslationEnabled(z2);
            this.z.a(false);
        }
    }

    public void setItemIconSize(int i2) {
        this.y.setItemIconSize(i2);
    }

    public void setItemIconSizeRes(int i2) {
        setItemIconSize(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.y.setIconTintList(colorStateList);
    }

    public void setItemTextAppearanceActive(int i2) {
        this.y.setItemTextAppearanceActive(i2);
    }

    public void setItemTextAppearanceInactive(int i2) {
        this.y.setItemTextAppearanceInactive(i2);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.y.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.y.getLabelVisibilityMode() != i2) {
            this.y.setLabelVisibilityMode(i2);
            this.z.a(false);
        }
    }

    public void setOnNavigationItemReselectedListener(b bVar) {
        this.C = bVar;
    }

    public void setOnNavigationItemSelectedListener(c cVar) {
        this.B = cVar;
    }

    public void setSelectedItemId(int i2) {
        MenuItem findItem = this.x.findItem(i2);
        if (findItem != null && !this.x.a(findItem, (m) this.z, 0)) {
            findItem.setChecked(true);
        }
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.z = new e();
        this.x = new e.c.a.b.d.b(context);
        this.y = new e.c.a.b.d.d(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.y.setLayoutParams(layoutParams);
        e eVar = this.z;
        e.c.a.b.d.d dVar = this.y;
        eVar.y = dVar;
        eVar.A = 1;
        dVar.setPresenter(eVar);
        g gVar = this.x;
        gVar.a((m) this.z, gVar.a);
        e eVar2 = this.z;
        getContext();
        g gVar2 = this.x;
        eVar2.x = gVar2;
        eVar2.y.U = gVar2;
        int[] iArr = R$styleable.BottomNavigationView;
        int i3 = R$style.Widget_Design_BottomNavigationView;
        int[] iArr2 = {R$styleable.BottomNavigationView_itemTextAppearanceInactive, R$styleable.BottomNavigationView_itemTextAppearanceActive};
        e.c.a.b.j.e.a(context, attributeSet, i2, i3);
        e.c.a.b.j.e.a(context, attributeSet, iArr, i2, i3, iArr2);
        x0 x0Var = new x0(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i3));
        if (x0Var.f(R$styleable.BottomNavigationView_itemIconTint)) {
            this.y.setIconTintList(x0Var.a(R$styleable.BottomNavigationView_itemIconTint));
        } else {
            e.c.a.b.d.d dVar2 = this.y;
            dVar2.setIconTintList(dVar2.a(16842808));
        }
        setItemIconSize(x0Var.b(R$styleable.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.design_bottom_navigation_icon_size)));
        if (x0Var.f(R$styleable.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(x0Var.f(R$styleable.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (x0Var.f(R$styleable.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(x0Var.f(R$styleable.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (x0Var.f(R$styleable.BottomNavigationView_itemTextColor)) {
            setItemTextColor(x0Var.a(R$styleable.BottomNavigationView_itemTextColor));
        }
        if (x0Var.f(R$styleable.BottomNavigationView_elevation)) {
            d.i.i.n.a((View) this, (float) x0Var.b(R$styleable.BottomNavigationView_elevation, 0));
        }
        setLabelVisibilityMode(x0Var.d(R$styleable.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(x0Var.a(R$styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        this.y.setItemBackgroundRes(x0Var.f(R$styleable.BottomNavigationView_itemBackground, 0));
        if (x0Var.f(R$styleable.BottomNavigationView_menu)) {
            int f2 = x0Var.f(R$styleable.BottomNavigationView_menu, 0);
            this.z.z = true;
            getMenuInflater().inflate(f2, this.x);
            e eVar3 = this.z;
            eVar3.z = false;
            eVar3.a(true);
        }
        x0Var.b.recycle();
        addView(this.y, layoutParams);
        this.x.a((g.a) new a());
    }
}
