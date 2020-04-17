package d.b.d.i;

import android.content.Context;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.View;
import android.widget.PopupWindow;
import d.b.d.i.m;
import d.i.i.n;

public class l {
    public final Context a;
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f318c;

    /* renamed from: d  reason: collision with root package name */
    public final int f319d;

    /* renamed from: e  reason: collision with root package name */
    public final int f320e;

    /* renamed from: f  reason: collision with root package name */
    public View f321f;

    /* renamed from: g  reason: collision with root package name */
    public int f322g = 8388611;

    /* renamed from: h  reason: collision with root package name */
    public boolean f323h;

    /* renamed from: i  reason: collision with root package name */
    public m.a f324i;

    /* renamed from: j  reason: collision with root package name */
    public k f325j;

    /* renamed from: k  reason: collision with root package name */
    public PopupWindow.OnDismissListener f326k;

    /* renamed from: l  reason: collision with root package name */
    public final PopupWindow.OnDismissListener f327l = new a();

    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        public void onDismiss() {
            l.this.c();
        }
    }

    public l(Context context, g gVar, View view, boolean z, int i2, int i3) {
        this.a = context;
        this.b = gVar;
        this.f321f = view;
        this.f318c = z;
        this.f319d = i2;
        this.f320e = i3;
    }

    /* JADX WARNING: type inference failed for: r0v9, types: [d.b.d.i.m, d.b.d.i.k] */
    /* JADX WARNING: type inference failed for: r7v1, types: [d.b.d.i.q] */
    /* JADX WARNING: type inference failed for: r1v13, types: [d.b.d.i.d] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d.b.d.i.k a() {
        /*
            r14 = this;
            d.b.d.i.k r0 = r14.f325j
            if (r0 != 0) goto L_0x0078
            android.content.Context r0 = r14.a
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            android.view.Display r0 = r0.getDefaultDisplay()
            android.graphics.Point r1 = new android.graphics.Point
            r1.<init>()
            r0.getRealSize(r1)
            int r0 = r1.x
            int r1 = r1.y
            int r0 = java.lang.Math.min(r0, r1)
            android.content.Context r1 = r14.a
            android.content.res.Resources r1 = r1.getResources()
            int r2 = androidx.appcompat.R$dimen.abc_cascading_menus_min_smallest_width
            int r1 = r1.getDimensionPixelSize(r2)
            if (r0 < r1) goto L_0x0032
            r0 = 1
            goto L_0x0033
        L_0x0032:
            r0 = 0
        L_0x0033:
            if (r0 == 0) goto L_0x0046
            d.b.d.i.d r0 = new d.b.d.i.d
            android.content.Context r2 = r14.a
            android.view.View r3 = r14.f321f
            int r4 = r14.f319d
            int r5 = r14.f320e
            boolean r6 = r14.f318c
            r1 = r0
            r1.<init>(r2, r3, r4, r5, r6)
            goto L_0x0058
        L_0x0046:
            d.b.d.i.q r0 = new d.b.d.i.q
            android.content.Context r8 = r14.a
            d.b.d.i.g r9 = r14.b
            android.view.View r10 = r14.f321f
            int r11 = r14.f319d
            int r12 = r14.f320e
            boolean r13 = r14.f318c
            r7 = r0
            r7.<init>(r8, r9, r10, r11, r12, r13)
        L_0x0058:
            d.b.d.i.g r1 = r14.b
            r0.a((d.b.d.i.g) r1)
            android.widget.PopupWindow$OnDismissListener r1 = r14.f327l
            r0.a((android.widget.PopupWindow.OnDismissListener) r1)
            android.view.View r1 = r14.f321f
            r0.a((android.view.View) r1)
            d.b.d.i.m$a r1 = r14.f324i
            r0.a((d.b.d.i.m.a) r1)
            boolean r1 = r14.f323h
            r0.b((boolean) r1)
            int r1 = r14.f322g
            r0.a((int) r1)
            r14.f325j = r0
        L_0x0078:
            d.b.d.i.k r0 = r14.f325j
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.d.i.l.a():d.b.d.i.k");
    }

    public boolean b() {
        k kVar = this.f325j;
        return kVar != null && kVar.a();
    }

    public void c() {
        this.f325j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f326k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public boolean d() {
        if (b()) {
            return true;
        }
        if (this.f321f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public final void a(int i2, int i3, boolean z, boolean z2) {
        k a2 = a();
        a2.c(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f322g, n.i(this.f321f)) & 7) == 5) {
                i2 -= this.f321f.getWidth();
            }
            a2.b(i2);
            a2.c(i3);
            int i4 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a2.x = new Rect(i2 - i4, i3 - i4, i2 + i4, i3 + i4);
        }
        a2.c();
    }

    public void a(m.a aVar) {
        this.f324i = aVar;
        k kVar = this.f325j;
        if (kVar != null) {
            kVar.a(aVar);
        }
    }
}
