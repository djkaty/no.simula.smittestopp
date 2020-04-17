package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import com.microsoft.azure.storage.Constants;
import d.b.a.a;
import d.b.d.i.g;
import d.b.d.i.i;
import d.b.d.i.m;
import d.b.d.i.r;
import d.b.e.d0;
import d.b.e.d1;
import d.b.e.l;
import d.b.e.p0;
import d.b.e.x0;
import d.b.e.z;
import d.b.e.z0;
import d.i.i.n;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup {
    public ImageButton A;
    public ImageView B;
    public Drawable C;
    public CharSequence D;
    public ImageButton E;
    public View F;
    public Context G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public p0 Q;
    public int R;
    public int S;
    public int T;
    public CharSequence U;
    public CharSequence V;
    public ColorStateList W;
    public ColorStateList a0;
    public boolean b0;
    public boolean c0;
    public final ArrayList<View> d0;
    public final ArrayList<View> e0;
    public final int[] f0;
    public f g0;
    public final ActionMenuView.e h0;
    public z0 i0;
    public d.b.e.c j0;
    public d k0;
    public m.a l0;
    public g.a m0;
    public boolean n0;
    public final Runnable o0;
    public ActionMenuView x;
    public TextView y;
    public TextView z;

    public class a implements ActionMenuView.e {
        public a() {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            Toolbar.this.g();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        public void onClick(View view) {
            d dVar = Toolbar.this.k0;
            i iVar = dVar == null ? null : dVar.y;
            if (iVar != null) {
                iVar.collapseActionView();
            }
        }
    }

    public interface f {
    }

    public Toolbar(Context context) {
        this(context, (AttributeSet) null);
    }

    private MenuInflater getMenuInflater() {
        return new d.b.d.f(getContext());
    }

    public void a() {
        if (this.E == null) {
            l lVar = new l(getContext(), (AttributeSet) null, R$attr.toolbarNavigationButtonStyle);
            this.E = lVar;
            lVar.setImageDrawable(this.C);
            this.E.setContentDescription(this.D);
            e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = 8388611 | (this.K & 112);
            generateDefaultLayoutParams.b = 2;
            this.E.setLayoutParams(generateDefaultLayoutParams);
            this.E.setOnClickListener(new c());
        }
    }

    public final int b(View view, int i2, int[] iArr, int i3) {
        e eVar = (e) view.getLayoutParams();
        int i4 = eVar.rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + eVar.leftMargin);
    }

    public final void c() {
        d();
        ActionMenuView actionMenuView = this.x;
        if (actionMenuView.M == null) {
            d.b.d.i.g gVar = (d.b.d.i.g) actionMenuView.getMenu();
            if (this.k0 == null) {
                this.k0 = new d();
            }
            this.x.setExpandedActionViewsExclusive(true);
            gVar.a((m) this.k0, this.G);
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    public final void d() {
        if (this.x == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.x = actionMenuView;
            actionMenuView.setPopupTheme(this.H);
            this.x.setOnMenuItemClickListener(this.h0);
            ActionMenuView actionMenuView2 = this.x;
            m.a aVar = this.l0;
            g.a aVar2 = this.m0;
            actionMenuView2.R = aVar;
            actionMenuView2.S = aVar2;
            e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = 8388613 | (this.K & 112);
            this.x.setLayoutParams(generateDefaultLayoutParams);
            a((View) this.x, false);
        }
    }

    public final void e() {
        if (this.A == null) {
            this.A = new l(getContext(), (AttributeSet) null, R$attr.toolbarNavigationButtonStyle);
            e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = 8388611 | (this.K & 112);
            this.A.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    public boolean f() {
        ActionMenuView actionMenuView = this.x;
        if (actionMenuView != null) {
            d.b.e.c cVar = actionMenuView.Q;
            if (cVar != null && cVar.f()) {
                return true;
            }
        }
        return false;
    }

    public boolean g() {
        ActionMenuView actionMenuView = this.x;
        if (actionMenuView != null) {
            d.b.e.c cVar = actionMenuView.Q;
            if (cVar != null && cVar.g()) {
                return true;
            }
        }
        return false;
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.E;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.E;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        p0 p0Var = this.Q;
        if (p0Var != null) {
            return p0Var.f372g ? p0Var.a : p0Var.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.S;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        p0 p0Var = this.Q;
        if (p0Var != null) {
            return p0Var.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        p0 p0Var = this.Q;
        if (p0Var != null) {
            return p0Var.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        p0 p0Var = this.Q;
        if (p0Var != null) {
            return p0Var.f372g ? p0Var.b : p0Var.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.R;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0005, code lost:
        r0 = r0.M;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getCurrentContentInsetEnd() {
        /*
            r3 = this;
            androidx.appcompat.widget.ActionMenuView r0 = r3.x
            r1 = 0
            if (r0 == 0) goto L_0x0011
            d.b.d.i.g r0 = r0.M
            if (r0 == 0) goto L_0x0011
            boolean r0 = r0.hasVisibleItems()
            if (r0 == 0) goto L_0x0011
            r0 = 1
            goto L_0x0012
        L_0x0011:
            r0 = 0
        L_0x0012:
            if (r0 == 0) goto L_0x0023
            int r0 = r3.getContentInsetEnd()
            int r2 = r3.S
            int r1 = java.lang.Math.max(r2, r1)
            int r0 = java.lang.Math.max(r0, r1)
            goto L_0x0027
        L_0x0023:
            int r0 = r3.getContentInsetEnd()
        L_0x0027:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.getCurrentContentInsetEnd():int");
    }

    public int getCurrentContentInsetLeft() {
        if (n.i(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (n.i(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.R, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.B;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.B;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        c();
        return this.x.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.A;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.A;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public d.b.e.c getOuterActionMenuPresenter() {
        return this.j0;
    }

    public Drawable getOverflowIcon() {
        c();
        return this.x.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.G;
    }

    public int getPopupTheme() {
        return this.H;
    }

    public CharSequence getSubtitle() {
        return this.V;
    }

    public final TextView getSubtitleTextView() {
        return this.z;
    }

    public CharSequence getTitle() {
        return this.U;
    }

    public int getTitleMarginBottom() {
        return this.P;
    }

    public int getTitleMarginEnd() {
        return this.N;
    }

    public int getTitleMarginStart() {
        return this.M;
    }

    public int getTitleMarginTop() {
        return this.O;
    }

    public final TextView getTitleTextView() {
        return this.y;
    }

    public d0 getWrapper() {
        if (this.i0 == null) {
            this.i0 = new z0(this, true);
        }
        return this.i0;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.o0);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.c0 = false;
        }
        if (!this.c0) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.c0 = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.c0 = false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x029f A[LOOP:0: B:101:0x029d->B:102:0x029f, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x02c1 A[LOOP:1: B:104:0x02bf->B:105:0x02c1, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x02e6 A[LOOP:2: B:107:0x02e4->B:108:0x02e6, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x0327  */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x0338 A[LOOP:3: B:115:0x0336->B:116:0x0338, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0100  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x012f  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0167  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x01a5  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01b6  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0225  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            r19 = this;
            r0 = r19
            int r1 = d.i.i.n.i(r19)
            r2 = 1
            r3 = 0
            if (r1 != r2) goto L_0x000c
            r1 = 1
            goto L_0x000d
        L_0x000c:
            r1 = 0
        L_0x000d:
            int r4 = r19.getWidth()
            int r5 = r19.getHeight()
            int r6 = r19.getPaddingLeft()
            int r7 = r19.getPaddingRight()
            int r8 = r19.getPaddingTop()
            int r9 = r19.getPaddingBottom()
            int r10 = r4 - r7
            int[] r11 = r0.f0
            r11[r2] = r3
            r11[r3] = r3
            int r12 = r19.getMinimumHeight()
            if (r12 < 0) goto L_0x003a
            int r13 = r24 - r22
            int r12 = java.lang.Math.min(r12, r13)
            goto L_0x003b
        L_0x003a:
            r12 = 0
        L_0x003b:
            android.widget.ImageButton r13 = r0.A
            boolean r13 = r0.d(r13)
            if (r13 == 0) goto L_0x0055
            if (r1 == 0) goto L_0x004e
            android.widget.ImageButton r13 = r0.A
            int r13 = r0.b(r13, r10, r11, r12)
            r14 = r13
            r13 = r6
            goto L_0x0057
        L_0x004e:
            android.widget.ImageButton r13 = r0.A
            int r13 = r0.a(r13, r6, r11, r12)
            goto L_0x0056
        L_0x0055:
            r13 = r6
        L_0x0056:
            r14 = r10
        L_0x0057:
            android.widget.ImageButton r15 = r0.E
            boolean r15 = r0.d(r15)
            if (r15 == 0) goto L_0x006e
            if (r1 == 0) goto L_0x0068
            android.widget.ImageButton r15 = r0.E
            int r14 = r0.b(r15, r14, r11, r12)
            goto L_0x006e
        L_0x0068:
            android.widget.ImageButton r15 = r0.E
            int r13 = r0.a(r15, r13, r11, r12)
        L_0x006e:
            androidx.appcompat.widget.ActionMenuView r15 = r0.x
            boolean r15 = r0.d(r15)
            if (r15 == 0) goto L_0x0085
            if (r1 == 0) goto L_0x007f
            androidx.appcompat.widget.ActionMenuView r15 = r0.x
            int r13 = r0.a(r15, r13, r11, r12)
            goto L_0x0085
        L_0x007f:
            androidx.appcompat.widget.ActionMenuView r15 = r0.x
            int r14 = r0.b(r15, r14, r11, r12)
        L_0x0085:
            int r15 = r19.getCurrentContentInsetLeft()
            int r16 = r19.getCurrentContentInsetRight()
            int r2 = r15 - r13
            int r2 = java.lang.Math.max(r3, r2)
            r11[r3] = r2
            int r2 = r10 - r14
            int r2 = r16 - r2
            int r2 = java.lang.Math.max(r3, r2)
            r17 = 1
            r11[r17] = r2
            int r2 = java.lang.Math.max(r13, r15)
            int r10 = r10 - r16
            int r10 = java.lang.Math.min(r14, r10)
            android.view.View r13 = r0.F
            boolean r13 = r0.d(r13)
            if (r13 == 0) goto L_0x00c2
            if (r1 == 0) goto L_0x00bc
            android.view.View r13 = r0.F
            int r10 = r0.b(r13, r10, r11, r12)
            goto L_0x00c2
        L_0x00bc:
            android.view.View r13 = r0.F
            int r2 = r0.a(r13, r2, r11, r12)
        L_0x00c2:
            android.widget.ImageView r13 = r0.B
            boolean r13 = r0.d(r13)
            if (r13 == 0) goto L_0x00d9
            if (r1 == 0) goto L_0x00d3
            android.widget.ImageView r13 = r0.B
            int r10 = r0.b(r13, r10, r11, r12)
            goto L_0x00d9
        L_0x00d3:
            android.widget.ImageView r13 = r0.B
            int r2 = r0.a(r13, r2, r11, r12)
        L_0x00d9:
            android.widget.TextView r13 = r0.y
            boolean r13 = r0.d(r13)
            android.widget.TextView r14 = r0.z
            boolean r14 = r0.d(r14)
            if (r13 == 0) goto L_0x0100
            android.widget.TextView r15 = r0.y
            android.view.ViewGroup$LayoutParams r15 = r15.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r15 = (androidx.appcompat.widget.Toolbar.e) r15
            int r3 = r15.topMargin
            r23 = r7
            android.widget.TextView r7 = r0.y
            int r7 = r7.getMeasuredHeight()
            int r7 = r7 + r3
            int r3 = r15.bottomMargin
            int r7 = r7 + r3
            r3 = 0
            int r7 = r7 + r3
            goto L_0x0103
        L_0x0100:
            r23 = r7
            r7 = 0
        L_0x0103:
            if (r14 == 0) goto L_0x011d
            android.widget.TextView r3 = r0.z
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r3 = (androidx.appcompat.widget.Toolbar.e) r3
            int r15 = r3.topMargin
            r16 = r4
            android.widget.TextView r4 = r0.z
            int r4 = r4.getMeasuredHeight()
            int r4 = r4 + r15
            int r3 = r3.bottomMargin
            int r4 = r4 + r3
            int r7 = r7 + r4
            goto L_0x011f
        L_0x011d:
            r16 = r4
        L_0x011f:
            if (r13 != 0) goto L_0x012a
            if (r14 == 0) goto L_0x0124
            goto L_0x012a
        L_0x0124:
            r18 = r6
            r22 = r12
            goto L_0x028f
        L_0x012a:
            if (r13 == 0) goto L_0x012f
            android.widget.TextView r3 = r0.y
            goto L_0x0131
        L_0x012f:
            android.widget.TextView r3 = r0.z
        L_0x0131:
            if (r14 == 0) goto L_0x0136
            android.widget.TextView r4 = r0.z
            goto L_0x0138
        L_0x0136:
            android.widget.TextView r4 = r0.y
        L_0x0138:
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r3 = (androidx.appcompat.widget.Toolbar.e) r3
            android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r4 = (androidx.appcompat.widget.Toolbar.e) r4
            if (r13 == 0) goto L_0x014e
            android.widget.TextView r15 = r0.y
            int r15 = r15.getMeasuredWidth()
            if (r15 > 0) goto L_0x0158
        L_0x014e:
            if (r14 == 0) goto L_0x015b
            android.widget.TextView r15 = r0.z
            int r15 = r15.getMeasuredWidth()
            if (r15 <= 0) goto L_0x015b
        L_0x0158:
            r17 = 1
            goto L_0x015d
        L_0x015b:
            r17 = 0
        L_0x015d:
            int r15 = r0.T
            r15 = r15 & 112(0x70, float:1.57E-43)
            r18 = r6
            r6 = 48
            if (r15 == r6) goto L_0x01a5
            r6 = 80
            if (r15 == r6) goto L_0x0197
            int r6 = r5 - r8
            int r6 = r6 - r9
            int r6 = r6 - r7
            int r6 = r6 / 2
            int r15 = r3.topMargin
            r22 = r12
            int r12 = r0.O
            r24 = r2
            int r2 = r15 + r12
            if (r6 >= r2) goto L_0x0180
            int r6 = r15 + r12
            goto L_0x0195
        L_0x0180:
            int r5 = r5 - r9
            int r5 = r5 - r7
            int r5 = r5 - r6
            int r5 = r5 - r8
            int r2 = r3.bottomMargin
            int r3 = r0.P
            int r2 = r2 + r3
            if (r5 >= r2) goto L_0x0195
            int r2 = r4.bottomMargin
            int r2 = r2 + r3
            int r2 = r2 - r5
            int r6 = r6 - r2
            r2 = 0
            int r6 = java.lang.Math.max(r2, r6)
        L_0x0195:
            int r8 = r8 + r6
            goto L_0x01b4
        L_0x0197:
            r24 = r2
            r22 = r12
            int r5 = r5 - r9
            int r2 = r4.bottomMargin
            int r5 = r5 - r2
            int r2 = r0.P
            int r5 = r5 - r2
            int r8 = r5 - r7
            goto L_0x01b4
        L_0x01a5:
            r24 = r2
            r22 = r12
            int r2 = r19.getPaddingTop()
            int r3 = r3.topMargin
            int r2 = r2 + r3
            int r3 = r0.O
            int r8 = r2 + r3
        L_0x01b4:
            if (r1 == 0) goto L_0x0225
            if (r17 == 0) goto L_0x01bb
            int r1 = r0.M
            goto L_0x01bc
        L_0x01bb:
            r1 = 0
        L_0x01bc:
            r2 = 1
            r3 = r11[r2]
            int r1 = r1 - r3
            r3 = 0
            int r4 = java.lang.Math.max(r3, r1)
            int r10 = r10 - r4
            int r1 = -r1
            int r1 = java.lang.Math.max(r3, r1)
            r11[r2] = r1
            if (r13 == 0) goto L_0x01f3
            android.widget.TextView r1 = r0.y
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r1 = (androidx.appcompat.widget.Toolbar.e) r1
            android.widget.TextView r2 = r0.y
            int r2 = r2.getMeasuredWidth()
            int r2 = r10 - r2
            android.widget.TextView r3 = r0.y
            int r3 = r3.getMeasuredHeight()
            int r3 = r3 + r8
            android.widget.TextView r4 = r0.y
            r4.layout(r2, r8, r10, r3)
            int r4 = r0.N
            int r2 = r2 - r4
            int r1 = r1.bottomMargin
            int r8 = r3 + r1
            goto L_0x01f4
        L_0x01f3:
            r2 = r10
        L_0x01f4:
            if (r14 == 0) goto L_0x021a
            android.widget.TextView r1 = r0.z
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r1 = (androidx.appcompat.widget.Toolbar.e) r1
            int r1 = r1.topMargin
            int r8 = r8 + r1
            android.widget.TextView r1 = r0.z
            int r1 = r1.getMeasuredWidth()
            int r1 = r10 - r1
            android.widget.TextView r3 = r0.z
            int r3 = r3.getMeasuredHeight()
            int r3 = r3 + r8
            android.widget.TextView r4 = r0.z
            r4.layout(r1, r8, r10, r3)
            int r1 = r0.N
            int r1 = r10 - r1
            goto L_0x021b
        L_0x021a:
            r1 = r10
        L_0x021b:
            if (r17 == 0) goto L_0x0222
            int r1 = java.lang.Math.min(r2, r1)
            r10 = r1
        L_0x0222:
            r2 = r24
            goto L_0x028f
        L_0x0225:
            if (r17 == 0) goto L_0x022a
            int r1 = r0.M
            goto L_0x022b
        L_0x022a:
            r1 = 0
        L_0x022b:
            r2 = 0
            r3 = r11[r2]
            int r1 = r1 - r3
            int r3 = java.lang.Math.max(r2, r1)
            int r3 = r3 + r24
            int r1 = -r1
            int r1 = java.lang.Math.max(r2, r1)
            r11[r2] = r1
            if (r13 == 0) goto L_0x0261
            android.widget.TextView r1 = r0.y
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r1 = (androidx.appcompat.widget.Toolbar.e) r1
            android.widget.TextView r2 = r0.y
            int r2 = r2.getMeasuredWidth()
            int r2 = r2 + r3
            android.widget.TextView r4 = r0.y
            int r4 = r4.getMeasuredHeight()
            int r4 = r4 + r8
            android.widget.TextView r5 = r0.y
            r5.layout(r3, r8, r2, r4)
            int r5 = r0.N
            int r2 = r2 + r5
            int r1 = r1.bottomMargin
            int r8 = r4 + r1
            goto L_0x0262
        L_0x0261:
            r2 = r3
        L_0x0262:
            if (r14 == 0) goto L_0x0286
            android.widget.TextView r1 = r0.z
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r1 = (androidx.appcompat.widget.Toolbar.e) r1
            int r1 = r1.topMargin
            int r8 = r8 + r1
            android.widget.TextView r1 = r0.z
            int r1 = r1.getMeasuredWidth()
            int r1 = r1 + r3
            android.widget.TextView r4 = r0.z
            int r4 = r4.getMeasuredHeight()
            int r4 = r4 + r8
            android.widget.TextView r5 = r0.z
            r5.layout(r3, r8, r1, r4)
            int r4 = r0.N
            int r1 = r1 + r4
            goto L_0x0287
        L_0x0286:
            r1 = r3
        L_0x0287:
            if (r17 == 0) goto L_0x028e
            int r2 = java.lang.Math.max(r2, r1)
            goto L_0x028f
        L_0x028e:
            r2 = r3
        L_0x028f:
            java.util.ArrayList<android.view.View> r1 = r0.d0
            r3 = 3
            r0.a((java.util.List<android.view.View>) r1, (int) r3)
            java.util.ArrayList<android.view.View> r1 = r0.d0
            int r1 = r1.size()
            r3 = r2
            r2 = 0
        L_0x029d:
            if (r2 >= r1) goto L_0x02b0
            java.util.ArrayList<android.view.View> r4 = r0.d0
            java.lang.Object r4 = r4.get(r2)
            android.view.View r4 = (android.view.View) r4
            r12 = r22
            int r3 = r0.a(r4, r3, r11, r12)
            int r2 = r2 + 1
            goto L_0x029d
        L_0x02b0:
            r12 = r22
            java.util.ArrayList<android.view.View> r1 = r0.d0
            r2 = 5
            r0.a((java.util.List<android.view.View>) r1, (int) r2)
            java.util.ArrayList<android.view.View> r1 = r0.d0
            int r1 = r1.size()
            r2 = 0
        L_0x02bf:
            if (r2 >= r1) goto L_0x02d0
            java.util.ArrayList<android.view.View> r4 = r0.d0
            java.lang.Object r4 = r4.get(r2)
            android.view.View r4 = (android.view.View) r4
            int r10 = r0.b(r4, r10, r11, r12)
            int r2 = r2 + 1
            goto L_0x02bf
        L_0x02d0:
            java.util.ArrayList<android.view.View> r1 = r0.d0
            r2 = 1
            r0.a((java.util.List<android.view.View>) r1, (int) r2)
            java.util.ArrayList<android.view.View> r1 = r0.d0
            r4 = 0
            r5 = r11[r4]
            r2 = r11[r2]
            int r4 = r1.size()
            r7 = r5
            r5 = 0
            r6 = 0
        L_0x02e4:
            if (r5 >= r4) goto L_0x0317
            java.lang.Object r8 = r1.get(r5)
            android.view.View r8 = (android.view.View) r8
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.appcompat.widget.Toolbar$e r9 = (androidx.appcompat.widget.Toolbar.e) r9
            int r13 = r9.leftMargin
            int r13 = r13 - r7
            int r7 = r9.rightMargin
            int r7 = r7 - r2
            r2 = 0
            int r9 = java.lang.Math.max(r2, r13)
            int r14 = java.lang.Math.max(r2, r7)
            int r13 = -r13
            int r13 = java.lang.Math.max(r2, r13)
            int r7 = -r7
            int r7 = java.lang.Math.max(r2, r7)
            int r8 = r8.getMeasuredWidth()
            int r8 = r8 + r9
            int r8 = r8 + r14
            int r6 = r6 + r8
            int r5 = r5 + 1
            r2 = r7
            r7 = r13
            goto L_0x02e4
        L_0x0317:
            r2 = 0
            int r4 = r16 - r18
            int r4 = r4 - r23
            int r4 = r4 / 2
            int r4 = r4 + r18
            int r1 = r6 / 2
            int r4 = r4 - r1
            int r6 = r6 + r4
            if (r4 >= r3) goto L_0x0327
            goto L_0x032e
        L_0x0327:
            if (r6 <= r10) goto L_0x032d
            int r6 = r6 - r10
            int r3 = r4 - r6
            goto L_0x032e
        L_0x032d:
            r3 = r4
        L_0x032e:
            java.util.ArrayList<android.view.View> r1 = r0.d0
            int r1 = r1.size()
            r2 = r3
            r3 = 0
        L_0x0336:
            if (r3 >= r1) goto L_0x0347
            java.util.ArrayList<android.view.View> r4 = r0.d0
            java.lang.Object r4 = r4.get(r3)
            android.view.View r4 = (android.view.View) r4
            int r2 = r0.a(r4, r2, r11, r12)
            int r3 = r3 + 1
            goto L_0x0336
        L_0x0347:
            java.util.ArrayList<android.view.View> r1 = r0.d0
            r1.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    public void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr = this.f0;
        boolean z2 = true;
        int i11 = 0;
        if (d1.a(this)) {
            c3 = 1;
            c2 = 0;
        } else {
            c3 = 0;
            c2 = 1;
        }
        if (d(this.A)) {
            a((View) this.A, i2, 0, i3, 0, this.L);
            i6 = a((View) this.A) + this.A.getMeasuredWidth();
            i5 = Math.max(0, b(this.A) + this.A.getMeasuredHeight());
            i4 = View.combineMeasuredStates(0, this.A.getMeasuredState());
        } else {
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (d(this.E)) {
            a((View) this.E, i2, 0, i3, 0, this.L);
            i6 = a((View) this.E) + this.E.getMeasuredWidth();
            i5 = Math.max(i5, b(this.E) + this.E.getMeasuredHeight());
            i4 = View.combineMeasuredStates(i4, this.E.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i6) + 0;
        iArr[c3] = Math.max(0, currentContentInsetStart - i6);
        if (d(this.x)) {
            a((View) this.x, i2, max, i3, 0, this.L);
            i7 = a((View) this.x) + this.x.getMeasuredWidth();
            i5 = Math.max(i5, b(this.x) + this.x.getMeasuredHeight());
            i4 = View.combineMeasuredStates(i4, this.x.getMeasuredState());
        } else {
            i7 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = Math.max(currentContentInsetEnd, i7) + max;
        iArr[c2] = Math.max(0, currentContentInsetEnd - i7);
        if (d(this.F)) {
            max2 += a(this.F, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, b(this.F) + this.F.getMeasuredHeight());
            i4 = View.combineMeasuredStates(i4, this.F.getMeasuredState());
        }
        if (d(this.B)) {
            max2 += a((View) this.B, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, b(this.B) + this.B.getMeasuredHeight());
            i4 = View.combineMeasuredStates(i4, this.B.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((e) childAt.getLayoutParams()).b == 0 && d(childAt)) {
                View view = childAt;
                max2 += a(childAt, i2, max2, i3, 0, iArr);
                View view2 = view;
                i5 = Math.max(i5, b(view2) + view.getMeasuredHeight());
                i4 = View.combineMeasuredStates(i4, view2.getMeasuredState());
            }
        }
        int i13 = this.O + this.P;
        int i14 = this.M + this.N;
        if (d(this.y)) {
            a((View) this.y, i2, max2 + i14, i3, i13, iArr);
            int a2 = a((View) this.y) + this.y.getMeasuredWidth();
            i8 = b(this.y) + this.y.getMeasuredHeight();
            i10 = View.combineMeasuredStates(i4, this.y.getMeasuredState());
            i9 = a2;
        } else {
            i10 = i4;
            i9 = 0;
            i8 = 0;
        }
        if (d(this.z)) {
            int i15 = i8 + i13;
            i9 = Math.max(i9, a((View) this.z, i2, max2 + i14, i3, i15, iArr));
            i8 = b(this.z) + this.z.getMeasuredHeight() + i8;
            i10 = View.combineMeasuredStates(i10, this.z.getMeasuredState());
        } else {
            int i16 = i10;
        }
        int max3 = Math.max(i5, i8);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max3;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + max2 + i9, getSuggestedMinimumWidth()), i2, -16777216 & i10);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, i10 << 16);
        if (this.n0) {
            int childCount2 = getChildCount();
            int i17 = 0;
            while (true) {
                if (i17 >= childCount2) {
                    break;
                }
                View childAt2 = getChildAt(i17);
                if (d(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                    break;
                }
                i17++;
            }
        }
        z2 = false;
        if (!z2) {
            i11 = resolveSizeAndState2;
        }
        setMeasuredDimension(resolveSizeAndState, i11);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.x);
        ActionMenuView actionMenuView = this.x;
        d.b.d.i.g gVar2 = actionMenuView != null ? actionMenuView.M : null;
        int i2 = gVar.z;
        if (!(i2 == 0 || this.k0 == null || gVar2 == null || (findItem = gVar2.findItem(i2)) == null)) {
            findItem.expandActionView();
        }
        if (gVar.A) {
            removeCallbacks(this.o0);
            post(this.o0);
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        b();
        p0 p0Var = this.Q;
        boolean z2 = true;
        if (i2 != 1) {
            z2 = false;
        }
        if (z2 != p0Var.f372g) {
            p0Var.f372g = z2;
            if (!p0Var.f373h) {
                p0Var.a = p0Var.f370e;
                p0Var.b = p0Var.f371f;
            } else if (z2) {
                int i3 = p0Var.f369d;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = p0Var.f370e;
                }
                p0Var.a = i3;
                int i4 = p0Var.f368c;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = p0Var.f371f;
                }
                p0Var.b = i4;
            } else {
                int i5 = p0Var.f368c;
                if (i5 == Integer.MIN_VALUE) {
                    i5 = p0Var.f370e;
                }
                p0Var.a = i5;
                int i6 = p0Var.f369d;
                if (i6 == Integer.MIN_VALUE) {
                    i6 = p0Var.f371f;
                }
                p0Var.b = i6;
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        i iVar;
        g gVar = new g(super.onSaveInstanceState());
        d dVar = this.k0;
        if (!(dVar == null || (iVar = dVar.y) == null)) {
            gVar.z = iVar.a;
        }
        gVar.A = f();
        return gVar;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.b0 = false;
        }
        if (!this.b0) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.b0 = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.b0 = false;
        }
        return true;
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(d.b.b.a.a.c(getContext(), i2));
    }

    public void setCollapsible(boolean z2) {
        this.n0 = z2;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.S) {
            this.S = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.R) {
            this.R = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i2) {
        setLogo(d.b.b.a.a.c(getContext(), i2));
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(d.b.b.a.a.c(getContext(), i2));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        e();
        this.A.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(f fVar) {
        this.g0 = fVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        c();
        this.x.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.H != i2) {
            this.H = i2;
            if (i2 == 0) {
                this.G = getContext();
            } else {
                this.G = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitleMarginBottom(int i2) {
        this.P = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.N = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.M = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.O = i2;
        requestLayout();
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public static class e extends a.C0007a {
        public int b = 0;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i2, int i3) {
            super(i2, i3);
            this.a = 8388627;
        }

        public e(e eVar) {
            super((a.C0007a) eVar);
            this.b = eVar.b;
        }

        public e(a.C0007a aVar) {
            super(aVar);
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super((ViewGroup.LayoutParams) marginLayoutParams);
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            a();
        }
        ImageButton imageButton = this.E;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            a();
            this.E.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.E;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.C);
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.B == null) {
                this.B = new d.b.e.n(getContext(), (AttributeSet) null, 0);
            }
            if (!c(this.B)) {
                a((View) this.B, true);
            }
        } else {
            ImageView imageView = this.B;
            if (imageView != null && c(imageView)) {
                removeView(this.B);
                this.e0.remove(this.B);
            }
        }
        ImageView imageView2 = this.B;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.B == null) {
            this.B = new d.b.e.n(getContext(), (AttributeSet) null, 0);
        }
        ImageView imageView = this.B;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        ImageButton imageButton = this.A;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            e();
            if (!c(this.A)) {
                a((View) this.A, true);
            }
        } else {
            ImageButton imageButton = this.A;
            if (imageButton != null && c(imageButton)) {
                removeView(this.A);
                this.e0.remove(this.A);
            }
        }
        ImageButton imageButton2 = this.A;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.z == null) {
                Context context = getContext();
                z zVar = new z(context);
                this.z = zVar;
                zVar.setSingleLine();
                this.z.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.J;
                if (i2 != 0) {
                    this.z.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.a0;
                if (colorStateList != null) {
                    this.z.setTextColor(colorStateList);
                }
            }
            if (!c(this.z)) {
                a((View) this.z, true);
            }
        } else {
            TextView textView = this.z;
            if (textView != null && c(textView)) {
                removeView(this.z);
                this.e0.remove(this.z);
            }
        }
        TextView textView2 = this.z;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.V = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.a0 = colorStateList;
        TextView textView = this.z;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.y == null) {
                Context context = getContext();
                z zVar = new z(context);
                this.y = zVar;
                zVar.setSingleLine();
                this.y.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.I;
                if (i2 != 0) {
                    this.y.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.W;
                if (colorStateList != null) {
                    this.y.setTextColor(colorStateList);
                }
            }
            if (!c(this.y)) {
                a((View) this.y, true);
            }
        } else {
            TextView textView = this.y;
            if (textView != null && c(textView)) {
                removeView(this.y);
                this.e0.remove(this.y);
            }
        }
        TextView textView2 = this.y;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.U = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.W = colorStateList;
        TextView textView = this.y;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public class d implements m {
        public d.b.d.i.g x;
        public i y;

        public d() {
        }

        public void a(Context context, d.b.d.i.g gVar) {
            i iVar;
            d.b.d.i.g gVar2 = this.x;
            if (!(gVar2 == null || (iVar = this.y) == null)) {
                gVar2.a(iVar);
            }
            this.x = gVar;
        }

        public void a(Parcelable parcelable) {
        }

        public void a(d.b.d.i.g gVar, boolean z2) {
        }

        public void a(m.a aVar) {
        }

        public boolean a(r rVar) {
            return false;
        }

        public boolean b() {
            return false;
        }

        public boolean b(d.b.d.i.g gVar, i iVar) {
            Toolbar.this.a();
            ViewParent parent = Toolbar.this.E.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.E);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.E);
            }
            Toolbar.this.F = iVar.getActionView();
            this.y = iVar;
            ViewParent parent2 = Toolbar.this.F.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.F);
                }
                e generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.a = 8388611 | (toolbar4.K & 112);
                generateDefaultLayoutParams.b = 2;
                toolbar4.F.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.F);
            }
            Toolbar toolbar6 = Toolbar.this;
            int childCount = toolbar6.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                View childAt = toolbar6.getChildAt(childCount);
                if (!(((e) childAt.getLayoutParams()).b == 2 || childAt == toolbar6.x)) {
                    toolbar6.removeViewAt(childCount);
                    toolbar6.e0.add(childAt);
                }
            }
            Toolbar.this.requestLayout();
            iVar.C = true;
            iVar.n.b(false);
            View view = Toolbar.this.F;
            if (view instanceof d.b.d.b) {
                ((d.b.d.b) view).a();
            }
            return true;
        }

        public Parcelable d() {
            return null;
        }

        public int getId() {
            return 0;
        }

        public void a(boolean z2) {
            if (this.y != null) {
                d.b.d.i.g gVar = this.x;
                boolean z3 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        } else if (this.x.getItem(i2) == this.y) {
                            z3 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                if (!z3) {
                    a(this.x, this.y);
                }
            }
        }

        public boolean a(d.b.d.i.g gVar, i iVar) {
            View view = Toolbar.this.F;
            if (view instanceof d.b.d.b) {
                ((d.b.d.b) view).b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.F);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.E);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.F = null;
            int size = toolbar3.e0.size();
            while (true) {
                size--;
                if (size >= 0) {
                    toolbar3.addView(toolbar3.e0.get(size));
                } else {
                    toolbar3.e0.clear();
                    this.y = null;
                    Toolbar.this.requestLayout();
                    iVar.C = false;
                    iVar.n.b(false);
                    return true;
                }
            }
        }
    }

    public static class g extends d.k.a.a {
        public static final Parcelable.Creator<g> CREATOR = new a();
        public boolean A;
        public int z;

        public static class a implements Parcelable.ClassLoaderCreator<g> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new g[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new g(parcel, (ClassLoader) null);
            }
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.z = parcel.readInt();
            this.A = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeInt(this.z);
            parcel.writeInt(this.A ? 1 : 0);
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.T = 8388627;
        this.d0 = new ArrayList<>();
        this.e0 = new ArrayList<>();
        this.f0 = new int[2];
        this.h0 = new a();
        this.o0 = new b();
        x0 a2 = x0.a(getContext(), attributeSet, R$styleable.Toolbar, i2, 0);
        this.I = a2.f(R$styleable.Toolbar_titleTextAppearance, 0);
        this.J = a2.f(R$styleable.Toolbar_subtitleTextAppearance, 0);
        this.T = a2.d(R$styleable.Toolbar_android_gravity, this.T);
        this.K = a2.d(R$styleable.Toolbar_buttonGravity, 48);
        int a3 = a2.a(R$styleable.Toolbar_titleMargin, 0);
        a3 = a2.f(R$styleable.Toolbar_titleMargins) ? a2.a(R$styleable.Toolbar_titleMargins, a3) : a3;
        this.P = a3;
        this.O = a3;
        this.N = a3;
        this.M = a3;
        int a4 = a2.a(R$styleable.Toolbar_titleMarginStart, -1);
        if (a4 >= 0) {
            this.M = a4;
        }
        int a5 = a2.a(R$styleable.Toolbar_titleMarginEnd, -1);
        if (a5 >= 0) {
            this.N = a5;
        }
        int a6 = a2.a(R$styleable.Toolbar_titleMarginTop, -1);
        if (a6 >= 0) {
            this.O = a6;
        }
        int a7 = a2.a(R$styleable.Toolbar_titleMarginBottom, -1);
        if (a7 >= 0) {
            this.P = a7;
        }
        this.L = a2.b(R$styleable.Toolbar_maxButtonHeight, -1);
        int a8 = a2.a(R$styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int a9 = a2.a(R$styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int b2 = a2.b(R$styleable.Toolbar_contentInsetLeft, 0);
        int b3 = a2.b(R$styleable.Toolbar_contentInsetRight, 0);
        b();
        p0 p0Var = this.Q;
        p0Var.f373h = false;
        if (b2 != Integer.MIN_VALUE) {
            p0Var.f370e = b2;
            p0Var.a = b2;
        }
        if (b3 != Integer.MIN_VALUE) {
            p0Var.f371f = b3;
            p0Var.b = b3;
        }
        if (!(a8 == Integer.MIN_VALUE && a9 == Integer.MIN_VALUE)) {
            this.Q.a(a8, a9);
        }
        this.R = a2.a(R$styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.S = a2.a(R$styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.C = a2.b(R$styleable.Toolbar_collapseIcon);
        this.D = a2.e(R$styleable.Toolbar_collapseContentDescription);
        CharSequence e2 = a2.e(R$styleable.Toolbar_title);
        if (!TextUtils.isEmpty(e2)) {
            setTitle(e2);
        }
        CharSequence e3 = a2.e(R$styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(e3)) {
            setSubtitle(e3);
        }
        this.G = getContext();
        setPopupTheme(a2.f(R$styleable.Toolbar_popupTheme, 0));
        Drawable b4 = a2.b(R$styleable.Toolbar_navigationIcon);
        if (b4 != null) {
            setNavigationIcon(b4);
        }
        CharSequence e4 = a2.e(R$styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(e4)) {
            setNavigationContentDescription(e4);
        }
        Drawable b5 = a2.b(R$styleable.Toolbar_logo);
        if (b5 != null) {
            setLogo(b5);
        }
        CharSequence e5 = a2.e(R$styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(e5)) {
            setLogoDescription(e5);
        }
        if (a2.f(R$styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.a(R$styleable.Toolbar_titleTextColor));
        }
        if (a2.f(R$styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.a(R$styleable.Toolbar_subtitleTextColor));
        }
        if (a2.f(R$styleable.Toolbar_menu)) {
            getMenuInflater().inflate(a2.f(R$styleable.Toolbar_menu, 0), getMenu());
        }
        a2.b.recycle();
    }

    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof e) {
            return new e((e) layoutParams);
        }
        if (layoutParams instanceof a.C0007a) {
            return new e((a.C0007a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new e((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new e(layoutParams);
    }

    public final int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final boolean c(View view) {
        return view.getParent() == this || this.e0.contains(view);
    }

    public final void a(View view, boolean z2) {
        e eVar;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            eVar = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            eVar = generateLayoutParams(layoutParams);
        } else {
            eVar = (e) layoutParams;
        }
        eVar.b = 1;
        if (!z2 || this.F == null) {
            addView(view, eVar);
            return;
        }
        view.setLayoutParams(eVar);
        this.e0.add(view);
    }

    public final void b() {
        if (this.Q == null) {
            this.Q = new p0();
        }
    }

    public final boolean d(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final void a(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, Constants.GB);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final int a(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i7) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + max + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final int a(View view, int i2, int[] iArr, int i3) {
        e eVar = (e) view.getLayoutParams();
        int i4 = eVar.leftMargin - iArr[0];
        int max = Math.max(0, i4) + i2;
        iArr[0] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return measuredWidth + eVar.rightMargin + max;
    }

    public final int a(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int i4 = eVar.a & 112;
        if (!(i4 == 16 || i4 == 48 || i4 == 80)) {
            i4 = this.T & 112;
        }
        if (i4 == 48) {
            return getPaddingTop() - i3;
        }
        if (i4 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - eVar.bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i5 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i6 = eVar.topMargin;
        if (i5 < i6) {
            i5 = i6;
        } else {
            int i7 = (((height - paddingBottom) - measuredHeight) - i5) - paddingTop;
            int i8 = eVar.bottomMargin;
            if (i7 < i8) {
                i5 = Math.max(0, i5 - (i8 - i7));
            }
        }
        return paddingTop + i5;
    }

    public final void a(List<View> list, int i2) {
        boolean z2 = n.i(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        list.clear();
        if (z2) {
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt = getChildAt(i3);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b == 0 && d(childAt) && a(eVar.a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            e eVar2 = (e) childAt2.getLayoutParams();
            if (eVar2.b == 0 && d(childAt2) && a(eVar2.a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    public final int a(int i2) {
        int i3 = n.i(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, i3) & 7;
        if (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) {
            return absoluteGravity;
        }
        return i3 == 1 ? 5 : 3;
    }

    public final int a(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }
}
