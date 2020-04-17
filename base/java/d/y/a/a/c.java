package d.y.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import d.b.a.r;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

public class c extends f implements b {
    public ArgbEvaluator A;
    public final Drawable.Callback B;
    public b y;
    public Context z;

    public class a implements Drawable.Callback {
        public a() {
        }

        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
            c.this.scheduleSelf(runnable, j2);
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    public static class b extends Drawable.ConstantState {
        public int a;
        public g b;

        /* renamed from: c  reason: collision with root package name */
        public AnimatorSet f996c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<Animator> f997d;

        /* renamed from: e  reason: collision with root package name */
        public d.f.a<Animator, String> f998e;

        public b(b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.a = bVar.a;
                g gVar = bVar.b;
                if (gVar != null) {
                    Drawable.ConstantState constantState = gVar.getConstantState();
                    if (resources != null) {
                        this.b = (g) constantState.newDrawable(resources);
                    } else {
                        this.b = (g) constantState.newDrawable();
                    }
                    g gVar2 = this.b;
                    gVar2.mutate();
                    this.b = gVar2;
                    gVar2.setCallback(callback);
                    this.b.setBounds(bVar.b.getBounds());
                    this.b.C = false;
                }
                ArrayList<Animator> arrayList = bVar.f997d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f997d = new ArrayList<>(size);
                    this.f998e = new d.f.a<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        Animator animator = bVar.f997d.get(i2);
                        Animator clone = animator.clone();
                        String orDefault = bVar.f998e.getOrDefault(animator, null);
                        clone.setTarget(this.b.y.b.p.getOrDefault(orDefault, null));
                        this.f997d.add(clone);
                        this.f998e.put(clone, orDefault);
                    }
                    if (this.f996c == null) {
                        this.f996c = new AnimatorSet();
                    }
                    this.f996c.playTogether(this.f997d);
                }
            }
        }

        public int getChangingConfigurations() {
            return this.a;
        }

        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    public c() {
        this((Context) null, (b) null, (Resources) null);
    }

    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    public boolean canApplyTheme() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.y.b.draw(canvas);
        if (this.y.f996c.isStarted()) {
            invalidateSelf();
        }
    }

    public int getAlpha() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.y.b.getAlpha();
    }

    public int getChangingConfigurations() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.y.a;
    }

    public ColorFilter getColorFilter() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getColorFilter();
        }
        return this.y.b.getColorFilter();
    }

    public Drawable.ConstantState getConstantState() {
        if (this.x == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0055c(this.x.getConstantState());
    }

    public int getIntrinsicHeight() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.y.b.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.y.b.getIntrinsicWidth();
    }

    public int getOpacity() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.y.b.getOpacity();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00ee, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f0, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00f1, code lost:
        r7 = "Can't load animation resource ID #0x";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00f5, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00f6, code lost:
        r7 = "Can't load animation resource ID #0x";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x013c, code lost:
        r19.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00ee A[ExcHandler: all (th java.lang.Throwable), Splitter:B:33:0x0098] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void inflate(android.content.res.Resources r22, org.xmlpull.v1.XmlPullParser r23, android.util.AttributeSet r24, android.content.res.Resources.Theme r25) {
        /*
            r21 = this;
            r1 = r21
            r0 = r22
            r2 = r24
            r3 = r25
            android.graphics.drawable.Drawable r4 = r1.x
            if (r4 == 0) goto L_0x0012
            r5 = r23
            r4.inflate(r0, r5, r2, r3)
            return
        L_0x0012:
            r5 = r23
            int r4 = r23.getEventType()
            int r6 = r23.getDepth()
            r7 = 1
            int r6 = r6 + r7
        L_0x001e:
            if (r4 == r7) goto L_0x0155
            int r8 = r23.getDepth()
            if (r8 >= r6) goto L_0x0029
            r8 = 3
            if (r4 == r8) goto L_0x0155
        L_0x0029:
            r8 = 2
            if (r4 != r8) goto L_0x014e
            java.lang.String r4 = r23.getName()
            java.lang.String r8 = "animated-vector"
            boolean r8 = r8.equals(r4)
            r9 = 0
            r10 = 0
            if (r8 == 0) goto L_0x0063
            int[] r4 = d.y.a.a.a.f988e
            android.content.res.TypedArray r4 = d.b.a.r.a((android.content.res.Resources) r0, (android.content.res.Resources.Theme) r3, (android.util.AttributeSet) r2, (int[]) r4)
            int r8 = r4.getResourceId(r10, r10)
            if (r8 == 0) goto L_0x005e
            d.y.a.a.g r8 = d.y.a.a.g.a(r0, r8, r3)
            r8.C = r10
            android.graphics.drawable.Drawable$Callback r10 = r1.B
            r8.setCallback(r10)
            d.y.a.a.c$b r10 = r1.y
            d.y.a.a.g r10 = r10.b
            if (r10 == 0) goto L_0x005a
            r10.setCallback(r9)
        L_0x005a:
            d.y.a.a.c$b r9 = r1.y
            r9.b = r8
        L_0x005e:
            r4.recycle()
            goto L_0x014e
        L_0x0063:
            java.lang.String r8 = "target"
            boolean r4 = r8.equals(r4)
            if (r4 == 0) goto L_0x014e
            int[] r4 = d.y.a.a.a.f989f
            android.content.res.TypedArray r4 = r0.obtainAttributes(r2, r4)
            java.lang.String r8 = r4.getString(r10)
            int r10 = r4.getResourceId(r7, r10)
            if (r10 == 0) goto L_0x014b
            android.content.Context r11 = r1.z
            if (r11 == 0) goto L_0x0140
            int r12 = android.os.Build.VERSION.SDK_INT
            r13 = 24
            if (r12 < r13) goto L_0x008a
            android.animation.Animator r10 = android.animation.AnimatorInflater.loadAnimator(r11, r10)
            goto L_0x00b4
        L_0x008a:
            android.content.res.Resources r12 = r11.getResources()
            android.content.res.Resources$Theme r13 = r11.getTheme()
            java.lang.String r15 = "Can't load animation resource ID #0x"
            android.content.res.XmlResourceParser r19 = r12.getAnimation(r10)     // Catch:{ XmlPullParserException -> 0x011a, IOException -> 0x00fc }
            android.util.AttributeSet r16 = android.util.Xml.asAttributeSet(r19)     // Catch:{ XmlPullParserException -> 0x00f5, IOException -> 0x00f0, all -> 0x00ee }
            r17 = 0
            r18 = 0
            r20 = 1065353216(0x3f800000, float:1.0)
            r14 = r19
            r7 = r15
            r15 = r16
            r16 = r17
            r17 = r18
            r18 = r20
            android.animation.Animator r10 = d.b.a.r.a(r11, r12, r13, r14, r15, r16, r17, r18)     // Catch:{ XmlPullParserException -> 0x00ec, IOException -> 0x00ea, all -> 0x00ee }
            r19.close()
        L_0x00b4:
            d.y.a.a.c$b r7 = r1.y
            d.y.a.a.g r7 = r7.b
            d.y.a.a.g$h r7 = r7.y
            d.y.a.a.g$g r7 = r7.b
            d.f.a<java.lang.String, java.lang.Object> r7 = r7.p
            java.lang.Object r7 = r7.getOrDefault(r8, r9)
            r10.setTarget(r7)
            d.y.a.a.c$b r7 = r1.y
            java.util.ArrayList<android.animation.Animator> r9 = r7.f997d
            if (r9 != 0) goto L_0x00db
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r7.f997d = r9
            d.y.a.a.c$b r7 = r1.y
            d.f.a r9 = new d.f.a
            r9.<init>()
            r7.f998e = r9
        L_0x00db:
            d.y.a.a.c$b r7 = r1.y
            java.util.ArrayList<android.animation.Animator> r7 = r7.f997d
            r7.add(r10)
            d.y.a.a.c$b r7 = r1.y
            d.f.a<android.animation.Animator, java.lang.String> r7 = r7.f998e
            r7.put(r10, r8)
            goto L_0x014b
        L_0x00ea:
            r0 = move-exception
            goto L_0x00f2
        L_0x00ec:
            r0 = move-exception
            goto L_0x00f7
        L_0x00ee:
            r0 = move-exception
            goto L_0x013a
        L_0x00f0:
            r0 = move-exception
            r7 = r15
        L_0x00f2:
            r9 = r19
            goto L_0x00fe
        L_0x00f5:
            r0 = move-exception
            r7 = r15
        L_0x00f7:
            r9 = r19
            goto L_0x011c
        L_0x00fa:
            r0 = move-exception
            goto L_0x0138
        L_0x00fc:
            r0 = move-exception
            r7 = r15
        L_0x00fe:
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException     // Catch:{ all -> 0x00fa }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00fa }
            r3.<init>()     // Catch:{ all -> 0x00fa }
            r3.append(r7)     // Catch:{ all -> 0x00fa }
            java.lang.String r4 = java.lang.Integer.toHexString(r10)     // Catch:{ all -> 0x00fa }
            r3.append(r4)     // Catch:{ all -> 0x00fa }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00fa }
            r2.<init>(r3)     // Catch:{ all -> 0x00fa }
            r2.initCause(r0)     // Catch:{ all -> 0x00fa }
            throw r2     // Catch:{ all -> 0x00fa }
        L_0x011a:
            r0 = move-exception
            r7 = r15
        L_0x011c:
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException     // Catch:{ all -> 0x00fa }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00fa }
            r3.<init>()     // Catch:{ all -> 0x00fa }
            r3.append(r7)     // Catch:{ all -> 0x00fa }
            java.lang.String r4 = java.lang.Integer.toHexString(r10)     // Catch:{ all -> 0x00fa }
            r3.append(r4)     // Catch:{ all -> 0x00fa }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00fa }
            r2.<init>(r3)     // Catch:{ all -> 0x00fa }
            r2.initCause(r0)     // Catch:{ all -> 0x00fa }
            throw r2     // Catch:{ all -> 0x00fa }
        L_0x0138:
            r19 = r9
        L_0x013a:
            if (r19 == 0) goto L_0x013f
            r19.close()
        L_0x013f:
            throw r0
        L_0x0140:
            r4.recycle()
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "Context can't be null when inflating animators"
            r0.<init>(r2)
            throw r0
        L_0x014b:
            r4.recycle()
        L_0x014e:
            int r4 = r23.next()
            r7 = 1
            goto L_0x001e
        L_0x0155:
            d.y.a.a.c$b r0 = r1.y
            android.animation.AnimatorSet r2 = r0.f996c
            if (r2 != 0) goto L_0x0162
            android.animation.AnimatorSet r2 = new android.animation.AnimatorSet
            r2.<init>()
            r0.f996c = r2
        L_0x0162:
            android.animation.AnimatorSet r2 = r0.f996c
            java.util.ArrayList<android.animation.Animator> r0 = r0.f997d
            r2.playTogether(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.y.a.a.c.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    public boolean isAutoMirrored() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.y.b.isAutoMirrored();
    }

    public boolean isRunning() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.y.f996c.isRunning();
    }

    public boolean isStateful() {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.y.b.isStateful();
    }

    public Drawable mutate() {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.y.b.setBounds(rect);
        }
    }

    public boolean onLevelChange(int i2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        return this.y.b.setLevel(i2);
    }

    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.y.b.setState(iArr);
    }

    public void setAlpha(int i2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.y.b.setAlpha(i2);
        }
    }

    public void setAutoMirrored(boolean z2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setAutoMirrored(z2);
            return;
        }
        g gVar = this.y.b;
        Drawable drawable2 = gVar.x;
        if (drawable2 != null) {
            drawable2.setAutoMirrored(z2);
        } else {
            gVar.y.f1031e = z2;
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        g gVar = this.y.b;
        Drawable drawable2 = gVar.x;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
            return;
        }
        gVar.A = colorFilter;
        gVar.invalidateSelf();
    }

    public void setTint(int i2) {
        Drawable drawable = this.x;
        if (drawable != null) {
            r.b(drawable, i2);
        } else {
            this.y.b.setTint(i2);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.x;
        if (drawable != null) {
            r.a(drawable, colorStateList);
        } else {
            this.y.b.setTintList(colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.x;
        if (drawable != null) {
            r.a(drawable, mode);
        } else {
            this.y.b.setTintMode(mode);
        }
    }

    public boolean setVisible(boolean z2, boolean z3) {
        Drawable drawable = this.x;
        if (drawable != null) {
            return drawable.setVisible(z2, z3);
        }
        this.y.b.setVisible(z2, z3);
        return super.setVisible(z2, z3);
    }

    public void start() {
        Drawable drawable = this.x;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (!this.y.f996c.isStarted()) {
            this.y.f996c.start();
            invalidateSelf();
        }
    }

    public void stop() {
        Drawable drawable = this.x;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.y.f996c.end();
        }
    }

    public c(Context context, b bVar, Resources resources) {
        this.A = null;
        this.B = new a();
        this.z = context;
        if (bVar != null) {
            this.y = bVar;
        } else {
            this.y = new b(bVar, this.B, resources);
        }
    }

    /* renamed from: d.y.a.a.c$c  reason: collision with other inner class name */
    public static class C0055c extends Drawable.ConstantState {
        public final Drawable.ConstantState a;

        public C0055c(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            c cVar = new c((Context) null, (b) null, (Resources) null);
            Drawable newDrawable = this.a.newDrawable();
            cVar.x = newDrawable;
            newDrawable.setCallback(cVar.B);
            return cVar;
        }

        public Drawable newDrawable(Resources resources) {
            c cVar = new c((Context) null, (b) null, (Resources) null);
            Drawable newDrawable = this.a.newDrawable(resources);
            cVar.x = newDrawable;
            newDrawable.setCallback(cVar.B);
            return cVar;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c((Context) null, (b) null, (Resources) null);
            Drawable newDrawable = this.a.newDrawable(resources, theme);
            cVar.x = newDrawable;
            newDrawable.setCallback(cVar.B);
            return cVar;
        }
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, (Resources.Theme) null);
    }
}
