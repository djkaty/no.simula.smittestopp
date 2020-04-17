package d.b.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import d.b.d.i.g;
import d.b.d.i.i;
import d.b.d.i.m;
import d.i.i.n;
import d.i.i.s;
import d.i.i.u;

public class z0 implements d0 {
    public Toolbar a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public View f403c;

    /* renamed from: d  reason: collision with root package name */
    public View f404d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f405e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f406f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f407g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f408h;

    /* renamed from: i  reason: collision with root package name */
    public CharSequence f409i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f410j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f411k;

    /* renamed from: l  reason: collision with root package name */
    public Window.Callback f412l;
    public boolean m;
    public c n;
    public int o = 0;
    public int p = 0;
    public Drawable q;

    public class a extends u {
        public boolean a = false;
        public final /* synthetic */ int b;

        public a(int i2) {
            this.b = i2;
        }

        public void a(View view) {
            if (!this.a) {
                z0.this.a.setVisibility(this.b);
            }
        }

        public void b(View view) {
            z0.this.a.setVisibility(0);
        }

        public void c(View view) {
            this.a = true;
        }
    }

    public z0(Toolbar toolbar, boolean z) {
        int i2;
        Drawable drawable;
        int i3 = R$string.abc_action_bar_up_description;
        this.a = toolbar;
        this.f409i = toolbar.getTitle();
        this.f410j = toolbar.getSubtitle();
        this.f408h = this.f409i != null;
        this.f407g = toolbar.getNavigationIcon();
        x0 a2 = x0.a(toolbar.getContext(), (AttributeSet) null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        this.q = a2.b(R$styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence e2 = a2.e(R$styleable.ActionBar_title);
            if (!TextUtils.isEmpty(e2)) {
                setTitle(e2);
            }
            CharSequence e3 = a2.e(R$styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(e3)) {
                this.f410j = e3;
                if ((this.b & 8) != 0) {
                    this.a.setSubtitle(e3);
                }
            }
            Drawable b2 = a2.b(R$styleable.ActionBar_logo);
            if (b2 != null) {
                this.f406f = b2;
                r();
            }
            Drawable b3 = a2.b(R$styleable.ActionBar_icon);
            if (b3 != null) {
                this.f405e = b3;
                r();
            }
            if (this.f407g == null && (drawable = this.q) != null) {
                this.f407g = drawable;
                q();
            }
            d(a2.c(R$styleable.ActionBar_displayOptions, 0));
            int f2 = a2.f(R$styleable.ActionBar_customNavigationLayout, 0);
            if (f2 != 0) {
                View inflate = LayoutInflater.from(this.a.getContext()).inflate(f2, this.a, false);
                View view = this.f404d;
                if (!(view == null || (this.b & 16) == 0)) {
                    this.a.removeView(view);
                }
                this.f404d = inflate;
                if (!(inflate == null || (this.b & 16) == 0)) {
                    this.a.addView(inflate);
                }
                d(this.b | 16);
            }
            int e4 = a2.e(R$styleable.ActionBar_height, 0);
            if (e4 > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = e4;
                this.a.setLayoutParams(layoutParams);
            }
            int a3 = a2.a(R$styleable.ActionBar_contentInsetStart, -1);
            int a4 = a2.a(R$styleable.ActionBar_contentInsetEnd, -1);
            if (a3 >= 0 || a4 >= 0) {
                Toolbar toolbar2 = this.a;
                int max = Math.max(a3, 0);
                int max2 = Math.max(a4, 0);
                toolbar2.b();
                toolbar2.Q.a(max, max2);
            }
            int f3 = a2.f(R$styleable.ActionBar_titleTextStyle, 0);
            if (f3 != 0) {
                Toolbar toolbar3 = this.a;
                Context context = toolbar3.getContext();
                toolbar3.I = f3;
                TextView textView = toolbar3.y;
                if (textView != null) {
                    textView.setTextAppearance(context, f3);
                }
            }
            int f4 = a2.f(R$styleable.ActionBar_subtitleTextStyle, 0);
            if (f4 != 0) {
                Toolbar toolbar4 = this.a;
                Context context2 = toolbar4.getContext();
                toolbar4.J = f4;
                TextView textView2 = toolbar4.z;
                if (textView2 != null) {
                    textView2.setTextAppearance(context2, f4);
                }
            }
            int f5 = a2.f(R$styleable.ActionBar_popupTheme, 0);
            if (f5 != 0) {
                this.a.setPopupTheme(f5);
            }
        } else {
            if (this.a.getNavigationIcon() != null) {
                i2 = 15;
                this.q = this.a.getNavigationIcon();
            } else {
                i2 = 11;
            }
            this.b = i2;
        }
        a2.b.recycle();
        if (i3 != this.p) {
            this.p = i3;
            if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
                c(this.p);
            }
        }
        this.f411k = this.a.getNavigationContentDescription();
        this.a.setNavigationOnClickListener(new y0(this));
    }

    public void a(boolean z) {
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0021 A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a() {
        /*
            r4 = this;
            androidx.appcompat.widget.Toolbar r0 = r4.a
            androidx.appcompat.widget.ActionMenuView r0 = r0.x
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x0022
            d.b.e.c r0 = r0.Q
            if (r0 == 0) goto L_0x001e
            d.b.e.c$c r3 = r0.T
            if (r3 != 0) goto L_0x0019
            boolean r0 = r0.f()
            if (r0 == 0) goto L_0x0017
            goto L_0x0019
        L_0x0017:
            r0 = 0
            goto L_0x001a
        L_0x0019:
            r0 = 1
        L_0x001a:
            if (r0 == 0) goto L_0x001e
            r0 = 1
            goto L_0x001f
        L_0x001e:
            r0 = 0
        L_0x001f:
            if (r0 == 0) goto L_0x0022
            r1 = 1
        L_0x0022:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.z0.a():boolean");
    }

    public void b(int i2) {
        this.f406f = i2 != 0 ? d.b.b.a.a.c(k(), i2) : null;
        r();
    }

    public boolean c() {
        ActionMenuView actionMenuView = this.a.x;
        if (actionMenuView == null) {
            return false;
        }
        c cVar = actionMenuView.Q;
        if (cVar != null && cVar.c()) {
            return true;
        }
        return false;
    }

    public void collapseActionView() {
        Toolbar.d dVar = this.a.k0;
        i iVar = dVar == null ? null : dVar.y;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public boolean d() {
        return this.a.g();
    }

    public void e() {
        this.m = true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0008, code lost:
        r0 = r0.x;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean f() {
        /*
            r2 = this;
            androidx.appcompat.widget.Toolbar r0 = r2.a
            int r1 = r0.getVisibility()
            if (r1 != 0) goto L_0x0012
            androidx.appcompat.widget.ActionMenuView r0 = r0.x
            if (r0 == 0) goto L_0x0012
            boolean r0 = r0.P
            if (r0 == 0) goto L_0x0012
            r0 = 1
            goto L_0x0013
        L_0x0012:
            r0 = 0
        L_0x0013:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.z0.f():boolean");
    }

    public void g() {
        c cVar;
        ActionMenuView actionMenuView = this.a.x;
        if (actionMenuView != null && (cVar = actionMenuView.Q) != null) {
            cVar.a();
        }
    }

    public CharSequence getTitle() {
        return this.a.getTitle();
    }

    public int h() {
        return this.b;
    }

    public Menu i() {
        return this.a.getMenu();
    }

    public ViewGroup j() {
        return this.a;
    }

    public Context k() {
        return this.a.getContext();
    }

    public int l() {
        return this.o;
    }

    public void m() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public boolean n() {
        Toolbar.d dVar = this.a.k0;
        return (dVar == null || dVar.y == null) ? false : true;
    }

    public void o() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void p() {
        if ((this.b & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.f411k)) {
            this.a.setNavigationContentDescription(this.p);
        } else {
            this.a.setNavigationContentDescription(this.f411k);
        }
    }

    public final void q() {
        if ((this.b & 4) != 0) {
            Toolbar toolbar = this.a;
            Drawable drawable = this.f407g;
            if (drawable == null) {
                drawable = this.q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.a.setNavigationIcon((Drawable) null);
    }

    public final void r() {
        Drawable drawable;
        int i2 = this.b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.f406f;
            if (drawable == null) {
                drawable = this.f405e;
            }
        } else {
            drawable = this.f405e;
        }
        this.a.setLogo(drawable);
    }

    public void setIcon(int i2) {
        this.f405e = i2 != 0 ? d.b.b.a.a.c(k(), i2) : null;
        r();
    }

    public void setTitle(CharSequence charSequence) {
        this.f408h = true;
        this.f409i = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    public void setWindowCallback(Window.Callback callback) {
        this.f412l = callback;
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f408h) {
            this.f409i = charSequence;
            if ((this.b & 8) != 0) {
                this.a.setTitle(charSequence);
            }
        }
    }

    public void d(int i2) {
        View view;
        int i3 = this.b ^ i2;
        this.b = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    p();
                }
                q();
            }
            if ((i3 & 3) != 0) {
                r();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.a.setTitle(this.f409i);
                    this.a.setSubtitle(this.f410j);
                } else {
                    this.a.setTitle((CharSequence) null);
                    this.a.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) != 0 && (view = this.f404d) != null) {
                if ((i2 & 16) != 0) {
                    this.a.addView(view);
                } else {
                    this.a.removeView(view);
                }
            }
        }
    }

    public boolean b() {
        return this.a.f();
    }

    public void c(int i2) {
        this.f411k = i2 == 0 ? null : k().getString(i2);
        p();
    }

    public void setIcon(Drawable drawable) {
        this.f405e = drawable;
        r();
    }

    public void a(Menu menu, m.a aVar) {
        i iVar;
        if (this.n == null) {
            c cVar = new c(this.a.getContext());
            this.n = cVar;
            cVar.F = R$id.action_menu_presenter;
        }
        c cVar2 = this.n;
        cVar2.B = aVar;
        Toolbar toolbar = this.a;
        g gVar = (g) menu;
        if (gVar != null || toolbar.x != null) {
            toolbar.d();
            g gVar2 = toolbar.x.M;
            if (gVar2 != gVar) {
                if (gVar2 != null) {
                    gVar2.a((m) toolbar.j0);
                    gVar2.a((m) toolbar.k0);
                }
                if (toolbar.k0 == null) {
                    toolbar.k0 = new Toolbar.d();
                }
                cVar2.O = true;
                if (gVar != null) {
                    gVar.a((m) cVar2, toolbar.G);
                    gVar.a((m) toolbar.k0, toolbar.G);
                } else {
                    cVar2.a(toolbar.G, (g) null);
                    Toolbar.d dVar = toolbar.k0;
                    g gVar3 = dVar.x;
                    if (!(gVar3 == null || (iVar = dVar.y) == null)) {
                        gVar3.a(iVar);
                    }
                    dVar.x = null;
                    cVar2.a(true);
                    toolbar.k0.a(true);
                }
                toolbar.x.setPopupTheme(toolbar.H);
                toolbar.x.setPresenter(cVar2);
                toolbar.j0 = cVar2;
            }
        }
    }

    public void b(boolean z) {
        this.a.setCollapsible(z);
    }

    public void a(q0 q0Var) {
        Toolbar toolbar;
        View view = this.f403c;
        if (view != null && view.getParent() == (toolbar = this.a)) {
            toolbar.removeView(this.f403c);
        }
        this.f403c = q0Var;
        if (q0Var != null && this.o == 2) {
            this.a.addView(q0Var, 0);
            Toolbar.e eVar = (Toolbar.e) this.f403c.getLayoutParams();
            eVar.width = -2;
            eVar.height = -2;
            eVar.a = 8388691;
            q0Var.setAllowCollapse(true);
        }
    }

    public s a(int i2, long j2) {
        s a2 = n.a(this.a);
        a2.a(i2 == 0 ? 1.0f : 0.0f);
        a2.a(j2);
        a aVar = new a(i2);
        View view = (View) a2.a.get();
        if (view != null) {
            a2.a(view, aVar);
        }
        return a2;
    }

    public void a(Drawable drawable) {
        this.f407g = drawable;
        q();
    }

    public void a(int i2) {
        this.a.setVisibility(i2);
    }

    public void a(m.a aVar, g.a aVar2) {
        Toolbar toolbar = this.a;
        toolbar.l0 = aVar;
        toolbar.m0 = aVar2;
        ActionMenuView actionMenuView = toolbar.x;
        if (actionMenuView != null) {
            actionMenuView.R = aVar;
            actionMenuView.S = aVar2;
        }
    }
}
