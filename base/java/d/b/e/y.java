package d.b.e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import d.i.b.b.g;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public class y {
    public final TextView a;
    public v0 b;

    /* renamed from: c  reason: collision with root package name */
    public v0 f392c;

    /* renamed from: d  reason: collision with root package name */
    public v0 f393d;

    /* renamed from: e  reason: collision with root package name */
    public v0 f394e;

    /* renamed from: f  reason: collision with root package name */
    public v0 f395f;

    /* renamed from: g  reason: collision with root package name */
    public v0 f396g;

    /* renamed from: h  reason: collision with root package name */
    public v0 f397h;

    /* renamed from: i  reason: collision with root package name */
    public final a0 f398i;

    /* renamed from: j  reason: collision with root package name */
    public int f399j = 0;

    /* renamed from: k  reason: collision with root package name */
    public int f400k = -1;

    /* renamed from: l  reason: collision with root package name */
    public Typeface f401l;
    public boolean m;

    public static class a extends g {
        public final WeakReference<y> a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f402c;

        /* renamed from: d.b.e.y$a$a  reason: collision with other inner class name */
        public class C0016a implements Runnable {
            public final WeakReference<y> x;
            public final Typeface y;

            public C0016a(a aVar, WeakReference<y> weakReference, Typeface typeface) {
                this.x = weakReference;
                this.y = typeface;
            }

            public void run() {
                y yVar = (y) this.x.get();
                if (yVar != null) {
                    Typeface typeface = this.y;
                    if (yVar.m) {
                        yVar.a.setTypeface(typeface);
                        yVar.f401l = typeface;
                    }
                }
            }
        }

        public a(y yVar, int i2, int i3) {
            this.a = new WeakReference<>(yVar);
            this.b = i2;
            this.f402c = i3;
        }

        public void a(Typeface typeface) {
            int i2;
            y yVar = (y) this.a.get();
            if (yVar != null) {
                if (Build.VERSION.SDK_INT >= 28 && (i2 = this.b) != -1) {
                    typeface = Typeface.create(typeface, i2, (this.f402c & 2) != 0);
                }
                yVar.a.post(new C0016a(this, this.a, typeface));
            }
        }
    }

    public y(TextView textView) {
        this.a = textView;
        this.f398i = new a0(this.a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:111:0x0242  */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x0254  */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x025b  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0265  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x026c  */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x0276  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x027d  */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x02a0  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x02c3  */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x02f7  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x02fe  */
    /* JADX WARNING: Removed duplicated region for block: B:165:0x034d  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x0354  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x035f  */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x0364  */
    /* JADX WARNING: Removed duplicated region for block: B:173:0x036d  */
    /* JADX WARNING: Removed duplicated region for block: B:174:0x0372  */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x037b  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x0380  */
    /* JADX WARNING: Removed duplicated region for block: B:181:0x0389  */
    /* JADX WARNING: Removed duplicated region for block: B:182:0x038e  */
    /* JADX WARNING: Removed duplicated region for block: B:185:0x0397  */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x039c  */
    /* JADX WARNING: Removed duplicated region for block: B:217:0x03fd  */
    /* JADX WARNING: Removed duplicated region for block: B:219:0x0403  */
    /* JADX WARNING: Removed duplicated region for block: B:221:0x0409  */
    /* JADX WARNING: Removed duplicated region for block: B:223:0x040e  */
    /* JADX WARNING: Removed duplicated region for block: B:227:0x041b  */
    /* JADX WARNING: Removed duplicated region for block: B:239:0x0444  */
    /* JADX WARNING: Removed duplicated region for block: B:251:0x0483  */
    /* JADX WARNING: Removed duplicated region for block: B:253:0x048a  */
    /* JADX WARNING: Removed duplicated region for block: B:255:0x0491  */
    /* JADX WARNING: Removed duplicated region for block: B:258:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"NewApi"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.util.AttributeSet r18, int r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            android.widget.TextView r3 = r0.a
            android.content.Context r3 = r3.getContext()
            d.b.e.j r4 = d.b.e.j.a()
            int[] r5 = androidx.appcompat.R$styleable.AppCompatTextHelper
            r6 = 0
            d.b.e.x0 r5 = d.b.e.x0.a(r3, r1, r5, r2, r6)
            int r7 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_textAppearance
            r8 = -1
            int r7 = r5.f(r7, r8)
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableLeft
            boolean r9 = r5.f(r9)
            if (r9 == 0) goto L_0x0032
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableLeft
            int r9 = r5.f(r9, r6)
            d.b.e.v0 r9 = a(r3, r4, r9)
            r0.b = r9
        L_0x0032:
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableTop
            boolean r9 = r5.f(r9)
            if (r9 == 0) goto L_0x0046
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableTop
            int r9 = r5.f(r9, r6)
            d.b.e.v0 r9 = a(r3, r4, r9)
            r0.f392c = r9
        L_0x0046:
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableRight
            boolean r9 = r5.f(r9)
            if (r9 == 0) goto L_0x005a
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableRight
            int r9 = r5.f(r9, r6)
            d.b.e.v0 r9 = a(r3, r4, r9)
            r0.f393d = r9
        L_0x005a:
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableBottom
            boolean r9 = r5.f(r9)
            if (r9 == 0) goto L_0x006e
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableBottom
            int r9 = r5.f(r9, r6)
            d.b.e.v0 r9 = a(r3, r4, r9)
            r0.f394e = r9
        L_0x006e:
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableStart
            boolean r9 = r5.f(r9)
            if (r9 == 0) goto L_0x0082
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableStart
            int r9 = r5.f(r9, r6)
            d.b.e.v0 r9 = a(r3, r4, r9)
            r0.f395f = r9
        L_0x0082:
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableEnd
            boolean r9 = r5.f(r9)
            if (r9 == 0) goto L_0x0096
            int r9 = androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableEnd
            int r9 = r5.f(r9, r6)
            d.b.e.v0 r9 = a(r3, r4, r9)
            r0.f396g = r9
        L_0x0096:
            android.content.res.TypedArray r5 = r5.b
            r5.recycle()
            android.widget.TextView r5 = r0.a
            android.text.method.TransformationMethod r5 = r5.getTransformationMethod()
            boolean r5 = r5 instanceof android.text.method.PasswordTransformationMethod
            r9 = 26
            r10 = 23
            if (r7 == r8) goto L_0x012d
            int[] r13 = androidx.appcompat.R$styleable.TextAppearance
            d.b.e.x0 r14 = new d.b.e.x0
            android.content.res.TypedArray r7 = r3.obtainStyledAttributes(r7, r13)
            r14.<init>(r3, r7)
            if (r5 != 0) goto L_0x00c6
            int r7 = androidx.appcompat.R$styleable.TextAppearance_textAllCaps
            boolean r7 = r14.f(r7)
            if (r7 == 0) goto L_0x00c6
            int r7 = androidx.appcompat.R$styleable.TextAppearance_textAllCaps
            boolean r7 = r14.a((int) r7, (boolean) r6)
            r13 = 1
            goto L_0x00c8
        L_0x00c6:
            r7 = 0
            r13 = 0
        L_0x00c8:
            r0.a((android.content.Context) r3, (d.b.e.x0) r14)
            int r15 = android.os.Build.VERSION.SDK_INT
            if (r15 >= r10) goto L_0x0100
            int r15 = androidx.appcompat.R$styleable.TextAppearance_android_textColor
            boolean r15 = r14.f(r15)
            if (r15 == 0) goto L_0x00de
            int r15 = androidx.appcompat.R$styleable.TextAppearance_android_textColor
            android.content.res.ColorStateList r15 = r14.a(r15)
            goto L_0x00df
        L_0x00de:
            r15 = 0
        L_0x00df:
            int r12 = androidx.appcompat.R$styleable.TextAppearance_android_textColorHint
            boolean r12 = r14.f(r12)
            if (r12 == 0) goto L_0x00ee
            int r12 = androidx.appcompat.R$styleable.TextAppearance_android_textColorHint
            android.content.res.ColorStateList r12 = r14.a(r12)
            goto L_0x00ef
        L_0x00ee:
            r12 = 0
        L_0x00ef:
            int r11 = androidx.appcompat.R$styleable.TextAppearance_android_textColorLink
            boolean r11 = r14.f(r11)
            if (r11 == 0) goto L_0x00fe
            int r11 = androidx.appcompat.R$styleable.TextAppearance_android_textColorLink
            android.content.res.ColorStateList r11 = r14.a(r11)
            goto L_0x0103
        L_0x00fe:
            r11 = 0
            goto L_0x0103
        L_0x0100:
            r11 = 0
            r12 = 0
            r15 = 0
        L_0x0103:
            int r8 = androidx.appcompat.R$styleable.TextAppearance_textLocale
            boolean r8 = r14.f(r8)
            if (r8 == 0) goto L_0x0112
            int r8 = androidx.appcompat.R$styleable.TextAppearance_textLocale
            java.lang.String r8 = r14.d(r8)
            goto L_0x0113
        L_0x0112:
            r8 = 0
        L_0x0113:
            int r10 = android.os.Build.VERSION.SDK_INT
            if (r10 < r9) goto L_0x0126
            int r10 = androidx.appcompat.R$styleable.TextAppearance_fontVariationSettings
            boolean r10 = r14.f(r10)
            if (r10 == 0) goto L_0x0126
            int r10 = androidx.appcompat.R$styleable.TextAppearance_fontVariationSettings
            java.lang.String r10 = r14.d(r10)
            goto L_0x0127
        L_0x0126:
            r10 = 0
        L_0x0127:
            android.content.res.TypedArray r14 = r14.b
            r14.recycle()
            goto L_0x0134
        L_0x012d:
            r7 = 0
            r8 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r15 = 0
        L_0x0134:
            int[] r14 = androidx.appcompat.R$styleable.TextAppearance
            d.b.e.x0 r9 = new d.b.e.x0
            android.content.res.TypedArray r14 = r3.obtainStyledAttributes(r1, r14, r2, r6)
            r9.<init>(r3, r14)
            if (r5 != 0) goto L_0x0150
            int r14 = androidx.appcompat.R$styleable.TextAppearance_textAllCaps
            boolean r14 = r9.f(r14)
            if (r14 == 0) goto L_0x0150
            int r7 = androidx.appcompat.R$styleable.TextAppearance_textAllCaps
            boolean r7 = r9.a((int) r7, (boolean) r6)
            r13 = 1
        L_0x0150:
            int r14 = android.os.Build.VERSION.SDK_INT
            r6 = 23
            if (r14 >= r6) goto L_0x0180
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textColor
            boolean r6 = r9.f(r6)
            if (r6 == 0) goto L_0x0164
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textColor
            android.content.res.ColorStateList r15 = r9.a(r6)
        L_0x0164:
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textColorHint
            boolean r6 = r9.f(r6)
            if (r6 == 0) goto L_0x0172
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textColorHint
            android.content.res.ColorStateList r12 = r9.a(r6)
        L_0x0172:
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textColorLink
            boolean r6 = r9.f(r6)
            if (r6 == 0) goto L_0x0180
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textColorLink
            android.content.res.ColorStateList r11 = r9.a(r6)
        L_0x0180:
            int r6 = androidx.appcompat.R$styleable.TextAppearance_textLocale
            boolean r6 = r9.f(r6)
            if (r6 == 0) goto L_0x018e
            int r6 = androidx.appcompat.R$styleable.TextAppearance_textLocale
            java.lang.String r8 = r9.d(r6)
        L_0x018e:
            int r6 = android.os.Build.VERSION.SDK_INT
            r14 = 26
            if (r6 < r14) goto L_0x01a2
            int r6 = androidx.appcompat.R$styleable.TextAppearance_fontVariationSettings
            boolean r6 = r9.f(r6)
            if (r6 == 0) goto L_0x01a2
            int r6 = androidx.appcompat.R$styleable.TextAppearance_fontVariationSettings
            java.lang.String r10 = r9.d(r6)
        L_0x01a2:
            int r6 = android.os.Build.VERSION.SDK_INT
            r14 = 28
            if (r6 < r14) goto L_0x01c3
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textSize
            boolean r6 = r9.f(r6)
            if (r6 == 0) goto L_0x01c3
            int r6 = androidx.appcompat.R$styleable.TextAppearance_android_textSize
            r14 = -1
            int r6 = r9.b(r6, r14)
            if (r6 != 0) goto L_0x01c3
            android.widget.TextView r6 = r0.a
            r14 = 0
            r16 = r4
            r4 = 0
            r6.setTextSize(r4, r14)
            goto L_0x01c5
        L_0x01c3:
            r16 = r4
        L_0x01c5:
            r0.a((android.content.Context) r3, (d.b.e.x0) r9)
            android.content.res.TypedArray r4 = r9.b
            r4.recycle()
            if (r15 == 0) goto L_0x01d4
            android.widget.TextView r4 = r0.a
            r4.setTextColor(r15)
        L_0x01d4:
            if (r12 == 0) goto L_0x01db
            android.widget.TextView r4 = r0.a
            r4.setHintTextColor(r12)
        L_0x01db:
            if (r11 == 0) goto L_0x01e2
            android.widget.TextView r4 = r0.a
            r4.setLinkTextColor(r11)
        L_0x01e2:
            if (r5 != 0) goto L_0x01eb
            if (r13 == 0) goto L_0x01eb
            android.widget.TextView r4 = r0.a
            r4.setAllCaps(r7)
        L_0x01eb:
            android.graphics.Typeface r4 = r0.f401l
            if (r4 == 0) goto L_0x0201
            int r5 = r0.f400k
            r6 = -1
            if (r5 != r6) goto L_0x01fc
            android.widget.TextView r5 = r0.a
            int r6 = r0.f399j
            r5.setTypeface(r4, r6)
            goto L_0x0201
        L_0x01fc:
            android.widget.TextView r5 = r0.a
            r5.setTypeface(r4)
        L_0x0201:
            if (r10 == 0) goto L_0x0208
            android.widget.TextView r4 = r0.a
            r4.setFontVariationSettings(r10)
        L_0x0208:
            if (r8 == 0) goto L_0x022f
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 24
            if (r4 < r5) goto L_0x021a
            android.widget.TextView r4 = r0.a
            android.os.LocaleList r5 = android.os.LocaleList.forLanguageTags(r8)
            r4.setTextLocales(r5)
            goto L_0x022f
        L_0x021a:
            r4 = 44
            int r4 = r8.indexOf(r4)
            r5 = 0
            java.lang.String r4 = r8.substring(r5, r4)
            android.widget.TextView r6 = r0.a
            java.util.Locale r4 = java.util.Locale.forLanguageTag(r4)
            r6.setTextLocale(r4)
            goto L_0x0230
        L_0x022f:
            r5 = 0
        L_0x0230:
            d.b.e.a0 r4 = r0.f398i
            android.content.Context r6 = r4.f340j
            int[] r7 = androidx.appcompat.R$styleable.AppCompatTextView
            android.content.res.TypedArray r2 = r6.obtainStyledAttributes(r1, r7, r2, r5)
            int r6 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeTextType
            boolean r6 = r2.hasValue(r6)
            if (r6 == 0) goto L_0x024a
            int r6 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeTextType
            int r6 = r2.getInt(r6, r5)
            r4.a = r6
        L_0x024a:
            int r5 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeStepGranularity
            boolean r5 = r2.hasValue(r5)
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r5 == 0) goto L_0x025b
            int r5 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeStepGranularity
            float r5 = r2.getDimension(r5, r6)
            goto L_0x025d
        L_0x025b:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x025d:
            int r7 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMinTextSize
            boolean r7 = r2.hasValue(r7)
            if (r7 == 0) goto L_0x026c
            int r7 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMinTextSize
            float r7 = r2.getDimension(r7, r6)
            goto L_0x026e
        L_0x026c:
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x026e:
            int r8 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMaxTextSize
            boolean r8 = r2.hasValue(r8)
            if (r8 == 0) goto L_0x027d
            int r8 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMaxTextSize
            float r8 = r2.getDimension(r8, r6)
            goto L_0x027f
        L_0x027d:
            r8 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x027f:
            int r9 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizePresetSizes
            boolean r9 = r2.hasValue(r9)
            if (r9 == 0) goto L_0x02b9
            int r9 = androidx.appcompat.R$styleable.AppCompatTextView_autoSizePresetSizes
            r10 = 0
            int r9 = r2.getResourceId(r9, r10)
            if (r9 <= 0) goto L_0x02b9
            android.content.res.Resources r10 = r2.getResources()
            android.content.res.TypedArray r9 = r10.obtainTypedArray(r9)
            int r10 = r9.length()
            int[] r11 = new int[r10]
            if (r10 <= 0) goto L_0x02b6
            r12 = 0
        L_0x02a1:
            if (r12 >= r10) goto L_0x02ad
            r13 = -1
            int r14 = r9.getDimensionPixelSize(r12, r13)
            r11[r12] = r14
            int r12 = r12 + 1
            goto L_0x02a1
        L_0x02ad:
            int[] r10 = r4.a((int[]) r11)
            r4.f336f = r10
            r4.c()
        L_0x02b6:
            r9.recycle()
        L_0x02b9:
            r2.recycle()
            boolean r2 = r4.d()
            r9 = 2
            if (r2 == 0) goto L_0x02f7
            int r2 = r4.a
            r10 = 1
            if (r2 != r10) goto L_0x02fa
            boolean r2 = r4.f337g
            if (r2 != 0) goto L_0x02f3
            android.content.Context r2 = r4.f340j
            android.content.res.Resources r2 = r2.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r10 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
            if (r10 != 0) goto L_0x02e0
            r7 = 1094713344(0x41400000, float:12.0)
            float r7 = android.util.TypedValue.applyDimension(r9, r7, r2)
        L_0x02e0:
            int r10 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r10 != 0) goto L_0x02ea
            r8 = 1121976320(0x42e00000, float:112.0)
            float r8 = android.util.TypedValue.applyDimension(r9, r8, r2)
        L_0x02ea:
            int r2 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r2 != 0) goto L_0x02f0
            r5 = 1065353216(0x3f800000, float:1.0)
        L_0x02f0:
            r4.a((float) r7, (float) r8, (float) r5)
        L_0x02f3:
            r4.b()
            goto L_0x02fa
        L_0x02f7:
            r2 = 0
            r4.a = r2
        L_0x02fa:
            boolean r2 = d.i.j.b.a
            if (r2 == 0) goto L_0x0339
            d.b.e.a0 r2 = r0.f398i
            int r4 = r2.a
            if (r4 == 0) goto L_0x0339
            int[] r2 = r2.f336f
            int r4 = r2.length
            if (r4 <= 0) goto L_0x0339
            android.widget.TextView r4 = r0.a
            int r4 = r4.getAutoSizeStepGranularity()
            float r4 = (float) r4
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L_0x0333
            android.widget.TextView r2 = r0.a
            d.b.e.a0 r4 = r0.f398i
            float r4 = r4.f334d
            int r4 = java.lang.Math.round(r4)
            d.b.e.a0 r5 = r0.f398i
            float r5 = r5.f335e
            int r5 = java.lang.Math.round(r5)
            d.b.e.a0 r6 = r0.f398i
            float r6 = r6.f333c
            int r6 = java.lang.Math.round(r6)
            r7 = 0
            r2.setAutoSizeTextTypeUniformWithConfiguration(r4, r5, r6, r7)
            goto L_0x0339
        L_0x0333:
            r7 = 0
            android.widget.TextView r4 = r0.a
            r4.setAutoSizeTextTypeUniformWithPresetSizes(r2, r7)
        L_0x0339:
            int[] r2 = androidx.appcompat.R$styleable.AppCompatTextView
            d.b.e.x0 r4 = new d.b.e.x0
            android.content.res.TypedArray r1 = r3.obtainStyledAttributes(r1, r2)
            r4.<init>(r3, r1)
            int r1 = androidx.appcompat.R$styleable.AppCompatTextView_drawableLeftCompat
            r2 = -1
            int r1 = r4.f(r1, r2)
            if (r1 == r2) goto L_0x0354
            r5 = r16
            android.graphics.drawable.Drawable r1 = r5.a((android.content.Context) r3, (int) r1)
            goto L_0x0357
        L_0x0354:
            r5 = r16
            r1 = 0
        L_0x0357:
            int r6 = androidx.appcompat.R$styleable.AppCompatTextView_drawableTopCompat
            int r6 = r4.f(r6, r2)
            if (r6 == r2) goto L_0x0364
            android.graphics.drawable.Drawable r6 = r5.a((android.content.Context) r3, (int) r6)
            goto L_0x0365
        L_0x0364:
            r6 = 0
        L_0x0365:
            int r7 = androidx.appcompat.R$styleable.AppCompatTextView_drawableRightCompat
            int r7 = r4.f(r7, r2)
            if (r7 == r2) goto L_0x0372
            android.graphics.drawable.Drawable r7 = r5.a((android.content.Context) r3, (int) r7)
            goto L_0x0373
        L_0x0372:
            r7 = 0
        L_0x0373:
            int r8 = androidx.appcompat.R$styleable.AppCompatTextView_drawableBottomCompat
            int r8 = r4.f(r8, r2)
            if (r8 == r2) goto L_0x0380
            android.graphics.drawable.Drawable r8 = r5.a((android.content.Context) r3, (int) r8)
            goto L_0x0381
        L_0x0380:
            r8 = 0
        L_0x0381:
            int r10 = androidx.appcompat.R$styleable.AppCompatTextView_drawableStartCompat
            int r10 = r4.f(r10, r2)
            if (r10 == r2) goto L_0x038e
            android.graphics.drawable.Drawable r10 = r5.a((android.content.Context) r3, (int) r10)
            goto L_0x038f
        L_0x038e:
            r10 = 0
        L_0x038f:
            int r11 = androidx.appcompat.R$styleable.AppCompatTextView_drawableEndCompat
            int r11 = r4.f(r11, r2)
            if (r11 == r2) goto L_0x039c
            android.graphics.drawable.Drawable r2 = r5.a((android.content.Context) r3, (int) r11)
            goto L_0x039d
        L_0x039c:
            r2 = 0
        L_0x039d:
            r3 = 3
            if (r10 != 0) goto L_0x03f2
            if (r2 == 0) goto L_0x03a3
            goto L_0x03f2
        L_0x03a3:
            if (r1 != 0) goto L_0x03ab
            if (r6 != 0) goto L_0x03ab
            if (r7 != 0) goto L_0x03ab
            if (r8 == 0) goto L_0x0413
        L_0x03ab:
            android.widget.TextView r2 = r0.a
            android.graphics.drawable.Drawable[] r2 = r2.getCompoundDrawablesRelative()
            r5 = 0
            r10 = r2[r5]
            if (r10 != 0) goto L_0x03dc
            r10 = r2[r9]
            if (r10 == 0) goto L_0x03bb
            goto L_0x03dc
        L_0x03bb:
            android.widget.TextView r2 = r0.a
            android.graphics.drawable.Drawable[] r2 = r2.getCompoundDrawables()
            android.widget.TextView r10 = r0.a
            if (r1 == 0) goto L_0x03c6
            goto L_0x03c8
        L_0x03c6:
            r1 = r2[r5]
        L_0x03c8:
            if (r6 == 0) goto L_0x03cb
            goto L_0x03ce
        L_0x03cb:
            r5 = 1
            r6 = r2[r5]
        L_0x03ce:
            if (r7 == 0) goto L_0x03d1
            goto L_0x03d3
        L_0x03d1:
            r7 = r2[r9]
        L_0x03d3:
            if (r8 == 0) goto L_0x03d6
            goto L_0x03d8
        L_0x03d6:
            r8 = r2[r3]
        L_0x03d8:
            r10.setCompoundDrawablesWithIntrinsicBounds(r1, r6, r7, r8)
            goto L_0x0413
        L_0x03dc:
            android.widget.TextView r1 = r0.a
            r5 = 0
            r5 = r2[r5]
            if (r6 == 0) goto L_0x03e4
            goto L_0x03e7
        L_0x03e4:
            r6 = 1
            r6 = r2[r6]
        L_0x03e7:
            r7 = r2[r9]
            if (r8 == 0) goto L_0x03ec
            goto L_0x03ee
        L_0x03ec:
            r8 = r2[r3]
        L_0x03ee:
            r1.setCompoundDrawablesRelativeWithIntrinsicBounds(r5, r6, r7, r8)
            goto L_0x0413
        L_0x03f2:
            android.widget.TextView r1 = r0.a
            android.graphics.drawable.Drawable[] r1 = r1.getCompoundDrawablesRelative()
            android.widget.TextView r5 = r0.a
            if (r10 == 0) goto L_0x03fd
            goto L_0x0400
        L_0x03fd:
            r7 = 0
            r10 = r1[r7]
        L_0x0400:
            if (r6 == 0) goto L_0x0403
            goto L_0x0406
        L_0x0403:
            r6 = 1
            r6 = r1[r6]
        L_0x0406:
            if (r2 == 0) goto L_0x0409
            goto L_0x040b
        L_0x0409:
            r2 = r1[r9]
        L_0x040b:
            if (r8 == 0) goto L_0x040e
            goto L_0x0410
        L_0x040e:
            r8 = r1[r3]
        L_0x0410:
            r5.setCompoundDrawablesRelativeWithIntrinsicBounds(r10, r6, r2, r8)
        L_0x0413:
            int r1 = androidx.appcompat.R$styleable.AppCompatTextView_drawableTint
            boolean r1 = r4.f(r1)
            if (r1 == 0) goto L_0x043b
            int r1 = androidx.appcompat.R$styleable.AppCompatTextView_drawableTint
            android.content.res.ColorStateList r1 = r4.a(r1)
            android.widget.TextView r2 = r0.a
            if (r2 == 0) goto L_0x0439
            int r3 = android.os.Build.VERSION.SDK_INT
            r5 = 23
            if (r3 < r5) goto L_0x042f
            r2.setCompoundDrawableTintList(r1)
            goto L_0x043b
        L_0x042f:
            boolean r3 = r2 instanceof d.i.j.e
            if (r3 == 0) goto L_0x043b
            d.i.j.e r2 = (d.i.j.e) r2
            r2.setSupportCompoundDrawablesTintList(r1)
            goto L_0x043b
        L_0x0439:
            r1 = 0
            throw r1
        L_0x043b:
            r1 = 0
            int r2 = androidx.appcompat.R$styleable.AppCompatTextView_drawableTintMode
            boolean r2 = r4.f(r2)
            if (r2 == 0) goto L_0x0469
            int r2 = androidx.appcompat.R$styleable.AppCompatTextView_drawableTintMode
            r3 = -1
            int r2 = r4.c(r2, r3)
            android.graphics.PorterDuff$Mode r2 = d.b.e.e0.a(r2, r1)
            android.widget.TextView r1 = r0.a
            if (r1 == 0) goto L_0x0467
            int r3 = android.os.Build.VERSION.SDK_INT
            r5 = 23
            if (r3 < r5) goto L_0x045d
            r1.setCompoundDrawableTintMode(r2)
            goto L_0x0469
        L_0x045d:
            boolean r3 = r1 instanceof d.i.j.e
            if (r3 == 0) goto L_0x0469
            d.i.j.e r1 = (d.i.j.e) r1
            r1.setSupportCompoundDrawablesTintMode(r2)
            goto L_0x0469
        L_0x0467:
            r1 = 0
            throw r1
        L_0x0469:
            int r1 = androidx.appcompat.R$styleable.AppCompatTextView_firstBaselineToTopHeight
            r2 = -1
            int r1 = r4.b(r1, r2)
            int r3 = androidx.appcompat.R$styleable.AppCompatTextView_lastBaselineToBottomHeight
            int r3 = r4.b(r3, r2)
            int r5 = androidx.appcompat.R$styleable.AppCompatTextView_lineHeight
            int r5 = r4.b(r5, r2)
            android.content.res.TypedArray r4 = r4.b
            r4.recycle()
            if (r1 == r2) goto L_0x0488
            android.widget.TextView r4 = r0.a
            d.b.a.r.a((android.widget.TextView) r4, (int) r1)
        L_0x0488:
            if (r3 == r2) goto L_0x048f
            android.widget.TextView r1 = r0.a
            d.b.a.r.b((android.widget.TextView) r1, (int) r3)
        L_0x048f:
            if (r5 == r2) goto L_0x0496
            android.widget.TextView r1 = r0.a
            d.b.a.r.c((android.widget.TextView) r1, (int) r5)
        L_0x0496:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.y.a(android.util.AttributeSet, int):void");
    }

    public boolean b() {
        a0 a0Var = this.f398i;
        return a0Var.d() && a0Var.a != 0;
    }

    public final void a(Context context, x0 x0Var) {
        String d2;
        this.f399j = x0Var.c(R$styleable.TextAppearance_android_textStyle, this.f399j);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            int c2 = x0Var.c(R$styleable.TextAppearance_android_textFontWeight, -1);
            this.f400k = c2;
            if (c2 != -1) {
                this.f399j = (this.f399j & 2) | 0;
            }
        }
        if (x0Var.f(R$styleable.TextAppearance_android_fontFamily) || x0Var.f(R$styleable.TextAppearance_fontFamily)) {
            this.f401l = null;
            int i2 = x0Var.f(R$styleable.TextAppearance_fontFamily) ? R$styleable.TextAppearance_fontFamily : R$styleable.TextAppearance_android_fontFamily;
            int i3 = this.f400k;
            int i4 = this.f399j;
            if (!context.isRestricted()) {
                try {
                    Typeface a2 = x0Var.a(i2, this.f399j, (g) new a(this, i3, i4));
                    if (a2 != null) {
                        if (Build.VERSION.SDK_INT < 28 || this.f400k == -1) {
                            this.f401l = a2;
                        } else {
                            this.f401l = Typeface.create(Typeface.create(a2, 0), this.f400k, (this.f399j & 2) != 0);
                        }
                    }
                    this.m = this.f401l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.f401l == null && (d2 = x0Var.d(i2)) != null) {
                if (Build.VERSION.SDK_INT < 28 || this.f400k == -1) {
                    this.f401l = Typeface.create(d2, this.f399j);
                    return;
                }
                Typeface create = Typeface.create(d2, 0);
                int i5 = this.f400k;
                if ((this.f399j & 2) != 0) {
                    z = true;
                }
                this.f401l = Typeface.create(create, i5, z);
            }
        } else if (x0Var.f(R$styleable.TextAppearance_android_typeface)) {
            this.m = false;
            int c3 = x0Var.c(R$styleable.TextAppearance_android_typeface, 1);
            if (c3 == 1) {
                this.f401l = Typeface.SANS_SERIF;
            } else if (c3 == 2) {
                this.f401l = Typeface.SERIF;
            } else if (c3 == 3) {
                this.f401l = Typeface.MONOSPACE;
            }
        }
    }

    public void a(Context context, int i2) {
        String d2;
        ColorStateList a2;
        x0 x0Var = new x0(context, context.obtainStyledAttributes(i2, R$styleable.TextAppearance));
        if (x0Var.f(R$styleable.TextAppearance_textAllCaps)) {
            this.a.setAllCaps(x0Var.a(R$styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && x0Var.f(R$styleable.TextAppearance_android_textColor) && (a2 = x0Var.a(R$styleable.TextAppearance_android_textColor)) != null) {
            this.a.setTextColor(a2);
        }
        if (x0Var.f(R$styleable.TextAppearance_android_textSize) && x0Var.b(R$styleable.TextAppearance_android_textSize, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        a(context, x0Var);
        if (Build.VERSION.SDK_INT >= 26 && x0Var.f(R$styleable.TextAppearance_fontVariationSettings) && (d2 = x0Var.d(R$styleable.TextAppearance_fontVariationSettings)) != null) {
            this.a.setFontVariationSettings(d2);
        }
        x0Var.b.recycle();
        Typeface typeface = this.f401l;
        if (typeface != null) {
            this.a.setTypeface(typeface, this.f399j);
        }
    }

    public void a() {
        if (!(this.b == null && this.f392c == null && this.f393d == null && this.f394e == null)) {
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.f392c);
            a(compoundDrawables[2], this.f393d);
            a(compoundDrawables[3], this.f394e);
        }
        if (this.f395f != null || this.f396g != null) {
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f395f);
            a(compoundDrawablesRelative[2], this.f396g);
        }
    }

    public final void a(Drawable drawable, v0 v0Var) {
        if (drawable != null && v0Var != null) {
            j.a(drawable, v0Var, this.a.getDrawableState());
        }
    }

    public static v0 a(Context context, j jVar, int i2) {
        ColorStateList b2 = jVar.b(context, i2);
        if (b2 == null) {
            return null;
        }
        v0 v0Var = new v0();
        v0Var.f390d = true;
        v0Var.a = b2;
        return v0Var;
    }

    public void a(int i2) {
        a0 a0Var = this.f398i;
        if (!a0Var.d()) {
            return;
        }
        if (i2 == 0) {
            a0Var.a = 0;
            a0Var.f334d = -1.0f;
            a0Var.f335e = -1.0f;
            a0Var.f333c = -1.0f;
            a0Var.f336f = new int[0];
            a0Var.b = false;
        } else if (i2 == 1) {
            DisplayMetrics displayMetrics = a0Var.f340j.getResources().getDisplayMetrics();
            a0Var.a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (a0Var.b()) {
                a0Var.a();
            }
        } else {
            throw new IllegalArgumentException(e.a.a.a.a.a("Unknown auto-size text type: ", i2));
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        a0 a0Var = this.f398i;
        if (a0Var.d()) {
            DisplayMetrics displayMetrics = a0Var.f340j.getResources().getDisplayMetrics();
            a0Var.a(TypedValue.applyDimension(i5, (float) i2, displayMetrics), TypedValue.applyDimension(i5, (float) i3, displayMetrics), TypedValue.applyDimension(i5, (float) i4, displayMetrics));
            if (a0Var.b()) {
                a0Var.a();
            }
        }
    }

    public void a(int[] iArr, int i2) {
        a0 a0Var = this.f398i;
        if (a0Var.d()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = a0Var.f340j.getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr2[i3] = Math.round(TypedValue.applyDimension(i2, (float) iArr[i3], displayMetrics));
                    }
                }
                a0Var.f336f = a0Var.a(iArr2);
                if (!a0Var.c()) {
                    StringBuilder a2 = e.a.a.a.a.a("None of the preset sizes is valid: ");
                    a2.append(Arrays.toString(iArr));
                    throw new IllegalArgumentException(a2.toString());
                }
            } else {
                a0Var.f337g = false;
            }
            if (a0Var.b()) {
                a0Var.a();
            }
        }
    }
}
