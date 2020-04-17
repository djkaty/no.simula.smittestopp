package d.b.e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$drawable;
import d.b.a.r;
import d.b.e.j;
import d.f.i;
import d.y.a.a.c;
import d.y.a.a.g;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

public final class n0 {

    /* renamed from: h  reason: collision with root package name */
    public static final PorterDuff.Mode f360h = PorterDuff.Mode.SRC_IN;

    /* renamed from: i  reason: collision with root package name */
    public static n0 f361i;

    /* renamed from: j  reason: collision with root package name */
    public static final c f362j = new c(6);
    public WeakHashMap<Context, i<ColorStateList>> a;
    public d.f.a<String, d> b;

    /* renamed from: c  reason: collision with root package name */
    public i<String> f363c;

    /* renamed from: d  reason: collision with root package name */
    public final WeakHashMap<Context, d.f.e<WeakReference<Drawable.ConstantState>>> f364d = new WeakHashMap<>(0);

    /* renamed from: e  reason: collision with root package name */
    public TypedValue f365e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f366f;

    /* renamed from: g  reason: collision with root package name */
    public e f367g;

    public static class a implements d {
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return d.b.c.a.a.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                return null;
            }
        }
    }

    public static class b implements d {
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                d.y.a.a.c cVar = new d.y.a.a.c(context, (c.b) null, (Resources) null);
                cVar.inflate(resources, xmlPullParser, attributeSet, theme);
                return cVar;
            } catch (Exception e2) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e2);
                return null;
            }
        }
    }

    public static class c extends d.f.f<Integer, PorterDuffColorFilter> {
        public c(int i2) {
            super(i2);
        }
    }

    public interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface e {
    }

    public static class f implements d {
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return g.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e2);
                return null;
            }
        }
    }

    public static synchronized n0 a() {
        n0 n0Var;
        synchronized (n0.class) {
            if (f361i == null) {
                n0 n0Var2 = new n0();
                f361i = n0Var2;
                if (Build.VERSION.SDK_INT < 24) {
                    n0Var2.a("vector", (d) new f());
                    n0Var2.a("animated-vector", (d) new b());
                    n0Var2.a("animated-selector", (d) new a());
                }
            }
            n0Var = f361i;
        }
        return n0Var;
    }

    public synchronized Drawable b(Context context, int i2) {
        return a(context, i2, false);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0006, code lost:
        r0 = r0.get(r4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.content.res.ColorStateList c(android.content.Context r4, int r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.WeakHashMap<android.content.Context, d.f.i<android.content.res.ColorStateList>> r0 = r3.a     // Catch:{ all -> 0x004d }
            r1 = 0
            if (r0 == 0) goto L_0x0015
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x004d }
            d.f.i r0 = (d.f.i) r0     // Catch:{ all -> 0x004d }
            if (r0 == 0) goto L_0x0015
            java.lang.Object r0 = r0.b(r5, r1)     // Catch:{ all -> 0x004d }
            android.content.res.ColorStateList r0 = (android.content.res.ColorStateList) r0     // Catch:{ all -> 0x004d }
            goto L_0x0016
        L_0x0015:
            r0 = r1
        L_0x0016:
            if (r0 != 0) goto L_0x004f
            d.b.e.n0$e r0 = r3.f367g     // Catch:{ all -> 0x004d }
            if (r0 != 0) goto L_0x001d
            goto L_0x0025
        L_0x001d:
            d.b.e.n0$e r0 = r3.f367g     // Catch:{ all -> 0x004d }
            d.b.e.j$a r0 = (d.b.e.j.a) r0
            android.content.res.ColorStateList r1 = r0.b(r4, r5)     // Catch:{ all -> 0x004d }
        L_0x0025:
            if (r1 == 0) goto L_0x004b
            java.util.WeakHashMap<android.content.Context, d.f.i<android.content.res.ColorStateList>> r0 = r3.a     // Catch:{ all -> 0x004d }
            if (r0 != 0) goto L_0x0032
            java.util.WeakHashMap r0 = new java.util.WeakHashMap     // Catch:{ all -> 0x004d }
            r0.<init>()     // Catch:{ all -> 0x004d }
            r3.a = r0     // Catch:{ all -> 0x004d }
        L_0x0032:
            java.util.WeakHashMap<android.content.Context, d.f.i<android.content.res.ColorStateList>> r0 = r3.a     // Catch:{ all -> 0x004d }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x004d }
            d.f.i r0 = (d.f.i) r0     // Catch:{ all -> 0x004d }
            if (r0 != 0) goto L_0x0048
            d.f.i r0 = new d.f.i     // Catch:{ all -> 0x004d }
            r2 = 10
            r0.<init>(r2)     // Catch:{ all -> 0x004d }
            java.util.WeakHashMap<android.content.Context, d.f.i<android.content.res.ColorStateList>> r2 = r3.a     // Catch:{ all -> 0x004d }
            r2.put(r4, r0)     // Catch:{ all -> 0x004d }
        L_0x0048:
            r0.a(r5, r1)     // Catch:{ all -> 0x004d }
        L_0x004b:
            r0 = r1
            goto L_0x004f
        L_0x004d:
            r4 = move-exception
            goto L_0x0051
        L_0x004f:
            monitor-exit(r3)
            return r0
        L_0x0051:
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.n0.c(android.content.Context, int):android.content.res.ColorStateList");
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x007b A[Catch:{ Exception -> 0x00a9 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a1 A[Catch:{ Exception -> 0x00a9 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.drawable.Drawable d(android.content.Context r11, int r12) {
        /*
            r10 = this;
            d.f.a<java.lang.String, d.b.e.n0$d> r0 = r10.b
            r1 = 0
            if (r0 == 0) goto L_0x00b9
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00b9
            d.f.i<java.lang.String> r0 = r10.f363c
            java.lang.String r2 = "appcompat_skip_skip"
            if (r0 == 0) goto L_0x0028
            java.lang.Object r0 = r0.b(r12, r1)
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = r2.equals(r0)
            if (r3 != 0) goto L_0x0027
            if (r0 == 0) goto L_0x0031
            d.f.a<java.lang.String, d.b.e.n0$d> r3 = r10.b
            java.lang.Object r0 = r3.getOrDefault(r0, r1)
            if (r0 != 0) goto L_0x0031
        L_0x0027:
            return r1
        L_0x0028:
            d.f.i r0 = new d.f.i
            r1 = 10
            r0.<init>(r1)
            r10.f363c = r0
        L_0x0031:
            android.util.TypedValue r0 = r10.f365e
            if (r0 != 0) goto L_0x003c
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r10.f365e = r0
        L_0x003c:
            android.util.TypedValue r0 = r10.f365e
            android.content.res.Resources r1 = r11.getResources()
            r3 = 1
            r1.getValue(r12, r0, r3)
            int r4 = r0.assetCookie
            long r4 = (long) r4
            r6 = 32
            long r4 = r4 << r6
            int r6 = r0.data
            long r6 = (long) r6
            long r4 = r4 | r6
            android.graphics.drawable.Drawable r6 = r10.a((android.content.Context) r11, (long) r4)
            if (r6 == 0) goto L_0x0057
            return r6
        L_0x0057:
            java.lang.CharSequence r7 = r0.string
            if (r7 == 0) goto L_0x00b1
            java.lang.String r7 = r7.toString()
            java.lang.String r8 = ".xml"
            boolean r7 = r7.endsWith(r8)
            if (r7 == 0) goto L_0x00b1
            android.content.res.XmlResourceParser r1 = r1.getXml(r12)     // Catch:{ Exception -> 0x00a9 }
            android.util.AttributeSet r7 = android.util.Xml.asAttributeSet(r1)     // Catch:{ Exception -> 0x00a9 }
        L_0x006f:
            int r8 = r1.next()     // Catch:{ Exception -> 0x00a9 }
            r9 = 2
            if (r8 == r9) goto L_0x0079
            if (r8 == r3) goto L_0x0079
            goto L_0x006f
        L_0x0079:
            if (r8 != r9) goto L_0x00a1
            java.lang.String r3 = r1.getName()     // Catch:{ Exception -> 0x00a9 }
            d.f.i<java.lang.String> r8 = r10.f363c     // Catch:{ Exception -> 0x00a9 }
            r8.a(r12, r3)     // Catch:{ Exception -> 0x00a9 }
            d.f.a<java.lang.String, d.b.e.n0$d> r8 = r10.b     // Catch:{ Exception -> 0x00a9 }
            java.lang.Object r3 = r8.get(r3)     // Catch:{ Exception -> 0x00a9 }
            d.b.e.n0$d r3 = (d.b.e.n0.d) r3     // Catch:{ Exception -> 0x00a9 }
            if (r3 == 0) goto L_0x0096
            android.content.res.Resources$Theme r8 = r11.getTheme()     // Catch:{ Exception -> 0x00a9 }
            android.graphics.drawable.Drawable r6 = r3.a(r11, r1, r7, r8)     // Catch:{ Exception -> 0x00a9 }
        L_0x0096:
            if (r6 == 0) goto L_0x00b1
            int r0 = r0.changingConfigurations     // Catch:{ Exception -> 0x00a9 }
            r6.setChangingConfigurations(r0)     // Catch:{ Exception -> 0x00a9 }
            r10.a((android.content.Context) r11, (long) r4, (android.graphics.drawable.Drawable) r6)     // Catch:{ Exception -> 0x00a9 }
            goto L_0x00b1
        L_0x00a1:
            org.xmlpull.v1.XmlPullParserException r11 = new org.xmlpull.v1.XmlPullParserException     // Catch:{ Exception -> 0x00a9 }
            java.lang.String r0 = "No start tag found"
            r11.<init>(r0)     // Catch:{ Exception -> 0x00a9 }
            throw r11     // Catch:{ Exception -> 0x00a9 }
        L_0x00a9:
            r11 = move-exception
            java.lang.String r0 = "ResourceManagerInternal"
            java.lang.String r1 = "Exception while inflating drawable"
            android.util.Log.e(r0, r1, r11)
        L_0x00b1:
            if (r6 != 0) goto L_0x00b8
            d.f.i<java.lang.String> r11 = r10.f363c
            r11.a(r12, r2)
        L_0x00b8:
            return r6
        L_0x00b9:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.n0.d(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public synchronized void a(e eVar) {
        this.f367g = eVar;
    }

    public synchronized void a(Context context) {
        d.f.e eVar = this.f364d.get(context);
        if (eVar != null) {
            eVar.a();
        }
    }

    public final Drawable a(Context context, int i2) {
        if (this.f365e == null) {
            this.f365e = new TypedValue();
        }
        TypedValue typedValue = this.f365e;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable a2 = a(context, j2);
        if (a2 != null) {
            return a2;
        }
        e eVar = this.f367g;
        LayerDrawable layerDrawable = null;
        if (eVar != null) {
            j.a aVar = (j.a) eVar;
            if (i2 == R$drawable.abc_cab_background_top_material) {
                layerDrawable = new LayerDrawable(new Drawable[]{b(context, R$drawable.abc_cab_background_internal_bg), b(context, R$drawable.abc_cab_background_top_mtrl_alpha)});
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, j2, (Drawable) layerDrawable);
        }
        return layerDrawable;
    }

    public final Drawable a(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList c2 = c(context, i2);
        PorterDuff.Mode mode = null;
        if (c2 != null) {
            if (e0.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable c3 = r.c(drawable);
            c3.setTintList(c2);
            e eVar = this.f367g;
            if (eVar != null) {
                j.a aVar = (j.a) eVar;
                if (i2 == R$drawable.abc_switch_thumb_material) {
                    mode = PorterDuff.Mode.MULTIPLY;
                }
            }
            if (mode == null) {
                return c3;
            }
            c3.setTintMode(mode);
            return c3;
        }
        e eVar2 = this.f367g;
        if (eVar2 != null) {
            j.a aVar2 = (j.a) eVar2;
            if (aVar2 != null) {
                boolean z2 = true;
                if (i2 == R$drawable.abc_seekbar_track_material) {
                    LayerDrawable layerDrawable = (LayerDrawable) drawable;
                    aVar2.a(layerDrawable.findDrawableByLayerId(16908288), s0.b(context, R$attr.colorControlNormal), j.b);
                    aVar2.a(layerDrawable.findDrawableByLayerId(16908303), s0.b(context, R$attr.colorControlNormal), j.b);
                    aVar2.a(layerDrawable.findDrawableByLayerId(16908301), s0.b(context, R$attr.colorControlActivated), j.b);
                } else if (i2 == R$drawable.abc_ratingbar_material || i2 == R$drawable.abc_ratingbar_indicator_material || i2 == R$drawable.abc_ratingbar_small_material) {
                    LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                    aVar2.a(layerDrawable2.findDrawableByLayerId(16908288), s0.a(context, R$attr.colorControlNormal), j.b);
                    aVar2.a(layerDrawable2.findDrawableByLayerId(16908303), s0.b(context, R$attr.colorControlActivated), j.b);
                    aVar2.a(layerDrawable2.findDrawableByLayerId(16908301), s0.b(context, R$attr.colorControlActivated), j.b);
                } else {
                    z2 = false;
                }
                if (z2) {
                    return drawable;
                }
            } else {
                throw null;
            }
        }
        if (a(context, i2, drawable) || !z) {
            return drawable;
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0032, code lost:
        r5 = r0.z;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0040, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized android.graphics.drawable.Drawable a(android.content.Context r4, long r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.WeakHashMap<android.content.Context, d.f.e<java.lang.ref.WeakReference<android.graphics.drawable.Drawable$ConstantState>>> r0 = r3.f364d     // Catch:{ all -> 0x0041 }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x0041 }
            d.f.e r0 = (d.f.e) r0     // Catch:{ all -> 0x0041 }
            r1 = 0
            if (r0 != 0) goto L_0x000e
            monitor-exit(r3)
            return r1
        L_0x000e:
            java.lang.Object r2 = r0.b(r5, r1)     // Catch:{ all -> 0x0041 }
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2     // Catch:{ all -> 0x0041 }
            if (r2 == 0) goto L_0x003f
            java.lang.Object r2 = r2.get()     // Catch:{ all -> 0x0041 }
            android.graphics.drawable.Drawable$ConstantState r2 = (android.graphics.drawable.Drawable.ConstantState) r2     // Catch:{ all -> 0x0041 }
            if (r2 == 0) goto L_0x0028
            android.content.res.Resources r4 = r4.getResources()     // Catch:{ all -> 0x0041 }
            android.graphics.drawable.Drawable r4 = r2.newDrawable(r4)     // Catch:{ all -> 0x0041 }
            monitor-exit(r3)
            return r4
        L_0x0028:
            long[] r4 = r0.y     // Catch:{ all -> 0x0041 }
            int r2 = r0.A     // Catch:{ all -> 0x0041 }
            int r4 = d.f.d.a((long[]) r4, (int) r2, (long) r5)     // Catch:{ all -> 0x0041 }
            if (r4 < 0) goto L_0x003f
            java.lang.Object[] r5 = r0.z     // Catch:{ all -> 0x0041 }
            r6 = r5[r4]     // Catch:{ all -> 0x0041 }
            java.lang.Object r2 = d.f.e.B     // Catch:{ all -> 0x0041 }
            if (r6 == r2) goto L_0x003f
            r5[r4] = r2     // Catch:{ all -> 0x0041 }
            r4 = 1
            r0.x = r4     // Catch:{ all -> 0x0041 }
        L_0x003f:
            monitor-exit(r3)
            return r1
        L_0x0041:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.n0.a(android.content.Context, long):android.graphics.drawable.Drawable");
    }

    public final synchronized boolean a(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        d.f.e eVar = this.f364d.get(context);
        if (eVar == null) {
            eVar = new d.f.e();
            this.f364d.put(context, eVar);
        }
        eVar.c(j2, new WeakReference(constantState));
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.content.Context r8, int r9, android.graphics.drawable.Drawable r10) {
        /*
            r7 = this;
            d.b.e.n0$e r0 = r7.f367g
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x006f
            d.b.e.j$a r0 = (d.b.e.j.a) r0
            if (r0 == 0) goto L_0x006d
            android.graphics.PorterDuff$Mode r3 = d.b.e.j.b
            int[] r4 = r0.a
            boolean r4 = r0.a((int[]) r4, (int) r9)
            r5 = 16842801(0x1010031, float:2.3693695E-38)
            r6 = -1
            if (r4 == 0) goto L_0x001b
            int r5 = androidx.appcompat.R$attr.colorControlNormal
            goto L_0x0044
        L_0x001b:
            int[] r4 = r0.f355c
            boolean r4 = r0.a((int[]) r4, (int) r9)
            if (r4 == 0) goto L_0x0026
            int r5 = androidx.appcompat.R$attr.colorControlActivated
            goto L_0x0044
        L_0x0026:
            int[] r4 = r0.f356d
            boolean r0 = r0.a((int[]) r4, (int) r9)
            if (r0 == 0) goto L_0x0031
            android.graphics.PorterDuff$Mode r3 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L_0x0044
        L_0x0031:
            int r0 = androidx.appcompat.R$drawable.abc_list_divider_mtrl_alpha
            if (r9 != r0) goto L_0x0040
            r9 = 16842800(0x1010030, float:2.3693693E-38)
            r0 = 1109603123(0x42233333, float:40.8)
            int r0 = java.lang.Math.round(r0)
            goto L_0x0046
        L_0x0040:
            int r0 = androidx.appcompat.R$drawable.abc_dialog_material_background
            if (r9 != r0) goto L_0x0048
        L_0x0044:
            r9 = r5
            r0 = -1
        L_0x0046:
            r4 = 1
            goto L_0x004b
        L_0x0048:
            r9 = 0
            r0 = -1
            r4 = 0
        L_0x004b:
            if (r4 == 0) goto L_0x0069
            boolean r4 = d.b.e.e0.a(r10)
            if (r4 == 0) goto L_0x0057
            android.graphics.drawable.Drawable r10 = r10.mutate()
        L_0x0057:
            int r8 = d.b.e.s0.b(r8, r9)
            android.graphics.PorterDuffColorFilter r8 = d.b.e.j.a((int) r8, (android.graphics.PorterDuff.Mode) r3)
            r10.setColorFilter(r8)
            if (r0 == r6) goto L_0x0067
            r10.setAlpha(r0)
        L_0x0067:
            r8 = 1
            goto L_0x006a
        L_0x0069:
            r8 = 0
        L_0x006a:
            if (r8 == 0) goto L_0x006f
            goto L_0x0070
        L_0x006d:
            r8 = 0
            throw r8
        L_0x006f:
            r1 = 0
        L_0x0070:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.n0.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    public final void a(String str, d dVar) {
        if (this.b == null) {
            this.b = new d.f.a<>();
        }
        this.b.put(str, dVar);
    }

    public static void a(Drawable drawable, v0 v0Var, int[] iArr) {
        if (!e0.a(drawable) || drawable.mutate() == drawable) {
            if (v0Var.f390d || v0Var.f389c) {
                PorterDuffColorFilter porterDuffColorFilter = null;
                ColorStateList colorStateList = v0Var.f390d ? v0Var.a : null;
                PorterDuff.Mode mode = v0Var.f389c ? v0Var.b : f360h;
                if (!(colorStateList == null || mode == null)) {
                    porterDuffColorFilter = a(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (n0.class) {
            c cVar = f362j;
            if (cVar != null) {
                int i3 = (i2 + 31) * 31;
                porterDuffColorFilter = (PorterDuffColorFilter) cVar.a(Integer.valueOf(mode.hashCode() + i3));
                if (porterDuffColorFilter == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
                    c cVar2 = f362j;
                    if (cVar2 != null) {
                        PorterDuffColorFilter porterDuffColorFilter2 = (PorterDuffColorFilter) cVar2.a(Integer.valueOf(mode.hashCode() + i3), porterDuffColorFilter);
                    } else {
                        throw null;
                    }
                }
            } else {
                throw null;
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0028, code lost:
        if (r0 != false) goto L_0x002a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.graphics.drawable.Drawable a(android.content.Context r5, int r6, boolean r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f366f     // Catch:{ all -> 0x0047 }
            if (r0 == 0) goto L_0x0006
            goto L_0x002a
        L_0x0006:
            r0 = 1
            r4.f366f = r0     // Catch:{ all -> 0x0047 }
            int r1 = androidx.appcompat.resources.R$drawable.abc_vector_test     // Catch:{ all -> 0x0047 }
            android.graphics.drawable.Drawable r1 = r4.b(r5, r1)     // Catch:{ all -> 0x0047 }
            r2 = 0
            if (r1 == 0) goto L_0x0049
            boolean r3 = r1 instanceof d.y.a.a.g     // Catch:{ all -> 0x0047 }
            if (r3 != 0) goto L_0x0028
            java.lang.String r3 = "android.graphics.drawable.VectorDrawable"
            java.lang.Class r1 = r1.getClass()     // Catch:{ all -> 0x0047 }
            java.lang.String r1 = r1.getName()     // Catch:{ all -> 0x0047 }
            boolean r1 = r3.equals(r1)     // Catch:{ all -> 0x0047 }
            if (r1 == 0) goto L_0x0027
            goto L_0x0028
        L_0x0027:
            r0 = 0
        L_0x0028:
            if (r0 == 0) goto L_0x0049
        L_0x002a:
            android.graphics.drawable.Drawable r0 = r4.d(r5, r6)     // Catch:{ all -> 0x0047 }
            if (r0 != 0) goto L_0x0034
            android.graphics.drawable.Drawable r0 = r4.a((android.content.Context) r5, (int) r6)     // Catch:{ all -> 0x0047 }
        L_0x0034:
            if (r0 != 0) goto L_0x003a
            android.graphics.drawable.Drawable r0 = d.i.b.a.c(r5, r6)     // Catch:{ all -> 0x0047 }
        L_0x003a:
            if (r0 == 0) goto L_0x0040
            android.graphics.drawable.Drawable r0 = r4.a(r5, r6, r7, r0)     // Catch:{ all -> 0x0047 }
        L_0x0040:
            if (r0 == 0) goto L_0x0045
            d.b.e.e0.b(r0)     // Catch:{ all -> 0x0047 }
        L_0x0045:
            monitor-exit(r4)
            return r0
        L_0x0047:
            r5 = move-exception
            goto L_0x0053
        L_0x0049:
            r4.f366f = r2     // Catch:{ all -> 0x0047 }
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0047 }
            java.lang.String r6 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r5.<init>(r6)     // Catch:{ all -> 0x0047 }
            throw r5     // Catch:{ all -> 0x0047 }
        L_0x0053:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.n0.a(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }
}
