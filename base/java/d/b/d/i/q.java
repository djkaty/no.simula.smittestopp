package d.b.d.i;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import d.b.d.i.m;
import d.b.e.m0;

public final class q extends k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, m, View.OnKeyListener {
    public static final int S = R$layout.abc_popup_menu_item_layout;
    public final f A;
    public final boolean B;
    public final int C;
    public final int D;
    public final int E;
    public final m0 F;
    public final ViewTreeObserver.OnGlobalLayoutListener G = new a();
    public final View.OnAttachStateChangeListener H = new b();
    public PopupWindow.OnDismissListener I;
    public View J;
    public View K;
    public m.a L;
    public ViewTreeObserver M;
    public boolean N;
    public boolean O;
    public int P;
    public int Q = 0;
    public boolean R;
    public final Context y;
    public final g z;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        public void onGlobalLayout() {
            if (q.this.a()) {
                q qVar = q.this;
                if (!qVar.F.X) {
                    View view = qVar.K;
                    if (view == null || !view.isShown()) {
                        q.this.dismiss();
                    } else {
                        q.this.F.c();
                    }
                }
            }
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = q.this.M;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.M = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.M.removeGlobalOnLayoutListener(qVar.G);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, g gVar, View view, int i2, int i3, boolean z2) {
        this.y = context;
        this.z = gVar;
        this.B = z2;
        this.A = new f(gVar, LayoutInflater.from(context), this.B, S);
        this.D = i2;
        this.E = i3;
        Resources resources = context.getResources();
        this.C = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.J = view;
        this.F = new m0(this.y, (AttributeSet) null, this.D, this.E);
        gVar.a((m) this, context);
    }

    public void a(int i2) {
        this.Q = i2;
    }

    public void a(Parcelable parcelable) {
    }

    public void a(g gVar) {
    }

    public void b(boolean z2) {
        this.A.z = z2;
    }

    public boolean b() {
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00c8 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
            r7 = this;
            boolean r0 = r7.a()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x000b
        L_0x0008:
            r1 = 1
            goto L_0x00c6
        L_0x000b:
            boolean r0 = r7.N
            if (r0 != 0) goto L_0x00c6
            android.view.View r0 = r7.J
            if (r0 != 0) goto L_0x0015
            goto L_0x00c6
        L_0x0015:
            r7.K = r0
            d.b.e.m0 r0 = r7.F
            android.widget.PopupWindow r0 = r0.Y
            r0.setOnDismissListener(r7)
            d.b.e.m0 r0 = r7.F
            r0.P = r7
            r0.a((boolean) r2)
            android.view.View r0 = r7.K
            android.view.ViewTreeObserver r3 = r7.M
            if (r3 != 0) goto L_0x002d
            r3 = 1
            goto L_0x002e
        L_0x002d:
            r3 = 0
        L_0x002e:
            android.view.ViewTreeObserver r4 = r0.getViewTreeObserver()
            r7.M = r4
            if (r3 == 0) goto L_0x003b
            android.view.ViewTreeObserver$OnGlobalLayoutListener r3 = r7.G
            r4.addOnGlobalLayoutListener(r3)
        L_0x003b:
            android.view.View$OnAttachStateChangeListener r3 = r7.H
            r0.addOnAttachStateChangeListener(r3)
            d.b.e.m0 r3 = r7.F
            r3.O = r0
            int r0 = r7.Q
            r3.I = r0
            boolean r0 = r7.O
            r3 = 0
            if (r0 != 0) goto L_0x005b
            d.b.d.i.f r0 = r7.A
            android.content.Context r4 = r7.y
            int r5 = r7.C
            int r0 = d.b.d.i.k.a(r0, r3, r4, r5)
            r7.P = r0
            r7.O = r2
        L_0x005b:
            d.b.e.m0 r0 = r7.F
            int r4 = r7.P
            r0.d(r4)
            d.b.e.m0 r0 = r7.F
            r4 = 2
            android.widget.PopupWindow r0 = r0.Y
            r0.setInputMethodMode(r4)
            d.b.e.m0 r0 = r7.F
            android.graphics.Rect r4 = r7.x
            if (r0 == 0) goto L_0x00c5
            if (r4 == 0) goto L_0x0078
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>(r4)
            goto L_0x0079
        L_0x0078:
            r5 = r3
        L_0x0079:
            r0.W = r5
            d.b.e.m0 r0 = r7.F
            r0.c()
            d.b.e.m0 r0 = r7.F
            d.b.e.f0 r0 = r0.z
            r0.setOnKeyListener(r7)
            boolean r4 = r7.R
            if (r4 == 0) goto L_0x00b7
            d.b.d.i.g r4 = r7.z
            java.lang.CharSequence r4 = r4.m
            if (r4 == 0) goto L_0x00b7
            android.content.Context r4 = r7.y
            android.view.LayoutInflater r4 = android.view.LayoutInflater.from(r4)
            int r5 = androidx.appcompat.R$layout.abc_popup_menu_header_item_layout
            android.view.View r4 = r4.inflate(r5, r0, r1)
            android.widget.FrameLayout r4 = (android.widget.FrameLayout) r4
            r5 = 16908310(0x1020016, float:2.387729E-38)
            android.view.View r5 = r4.findViewById(r5)
            android.widget.TextView r5 = (android.widget.TextView) r5
            if (r5 == 0) goto L_0x00b1
            d.b.d.i.g r6 = r7.z
            java.lang.CharSequence r6 = r6.m
            r5.setText(r6)
        L_0x00b1:
            r4.setEnabled(r1)
            r0.addHeaderView(r4, r3, r1)
        L_0x00b7:
            d.b.e.m0 r0 = r7.F
            d.b.d.i.f r1 = r7.A
            r0.a((android.widget.ListAdapter) r1)
            d.b.e.m0 r0 = r7.F
            r0.c()
            goto L_0x0008
        L_0x00c5:
            throw r3
        L_0x00c6:
            if (r1 == 0) goto L_0x00c9
            return
        L_0x00c9:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "StandardMenuPopup cannot be used without an anchor"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.d.i.q.c():void");
    }

    public Parcelable d() {
        return null;
    }

    public void dismiss() {
        if (a()) {
            this.F.dismiss();
        }
    }

    public ListView g() {
        return this.F.z;
    }

    public void onDismiss() {
        this.N = true;
        this.z.a(true);
        ViewTreeObserver viewTreeObserver = this.M;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.M = this.K.getViewTreeObserver();
            }
            this.M.removeGlobalOnLayoutListener(this.G);
            this.M = null;
        }
        this.K.removeOnAttachStateChangeListener(this.H);
        PopupWindow.OnDismissListener onDismissListener = this.I;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    public boolean a() {
        return !this.N && this.F.a();
    }

    public void a(boolean z2) {
        this.O = false;
        f fVar = this.A;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    public void b(int i2) {
        this.F.C = i2;
    }

    public void a(m.a aVar) {
        this.L = aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x006e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(d.b.d.i.r r10) {
        /*
            r9 = this;
            boolean r0 = r10.hasVisibleItems()
            r1 = 0
            if (r0 == 0) goto L_0x0076
            d.b.d.i.l r0 = new d.b.d.i.l
            android.content.Context r3 = r9.y
            android.view.View r5 = r9.K
            boolean r6 = r9.B
            int r7 = r9.D
            int r8 = r9.E
            r2 = r0
            r4 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            d.b.d.i.m$a r2 = r9.L
            r0.a(r2)
            boolean r2 = d.b.d.i.k.b((d.b.d.i.g) r10)
            r0.f323h = r2
            d.b.d.i.k r3 = r0.f325j
            if (r3 == 0) goto L_0x002a
            r3.b((boolean) r2)
        L_0x002a:
            android.widget.PopupWindow$OnDismissListener r2 = r9.I
            r0.f326k = r2
            r2 = 0
            r9.I = r2
            d.b.d.i.g r2 = r9.z
            r2.a((boolean) r1)
            d.b.e.m0 r2 = r9.F
            int r3 = r2.C
            boolean r4 = r2.F
            if (r4 != 0) goto L_0x0040
            r2 = 0
            goto L_0x0042
        L_0x0040:
            int r2 = r2.D
        L_0x0042:
            int r4 = r9.Q
            android.view.View r5 = r9.J
            int r5 = d.i.i.n.i(r5)
            int r4 = android.view.Gravity.getAbsoluteGravity(r4, r5)
            r4 = r4 & 7
            r5 = 5
            if (r4 != r5) goto L_0x005a
            android.view.View r4 = r9.J
            int r4 = r4.getWidth()
            int r3 = r3 + r4
        L_0x005a:
            boolean r4 = r0.b()
            r5 = 1
            if (r4 == 0) goto L_0x0062
            goto L_0x006b
        L_0x0062:
            android.view.View r4 = r0.f321f
            if (r4 != 0) goto L_0x0068
            r0 = 0
            goto L_0x006c
        L_0x0068:
            r0.a(r3, r2, r5, r5)
        L_0x006b:
            r0 = 1
        L_0x006c:
            if (r0 == 0) goto L_0x0076
            d.b.d.i.m$a r0 = r9.L
            if (r0 == 0) goto L_0x0075
            r0.a(r10)
        L_0x0075:
            return r5
        L_0x0076:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.d.i.q.a(d.b.d.i.r):boolean");
    }

    public void a(g gVar, boolean z2) {
        if (gVar == this.z) {
            dismiss();
            m.a aVar = this.L;
            if (aVar != null) {
                aVar.a(gVar, z2);
            }
        }
    }

    public void a(View view) {
        this.J = view;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.I = onDismissListener;
    }

    public void c(int i2) {
        m0 m0Var = this.F;
        m0Var.D = i2;
        m0Var.F = true;
    }

    public void c(boolean z2) {
        this.R = z2;
    }
}
