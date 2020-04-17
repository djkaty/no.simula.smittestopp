package d.b.c.a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import d.b.c.a.b;
import d.b.c.a.e;
import d.f.i;

@SuppressLint({"RestrictedAPI"})
public class a extends e implements d.i.c.j.a {
    public c L;
    public g M;
    public int N;
    public int O;
    public boolean P;

    public static class b extends g {
        public final Animatable a;

        public b(Animatable animatable) {
            super((C0010a) null);
            this.a = animatable;
        }

        public void c() {
            this.a.start();
        }

        public void d() {
            this.a.stop();
        }
    }

    public static class c extends e.a {
        public d.f.e<Long> K;
        public i<Integer> L;

        public c(c cVar, a aVar, Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
                return;
            }
            this.K = new d.f.e<>();
            this.L = new i<>(10);
        }

        public static long a(int i2, int i3) {
            return ((long) i3) | (((long) i2) << 32);
        }

        public int a(int i2, int i3, Drawable drawable, boolean z) {
            int a = super.a(drawable);
            long a2 = a(i2, i3);
            long j2 = z ? 8589934592L : 0;
            long j3 = (long) a;
            this.K.a(a2, Long.valueOf(j3 | j2));
            if (z) {
                this.K.a(a(i3, i2), Long.valueOf(4294967296L | j3 | j2));
            }
            return a;
        }

        public int b(int[] iArr) {
            int a = super.a(iArr);
            if (a >= 0) {
                return a;
            }
            return super.a(StateSet.WILD_CARD);
        }

        public void d() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        public Drawable newDrawable() {
            return new a(this, (Resources) null);
        }

        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }

        public int b(int i2) {
            if (i2 < 0) {
                return 0;
            }
            return this.L.b(i2, 0).intValue();
        }
    }

    public static class d extends g {
        public final d.y.a.a.c a;

        public d(d.y.a.a.c cVar) {
            super((C0010a) null);
            this.a = cVar;
        }

        public void c() {
            this.a.start();
        }

        public void d() {
            this.a.stop();
        }
    }

    public static class e extends g {
        public final ObjectAnimator a;
        public final boolean b;

        public e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super((C0010a) null);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i2 = z ? numberOfFrames - 1 : 0;
            int i3 = z ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", new int[]{i2, i3});
            ofInt.setAutoCancel(true);
            ofInt.setDuration((long) fVar.f237c);
            ofInt.setInterpolator(fVar);
            this.b = z2;
            this.a = ofInt;
        }

        public boolean a() {
            return this.b;
        }

        public void b() {
            this.a.reverse();
        }

        public void c() {
            this.a.start();
        }

        public void d() {
            this.a.cancel();
        }
    }

    public static class f implements TimeInterpolator {
        public int[] a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f237c;

        public f(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.b = numberOfFrames;
            int[] iArr = this.a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.a = new int[numberOfFrames];
            }
            int[] iArr2 = this.a;
            int i2 = 0;
            for (int i3 = 0; i3 < numberOfFrames; i3++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i3) - 1 : i3);
                iArr2[i3] = duration;
                i2 += duration;
            }
            this.f237c = i2;
        }

        public float getInterpolation(float f2) {
            int i2 = (int) ((f2 * ((float) this.f237c)) + 0.5f);
            int i3 = this.b;
            int[] iArr = this.a;
            int i4 = 0;
            while (i4 < i3 && i2 >= iArr[i4]) {
                i2 -= iArr[i4];
                i4++;
            }
            return (((float) i4) / ((float) i3)) + (i4 < i3 ? ((float) i2) / ((float) this.f237c) : 0.0f);
        }
    }

    public static abstract class g {
        public /* synthetic */ g(C0010a aVar) {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    static {
        Class<a> cls = a.class;
    }

    public a() {
        this((c) null, (Resources) null);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:70:0x01d3, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(e.a.a.a.a.a(r2, new java.lang.StringBuilder(), ": <transition> tag requires 'fromId' & 'toId' attributes"));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static d.b.c.a.a a(android.content.Context r17, android.content.res.Resources r18, org.xmlpull.v1.XmlPullParser r19, android.util.AttributeSet r20, android.content.res.Resources.Theme r21) {
        /*
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            r4 = r21
            java.lang.String r5 = r19.getName()
            java.lang.String r6 = "animated-selector"
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto L_0x01ef
            d.b.c.a.a r5 = new d.b.c.a.a
            r6 = 0
            r5.<init>(r6, r6)
            int[] r7 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat
            android.content.res.TypedArray r7 = d.b.a.r.a((android.content.res.Resources) r1, (android.content.res.Resources.Theme) r4, (android.util.AttributeSet) r3, (int[]) r7)
            int r8 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat_android_visible
            r9 = 1
            boolean r8 = r7.getBoolean(r8, r9)
            r5.setVisible(r8, r9)
            d.b.c.a.a$c r8 = r5.L
            int r10 = r8.f239d
            int r11 = r7.getChangingConfigurations()
            r10 = r10 | r11
            r8.f239d = r10
            int r10 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat_android_variablePadding
            boolean r11 = r8.f244i
            boolean r10 = r7.getBoolean(r10, r11)
            r8.f244i = r10
            int r10 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat_android_constantSize
            boolean r11 = r8.f247l
            boolean r10 = r7.getBoolean(r10, r11)
            r8.f247l = r10
            int r10 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration
            int r11 = r8.A
            int r10 = r7.getInt(r10, r11)
            r8.A = r10
            int r10 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration
            int r11 = r8.B
            int r10 = r7.getInt(r10, r11)
            r8.B = r10
            int r10 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableCompat_android_dither
            boolean r8 = r8.x
            boolean r8 = r7.getBoolean(r10, r8)
            r5.setDither(r8)
            d.b.c.a.b$c r8 = r5.x
            r8.a((android.content.res.Resources) r1)
            r7.recycle()
            int r7 = r19.getDepth()
            int r7 = r7 + r9
        L_0x0077:
            int r8 = r19.next()
            if (r8 == r9) goto L_0x01e7
            int r10 = r19.getDepth()
            if (r10 >= r7) goto L_0x0086
            r11 = 3
            if (r8 == r11) goto L_0x01e7
        L_0x0086:
            r11 = 2
            if (r8 == r11) goto L_0x008a
            goto L_0x0077
        L_0x008a:
            if (r10 <= r7) goto L_0x008d
            goto L_0x0077
        L_0x008d:
            java.lang.String r8 = r19.getName()
            java.lang.String r9 = "item"
            boolean r8 = r8.equals(r9)
            r10 = -1
            r11 = 0
            if (r8 == 0) goto L_0x0142
            int[] r8 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableItem
            android.content.res.TypedArray r8 = d.b.a.r.a((android.content.res.Resources) r1, (android.content.res.Resources.Theme) r4, (android.util.AttributeSet) r3, (int[]) r8)
            int r12 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableItem_android_id
            int r12 = r8.getResourceId(r12, r11)
            int r13 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableItem_android_drawable
            int r10 = r8.getResourceId(r13, r10)
            if (r10 <= 0) goto L_0x00b7
            d.b.e.n0 r6 = d.b.e.n0.a()
            android.graphics.drawable.Drawable r6 = r6.b(r0, r10)
        L_0x00b7:
            r8.recycle()
            int r8 = r20.getAttributeCount()
            int[] r10 = new int[r8]
            r13 = 0
            r14 = 0
        L_0x00c2:
            if (r14 >= r8) goto L_0x00e4
            int r15 = r3.getAttributeNameResource(r14)
            if (r15 == 0) goto L_0x00e1
            r9 = 16842960(0x10100d0, float:2.369414E-38)
            if (r15 == r9) goto L_0x00e1
            r9 = 16843161(0x1010199, float:2.3694704E-38)
            if (r15 == r9) goto L_0x00e1
            int r9 = r13 + 1
            boolean r16 = r3.getAttributeBooleanValue(r14, r11)
            if (r16 == 0) goto L_0x00dd
            goto L_0x00de
        L_0x00dd:
            int r15 = -r15
        L_0x00de:
            r10[r13] = r15
            r13 = r9
        L_0x00e1:
            int r14 = r14 + 1
            goto L_0x00c2
        L_0x00e4:
            int[] r8 = android.util.StateSet.trimStateSet(r10, r13)
            java.lang.String r9 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r6 != 0) goto L_0x011c
        L_0x00ec:
            int r6 = r19.next()
            r10 = 4
            if (r6 != r10) goto L_0x00f4
            goto L_0x00ec
        L_0x00f4:
            r10 = 2
            if (r6 != r10) goto L_0x010d
            java.lang.String r6 = r19.getName()
            java.lang.String r10 = "vector"
            boolean r6 = r6.equals(r10)
            if (r6 == 0) goto L_0x0108
            d.y.a.a.g r6 = d.y.a.a.g.createFromXmlInner(r18, r19, r20, r21)
            goto L_0x011c
        L_0x0108:
            android.graphics.drawable.Drawable r6 = android.graphics.drawable.Drawable.createFromXmlInner(r18, r19, r20, r21)
            goto L_0x011c
        L_0x010d:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r1 = e.a.a.a.a.a((org.xmlpull.v1.XmlPullParser) r2, (java.lang.StringBuilder) r1, (java.lang.String) r9)
            r0.<init>(r1)
            throw r0
        L_0x011c:
            if (r6 == 0) goto L_0x0133
            d.b.c.a.a$c r9 = r5.L
            int r6 = r9.a((android.graphics.drawable.Drawable) r6)
            int[][] r10 = r9.J
            r10[r6] = r8
            d.f.i<java.lang.Integer> r8 = r9.L
            java.lang.Integer r9 = java.lang.Integer.valueOf(r12)
            r8.c(r6, r9)
            goto L_0x01e3
        L_0x0133:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r1 = e.a.a.a.a.a((org.xmlpull.v1.XmlPullParser) r2, (java.lang.StringBuilder) r1, (java.lang.String) r9)
            r0.<init>(r1)
            throw r0
        L_0x0142:
            java.lang.String r6 = r19.getName()
            java.lang.String r8 = "transition"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x01e3
            int[] r6 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableTransition
            android.content.res.TypedArray r6 = d.b.a.r.a((android.content.res.Resources) r1, (android.content.res.Resources.Theme) r4, (android.util.AttributeSet) r3, (int[]) r6)
            int r8 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableTransition_android_fromId
            int r8 = r6.getResourceId(r8, r10)
            int r9 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableTransition_android_toId
            int r9 = r6.getResourceId(r9, r10)
            int r12 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableTransition_android_drawable
            int r12 = r6.getResourceId(r12, r10)
            if (r12 <= 0) goto L_0x0171
            d.b.e.n0 r13 = d.b.e.n0.a()
            android.graphics.drawable.Drawable r12 = r13.b(r0, r12)
            goto L_0x0172
        L_0x0171:
            r12 = 0
        L_0x0172:
            int r13 = androidx.appcompat.resources.R$styleable.AnimatedStateListDrawableTransition_android_reversible
            boolean r11 = r6.getBoolean(r13, r11)
            r6.recycle()
            java.lang.String r6 = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r12 != 0) goto L_0x01b5
        L_0x017f:
            int r12 = r19.next()
            r13 = 4
            if (r12 != r13) goto L_0x0187
            goto L_0x017f
        L_0x0187:
            r13 = 2
            if (r12 != r13) goto L_0x01a6
            java.lang.String r12 = r19.getName()
            java.lang.String r13 = "animated-vector"
            boolean r12 = r12.equals(r13)
            if (r12 == 0) goto L_0x01a0
            d.y.a.a.c r12 = new d.y.a.a.c
            r13 = 0
            r12.<init>(r0, r13, r13)
            r12.inflate(r1, r2, r3, r4)
            goto L_0x01b6
        L_0x01a0:
            r13 = 0
            android.graphics.drawable.Drawable r12 = android.graphics.drawable.Drawable.createFromXmlInner(r18, r19, r20, r21)
            goto L_0x01b6
        L_0x01a6:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r1 = e.a.a.a.a.a((org.xmlpull.v1.XmlPullParser) r2, (java.lang.StringBuilder) r1, (java.lang.String) r6)
            r0.<init>(r1)
            throw r0
        L_0x01b5:
            r13 = 0
        L_0x01b6:
            if (r12 == 0) goto L_0x01d4
            if (r8 == r10) goto L_0x01c3
            if (r9 == r10) goto L_0x01c3
            d.b.c.a.a$c r6 = r5.L
            r6.a(r8, r9, r12, r11)
            r6 = r13
            goto L_0x01e4
        L_0x01c3:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = ": <transition> tag requires 'fromId' & 'toId' attributes"
            java.lang.String r1 = e.a.a.a.a.a((org.xmlpull.v1.XmlPullParser) r2, (java.lang.StringBuilder) r1, (java.lang.String) r3)
            r0.<init>(r1)
            throw r0
        L_0x01d4:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r1 = e.a.a.a.a.a((org.xmlpull.v1.XmlPullParser) r2, (java.lang.StringBuilder) r1, (java.lang.String) r6)
            r0.<init>(r1)
            throw r0
        L_0x01e3:
            r6 = 0
        L_0x01e4:
            r9 = 1
            goto L_0x0077
        L_0x01e7:
            int[] r0 = r5.getState()
            r5.onStateChange(r0)
            return r5
        L_0x01ef:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r19.getPositionDescription()
            r1.append(r2)
            java.lang.String r2 = ": invalid animated-selector tag "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.c.a.a.a(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):d.b.c.a.a");
    }

    public boolean isStateful() {
        return true;
    }

    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.M;
        if (gVar != null) {
            gVar.d();
            this.M = null;
            a(this.N);
            this.N = -1;
            this.O = -1;
        }
    }

    public Drawable mutate() {
        if (!this.P) {
            super.mutate();
            if (this == this) {
                this.L.d();
                this.P = true;
            }
        }
        return this;
    }

    public boolean onStateChange(int[] iArr) {
        boolean z;
        g gVar;
        int[] iArr2 = iArr;
        int b2 = this.L.b(iArr2);
        int i2 = this.D;
        boolean z2 = false;
        if (b2 != i2) {
            g gVar2 = this.M;
            if (gVar2 != null) {
                if (b2 != this.N) {
                    if (b2 != this.O || !gVar2.a()) {
                        i2 = this.N;
                        gVar2.d();
                    } else {
                        gVar2.b();
                        this.N = this.O;
                        this.O = b2;
                    }
                }
                z = true;
                if (z || a(b2)) {
                    z2 = true;
                }
            }
            this.M = null;
            this.O = -1;
            this.N = -1;
            c cVar = this.L;
            int b3 = cVar.b(i2);
            int b4 = cVar.b(b2);
            if (!(b4 == 0 || b3 == 0)) {
                int longValue = (int) cVar.K.b(c.a(b3, b4), -1L).longValue();
                if (longValue >= 0) {
                    boolean z3 = (cVar.K.b(c.a(b3, b4), -1L).longValue() & 8589934592L) != 0;
                    a(longValue);
                    Drawable drawable = this.z;
                    if (drawable instanceof AnimationDrawable) {
                        gVar = new e((AnimationDrawable) drawable, (cVar.K.b(c.a(b3, b4), -1L).longValue() & 4294967296L) != 0, z3);
                    } else if (drawable instanceof d.y.a.a.c) {
                        gVar = new d((d.y.a.a.c) drawable);
                    } else if (drawable instanceof Animatable) {
                        gVar = new b((Animatable) drawable);
                    }
                    gVar.c();
                    this.M = gVar;
                    this.O = i2;
                    this.N = b2;
                    z = true;
                    z2 = true;
                }
            }
            z = false;
            z2 = true;
        }
        Drawable drawable2 = this.z;
        return drawable2 != null ? z2 | drawable2.setState(iArr2) : z2;
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.M != null && (visible || z2)) {
            if (z) {
                this.M.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    public a(c cVar, Resources resources) {
        super((e.a) null);
        this.N = -1;
        this.O = -1;
        c cVar2 = new c(cVar, this, resources);
        super.a(cVar2);
        this.L = cVar2;
        onStateChange(getState());
        jumpToCurrentState();
    }

    public b.c a() {
        return new c(this.L, this, (Resources) null);
    }

    /* renamed from: a  reason: collision with other method in class */
    public e.a m3a() {
        return new c(this.L, this, (Resources) null);
    }

    public void a(b.c cVar) {
        super.a(cVar);
        if (cVar instanceof c) {
            this.L = (c) cVar;
        }
    }
}
