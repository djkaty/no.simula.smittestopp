package d.b.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import d.b.a.r;
import d.b.c.a.e;

public class b extends Drawable implements Drawable.Callback {
    public Drawable A;
    public int B = 255;
    public boolean C;
    public int D = -1;
    public boolean E;
    public Runnable F;
    public long G;
    public long H;
    public C0011b I;
    public c x;
    public Rect y;
    public Drawable z;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* renamed from: d.b.c.a.b$b  reason: collision with other inner class name */
    public static class C0011b implements Drawable.Callback {
        public Drawable.Callback x;

        public void invalidateDrawable(Drawable drawable) {
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
            Drawable.Callback callback = this.x;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j2);
            }
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.x;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    public c a() {
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0073  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int r10) {
        /*
            r9 = this;
            int r0 = r9.D
            r1 = 0
            if (r10 != r0) goto L_0x0006
            return r1
        L_0x0006:
            long r2 = android.os.SystemClock.uptimeMillis()
            d.b.c.a.b$c r0 = r9.x
            int r0 = r0.B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L_0x002e
            android.graphics.drawable.Drawable r0 = r9.A
            if (r0 == 0) goto L_0x001a
            r0.setVisible(r1, r1)
        L_0x001a:
            android.graphics.drawable.Drawable r0 = r9.z
            if (r0 == 0) goto L_0x0029
            r9.A = r0
            d.b.c.a.b$c r0 = r9.x
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.H = r0
            goto L_0x0035
        L_0x0029:
            r9.A = r4
            r9.H = r5
            goto L_0x0035
        L_0x002e:
            android.graphics.drawable.Drawable r0 = r9.z
            if (r0 == 0) goto L_0x0035
            r0.setVisible(r1, r1)
        L_0x0035:
            if (r10 < 0) goto L_0x0055
            d.b.c.a.b$c r0 = r9.x
            int r1 = r0.f243h
            if (r10 >= r1) goto L_0x0055
            android.graphics.drawable.Drawable r0 = r0.a((int) r10)
            r9.z = r0
            r9.D = r10
            if (r0 == 0) goto L_0x005a
            d.b.c.a.b$c r10 = r9.x
            int r10 = r10.A
            if (r10 <= 0) goto L_0x0051
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.G = r2
        L_0x0051:
            r9.a((android.graphics.drawable.Drawable) r0)
            goto L_0x005a
        L_0x0055:
            r9.z = r4
            r10 = -1
            r9.D = r10
        L_0x005a:
            long r0 = r9.G
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L_0x0067
            long r0 = r9.H
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L_0x0079
        L_0x0067:
            java.lang.Runnable r0 = r9.F
            if (r0 != 0) goto L_0x0073
            d.b.c.a.b$a r0 = new d.b.c.a.b$a
            r0.<init>()
            r9.F = r0
            goto L_0x0076
        L_0x0073:
            r9.unscheduleSelf(r0)
        L_0x0076:
            r9.a((boolean) r10)
        L_0x0079:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.c.a.b.a(int):boolean");
    }

    public boolean canApplyTheme() {
        return this.x.canApplyTheme();
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.z;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.A;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    public int getAlpha() {
        return this.B;
    }

    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.x.getChangingConfigurations();
    }

    public final Drawable.ConstantState getConstantState() {
        if (!this.x.a()) {
            return null;
        }
        this.x.f239d = getChangingConfigurations();
        return this.x;
    }

    public Drawable getCurrent() {
        return this.z;
    }

    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.y;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    public int getIntrinsicHeight() {
        c cVar = this.x;
        if (cVar.f247l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.o;
        }
        Drawable drawable = this.z;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    public int getIntrinsicWidth() {
        c cVar = this.x;
        if (cVar.f247l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.n;
        }
        Drawable drawable = this.z;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    public int getMinimumHeight() {
        c cVar = this.x;
        if (cVar.f247l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.q;
        }
        Drawable drawable = this.z;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    public int getMinimumWidth() {
        c cVar = this.x;
        if (cVar.f247l) {
            if (!cVar.m) {
                cVar.b();
            }
            return cVar.p;
        }
        Drawable drawable = this.z;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    public int getOpacity() {
        Drawable drawable = this.z;
        int i2 = -2;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        c cVar = this.x;
        if (cVar.r) {
            return cVar.s;
        }
        cVar.c();
        int i3 = cVar.f243h;
        Drawable[] drawableArr = cVar.f242g;
        if (i3 > 0) {
            i2 = drawableArr[0].getOpacity();
        }
        for (int i4 = 1; i4 < i3; i4++) {
            i2 = Drawable.resolveOpacity(i2, drawableArr[i4].getOpacity());
        }
        cVar.s = i2;
        cVar.r = true;
        return i2;
    }

    public void getOutline(Outline outline) {
        Drawable drawable = this.z;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    public boolean getPadding(Rect rect) {
        boolean z2;
        c cVar = this.x;
        Rect rect2 = null;
        boolean z3 = true;
        if (!cVar.f244i) {
            if (cVar.f246k != null || cVar.f245j) {
                rect2 = cVar.f246k;
            } else {
                cVar.c();
                Rect rect3 = new Rect();
                int i2 = cVar.f243h;
                Drawable[] drawableArr = cVar.f242g;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3].getPadding(rect3)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i4 = rect3.left;
                        if (i4 > rect2.left) {
                            rect2.left = i4;
                        }
                        int i5 = rect3.top;
                        if (i5 > rect2.top) {
                            rect2.top = i5;
                        }
                        int i6 = rect3.right;
                        if (i6 > rect2.right) {
                            rect2.right = i6;
                        }
                        int i7 = rect3.bottom;
                        if (i7 > rect2.bottom) {
                            rect2.bottom = i7;
                        }
                    }
                }
                cVar.f245j = true;
                cVar.f246k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            z2 = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            Drawable drawable = this.z;
            if (drawable != null) {
                z2 = drawable.getPadding(rect);
            } else {
                z2 = super.getPadding(rect);
            }
        }
        if (!this.x.C || r.b((Drawable) this) != 1) {
            z3 = false;
        }
        if (z3) {
            int i8 = rect.left;
            rect.left = rect.right;
            rect.right = i8;
        }
        return z2;
    }

    public void invalidateDrawable(Drawable drawable) {
        c cVar = this.x;
        if (cVar != null) {
            cVar.r = false;
            cVar.t = false;
        }
        if (drawable == this.z && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public boolean isAutoMirrored() {
        return this.x.C;
    }

    public void jumpToCurrentState() {
        boolean z2;
        Drawable drawable = this.A;
        boolean z3 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.A = null;
            z2 = true;
        } else {
            z2 = false;
        }
        Drawable drawable2 = this.z;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.C) {
                this.z.setAlpha(this.B);
            }
        }
        if (this.H != 0) {
            this.H = 0;
            z2 = true;
        }
        if (this.G != 0) {
            this.G = 0;
        } else {
            z3 = z2;
        }
        if (z3) {
            invalidateSelf();
        }
    }

    public Drawable mutate() {
        if (!this.E && super.mutate() == this) {
            c a2 = a();
            a2.d();
            a(a2);
            this.E = true;
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.A;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.z;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    public boolean onLayoutDirectionChanged(int i2) {
        c cVar = this.x;
        int i3 = this.D;
        int i4 = cVar.f243h;
        Drawable[] drawableArr = cVar.f242g;
        boolean z2 = false;
        for (int i5 = 0; i5 < i4; i5++) {
            if (drawableArr[i5] != null) {
                boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i5].setLayoutDirection(i2) : false;
                if (i5 == i3) {
                    z2 = layoutDirection;
                }
            }
        }
        cVar.z = i2;
        return z2;
    }

    public boolean onLevelChange(int i2) {
        Drawable drawable = this.A;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.z;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (drawable == this.z && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        if (!this.C || this.B != i2) {
            this.C = true;
            this.B = i2;
            Drawable drawable = this.z;
            if (drawable == null) {
                return;
            }
            if (this.G == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    public void setAutoMirrored(boolean z2) {
        c cVar = this.x;
        if (cVar.C != z2) {
            cVar.C = z2;
            Drawable drawable = this.z;
            if (drawable != null) {
                drawable.setAutoMirrored(z2);
            }
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.x;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            Drawable drawable = this.z;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public void setDither(boolean z2) {
        c cVar = this.x;
        if (cVar.x != z2) {
            cVar.x = z2;
            Drawable drawable = this.z;
            if (drawable != null) {
                drawable.setDither(z2);
            }
        }
    }

    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.z;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.y;
        if (rect == null) {
            this.y = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
        Drawable drawable = this.z;
        if (drawable != null) {
            drawable.setHotspotBounds(i2, i3, i4, i5);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.x;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            r.a(this.z, colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.x;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            r.a(this.z, mode);
        }
    }

    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        Drawable drawable = this.A;
        if (drawable != null) {
            drawable.setVisible(z2, z3);
        }
        Drawable drawable2 = this.z;
        if (drawable2 != null) {
            drawable2.setVisible(z2, z3);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.z && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    public static abstract class c extends Drawable.ConstantState {
        public int A;
        public int B;
        public boolean C;
        public ColorFilter D;
        public boolean E;
        public ColorStateList F;
        public PorterDuff.Mode G;
        public boolean H;
        public boolean I;
        public final b a;
        public Resources b;

        /* renamed from: c  reason: collision with root package name */
        public int f238c = 160;

        /* renamed from: d  reason: collision with root package name */
        public int f239d;

        /* renamed from: e  reason: collision with root package name */
        public int f240e;

        /* renamed from: f  reason: collision with root package name */
        public SparseArray<Drawable.ConstantState> f241f;

        /* renamed from: g  reason: collision with root package name */
        public Drawable[] f242g;

        /* renamed from: h  reason: collision with root package name */
        public int f243h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f244i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f245j;

        /* renamed from: k  reason: collision with root package name */
        public Rect f246k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f247l;
        public boolean m;
        public int n;
        public int o;
        public int p;
        public int q;
        public boolean r;
        public int s;
        public boolean t;
        public boolean u;
        public boolean v;
        public boolean w;
        public boolean x;
        public boolean y;
        public int z;

        public c(c cVar, b bVar, Resources resources) {
            Resources resources2;
            this.f244i = false;
            this.f247l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.a = bVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = cVar != null ? cVar.b : null;
            }
            this.b = resources2;
            int a2 = b.a(resources, cVar != null ? cVar.f238c : 0);
            this.f238c = a2;
            if (cVar != null) {
                this.f239d = cVar.f239d;
                this.f240e = cVar.f240e;
                this.v = true;
                this.w = true;
                this.f244i = cVar.f244i;
                this.f247l = cVar.f247l;
                this.x = cVar.x;
                this.y = cVar.y;
                this.z = cVar.z;
                this.A = cVar.A;
                this.B = cVar.B;
                this.C = cVar.C;
                this.D = cVar.D;
                this.E = cVar.E;
                this.F = cVar.F;
                this.G = cVar.G;
                this.H = cVar.H;
                this.I = cVar.I;
                if (cVar.f238c == a2) {
                    if (cVar.f245j) {
                        this.f246k = new Rect(cVar.f246k);
                        this.f245j = true;
                    }
                    if (cVar.m) {
                        this.n = cVar.n;
                        this.o = cVar.o;
                        this.p = cVar.p;
                        this.q = cVar.q;
                        this.m = true;
                    }
                }
                if (cVar.r) {
                    this.s = cVar.s;
                    this.r = true;
                }
                if (cVar.t) {
                    this.u = cVar.u;
                    this.t = true;
                }
                Drawable[] drawableArr = cVar.f242g;
                this.f242g = new Drawable[drawableArr.length];
                this.f243h = cVar.f243h;
                SparseArray<Drawable.ConstantState> sparseArray = cVar.f241f;
                if (sparseArray != null) {
                    this.f241f = sparseArray.clone();
                } else {
                    this.f241f = new SparseArray<>(this.f243h);
                }
                int i2 = this.f243h;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null) {
                        Drawable.ConstantState constantState = drawableArr[i3].getConstantState();
                        if (constantState != null) {
                            this.f241f.put(i3, constantState);
                        } else {
                            this.f242g[i3] = drawableArr[i3];
                        }
                    }
                }
                return;
            }
            this.f242g = new Drawable[10];
            this.f243h = 0;
        }

        public final int a(Drawable drawable) {
            int i2 = this.f243h;
            if (i2 >= this.f242g.length) {
                int i3 = i2 + 10;
                e.a aVar = (e.a) this;
                Drawable[] drawableArr = new Drawable[i3];
                System.arraycopy(aVar.f242g, 0, drawableArr, 0, i2);
                aVar.f242g = drawableArr;
                int[][] iArr = new int[i3][];
                System.arraycopy(aVar.J, 0, iArr, 0, i2);
                aVar.J = iArr;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.a);
            this.f242g[i2] = drawable;
            this.f243h++;
            this.f240e = drawable.getChangingConfigurations() | this.f240e;
            this.r = false;
            this.t = false;
            this.f246k = null;
            this.f245j = false;
            this.m = false;
            this.v = false;
            return i2;
        }

        public void b() {
            this.m = true;
            c();
            int i2 = this.f243h;
            Drawable[] drawableArr = this.f242g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final void c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f241f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    int keyAt = this.f241f.keyAt(i2);
                    Drawable[] drawableArr = this.f242g;
                    Drawable newDrawable = this.f241f.valueAt(i2).newDrawable(this.b);
                    if (Build.VERSION.SDK_INT >= 23) {
                        newDrawable.setLayoutDirection(this.z);
                    }
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.a);
                    drawableArr[keyAt] = mutate;
                }
                this.f241f = null;
            }
        }

        public boolean canApplyTheme() {
            int i2 = this.f243h;
            Drawable[] drawableArr = this.f242g;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f241f.get(i3);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public abstract void d();

        public int getChangingConfigurations() {
            return this.f239d | this.f240e;
        }

        public final Drawable a(int i2) {
            int indexOfKey;
            Drawable drawable = this.f242g[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f241f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            Drawable newDrawable = this.f241f.valueAt(indexOfKey).newDrawable(this.b);
            if (Build.VERSION.SDK_INT >= 23) {
                newDrawable.setLayoutDirection(this.z);
            }
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.a);
            this.f242g[i2] = mutate;
            this.f241f.removeAt(indexOfKey);
            if (this.f241f.size() == 0) {
                this.f241f = null;
            }
            return mutate;
        }

        public final void a(Resources resources) {
            if (resources != null) {
                this.b = resources;
                int a2 = b.a(resources, this.f238c);
                int i2 = this.f238c;
                this.f238c = a2;
                if (i2 != a2) {
                    this.m = false;
                    this.f245j = false;
                }
            }
        }

        public synchronized boolean a() {
            if (this.v) {
                return this.w;
            }
            c();
            this.v = true;
            int i2 = this.f243h;
            Drawable[] drawableArr = this.f242g;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }
    }

    public final void a(Drawable drawable) {
        if (this.I == null) {
            this.I = new C0011b();
        }
        C0011b bVar = this.I;
        bVar.x = drawable.getCallback();
        drawable.setCallback(bVar);
        try {
            if (this.x.A <= 0 && this.C) {
                drawable.setAlpha(this.B);
            }
            if (this.x.E) {
                drawable.setColorFilter(this.x.D);
            } else {
                if (this.x.H) {
                    drawable.setTintList(this.x.F);
                }
                if (this.x.I) {
                    drawable.setTintMode(this.x.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.x.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            drawable.setAutoMirrored(this.x.C);
            Rect rect = this.y;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            C0011b bVar2 = this.I;
            Drawable.Callback callback = bVar2.x;
            bVar2.x = null;
            drawable.setCallback(callback);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006a A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.C = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.z
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L_0x0038
            long r9 = r13.G
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L_0x003a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L_0x0022
            int r9 = r13.B
            r3.setAlpha(r9)
            r13.G = r7
            goto L_0x003a
        L_0x0022:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            d.b.c.a.b$c r9 = r13.x
            int r9 = r9.A
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.B
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L_0x003b
        L_0x0038:
            r13.G = r7
        L_0x003a:
            r3 = 0
        L_0x003b:
            android.graphics.drawable.Drawable r9 = r13.A
            if (r9 == 0) goto L_0x0065
            long r10 = r13.H
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L_0x0067
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L_0x0052
            r9.setVisible(r6, r6)
            r0 = 0
            r13.A = r0
            r13.H = r7
            goto L_0x0067
        L_0x0052:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            d.b.c.a.b$c r4 = r13.x
            int r4 = r4.B
            int r3 = r3 / r4
            int r4 = r13.B
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L_0x0068
        L_0x0065:
            r13.H = r7
        L_0x0067:
            r0 = r3
        L_0x0068:
            if (r14 == 0) goto L_0x0074
            if (r0 == 0) goto L_0x0074
            java.lang.Runnable r14 = r13.F
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L_0x0074:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.c.a.b.a(boolean):void");
    }

    public void a(c cVar) {
        this.x = cVar;
        int i2 = this.D;
        if (i2 >= 0) {
            Drawable a2 = cVar.a(i2);
            this.z = a2;
            if (a2 != null) {
                a(a2);
            }
        }
        this.A = null;
    }

    public static int a(Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }
}
