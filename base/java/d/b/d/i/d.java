package d.b.d.i;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.transition.Transition;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import d.b.d.i.m;
import d.b.e.l0;
import d.b.e.m0;
import d.i.i.n;
import java.util.ArrayList;
import java.util.List;

public final class d extends k implements m, View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int Y = R$layout.abc_cascading_menu_item_layout;
    public final int A;
    public final int B;
    public final boolean C;
    public final Handler D;
    public final List<g> E = new ArrayList();
    public final List<C0013d> F = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener G = new a();
    public final View.OnAttachStateChangeListener H = new b();
    public final l0 I = new c();
    public int J;
    public int K;
    public View L;
    public View M;
    public int N;
    public boolean O;
    public boolean P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public m.a U;
    public ViewTreeObserver V;
    public PopupWindow.OnDismissListener W;
    public boolean X;
    public final Context y;
    public final int z;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        public void onGlobalLayout() {
            if (d.this.a() && d.this.F.size() > 0 && !d.this.F.get(0).a.X) {
                View view = d.this.M;
                if (view == null || !view.isShown()) {
                    d.this.dismiss();
                    return;
                }
                for (C0013d dVar : d.this.F) {
                    dVar.a.c();
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
            ViewTreeObserver viewTreeObserver = d.this.V;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.V = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.V.removeGlobalOnLayoutListener(dVar.G);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public class c implements l0 {

        public class a implements Runnable {
            public final /* synthetic */ C0013d x;
            public final /* synthetic */ MenuItem y;
            public final /* synthetic */ g z;

            public a(C0013d dVar, MenuItem menuItem, g gVar) {
                this.x = dVar;
                this.y = menuItem;
                this.z = gVar;
            }

            public void run() {
                C0013d dVar = this.x;
                if (dVar != null) {
                    d.this.X = true;
                    dVar.b.a(false);
                    d.this.X = false;
                }
                if (this.y.isEnabled() && this.y.hasSubMenu()) {
                    this.z.a(this.y, 4);
                }
            }
        }

        public c() {
        }

        public void a(g gVar, MenuItem menuItem) {
            C0013d dVar = null;
            d.this.D.removeCallbacksAndMessages((Object) null);
            int size = d.this.F.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (gVar == d.this.F.get(i2).b) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 != -1) {
                int i3 = i2 + 1;
                if (i3 < d.this.F.size()) {
                    dVar = d.this.F.get(i3);
                }
                d.this.D.postAtTime(new a(dVar, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
            }
        }

        public void b(g gVar, MenuItem menuItem) {
            d.this.D.removeCallbacksAndMessages(gVar);
        }
    }

    /* renamed from: d.b.d.i.d$d  reason: collision with other inner class name */
    public static class C0013d {
        public final m0 a;
        public final g b;

        /* renamed from: c  reason: collision with root package name */
        public final int f293c;

        public C0013d(m0 m0Var, g gVar, int i2) {
            this.a = m0Var;
            this.b = gVar;
            this.f293c = i2;
        }
    }

    public d(Context context, View view, int i2, int i3, boolean z2) {
        int i4 = 0;
        this.J = 0;
        this.K = 0;
        this.y = context;
        this.L = view;
        this.A = i2;
        this.B = i3;
        this.C = z2;
        this.S = false;
        this.N = n.i(view) != 1 ? 1 : i4;
        Resources resources = context.getResources();
        this.z = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.D = new Handler();
    }

    public void a(Parcelable parcelable) {
    }

    public void a(g gVar) {
        gVar.a((m) this, this.y);
        if (a()) {
            c(gVar);
        } else {
            this.E.add(gVar);
        }
    }

    public void b(boolean z2) {
        this.S = z2;
    }

    public boolean b() {
        return false;
    }

    public void c() {
        if (!a()) {
            for (g c2 : this.E) {
                c(c2);
            }
            this.E.clear();
            View view = this.L;
            this.M = view;
            if (view != null) {
                boolean z2 = this.V == null;
                ViewTreeObserver viewTreeObserver = this.M.getViewTreeObserver();
                this.V = viewTreeObserver;
                if (z2) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.G);
                }
                this.M.addOnAttachStateChangeListener(this.H);
            }
        }
    }

    public Parcelable d() {
        return null;
    }

    public void dismiss() {
        int size = this.F.size();
        if (size > 0) {
            C0013d[] dVarArr = (C0013d[]) this.F.toArray(new C0013d[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                C0013d dVar = dVarArr[i2];
                if (dVar.a.a()) {
                    dVar.a.dismiss();
                }
            }
        }
    }

    public boolean e() {
        return false;
    }

    public ListView g() {
        if (this.F.isEmpty()) {
            return null;
        }
        List<C0013d> list = this.F;
        return list.get(list.size() - 1).a.z;
    }

    public void onDismiss() {
        C0013d dVar;
        int size = this.F.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dVar = null;
                break;
            }
            dVar = this.F.get(i2);
            if (!dVar.a.a()) {
                break;
            }
            i2++;
        }
        if (dVar != null) {
            dVar.b.a(false);
        }
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    public void b(int i2) {
        this.O = true;
        this.Q = i2;
    }

    public boolean a() {
        return this.F.size() > 0 && this.F.get(0).a.a();
    }

    public void a(boolean z2) {
        for (C0013d dVar : this.F) {
            ListAdapter adapter = dVar.a.z.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((f) adapter).notifyDataSetChanged();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0149, code lost:
        if (((r9.getWidth() + r11[0]) + r4) > r10.right) goto L_0x0153;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x014f, code lost:
        if ((r11[0] - r4) < 0) goto L_0x0151;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0153, code lost:
        r9 = 0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00e9  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01b8  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x01f4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(d.b.d.i.g r17) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            android.content.Context r2 = r0.y
            android.view.LayoutInflater r2 = android.view.LayoutInflater.from(r2)
            d.b.d.i.f r3 = new d.b.d.i.f
            boolean r4 = r0.C
            int r5 = Y
            r3.<init>(r1, r2, r4, r5)
            boolean r4 = r16.a()
            r5 = 1
            if (r4 != 0) goto L_0x0021
            boolean r4 = r0.S
            if (r4 == 0) goto L_0x0021
            r3.z = r5
            goto L_0x002d
        L_0x0021:
            boolean r4 = r16.a()
            if (r4 == 0) goto L_0x002d
            boolean r4 = d.b.d.i.k.b((d.b.d.i.g) r17)
            r3.z = r4
        L_0x002d:
            android.content.Context r4 = r0.y
            int r6 = r0.z
            r7 = 0
            int r4 = d.b.d.i.k.a(r3, r7, r4, r6)
            d.b.e.m0 r6 = new d.b.e.m0
            android.content.Context r8 = r0.y
            int r9 = r0.A
            int r10 = r0.B
            r6.<init>(r8, r7, r9, r10)
            d.b.e.l0 r8 = r0.I
            r6.c0 = r8
            r6.P = r0
            android.widget.PopupWindow r8 = r6.Y
            r8.setOnDismissListener(r0)
            android.view.View r8 = r0.L
            r6.O = r8
            int r8 = r0.K
            r6.I = r8
            r6.a((boolean) r5)
            android.widget.PopupWindow r8 = r6.Y
            r9 = 2
            r8.setInputMethodMode(r9)
            r6.a((android.widget.ListAdapter) r3)
            r6.d(r4)
            int r3 = r0.K
            r6.I = r3
            java.util.List<d.b.d.i.d$d> r3 = r0.F
            int r3 = r3.size()
            r8 = 0
            if (r3 <= 0) goto L_0x00e5
            java.util.List<d.b.d.i.d$d> r3 = r0.F
            int r10 = r3.size()
            int r10 = r10 - r5
            java.lang.Object r3 = r3.get(r10)
            d.b.d.i.d$d r3 = (d.b.d.i.d.C0013d) r3
            d.b.d.i.g r10 = r3.b
            int r11 = r10.size()
            r12 = 0
        L_0x0084:
            if (r12 >= r11) goto L_0x009a
            android.view.MenuItem r13 = r10.getItem(r12)
            boolean r14 = r13.hasSubMenu()
            if (r14 == 0) goto L_0x0097
            android.view.SubMenu r14 = r13.getSubMenu()
            if (r1 != r14) goto L_0x0097
            goto L_0x009b
        L_0x0097:
            int r12 = r12 + 1
            goto L_0x0084
        L_0x009a:
            r13 = r7
        L_0x009b:
            if (r13 != 0) goto L_0x009e
            goto L_0x00e7
        L_0x009e:
            d.b.e.m0 r10 = r3.a
            d.b.e.f0 r10 = r10.z
            android.widget.ListAdapter r11 = r10.getAdapter()
            boolean r12 = r11 instanceof android.widget.HeaderViewListAdapter
            if (r12 == 0) goto L_0x00b7
            android.widget.HeaderViewListAdapter r11 = (android.widget.HeaderViewListAdapter) r11
            int r12 = r11.getHeadersCount()
            android.widget.ListAdapter r11 = r11.getWrappedAdapter()
            d.b.d.i.f r11 = (d.b.d.i.f) r11
            goto L_0x00ba
        L_0x00b7:
            d.b.d.i.f r11 = (d.b.d.i.f) r11
            r12 = 0
        L_0x00ba:
            int r14 = r11.getCount()
            r15 = 0
        L_0x00bf:
            r9 = -1
            if (r15 >= r14) goto L_0x00cd
            d.b.d.i.i r7 = r11.getItem((int) r15)
            if (r13 != r7) goto L_0x00c9
            goto L_0x00ce
        L_0x00c9:
            int r15 = r15 + 1
            r7 = 0
            goto L_0x00bf
        L_0x00cd:
            r15 = -1
        L_0x00ce:
            if (r15 != r9) goto L_0x00d1
            goto L_0x00e6
        L_0x00d1:
            int r15 = r15 + r12
            int r7 = r10.getFirstVisiblePosition()
            int r15 = r15 - r7
            if (r15 < 0) goto L_0x00e6
            int r7 = r10.getChildCount()
            if (r15 < r7) goto L_0x00e0
            goto L_0x00e6
        L_0x00e0:
            android.view.View r7 = r10.getChildAt(r15)
            goto L_0x00e7
        L_0x00e5:
            r3 = 0
        L_0x00e6:
            r7 = 0
        L_0x00e7:
            if (r7 == 0) goto L_0x01b8
            int r9 = android.os.Build.VERSION.SDK_INT
            r10 = 28
            if (r9 > r10) goto L_0x0109
            java.lang.reflect.Method r9 = d.b.e.m0.d0
            if (r9 == 0) goto L_0x010e
            android.widget.PopupWindow r10 = r6.Y     // Catch:{ Exception -> 0x0101 }
            java.lang.Object[] r11 = new java.lang.Object[r5]     // Catch:{ Exception -> 0x0101 }
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r8)     // Catch:{ Exception -> 0x0101 }
            r11[r8] = r12     // Catch:{ Exception -> 0x0101 }
            r9.invoke(r10, r11)     // Catch:{ Exception -> 0x0101 }
            goto L_0x010e
        L_0x0101:
            java.lang.String r9 = "MenuPopupWindow"
            java.lang.String r10 = "Could not invoke setTouchModal() on PopupWindow. Oh well."
            android.util.Log.i(r9, r10)
            goto L_0x010e
        L_0x0109:
            android.widget.PopupWindow r9 = r6.Y
            r9.setTouchModal(r8)
        L_0x010e:
            int r9 = android.os.Build.VERSION.SDK_INT
            r10 = 23
            if (r9 < r10) goto L_0x011a
            android.widget.PopupWindow r9 = r6.Y
            r10 = 0
            r9.setEnterTransition(r10)
        L_0x011a:
            java.util.List<d.b.d.i.d$d> r9 = r0.F
            int r10 = r9.size()
            int r10 = r10 - r5
            java.lang.Object r9 = r9.get(r10)
            d.b.d.i.d$d r9 = (d.b.d.i.d.C0013d) r9
            d.b.e.m0 r9 = r9.a
            d.b.e.f0 r9 = r9.z
            r10 = 2
            int[] r11 = new int[r10]
            r9.getLocationOnScreen(r11)
            android.graphics.Rect r10 = new android.graphics.Rect
            r10.<init>()
            android.view.View r12 = r0.M
            r12.getWindowVisibleDisplayFrame(r10)
            int r12 = r0.N
            if (r12 != r5) goto L_0x014c
            r11 = r11[r8]
            int r9 = r9.getWidth()
            int r9 = r9 + r11
            int r9 = r9 + r4
            int r10 = r10.right
            if (r9 <= r10) goto L_0x0151
            goto L_0x0153
        L_0x014c:
            r9 = r11[r8]
            int r9 = r9 - r4
            if (r9 >= 0) goto L_0x0153
        L_0x0151:
            r9 = 1
            goto L_0x0154
        L_0x0153:
            r9 = 0
        L_0x0154:
            if (r9 != r5) goto L_0x0158
            r10 = 1
            goto L_0x0159
        L_0x0158:
            r10 = 0
        L_0x0159:
            r0.N = r9
            int r9 = android.os.Build.VERSION.SDK_INT
            r11 = 26
            r12 = 5
            if (r9 < r11) goto L_0x0167
            r6.O = r7
            r9 = 0
            r13 = 0
            goto L_0x0198
        L_0x0167:
            r9 = 2
            int[] r11 = new int[r9]
            android.view.View r13 = r0.L
            r13.getLocationOnScreen(r11)
            int[] r9 = new int[r9]
            r7.getLocationOnScreen(r9)
            int r13 = r0.K
            r13 = r13 & 7
            if (r13 != r12) goto L_0x018e
            r13 = r11[r8]
            android.view.View r14 = r0.L
            int r14 = r14.getWidth()
            int r14 = r14 + r13
            r11[r8] = r14
            r13 = r9[r8]
            int r14 = r7.getWidth()
            int r14 = r14 + r13
            r9[r8] = r14
        L_0x018e:
            r13 = r9[r8]
            r14 = r11[r8]
            int r13 = r13 - r14
            r9 = r9[r5]
            r11 = r11[r5]
            int r9 = r9 - r11
        L_0x0198:
            int r11 = r0.K
            r11 = r11 & r12
            if (r11 != r12) goto L_0x01a5
            if (r10 == 0) goto L_0x01a0
            goto L_0x01ab
        L_0x01a0:
            int r4 = r7.getWidth()
            goto L_0x01ad
        L_0x01a5:
            if (r10 == 0) goto L_0x01ad
            int r4 = r7.getWidth()
        L_0x01ab:
            int r13 = r13 + r4
            goto L_0x01ae
        L_0x01ad:
            int r13 = r13 - r4
        L_0x01ae:
            r6.C = r13
            r6.H = r5
            r6.G = r5
            r6.b(r9)
            goto L_0x01d6
        L_0x01b8:
            boolean r4 = r0.O
            if (r4 == 0) goto L_0x01c0
            int r4 = r0.Q
            r6.C = r4
        L_0x01c0:
            boolean r4 = r0.P
            if (r4 == 0) goto L_0x01c9
            int r4 = r0.R
            r6.b(r4)
        L_0x01c9:
            android.graphics.Rect r4 = r0.x
            if (r4 == 0) goto L_0x01d3
            android.graphics.Rect r10 = new android.graphics.Rect
            r10.<init>(r4)
            goto L_0x01d4
        L_0x01d3:
            r10 = 0
        L_0x01d4:
            r6.W = r10
        L_0x01d6:
            d.b.d.i.d$d r4 = new d.b.d.i.d$d
            int r5 = r0.N
            r4.<init>(r6, r1, r5)
            java.util.List<d.b.d.i.d$d> r5 = r0.F
            r5.add(r4)
            r6.c()
            d.b.e.f0 r4 = r6.z
            r4.setOnKeyListener(r0)
            if (r3 != 0) goto L_0x0214
            boolean r3 = r0.T
            if (r3 == 0) goto L_0x0214
            java.lang.CharSequence r3 = r1.m
            if (r3 == 0) goto L_0x0214
            int r3 = androidx.appcompat.R$layout.abc_popup_menu_header_item_layout
            android.view.View r2 = r2.inflate(r3, r4, r8)
            android.widget.FrameLayout r2 = (android.widget.FrameLayout) r2
            r3 = 16908310(0x1020016, float:2.387729E-38)
            android.view.View r3 = r2.findViewById(r3)
            android.widget.TextView r3 = (android.widget.TextView) r3
            r2.setEnabled(r8)
            java.lang.CharSequence r1 = r1.m
            r3.setText(r1)
            r1 = 0
            r4.addHeaderView(r2, r1, r8)
            r6.c()
        L_0x0214:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.d.i.d.c(d.b.d.i.g):void");
    }

    public void a(m.a aVar) {
        this.U = aVar;
    }

    public boolean a(r rVar) {
        for (C0013d next : this.F) {
            if (rVar == next.b) {
                next.a.z.requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        rVar.a((m) this, this.y);
        if (a()) {
            c((g) rVar);
        } else {
            this.E.add(rVar);
        }
        m.a aVar = this.U;
        if (aVar != null) {
            aVar.a(rVar);
        }
        return true;
    }

    public void a(g gVar, boolean z2) {
        int size = this.F.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (gVar == this.F.get(i2).b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int i3 = i2 + 1;
            if (i3 < this.F.size()) {
                this.F.get(i3).b.a(false);
            }
            C0013d remove = this.F.remove(i2);
            remove.b.a((m) this);
            if (this.X) {
                m0 m0Var = remove.a;
                if (m0Var != null) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        m0Var.Y.setExitTransition((Transition) null);
                    }
                    remove.a.Y.setAnimationStyle(0);
                } else {
                    throw null;
                }
            }
            remove.a.dismiss();
            int size2 = this.F.size();
            if (size2 > 0) {
                this.N = this.F.get(size2 - 1).f293c;
            } else {
                this.N = n.i(this.L) == 1 ? 0 : 1;
            }
            if (size2 == 0) {
                dismiss();
                m.a aVar = this.U;
                if (aVar != null) {
                    aVar.a(gVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.V;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.V.removeGlobalOnLayoutListener(this.G);
                    }
                    this.V = null;
                }
                this.M.removeOnAttachStateChangeListener(this.H);
                this.W.onDismiss();
            } else if (z2) {
                this.F.get(0).b.a(false);
            }
        }
    }

    public void a(int i2) {
        if (this.J != i2) {
            this.J = i2;
            this.K = Gravity.getAbsoluteGravity(i2, n.i(this.L));
        }
    }

    public void a(View view) {
        if (this.L != view) {
            this.L = view;
            this.K = Gravity.getAbsoluteGravity(this.J, n.i(view));
        }
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.W = onDismissListener;
    }

    public void c(int i2) {
        this.P = true;
        this.R = i2;
    }

    public void c(boolean z2) {
        this.T = z2;
    }
}
