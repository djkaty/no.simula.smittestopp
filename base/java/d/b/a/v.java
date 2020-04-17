package d.b.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$bool;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import d.b.a.a;
import d.b.d.a;
import d.b.d.f;
import d.b.d.g;
import d.b.d.i.g;
import d.b.e.d0;
import d.b.e.q0;
import d.i.i.n;
import d.i.i.s;
import d.i.i.t;
import d.i.i.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class v extends a implements ActionBarOverlayLayout.d {
    public static final Interpolator A = new AccelerateInterpolator();
    public static final Interpolator B = new DecelerateInterpolator();
    public Context a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public ActionBarOverlayLayout f226c;

    /* renamed from: d  reason: collision with root package name */
    public ActionBarContainer f227d;

    /* renamed from: e  reason: collision with root package name */
    public d0 f228e;

    /* renamed from: f  reason: collision with root package name */
    public ActionBarContextView f229f;

    /* renamed from: g  reason: collision with root package name */
    public View f230g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f231h;

    /* renamed from: i  reason: collision with root package name */
    public d f232i;

    /* renamed from: j  reason: collision with root package name */
    public d.b.d.a f233j;

    /* renamed from: k  reason: collision with root package name */
    public a.C0012a f234k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f235l;
    public ArrayList<a.b> m = new ArrayList<>();
    public boolean n;
    public int o = 0;
    public boolean p = true;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t = true;
    public g u;
    public boolean v;
    public boolean w;
    public final t x = new a();
    public final t y = new b();
    public final d.i.i.v z = new c();

    public class a extends u {
        public a() {
        }

        public void a(View view) {
            View view2;
            v vVar = v.this;
            if (vVar.p && (view2 = vVar.f230g) != null) {
                view2.setTranslationY(0.0f);
                v.this.f227d.setTranslationY(0.0f);
            }
            v.this.f227d.setVisibility(8);
            v.this.f227d.setTransitioning(false);
            v vVar2 = v.this;
            vVar2.u = null;
            a.C0012a aVar = vVar2.f234k;
            if (aVar != null) {
                aVar.a(vVar2.f233j);
                vVar2.f233j = null;
                vVar2.f234k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = v.this.f226c;
            if (actionBarOverlayLayout != null) {
                n.y(actionBarOverlayLayout);
            }
        }
    }

    public class b extends u {
        public b() {
        }

        public void a(View view) {
            v vVar = v.this;
            vVar.u = null;
            vVar.f227d.requestLayout();
        }
    }

    public class c implements d.i.i.v {
        public c() {
        }
    }

    public class d extends d.b.d.a implements g.a {
        public final d.b.d.i.g A;
        public a.C0012a B;
        public WeakReference<View> C;
        public final Context z;

        public d(Context context, a.C0012a aVar) {
            this.z = context;
            this.B = aVar;
            d.b.d.i.g gVar = new d.b.d.i.g(context);
            gVar.f303l = 1;
            this.A = gVar;
            gVar.f296e = this;
        }

        public void a(boolean z2) {
            this.y = z2;
            v.this.f229f.setTitleOptional(z2);
        }

        public void b(CharSequence charSequence) {
            v.this.f229f.setTitle(charSequence);
        }

        public Menu c() {
            return this.A;
        }

        public MenuInflater d() {
            return new f(this.z);
        }

        public CharSequence e() {
            return v.this.f229f.getSubtitle();
        }

        public CharSequence f() {
            return v.this.f229f.getTitle();
        }

        public void g() {
            if (v.this.f232i == this) {
                this.A.j();
                try {
                    this.B.a((d.b.d.a) this, (Menu) this.A);
                } finally {
                    this.A.i();
                }
            }
        }

        public boolean h() {
            return v.this.f229f.O;
        }

        public void b(int i2) {
            v.this.f229f.setTitle(v.this.a.getResources().getString(i2));
        }

        public void a() {
            v vVar = v.this;
            if (vVar.f232i == this) {
                boolean z2 = vVar.q;
                boolean z3 = vVar.r;
                boolean z4 = true;
                if (z2 || z3) {
                    z4 = false;
                }
                if (!z4) {
                    v vVar2 = v.this;
                    vVar2.f233j = this;
                    vVar2.f234k = this.B;
                } else {
                    this.B.a(this);
                }
                this.B = null;
                v.this.e(false);
                ActionBarContextView actionBarContextView = v.this.f229f;
                if (actionBarContextView.H == null) {
                    actionBarContextView.b();
                }
                v.this.f228e.j().sendAccessibilityEvent(32);
                v vVar3 = v.this;
                vVar3.f226c.setHideOnContentScrollEnabled(vVar3.w);
                v.this.f232i = null;
            }
        }

        public View b() {
            WeakReference<View> weakReference = this.C;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        public void a(View view) {
            v.this.f229f.setCustomView(view);
            this.C = new WeakReference<>(view);
        }

        public void a(CharSequence charSequence) {
            v.this.f229f.setSubtitle(charSequence);
        }

        public void a(int i2) {
            v.this.f229f.setSubtitle(v.this.a.getResources().getString(i2));
        }

        public boolean a(d.b.d.i.g gVar, MenuItem menuItem) {
            a.C0012a aVar = this.B;
            if (aVar != null) {
                return aVar.a((d.b.d.a) this, menuItem);
            }
            return false;
        }

        public void a(d.b.d.i.g gVar) {
            if (this.B != null) {
                g();
                d.b.e.c cVar = v.this.f229f.A;
                if (cVar != null) {
                    cVar.g();
                }
            }
        }
    }

    public v(Activity activity, boolean z2) {
        new ArrayList();
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (!z2) {
            this.f230g = decorView.findViewById(16908290);
        }
    }

    public final void a(View view) {
        d0 d0Var;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R$id.decor_content_parent);
        this.f226c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        View findViewById = view.findViewById(R$id.action_bar);
        if (findViewById instanceof d0) {
            d0Var = (d0) findViewById;
        } else if (findViewById instanceof Toolbar) {
            d0Var = ((Toolbar) findViewById).getWrapper();
        } else {
            StringBuilder a2 = e.a.a.a.a.a("Can't make a decor toolbar out of ");
            a2.append(findViewById != null ? findViewById.getClass().getSimpleName() : "null");
            throw new IllegalStateException(a2.toString());
        }
        this.f228e = d0Var;
        this.f229f = (ActionBarContextView) view.findViewById(R$id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R$id.action_bar_container);
        this.f227d = actionBarContainer;
        d0 d0Var2 = this.f228e;
        if (d0Var2 == null || this.f229f == null || actionBarContainer == null) {
            throw new IllegalStateException(v.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = d0Var2.k();
        boolean z2 = (this.f228e.h() & 4) != 0;
        if (z2) {
            this.f231h = true;
        }
        Context context = this.a;
        this.f228e.a((context.getApplicationInfo().targetSdkVersion < 14) || z2);
        f(context.getResources().getBoolean(R$bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes((AttributeSet) null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(R$styleable.ActionBar_hideOnContentScroll, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f226c;
            if (actionBarOverlayLayout2.E) {
                this.w = true;
                actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
            } else {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            n.a((View) this.f227d, (float) dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    public void b(CharSequence charSequence) {
        this.f228e.setWindowTitle(charSequence);
    }

    public void c(boolean z2) {
        int i2 = z2 ? 4 : 0;
        int h2 = this.f228e.h();
        this.f231h = true;
        this.f228e.d((i2 & 4) | (-5 & h2));
    }

    public void d(boolean z2) {
        d.b.d.g gVar;
        this.v = z2;
        if (!z2 && (gVar = this.u) != null) {
            gVar.a();
        }
    }

    public void e(boolean z2) {
        s sVar;
        s sVar2;
        if (z2) {
            if (!this.s) {
                this.s = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f226c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                g(false);
            }
        } else if (this.s) {
            this.s = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f226c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            g(false);
        }
        if (n.t(this.f227d)) {
            if (z2) {
                sVar = this.f228e.a(4, 100);
                sVar2 = this.f229f.a(0, 200);
            } else {
                sVar2 = this.f228e.a(0, 200);
                sVar = this.f229f.a(8, 100);
            }
            d.b.d.g gVar = new d.b.d.g();
            gVar.a.add(sVar);
            View view = (View) sVar.a.get();
            long duration = view != null ? view.animate().getDuration() : 0;
            View view2 = (View) sVar2.a.get();
            if (view2 != null) {
                view2.animate().setStartDelay(duration);
            }
            gVar.a.add(sVar2);
            gVar.b();
        } else if (z2) {
            this.f228e.a(4);
            this.f229f.setVisibility(0);
        } else {
            this.f228e.a(0);
            this.f229f.setVisibility(8);
        }
    }

    public final void f(boolean z2) {
        this.n = z2;
        if (!z2) {
            this.f228e.a((q0) null);
            this.f227d.setTabContainer((q0) null);
        } else {
            this.f227d.setTabContainer((q0) null);
            this.f228e.a((q0) null);
        }
        boolean z3 = true;
        boolean z4 = this.f228e.l() == 2;
        this.f228e.b(!this.n && z4);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f226c;
        if (this.n || !z4) {
            z3 = false;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z3);
    }

    public final void g(boolean z2) {
        View view;
        View view2;
        View view3;
        if (this.s || !this.r) {
            if (!this.t) {
                this.t = true;
                d.b.d.g gVar = this.u;
                if (gVar != null) {
                    gVar.a();
                }
                this.f227d.setVisibility(0);
                if (this.o != 0 || (!this.v && !z2)) {
                    this.f227d.setAlpha(1.0f);
                    this.f227d.setTranslationY(0.0f);
                    if (this.p && (view2 = this.f230g) != null) {
                        view2.setTranslationY(0.0f);
                    }
                    this.y.a((View) null);
                } else {
                    this.f227d.setTranslationY(0.0f);
                    float f2 = (float) (-this.f227d.getHeight());
                    if (z2) {
                        int[] iArr = {0, 0};
                        this.f227d.getLocationInWindow(iArr);
                        f2 -= (float) iArr[1];
                    }
                    this.f227d.setTranslationY(f2);
                    d.b.d.g gVar2 = new d.b.d.g();
                    s a2 = n.a(this.f227d);
                    a2.b(0.0f);
                    a2.a(this.z);
                    if (!gVar2.f279e) {
                        gVar2.a.add(a2);
                    }
                    if (this.p && (view3 = this.f230g) != null) {
                        view3.setTranslationY(f2);
                        s a3 = n.a(this.f230g);
                        a3.b(0.0f);
                        if (!gVar2.f279e) {
                            gVar2.a.add(a3);
                        }
                    }
                    Interpolator interpolator = B;
                    if (!gVar2.f279e) {
                        gVar2.f277c = interpolator;
                    }
                    if (!gVar2.f279e) {
                        gVar2.b = 250;
                    }
                    t tVar = this.y;
                    if (!gVar2.f279e) {
                        gVar2.f278d = tVar;
                    }
                    this.u = gVar2;
                    gVar2.b();
                }
                ActionBarOverlayLayout actionBarOverlayLayout = this.f226c;
                if (actionBarOverlayLayout != null) {
                    n.y(actionBarOverlayLayout);
                }
            }
        } else if (this.t) {
            this.t = false;
            d.b.d.g gVar3 = this.u;
            if (gVar3 != null) {
                gVar3.a();
            }
            if (this.o != 0 || (!this.v && !z2)) {
                this.x.a((View) null);
                return;
            }
            this.f227d.setAlpha(1.0f);
            this.f227d.setTransitioning(true);
            d.b.d.g gVar4 = new d.b.d.g();
            float f3 = (float) (-this.f227d.getHeight());
            if (z2) {
                int[] iArr2 = {0, 0};
                this.f227d.getLocationInWindow(iArr2);
                f3 -= (float) iArr2[1];
            }
            s a4 = n.a(this.f227d);
            a4.b(f3);
            a4.a(this.z);
            if (!gVar4.f279e) {
                gVar4.a.add(a4);
            }
            if (this.p && (view = this.f230g) != null) {
                s a5 = n.a(view);
                a5.b(f3);
                if (!gVar4.f279e) {
                    gVar4.a.add(a5);
                }
            }
            Interpolator interpolator2 = A;
            if (!gVar4.f279e) {
                gVar4.f277c = interpolator2;
            }
            if (!gVar4.f279e) {
                gVar4.b = 250;
            }
            t tVar2 = this.x;
            if (!gVar4.f279e) {
                gVar4.f278d = tVar2;
            }
            this.u = gVar4;
            gVar4.b();
        }
    }

    public boolean b() {
        d0 d0Var = this.f228e;
        if (d0Var == null || !d0Var.n()) {
            return false;
        }
        this.f228e.collapseActionView();
        return true;
    }

    public void b(boolean z2) {
        if (!this.f231h) {
            c(z2);
        }
    }

    public int c() {
        return this.f228e.h();
    }

    public Context d() {
        if (this.b == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.b = new ContextThemeWrapper(this.a, i2);
            } else {
                this.b = this.a;
            }
        }
        return this.b;
    }

    public v(Dialog dialog) {
        new ArrayList();
        a(dialog.getWindow().getDecorView());
    }

    public void a(Configuration configuration) {
        f(this.a.getResources().getBoolean(R$bool.abc_action_bar_embed_tabs));
    }

    public void a(boolean z2) {
        if (z2 != this.f235l) {
            this.f235l = z2;
            int size = this.m.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.m.get(i2).a(z2);
            }
        }
    }

    public void a(CharSequence charSequence) {
        this.f228e.setTitle(charSequence);
    }

    public d.b.d.a a(a.C0012a aVar) {
        d dVar = this.f232i;
        if (dVar != null) {
            dVar.a();
        }
        this.f226c.setHideOnContentScrollEnabled(false);
        this.f229f.b();
        d dVar2 = new d(this.f229f.getContext(), aVar);
        dVar2.A.j();
        try {
            if (!dVar2.B.b(dVar2, dVar2.A)) {
                return null;
            }
            this.f232i = dVar2;
            dVar2.g();
            this.f229f.a(dVar2);
            e(true);
            this.f229f.sendAccessibilityEvent(32);
            return dVar2;
        } finally {
            dVar2.A.i();
        }
    }

    public void a(Drawable drawable) {
        this.f228e.a(drawable);
    }

    public void a(int i2) {
        this.f228e.c(i2);
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        d.b.d.i.g gVar;
        d dVar = this.f232i;
        if (dVar == null || (gVar = dVar.A) == null) {
            return false;
        }
        boolean z2 = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z2 = false;
        }
        gVar.setQwertyMode(z2);
        return gVar.performShortcut(i2, keyEvent, 0);
    }
}
