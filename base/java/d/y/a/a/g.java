package d.y.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import d.b.a.r;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

public class g extends f {
    public static final PorterDuff.Mode G = PorterDuff.Mode.SRC_IN;
    public ColorFilter A;
    public boolean B;
    public boolean C;
    public final float[] D;
    public final Matrix E;
    public final Rect F;
    public h y;
    public PorterDuffColorFilter z;

    public static class b extends f {
        public b() {
        }

        public boolean b() {
            return true;
        }

        public b(b bVar) {
            super(bVar);
        }
    }

    public static class c extends f {

        /* renamed from: e  reason: collision with root package name */
        public int[] f999e;

        /* renamed from: f  reason: collision with root package name */
        public d.i.b.b.a f1000f;

        /* renamed from: g  reason: collision with root package name */
        public float f1001g = 0.0f;

        /* renamed from: h  reason: collision with root package name */
        public d.i.b.b.a f1002h;

        /* renamed from: i  reason: collision with root package name */
        public float f1003i = 1.0f;

        /* renamed from: j  reason: collision with root package name */
        public float f1004j = 1.0f;

        /* renamed from: k  reason: collision with root package name */
        public float f1005k = 0.0f;

        /* renamed from: l  reason: collision with root package name */
        public float f1006l = 1.0f;
        public float m = 0.0f;
        public Paint.Cap n = Paint.Cap.BUTT;
        public Paint.Join o = Paint.Join.MITER;
        public float p = 4.0f;

        public c() {
        }

        public boolean a() {
            return this.f1002h.b() || this.f1000f.b();
        }

        public float getFillAlpha() {
            return this.f1004j;
        }

        public int getFillColor() {
            return this.f1002h.f557c;
        }

        public float getStrokeAlpha() {
            return this.f1003i;
        }

        public int getStrokeColor() {
            return this.f1000f.f557c;
        }

        public float getStrokeWidth() {
            return this.f1001g;
        }

        public float getTrimPathEnd() {
            return this.f1006l;
        }

        public float getTrimPathOffset() {
            return this.m;
        }

        public float getTrimPathStart() {
            return this.f1005k;
        }

        public void setFillAlpha(float f2) {
            this.f1004j = f2;
        }

        public void setFillColor(int i2) {
            this.f1002h.f557c = i2;
        }

        public void setStrokeAlpha(float f2) {
            this.f1003i = f2;
        }

        public void setStrokeColor(int i2) {
            this.f1000f.f557c = i2;
        }

        public void setStrokeWidth(float f2) {
            this.f1001g = f2;
        }

        public void setTrimPathEnd(float f2) {
            this.f1006l = f2;
        }

        public void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        public void setTrimPathStart(float f2) {
            this.f1005k = f2;
        }

        public boolean a(int[] iArr) {
            return this.f1000f.a(iArr) | this.f1002h.a(iArr);
        }

        public c(c cVar) {
            super(cVar);
            this.f999e = cVar.f999e;
            this.f1000f = cVar.f1000f;
            this.f1001g = cVar.f1001g;
            this.f1003i = cVar.f1003i;
            this.f1002h = cVar.f1002h;
            this.f1017c = cVar.f1017c;
            this.f1004j = cVar.f1004j;
            this.f1005k = cVar.f1005k;
            this.f1006l = cVar.f1006l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }
    }

    public static abstract class e {
        public e() {
        }

        public boolean a() {
            return false;
        }

        public boolean a(int[] iArr) {
            return false;
        }

        public /* synthetic */ e(a aVar) {
        }
    }

    public static class h extends Drawable.ConstantState {
        public int a;
        public C0056g b;

        /* renamed from: c  reason: collision with root package name */
        public ColorStateList f1029c;

        /* renamed from: d  reason: collision with root package name */
        public PorterDuff.Mode f1030d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1031e;

        /* renamed from: f  reason: collision with root package name */
        public Bitmap f1032f;

        /* renamed from: g  reason: collision with root package name */
        public ColorStateList f1033g;

        /* renamed from: h  reason: collision with root package name */
        public PorterDuff.Mode f1034h;

        /* renamed from: i  reason: collision with root package name */
        public int f1035i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f1036j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f1037k;

        /* renamed from: l  reason: collision with root package name */
        public Paint f1038l;

        public h(h hVar) {
            this.f1029c = null;
            this.f1030d = g.G;
            if (hVar != null) {
                this.a = hVar.a;
                C0056g gVar = new C0056g(hVar.b);
                this.b = gVar;
                if (hVar.b.f1021e != null) {
                    gVar.f1021e = new Paint(hVar.b.f1021e);
                }
                if (hVar.b.f1020d != null) {
                    this.b.f1020d = new Paint(hVar.b.f1020d);
                }
                this.f1029c = hVar.f1029c;
                this.f1030d = hVar.f1030d;
                this.f1031e = hVar.f1031e;
            }
        }

        public void a(int i2, int i3) {
            this.f1032f.eraseColor(0);
            Canvas canvas = new Canvas(this.f1032f);
            C0056g gVar = this.b;
            gVar.a(gVar.f1024h, C0056g.q, canvas, i2, i3, (ColorFilter) null);
        }

        public int getChangingConfigurations() {
            return this.a;
        }

        public Drawable newDrawable() {
            return new g(this);
        }

        public Drawable newDrawable(Resources resources) {
            return new g(this);
        }

        public boolean a() {
            C0056g gVar = this.b;
            if (gVar.o == null) {
                gVar.o = Boolean.valueOf(gVar.f1024h.a());
            }
            return gVar.o.booleanValue();
        }

        public h() {
            this.f1029c = null;
            this.f1030d = g.G;
            this.b = new C0056g();
        }
    }

    public g() {
        this.C = true;
        this.D = new float[9];
        this.E = new Matrix();
        this.F = new Rect();
        this.y = new h();
    }

    public static g createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        g gVar = new g();
        gVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return gVar;
    }

    public PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public boolean canApplyTheme() {
        Drawable drawable = this.x;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00d3, code lost:
        if ((r1 == r7.getWidth() && r3 == r6.f1032f.getHeight()) == false) goto L_0x00d5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r11) {
        /*
            r10 = this;
            android.graphics.drawable.Drawable r0 = r10.x
            if (r0 == 0) goto L_0x0008
            r0.draw(r11)
            return
        L_0x0008:
            android.graphics.Rect r0 = r10.F
            r10.copyBounds(r0)
            android.graphics.Rect r0 = r10.F
            int r0 = r0.width()
            if (r0 <= 0) goto L_0x016b
            android.graphics.Rect r0 = r10.F
            int r0 = r0.height()
            if (r0 > 0) goto L_0x001f
            goto L_0x016b
        L_0x001f:
            android.graphics.ColorFilter r0 = r10.A
            if (r0 != 0) goto L_0x0025
            android.graphics.PorterDuffColorFilter r0 = r10.z
        L_0x0025:
            android.graphics.Matrix r1 = r10.E
            r11.getMatrix(r1)
            android.graphics.Matrix r1 = r10.E
            float[] r2 = r10.D
            r1.getValues(r2)
            float[] r1 = r10.D
            r2 = 0
            r1 = r1[r2]
            float r1 = java.lang.Math.abs(r1)
            float[] r3 = r10.D
            r4 = 4
            r3 = r3[r4]
            float r3 = java.lang.Math.abs(r3)
            float[] r4 = r10.D
            r5 = 1
            r4 = r4[r5]
            float r4 = java.lang.Math.abs(r4)
            float[] r6 = r10.D
            r7 = 3
            r6 = r6[r7]
            float r6 = java.lang.Math.abs(r6)
            r7 = 1065353216(0x3f800000, float:1.0)
            r8 = 0
            int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r4 != 0) goto L_0x0060
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 == 0) goto L_0x0064
        L_0x0060:
            r1 = 1065353216(0x3f800000, float:1.0)
            r3 = 1065353216(0x3f800000, float:1.0)
        L_0x0064:
            android.graphics.Rect r4 = r10.F
            int r4 = r4.width()
            float r4 = (float) r4
            float r4 = r4 * r1
            int r1 = (int) r4
            android.graphics.Rect r4 = r10.F
            int r4 = r4.height()
            float r4 = (float) r4
            float r4 = r4 * r3
            int r3 = (int) r4
            r4 = 2048(0x800, float:2.87E-42)
            int r1 = java.lang.Math.min(r4, r1)
            int r3 = java.lang.Math.min(r4, r3)
            if (r1 <= 0) goto L_0x016b
            if (r3 > 0) goto L_0x0088
            goto L_0x016b
        L_0x0088:
            int r4 = r11.save()
            android.graphics.Rect r6 = r10.F
            int r9 = r6.left
            float r9 = (float) r9
            int r6 = r6.top
            float r6 = (float) r6
            r11.translate(r9, r6)
            boolean r6 = r10.isAutoMirrored()
            if (r6 == 0) goto L_0x00a5
            int r6 = d.b.a.r.b((android.graphics.drawable.Drawable) r10)
            if (r6 != r5) goto L_0x00a5
            r6 = 1
            goto L_0x00a6
        L_0x00a5:
            r6 = 0
        L_0x00a6:
            if (r6 == 0) goto L_0x00b7
            android.graphics.Rect r6 = r10.F
            int r6 = r6.width()
            float r6 = (float) r6
            r11.translate(r6, r8)
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r11.scale(r6, r7)
        L_0x00b7:
            android.graphics.Rect r6 = r10.F
            r6.offsetTo(r2, r2)
            d.y.a.a.g$h r6 = r10.y
            android.graphics.Bitmap r7 = r6.f1032f
            if (r7 == 0) goto L_0x00d5
            int r7 = r7.getWidth()
            if (r1 != r7) goto L_0x00d2
            android.graphics.Bitmap r7 = r6.f1032f
            int r7 = r7.getHeight()
            if (r3 != r7) goto L_0x00d2
            r7 = 1
            goto L_0x00d3
        L_0x00d2:
            r7 = 0
        L_0x00d3:
            if (r7 != 0) goto L_0x00df
        L_0x00d5:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r7 = android.graphics.Bitmap.createBitmap(r1, r3, r7)
            r6.f1032f = r7
            r6.f1037k = r5
        L_0x00df:
            boolean r6 = r10.C
            if (r6 != 0) goto L_0x00e9
            d.y.a.a.g$h r6 = r10.y
            r6.a(r1, r3)
            goto L_0x012d
        L_0x00e9:
            d.y.a.a.g$h r6 = r10.y
            boolean r7 = r6.f1037k
            if (r7 != 0) goto L_0x010d
            android.content.res.ColorStateList r7 = r6.f1033g
            android.content.res.ColorStateList r8 = r6.f1029c
            if (r7 != r8) goto L_0x010d
            android.graphics.PorterDuff$Mode r7 = r6.f1034h
            android.graphics.PorterDuff$Mode r8 = r6.f1030d
            if (r7 != r8) goto L_0x010d
            boolean r7 = r6.f1036j
            boolean r8 = r6.f1031e
            if (r7 != r8) goto L_0x010d
            int r7 = r6.f1035i
            d.y.a.a.g$g r6 = r6.b
            int r6 = r6.getRootAlpha()
            if (r7 != r6) goto L_0x010d
            r6 = 1
            goto L_0x010e
        L_0x010d:
            r6 = 0
        L_0x010e:
            if (r6 != 0) goto L_0x012d
            d.y.a.a.g$h r6 = r10.y
            r6.a(r1, r3)
            d.y.a.a.g$h r1 = r10.y
            android.content.res.ColorStateList r3 = r1.f1029c
            r1.f1033g = r3
            android.graphics.PorterDuff$Mode r3 = r1.f1030d
            r1.f1034h = r3
            d.y.a.a.g$g r3 = r1.b
            int r3 = r3.getRootAlpha()
            r1.f1035i = r3
            boolean r3 = r1.f1031e
            r1.f1036j = r3
            r1.f1037k = r2
        L_0x012d:
            d.y.a.a.g$h r1 = r10.y
            android.graphics.Rect r3 = r10.F
            d.y.a.a.g$g r6 = r1.b
            int r6 = r6.getRootAlpha()
            r7 = 255(0xff, float:3.57E-43)
            if (r6 >= r7) goto L_0x013c
            r2 = 1
        L_0x013c:
            r6 = 0
            if (r2 != 0) goto L_0x0143
            if (r0 != 0) goto L_0x0143
            r0 = r6
            goto L_0x0163
        L_0x0143:
            android.graphics.Paint r2 = r1.f1038l
            if (r2 != 0) goto L_0x0151
            android.graphics.Paint r2 = new android.graphics.Paint
            r2.<init>()
            r1.f1038l = r2
            r2.setFilterBitmap(r5)
        L_0x0151:
            android.graphics.Paint r2 = r1.f1038l
            d.y.a.a.g$g r5 = r1.b
            int r5 = r5.getRootAlpha()
            r2.setAlpha(r5)
            android.graphics.Paint r2 = r1.f1038l
            r2.setColorFilter(r0)
            android.graphics.Paint r0 = r1.f1038l
        L_0x0163:
            android.graphics.Bitmap r1 = r1.f1032f
            r11.drawBitmap(r1, r6, r3, r0)
            r11.restoreToCount(r4)
        L_0x016b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.y.a.a.g.draw(android.graphics.Canvas):void");
    }

    public int getAlpha() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.y.b.getRootAlpha();
    }

    public int getChangingConfigurations() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.y.getChangingConfigurations();
    }

    public ColorFilter getColorFilter() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getColorFilter();
        }
        return this.A;
    }

    public Drawable.ConstantState getConstantState() {
        if (this.x != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.x.getConstantState());
        }
        this.y.a = getChangingConfigurations();
        return this.y;
    }

    public int getIntrinsicHeight() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.y.b.f1026j;
    }

    public int getIntrinsicWidth() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.y.b.f1025i;
    }

    public int getOpacity() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, (Resources.Theme) null);
        }
    }

    public void invalidateSelf() {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public boolean isAutoMirrored() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.y.f1031e;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0019, code lost:
        r0 = r1.y.f1029c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000f, code lost:
        r0 = r1.y;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean isStateful() {
        /*
            r1 = this;
            android.graphics.drawable.Drawable r0 = r1.x
            if (r0 == 0) goto L_0x0009
            boolean r0 = r0.isStateful()
            return r0
        L_0x0009:
            boolean r0 = super.isStateful()
            if (r0 != 0) goto L_0x0028
            d.y.a.a.g$h r0 = r1.y
            if (r0 == 0) goto L_0x0026
            boolean r0 = r0.a()
            if (r0 != 0) goto L_0x0028
            d.y.a.a.g$h r0 = r1.y
            android.content.res.ColorStateList r0 = r0.f1029c
            if (r0 == 0) goto L_0x0026
            boolean r0 = r0.isStateful()
            if (r0 == 0) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            r0 = 0
            goto L_0x0029
        L_0x0028:
            r0 = 1
        L_0x0029:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.y.a.a.g.isStateful():boolean");
    }

    public Drawable mutate() {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.B && super.mutate() == this) {
            this.y = new h(this.y);
            this.B = true;
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z2 = false;
        h hVar = this.y;
        ColorStateList colorStateList = hVar.f1029c;
        if (!(colorStateList == null || (mode = hVar.f1030d) == null)) {
            this.z = a(colorStateList, mode);
            invalidateSelf();
            z2 = true;
        }
        if (hVar.a()) {
            boolean a2 = hVar.b.f1024h.a(iArr);
            hVar.f1037k |= a2;
            if (a2) {
                invalidateSelf();
                return true;
            }
        }
        return z2;
    }

    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.y.b.getRootAlpha() != i2) {
            this.y.b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    public void setAutoMirrored(boolean z2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setAutoMirrored(z2);
        } else {
            this.y.f1031e = z2;
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.A = colorFilter;
        invalidateSelf();
    }

    public void setTint(int i2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            r.b(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.x;
        if (drawable != null) {
            r.a(drawable, colorStateList);
            return;
        }
        h hVar = this.y;
        if (hVar.f1029c != colorStateList) {
            hVar.f1029c = colorStateList;
            this.z = a(colorStateList, hVar.f1030d);
            invalidateSelf();
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.x;
        if (drawable != null) {
            r.a(drawable, mode);
            return;
        }
        h hVar = this.y;
        if (hVar.f1030d != mode) {
            hVar.f1030d = mode;
            this.z = a(hVar.f1029c, mode);
            invalidateSelf();
        }
    }

    public boolean setVisible(boolean z2, boolean z3) {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.setVisible(z2, z3);
        }
        return super.setVisible(z2, z3);
    }

    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public static class d extends e {
        public final Matrix a = new Matrix();
        public final ArrayList<e> b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        public float f1007c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        public float f1008d = 0.0f;

        /* renamed from: e  reason: collision with root package name */
        public float f1009e = 0.0f;

        /* renamed from: f  reason: collision with root package name */
        public float f1010f = 1.0f;

        /* renamed from: g  reason: collision with root package name */
        public float f1011g = 1.0f;

        /* renamed from: h  reason: collision with root package name */
        public float f1012h = 0.0f;

        /* renamed from: i  reason: collision with root package name */
        public float f1013i = 0.0f;

        /* renamed from: j  reason: collision with root package name */
        public final Matrix f1014j = new Matrix();

        /* renamed from: k  reason: collision with root package name */
        public int f1015k;

        /* renamed from: l  reason: collision with root package name */
        public int[] f1016l;
        public String m = null;

        public d(d dVar, d.f.a<String, Object> aVar) {
            super((a) null);
            f fVar;
            this.f1007c = dVar.f1007c;
            this.f1008d = dVar.f1008d;
            this.f1009e = dVar.f1009e;
            this.f1010f = dVar.f1010f;
            this.f1011g = dVar.f1011g;
            this.f1012h = dVar.f1012h;
            this.f1013i = dVar.f1013i;
            this.f1016l = dVar.f1016l;
            String str = dVar.m;
            this.m = str;
            this.f1015k = dVar.f1015k;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f1014j.set(dVar.f1014j);
            ArrayList<e> arrayList = dVar.b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                e eVar = arrayList.get(i2);
                if (eVar instanceof d) {
                    this.b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        fVar = new c((c) eVar);
                    } else if (eVar instanceof b) {
                        fVar = new b((b) eVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.b.add(fVar);
                    String str2 = fVar.b;
                    if (str2 != null) {
                        aVar.put(str2, fVar);
                    }
                }
            }
        }

        public boolean a() {
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                if (this.b.get(i2).a()) {
                    return true;
                }
            }
            return false;
        }

        public final void b() {
            this.f1014j.reset();
            this.f1014j.postTranslate(-this.f1008d, -this.f1009e);
            this.f1014j.postScale(this.f1010f, this.f1011g);
            this.f1014j.postRotate(this.f1007c, 0.0f, 0.0f);
            this.f1014j.postTranslate(this.f1012h + this.f1008d, this.f1013i + this.f1009e);
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.f1014j;
        }

        public float getPivotX() {
            return this.f1008d;
        }

        public float getPivotY() {
            return this.f1009e;
        }

        public float getRotation() {
            return this.f1007c;
        }

        public float getScaleX() {
            return this.f1010f;
        }

        public float getScaleY() {
            return this.f1011g;
        }

        public float getTranslateX() {
            return this.f1012h;
        }

        public float getTranslateY() {
            return this.f1013i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f1008d) {
                this.f1008d = f2;
                b();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f1009e) {
                this.f1009e = f2;
                b();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.f1007c) {
                this.f1007c = f2;
                b();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f1010f) {
                this.f1010f = f2;
                b();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.f1011g) {
                this.f1011g = f2;
                b();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.f1012h) {
                this.f1012h = f2;
                b();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.f1013i) {
                this.f1013i = f2;
                b();
            }
        }

        public boolean a(int[] iArr) {
            boolean z = false;
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                z |= this.b.get(i2).a(iArr);
            }
            return z;
        }

        public d() {
            super((a) null);
        }
    }

    public static class i extends Drawable.ConstantState {
        public final Drawable.ConstantState a;

        public i(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            g gVar = new g();
            gVar.x = (VectorDrawable) this.a.newDrawable();
            return gVar;
        }

        public Drawable newDrawable(Resources resources) {
            g gVar = new g();
            gVar.x = (VectorDrawable) this.a.newDrawable(resources);
            return gVar;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            g gVar = new g();
            gVar.x = (VectorDrawable) this.a.newDrawable(resources, theme);
            return gVar;
        }
    }

    public static abstract class f extends e {
        public d.i.c.b[] a = null;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public int f1017c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f1018d;

        public f() {
            super((a) null);
        }

        public boolean b() {
            return false;
        }

        public d.i.c.b[] getPathData() {
            return this.a;
        }

        public String getPathName() {
            return this.b;
        }

        public void setPathData(d.i.c.b[] bVarArr) {
            if (!r.a(this.a, bVarArr)) {
                this.a = r.a(bVarArr);
                return;
            }
            d.i.c.b[] bVarArr2 = this.a;
            for (int i2 = 0; i2 < bVarArr.length; i2++) {
                bVarArr2[i2].a = bVarArr[i2].a;
                for (int i3 = 0; i3 < bVarArr[i2].b.length; i3++) {
                    bVarArr2[i2].b[i3] = bVarArr[i2].b[i3];
                }
            }
        }

        public f(f fVar) {
            super((a) null);
            this.b = fVar.b;
            this.f1018d = fVar.f1018d;
            this.a = r.a(fVar.a);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0036 A[Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }] */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003b A[Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static d.y.a.a.g a(android.content.res.Resources r6, int r7, android.content.res.Resources.Theme r8) {
        /*
            java.lang.String r0 = "parser error"
            java.lang.String r1 = "VectorDrawableCompat"
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 24
            if (r2 < r3) goto L_0x0021
            d.y.a.a.g r0 = new d.y.a.a.g
            r0.<init>()
            android.graphics.drawable.Drawable r6 = r6.getDrawable(r7, r8)
            r0.x = r6
            d.y.a.a.g$i r6 = new d.y.a.a.g$i
            android.graphics.drawable.Drawable r7 = r0.x
            android.graphics.drawable.Drawable$ConstantState r7 = r7.getConstantState()
            r6.<init>(r7)
            return r0
        L_0x0021:
            android.content.res.XmlResourceParser r7 = r6.getXml(r7)     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r7)     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
        L_0x0029:
            int r3 = r7.next()     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
            r4 = 2
            if (r3 == r4) goto L_0x0034
            r5 = 1
            if (r3 == r5) goto L_0x0034
            goto L_0x0029
        L_0x0034:
            if (r3 != r4) goto L_0x003b
            d.y.a.a.g r6 = createFromXmlInner(r6, r7, r2, r8)     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
            return r6
        L_0x003b:
            org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
            java.lang.String r7 = "No start tag found"
            r6.<init>(r7)     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
            throw r6     // Catch:{ XmlPullParserException -> 0x0048, IOException -> 0x0043 }
        L_0x0043:
            r6 = move-exception
            android.util.Log.e(r1, r0, r6)
            goto L_0x004c
        L_0x0048:
            r6 = move-exception
            android.util.Log.e(r1, r0, r6)
        L_0x004c:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: d.y.a.a.g.a(android.content.res.Resources, int, android.content.res.Resources$Theme):d.y.a.a.g");
    }

    /* JADX WARNING: Removed duplicated region for block: B:132:0x043e  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00bc  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00e1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void inflate(android.content.res.Resources r28, org.xmlpull.v1.XmlPullParser r29, android.util.AttributeSet r30, android.content.res.Resources.Theme r31) {
        /*
            r27 = this;
            r1 = r27
            r2 = r28
            r9 = r29
            r10 = r30
            r11 = r31
            android.graphics.drawable.Drawable r0 = r1.x
            if (r0 == 0) goto L_0x0012
            r0.inflate(r2, r9, r10, r11)
            return
        L_0x0012:
            d.y.a.a.g$h r12 = r1.y
            d.y.a.a.g$g r0 = new d.y.a.a.g$g
            r0.<init>()
            r12.b = r0
            int[] r0 = d.y.a.a.a.a
            android.content.res.TypedArray r3 = d.b.a.r.a((android.content.res.Resources) r2, (android.content.res.Resources.Theme) r11, (android.util.AttributeSet) r10, (int[]) r0)
            d.y.a.a.g$h r4 = r1.y
            d.y.a.a.g$g r5 = r4.b
            r13 = 6
            r14 = -1
            java.lang.String r0 = "tintMode"
            int r0 = d.b.a.r.b(r3, r9, r0, r13, r14)
            android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.SRC_IN
            r15 = 9
            r8 = 5
            r7 = 3
            if (r0 == r7) goto L_0x0049
            if (r0 == r8) goto L_0x004b
            if (r0 == r15) goto L_0x0046
            switch(r0) {
                case 14: goto L_0x0043;
                case 15: goto L_0x0040;
                case 16: goto L_0x003d;
                default: goto L_0x003c;
            }
        L_0x003c:
            goto L_0x004b
        L_0x003d:
            android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.ADD
            goto L_0x004b
        L_0x0040:
            android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.SCREEN
            goto L_0x004b
        L_0x0043:
            android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L_0x004b
        L_0x0046:
            android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.SRC_ATOP
            goto L_0x004b
        L_0x0049:
            android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.SRC_OVER
        L_0x004b:
            r4.f1030d = r6
            java.lang.String r0 = "tint"
            boolean r0 = d.b.a.r.a((org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r0)
            r13 = 0
            r15 = 1
            r14 = 2
            if (r0 == 0) goto L_0x00ac
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r3.getValue(r15, r0)
            int r6 = r0.type
            if (r6 == r14) goto L_0x008d
            r14 = 28
            if (r6 < r14) goto L_0x0073
            r14 = 31
            if (r6 > r14) goto L_0x0073
            int r0 = r0.data
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            goto L_0x00ad
        L_0x0073:
            android.content.res.Resources r0 = r3.getResources()
            int r6 = r3.getResourceId(r15, r13)
            android.content.res.XmlResourceParser r6 = r0.getXml(r6)     // Catch:{ Exception -> 0x0084 }
            android.content.res.ColorStateList r0 = d.b.a.r.a((android.content.res.Resources) r0, (org.xmlpull.v1.XmlPullParser) r6, (android.content.res.Resources.Theme) r11)     // Catch:{ Exception -> 0x0084 }
            goto L_0x00ad
        L_0x0084:
            r0 = move-exception
            java.lang.String r6 = "CSLCompat"
            java.lang.String r14 = "Failed to inflate ColorStateList."
            android.util.Log.e(r6, r14, r0)
            goto L_0x00ac
        L_0x008d:
            java.lang.UnsupportedOperationException r2 = new java.lang.UnsupportedOperationException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Failed to resolve attribute at index "
            r3.append(r4)
            r3.append(r15)
            java.lang.String r4 = ": "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        L_0x00ac:
            r0 = 0
        L_0x00ad:
            if (r0 == 0) goto L_0x00b1
            r4.f1029c = r0
        L_0x00b1:
            boolean r0 = r4.f1031e
            java.lang.String r6 = "autoMirrored"
            boolean r6 = d.b.a.r.a((org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r6)
            if (r6 != 0) goto L_0x00bc
            goto L_0x00c0
        L_0x00bc:
            boolean r0 = r3.getBoolean(r8, r0)
        L_0x00c0:
            r4.f1031e = r0
            float r0 = r5.f1027k
            r14 = 7
            java.lang.String r4 = "viewportWidth"
            float r0 = d.b.a.r.a((android.content.res.TypedArray) r3, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r4, (int) r14, (float) r0)
            r5.f1027k = r0
            float r0 = r5.f1028l
            r6 = 8
            java.lang.String r4 = "viewportHeight"
            float r0 = d.b.a.r.a((android.content.res.TypedArray) r3, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r4, (int) r6, (float) r0)
            r5.f1028l = r0
            float r4 = r5.f1027k
            r19 = 0
            int r4 = (r4 > r19 ? 1 : (r4 == r19 ? 0 : -1))
            if (r4 <= 0) goto L_0x043e
            int r0 = (r0 > r19 ? 1 : (r0 == r19 ? 0 : -1))
            if (r0 <= 0) goto L_0x0422
            float r0 = r5.f1025i
            float r0 = r3.getDimension(r7, r0)
            r5.f1025i = r0
            float r0 = r5.f1026j
            r4 = 2
            float r0 = r3.getDimension(r4, r0)
            r5.f1026j = r0
            float r4 = r5.f1025i
            int r4 = (r4 > r19 ? 1 : (r4 == r19 ? 0 : -1))
            if (r4 <= 0) goto L_0x0406
            int r0 = (r0 > r19 ? 1 : (r0 == r19 ? 0 : -1))
            if (r0 <= 0) goto L_0x03ea
            float r0 = r5.getAlpha()
            r4 = 4
            java.lang.String r6 = "alpha"
            float r0 = d.b.a.r.a((android.content.res.TypedArray) r3, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r6, (int) r4, (float) r0)
            r5.setAlpha(r0)
            java.lang.String r0 = r3.getString(r13)
            if (r0 == 0) goto L_0x011b
            r5.n = r0
            d.f.a<java.lang.String, java.lang.Object> r6 = r5.p
            r6.put(r0, r5)
        L_0x011b:
            r3.recycle()
            int r0 = r27.getChangingConfigurations()
            r12.a = r0
            r12.f1037k = r15
            d.y.a.a.g$h r0 = r1.y
            d.y.a.a.g$g r6 = r0.b
            java.util.ArrayDeque r5 = new java.util.ArrayDeque
            r5.<init>()
            d.y.a.a.g$d r3 = r6.f1024h
            r5.push(r3)
            int r3 = r29.getEventType()
            int r20 = r29.getDepth()
            int r14 = r20 + 1
            r20 = 1
        L_0x0140:
            if (r3 == r15) goto L_0x03d1
            int r4 = r29.getDepth()
            if (r4 >= r14) goto L_0x014a
            if (r3 == r7) goto L_0x03d1
        L_0x014a:
            java.lang.String r4 = "group"
            r7 = 2
            if (r3 != r7) goto L_0x03a1
            java.lang.String r3 = r29.getName()
            java.lang.Object r7 = r5.peek()
            d.y.a.a.g$d r7 = (d.y.a.a.g.d) r7
            java.lang.String r8 = "path"
            boolean r8 = r8.equals(r3)
            java.lang.String r15 = "fillType"
            java.lang.String r13 = "pathData"
            if (r8 == 0) goto L_0x02a8
            d.y.a.a.g$c r8 = new d.y.a.a.g$c
            r8.<init>()
            int[] r3 = d.y.a.a.a.f986c
            android.content.res.TypedArray r4 = d.b.a.r.a((android.content.res.Resources) r2, (android.content.res.Resources.Theme) r11, (android.util.AttributeSet) r10, (int[]) r3)
            r3 = 0
            r8.f999e = r3
            boolean r13 = d.b.a.r.a((org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r13)
            if (r13 != 0) goto L_0x018b
            r1 = r4
            r25 = r5
            r26 = r6
            r13 = r8
            r18 = r14
            r5 = 4
            r17 = -1
            r21 = 9
            r22 = 8
            r14 = r7
            goto L_0x027a
        L_0x018b:
            r13 = 0
            java.lang.String r3 = r4.getString(r13)
            if (r3 == 0) goto L_0x0194
            r8.b = r3
        L_0x0194:
            r3 = 2
            java.lang.String r13 = r4.getString(r3)
            if (r13 == 0) goto L_0x01a1
            d.i.c.b[] r3 = d.b.a.r.b((java.lang.String) r13)
            r8.a = r3
        L_0x01a1:
            r13 = 1
            r20 = 0
            java.lang.String r23 = "fillColor"
            r18 = 0
            r3 = r4
            r24 = r4
            r4 = r29
            r25 = r5
            r5 = r31
            r26 = r6
            r6 = r23
            r18 = r14
            r1 = 3
            r14 = r7
            r7 = r13
            r13 = r8
            r1 = 5
            r8 = r20
            d.i.b.b.a r3 = d.b.a.r.a((android.content.res.TypedArray) r3, (org.xmlpull.v1.XmlPullParser) r4, (android.content.res.Resources.Theme) r5, (java.lang.String) r6, (int) r7, (int) r8)
            r13.f1002h = r3
            r3 = 12
            float r4 = r13.f1004j
            java.lang.String r5 = "fillAlpha"
            r8 = r24
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r8, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r5, (int) r3, (float) r4)
            r13.f1004j = r3
            java.lang.String r3 = "strokeLineCap"
            r4 = -1
            r7 = 8
            int r3 = d.b.a.r.b(r8, r9, r3, r7, r4)
            android.graphics.Paint$Cap r4 = r13.n
            if (r3 == 0) goto L_0x01ec
            r5 = 1
            if (r3 == r5) goto L_0x01e9
            r5 = 2
            if (r3 == r5) goto L_0x01e6
            goto L_0x01ee
        L_0x01e6:
            android.graphics.Paint$Cap r4 = android.graphics.Paint.Cap.SQUARE
            goto L_0x01ee
        L_0x01e9:
            android.graphics.Paint$Cap r4 = android.graphics.Paint.Cap.ROUND
            goto L_0x01ee
        L_0x01ec:
            android.graphics.Paint$Cap r4 = android.graphics.Paint.Cap.BUTT
        L_0x01ee:
            r13.n = r4
            java.lang.String r3 = "strokeLineJoin"
            r5 = -1
            r6 = 9
            int r3 = d.b.a.r.b(r8, r9, r3, r6, r5)
            android.graphics.Paint$Join r4 = r13.o
            if (r3 == 0) goto L_0x020a
            r5 = 1
            if (r3 == r5) goto L_0x0207
            r5 = 2
            if (r3 == r5) goto L_0x0204
            goto L_0x020c
        L_0x0204:
            android.graphics.Paint$Join r4 = android.graphics.Paint.Join.BEVEL
            goto L_0x020c
        L_0x0207:
            android.graphics.Paint$Join r4 = android.graphics.Paint.Join.ROUND
            goto L_0x020c
        L_0x020a:
            android.graphics.Paint$Join r4 = android.graphics.Paint.Join.MITER
        L_0x020c:
            r13.o = r4
            r3 = 10
            float r4 = r13.p
            java.lang.String r5 = "strokeMiterLimit"
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r8, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r5, (int) r3, (float) r4)
            r13.p = r3
            r16 = 3
            r19 = 0
            java.lang.String r20 = "strokeColor"
            r3 = r8
            r4 = r29
            r17 = -1
            r5 = r31
            r21 = 9
            r6 = r20
            r22 = 8
            r7 = r16
            r1 = r8
            r8 = r19
            d.i.b.b.a r3 = d.b.a.r.a((android.content.res.TypedArray) r3, (org.xmlpull.v1.XmlPullParser) r4, (android.content.res.Resources.Theme) r5, (java.lang.String) r6, (int) r7, (int) r8)
            r13.f1000f = r3
            r3 = 11
            float r4 = r13.f1003i
            java.lang.String r5 = "strokeAlpha"
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r1, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r5, (int) r3, (float) r4)
            r13.f1003i = r3
            float r3 = r13.f1001g
            java.lang.String r4 = "strokeWidth"
            r5 = 4
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r1, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r4, (int) r5, (float) r3)
            r13.f1001g = r3
            float r3 = r13.f1006l
            java.lang.String r4 = "trimPathEnd"
            r6 = 6
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r1, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r4, (int) r6, (float) r3)
            r13.f1006l = r3
            float r3 = r13.m
            java.lang.String r4 = "trimPathOffset"
            r6 = 7
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r1, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r4, (int) r6, (float) r3)
            r13.m = r3
            float r3 = r13.f1005k
            java.lang.String r4 = "trimPathStart"
            r6 = 5
            float r3 = d.b.a.r.a((android.content.res.TypedArray) r1, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r4, (int) r6, (float) r3)
            r13.f1005k = r3
            r3 = 13
            int r4 = r13.f1017c
            int r3 = d.b.a.r.b(r1, r9, r15, r3, r4)
            r13.f1017c = r3
        L_0x027a:
            r1.recycle()
            java.util.ArrayList<d.y.a.a.g$e> r1 = r14.b
            r1.add(r13)
            java.lang.String r1 = r13.getPathName()
            if (r1 == 0) goto L_0x0294
            r1 = r26
            d.f.a<java.lang.String, java.lang.Object> r3 = r1.p
            java.lang.String r4 = r13.getPathName()
            r3.put(r4, r13)
            goto L_0x0296
        L_0x0294:
            r1 = r26
        L_0x0296:
            int r3 = r0.a
            int r4 = r13.f1018d
            r3 = r3 | r4
            r0.a = r3
            r7 = r25
            r5 = 7
            r6 = 0
            r8 = 6
            r13 = 5
            r15 = 2
            r20 = 0
            goto L_0x039f
        L_0x02a8:
            r25 = r5
            r1 = r6
            r18 = r14
            r5 = 4
            r17 = -1
            r21 = 9
            r22 = 8
            r14 = r7
            java.lang.String r6 = "clip-path"
            boolean r6 = r6.equals(r3)
            if (r6 == 0) goto L_0x030c
            d.y.a.a.g$b r3 = new d.y.a.a.g$b
            r3.<init>()
            boolean r4 = d.b.a.r.a((org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r13)
            if (r4 != 0) goto L_0x02c9
            goto L_0x02ef
        L_0x02c9:
            int[] r4 = d.y.a.a.a.f987d
            android.content.res.TypedArray r4 = d.b.a.r.a((android.content.res.Resources) r2, (android.content.res.Resources.Theme) r11, (android.util.AttributeSet) r10, (int[]) r4)
            r6 = 0
            java.lang.String r7 = r4.getString(r6)
            if (r7 == 0) goto L_0x02d8
            r3.b = r7
        L_0x02d8:
            r7 = 1
            java.lang.String r8 = r4.getString(r7)
            if (r8 == 0) goto L_0x02e5
            d.i.c.b[] r7 = d.b.a.r.b((java.lang.String) r8)
            r3.a = r7
        L_0x02e5:
            r7 = 2
            int r8 = d.b.a.r.b(r4, r9, r15, r7, r6)
            r3.f1017c = r8
            r4.recycle()
        L_0x02ef:
            java.util.ArrayList<d.y.a.a.g$e> r4 = r14.b
            r4.add(r3)
            java.lang.String r4 = r3.getPathName()
            if (r4 == 0) goto L_0x0303
            d.f.a<java.lang.String, java.lang.Object> r4 = r1.p
            java.lang.String r6 = r3.getPathName()
            r4.put(r6, r3)
        L_0x0303:
            int r4 = r0.a
            int r3 = r3.f1018d
            r3 = r3 | r4
            r0.a = r3
            goto L_0x0398
        L_0x030c:
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x0398
            d.y.a.a.g$d r3 = new d.y.a.a.g$d
            r3.<init>()
            int[] r4 = d.y.a.a.a.b
            android.content.res.TypedArray r4 = d.b.a.r.a((android.content.res.Resources) r2, (android.content.res.Resources.Theme) r11, (android.util.AttributeSet) r10, (int[]) r4)
            r6 = 0
            r3.f1016l = r6
            float r7 = r3.f1007c
            java.lang.String r8 = "rotation"
            r13 = 5
            float r7 = d.b.a.r.a((android.content.res.TypedArray) r4, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r8, (int) r13, (float) r7)
            r3.f1007c = r7
            float r7 = r3.f1008d
            r8 = 1
            float r7 = r4.getFloat(r8, r7)
            r3.f1008d = r7
            float r7 = r3.f1009e
            r15 = 2
            float r7 = r4.getFloat(r15, r7)
            r3.f1009e = r7
            float r7 = r3.f1010f
            java.lang.String r6 = "scaleX"
            r8 = 3
            float r6 = d.b.a.r.a((android.content.res.TypedArray) r4, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r6, (int) r8, (float) r7)
            r3.f1010f = r6
            float r6 = r3.f1011g
            java.lang.String r7 = "scaleY"
            float r6 = d.b.a.r.a((android.content.res.TypedArray) r4, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r7, (int) r5, (float) r6)
            r3.f1011g = r6
            float r6 = r3.f1012h
            java.lang.String r7 = "translateX"
            r8 = 6
            float r6 = d.b.a.r.a((android.content.res.TypedArray) r4, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r7, (int) r8, (float) r6)
            r3.f1012h = r6
            float r6 = r3.f1013i
            java.lang.String r7 = "translateY"
            r5 = 7
            float r6 = d.b.a.r.a((android.content.res.TypedArray) r4, (org.xmlpull.v1.XmlPullParser) r9, (java.lang.String) r7, (int) r5, (float) r6)
            r3.f1013i = r6
            r6 = 0
            java.lang.String r7 = r4.getString(r6)
            if (r7 == 0) goto L_0x0371
            r3.m = r7
        L_0x0371:
            r3.b()
            r4.recycle()
            java.util.ArrayList<d.y.a.a.g$e> r4 = r14.b
            r4.add(r3)
            r7 = r25
            r7.push(r3)
            java.lang.String r4 = r3.getGroupName()
            if (r4 == 0) goto L_0x0390
            d.f.a<java.lang.String, java.lang.Object> r4 = r1.p
            java.lang.String r14 = r3.getGroupName()
            r4.put(r14, r3)
        L_0x0390:
            int r4 = r0.a
            int r3 = r3.f1015k
            r3 = r3 | r4
            r0.a = r3
            goto L_0x039f
        L_0x0398:
            r7 = r25
            r5 = 7
            r6 = 0
            r8 = 6
            r13 = 5
            r15 = 2
        L_0x039f:
            r14 = 3
            goto L_0x03c0
        L_0x03a1:
            r7 = r5
            r1 = r6
            r18 = r14
            r5 = 7
            r6 = 0
            r8 = 6
            r13 = 5
            r14 = 3
            r15 = 2
            r17 = -1
            r21 = 9
            r22 = 8
            if (r3 != r14) goto L_0x03c0
            java.lang.String r3 = r29.getName()
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x03c0
            r7.pop()
        L_0x03c0:
            int r3 = r29.next()
            r6 = r1
            r5 = r7
            r14 = r18
            r4 = 4
            r7 = 3
            r8 = 5
            r13 = 0
            r15 = 1
            r1 = r27
            goto L_0x0140
        L_0x03d1:
            if (r20 != 0) goto L_0x03e0
            android.content.res.ColorStateList r0 = r12.f1029c
            android.graphics.PorterDuff$Mode r1 = r12.f1030d
            r2 = r27
            android.graphics.PorterDuffColorFilter r0 = r2.a((android.content.res.ColorStateList) r0, (android.graphics.PorterDuff.Mode) r1)
            r2.z = r0
            return
        L_0x03e0:
            r2 = r27
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.String r1 = "no path defined"
            r0.<init>(r1)
            throw r0
        L_0x03ea:
            r2 = r1
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = r3.getPositionDescription()
            r1.append(r3)
            java.lang.String r3 = "<vector> tag requires height > 0"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0406:
            r2 = r1
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = r3.getPositionDescription()
            r1.append(r3)
            java.lang.String r3 = "<vector> tag requires width > 0"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0422:
            r2 = r1
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = r3.getPositionDescription()
            r1.append(r3)
            java.lang.String r3 = "<vector> tag requires viewportHeight > 0"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x043e:
            r2 = r1
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = r3.getPositionDescription()
            r1.append(r3)
            java.lang.String r3 = "<vector> tag requires viewportWidth > 0"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.y.a.a.g.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    public g(h hVar) {
        this.C = true;
        this.D = new float[9];
        this.E = new Matrix();
        this.F = new Rect();
        this.y = hVar;
        this.z = a(hVar.f1029c, hVar.f1030d);
    }

    /* renamed from: d.y.a.a.g$g  reason: collision with other inner class name */
    public static class C0056g {
        public static final Matrix q = new Matrix();
        public final Path a;
        public final Path b;

        /* renamed from: c  reason: collision with root package name */
        public final Matrix f1019c;

        /* renamed from: d  reason: collision with root package name */
        public Paint f1020d;

        /* renamed from: e  reason: collision with root package name */
        public Paint f1021e;

        /* renamed from: f  reason: collision with root package name */
        public PathMeasure f1022f;

        /* renamed from: g  reason: collision with root package name */
        public int f1023g;

        /* renamed from: h  reason: collision with root package name */
        public final d f1024h;

        /* renamed from: i  reason: collision with root package name */
        public float f1025i;

        /* renamed from: j  reason: collision with root package name */
        public float f1026j;

        /* renamed from: k  reason: collision with root package name */
        public float f1027k;

        /* renamed from: l  reason: collision with root package name */
        public float f1028l;
        public int m;
        public String n;
        public Boolean o;
        public final d.f.a<String, Object> p;

        public C0056g() {
            this.f1019c = new Matrix();
            this.f1025i = 0.0f;
            this.f1026j = 0.0f;
            this.f1027k = 0.0f;
            this.f1028l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new d.f.a<>();
            this.f1024h = new d();
            this.a = new Path();
            this.b = new Path();
        }

        /* JADX WARNING: type inference failed for: r11v0 */
        /* JADX WARNING: type inference failed for: r11v1, types: [boolean] */
        /* JADX WARNING: type inference failed for: r11v2 */
        public final void a(d dVar, Matrix matrix, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            C0056g gVar;
            C0056g gVar2 = this;
            d dVar2 = dVar;
            Canvas canvas2 = canvas;
            ColorFilter colorFilter2 = colorFilter;
            dVar2.a.set(matrix);
            dVar2.a.preConcat(dVar2.f1014j);
            canvas.save();
            ? r11 = 0;
            int i4 = 0;
            while (i4 < dVar2.b.size()) {
                e eVar = dVar2.b.get(i4);
                if (eVar instanceof d) {
                    a((d) eVar, dVar2.a, canvas, i2, i3, colorFilter);
                } else if (eVar instanceof f) {
                    f fVar = (f) eVar;
                    float f2 = ((float) i2) / gVar2.f1027k;
                    float f3 = ((float) i3) / gVar2.f1028l;
                    float min = Math.min(f2, f3);
                    Matrix matrix2 = dVar2.a;
                    gVar2.f1019c.set(matrix2);
                    gVar2.f1019c.postScale(f2, f3);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix2.mapVectors(fArr);
                    float f4 = min;
                    float f5 = (fArr[r11] * fArr[3]) - (fArr[1] * fArr[2]);
                    float max = Math.max((float) Math.hypot((double) fArr[r11], (double) fArr[1]), (float) Math.hypot((double) fArr[2], (double) fArr[3]));
                    float abs = max > 0.0f ? Math.abs(f5) / max : 0.0f;
                    if (abs == 0.0f) {
                        gVar = this;
                    } else {
                        gVar = this;
                        Path path = gVar.a;
                        if (fVar != null) {
                            path.reset();
                            d.i.c.b[] bVarArr = fVar.a;
                            if (bVarArr != null) {
                                d.i.c.b.a(bVarArr, path);
                            }
                            Path path2 = gVar.a;
                            gVar.b.reset();
                            if (fVar.b()) {
                                gVar.b.setFillType(fVar.f1017c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                gVar.b.addPath(path2, gVar.f1019c);
                                canvas2.clipPath(gVar.b);
                            } else {
                                c cVar = (c) fVar;
                                if (!(cVar.f1005k == 0.0f && cVar.f1006l == 1.0f)) {
                                    float f6 = cVar.f1005k;
                                    float f7 = cVar.m;
                                    float f8 = (f6 + f7) % 1.0f;
                                    float f9 = (cVar.f1006l + f7) % 1.0f;
                                    if (gVar.f1022f == null) {
                                        gVar.f1022f = new PathMeasure();
                                    }
                                    gVar.f1022f.setPath(gVar.a, r11);
                                    float length = gVar.f1022f.getLength();
                                    float f10 = f8 * length;
                                    float f11 = f9 * length;
                                    path2.reset();
                                    if (f10 > f11) {
                                        gVar.f1022f.getSegment(f10, length, path2, true);
                                        gVar.f1022f.getSegment(0.0f, f11, path2, true);
                                    } else {
                                        gVar.f1022f.getSegment(f10, f11, path2, true);
                                    }
                                    path2.rLineTo(0.0f, 0.0f);
                                }
                                gVar.b.addPath(path2, gVar.f1019c);
                                d.i.b.b.a aVar = cVar.f1002h;
                                if (aVar.a() || aVar.f557c != 0) {
                                    d.i.b.b.a aVar2 = cVar.f1002h;
                                    if (gVar.f1021e == null) {
                                        Paint paint = new Paint(1);
                                        gVar.f1021e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                    }
                                    Paint paint2 = gVar.f1021e;
                                    if (aVar2.a()) {
                                        Shader shader = aVar2.a;
                                        shader.setLocalMatrix(gVar.f1019c);
                                        paint2.setShader(shader);
                                        paint2.setAlpha(Math.round(cVar.f1004j * 255.0f));
                                    } else {
                                        paint2.setShader((Shader) null);
                                        paint2.setAlpha(255);
                                        paint2.setColor(g.a(aVar2.f557c, cVar.f1004j));
                                    }
                                    paint2.setColorFilter(colorFilter2);
                                    gVar.b.setFillType(cVar.f1017c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    canvas2.drawPath(gVar.b, paint2);
                                }
                                d.i.b.b.a aVar3 = cVar.f1000f;
                                if (aVar3.a() || aVar3.f557c != 0) {
                                    d.i.b.b.a aVar4 = cVar.f1000f;
                                    if (gVar.f1020d == null) {
                                        Paint paint3 = new Paint(1);
                                        gVar.f1020d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                    }
                                    Paint paint4 = gVar.f1020d;
                                    Paint.Join join = cVar.o;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    Paint.Cap cap = cVar.n;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(cVar.p);
                                    if (aVar4.a()) {
                                        Shader shader2 = aVar4.a;
                                        shader2.setLocalMatrix(gVar.f1019c);
                                        paint4.setShader(shader2);
                                        paint4.setAlpha(Math.round(cVar.f1003i * 255.0f));
                                    } else {
                                        paint4.setShader((Shader) null);
                                        paint4.setAlpha(255);
                                        paint4.setColor(g.a(aVar4.f557c, cVar.f1003i));
                                    }
                                    paint4.setColorFilter(colorFilter2);
                                    paint4.setStrokeWidth(cVar.f1001g * abs * f4);
                                    canvas2.drawPath(gVar.b, paint4);
                                }
                            }
                        } else {
                            throw null;
                        }
                    }
                    i4++;
                    gVar2 = gVar;
                    r11 = 0;
                }
                int i5 = i2;
                int i6 = i3;
                gVar = gVar2;
                i4++;
                gVar2 = gVar;
                r11 = 0;
            }
            C0056g gVar3 = gVar2;
            canvas.restore();
        }

        public float getAlpha() {
            return ((float) getRootAlpha()) / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.m = i2;
        }

        public C0056g(C0056g gVar) {
            this.f1019c = new Matrix();
            this.f1025i = 0.0f;
            this.f1026j = 0.0f;
            this.f1027k = 0.0f;
            this.f1028l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            d.f.a<String, Object> aVar = new d.f.a<>();
            this.p = aVar;
            this.f1024h = new d(gVar.f1024h, aVar);
            this.a = new Path(gVar.a);
            this.b = new Path(gVar.b);
            this.f1025i = gVar.f1025i;
            this.f1026j = gVar.f1026j;
            this.f1027k = gVar.f1027k;
            this.f1028l = gVar.f1028l;
            this.f1023g = gVar.f1023g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                this.p.put(str, this);
            }
            this.o = gVar.o;
        }
    }

    public static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (((float) Color.alpha(i2)) * f2)) << 24);
    }
}
