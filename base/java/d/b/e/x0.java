package d.b.e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import d.b.b.a.a;

public class x0 {
    public final Context a;
    public final TypedArray b;

    /* renamed from: c  reason: collision with root package name */
    public TypedValue f391c;

    public x0(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public static x0 a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new x0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public Drawable b(int i2) {
        int resourceId;
        if (!this.b.hasValue(i2) || (resourceId = this.b.getResourceId(i2, 0)) == 0) {
            return this.b.getDrawable(i2);
        }
        return a.c(this.a, resourceId);
    }

    public Drawable c(int i2) {
        int resourceId;
        if (!this.b.hasValue(i2) || (resourceId = this.b.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return j.a().a(this.a, resourceId, true);
    }

    public String d(int i2) {
        return this.b.getString(i2);
    }

    public CharSequence e(int i2) {
        return this.b.getText(i2);
    }

    public int f(int i2, int i3) {
        return this.b.getResourceId(i2, i3);
    }

    public static x0 a(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3) {
        return new x0(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i3));
    }

    public int d(int i2, int i3) {
        return this.b.getInteger(i2, i3);
    }

    public int e(int i2, int i3) {
        return this.b.getLayoutDimension(i2, i3);
    }

    public boolean f(int i2) {
        return this.b.hasValue(i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00c3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface a(int r13, int r14, d.i.b.b.g r15) {
        /*
            r12 = this;
            android.content.res.TypedArray r0 = r12.b
            r1 = 0
            int r13 = r0.getResourceId(r13, r1)
            r0 = 0
            if (r13 != 0) goto L_0x000b
            return r0
        L_0x000b:
            android.util.TypedValue r1 = r12.f391c
            if (r1 != 0) goto L_0x0016
            android.util.TypedValue r1 = new android.util.TypedValue
            r1.<init>()
            r12.f391c = r1
        L_0x0016:
            android.content.Context r2 = r12.a
            android.util.TypedValue r1 = r12.f391c
            boolean r3 = r2.isRestricted()
            if (r3 == 0) goto L_0x0022
            goto L_0x00e7
        L_0x0022:
            r9 = 1
            android.content.res.Resources r4 = r2.getResources()
            r3 = 1
            r4.getValue(r13, r1, r3)
            java.lang.String r10 = "ResourcesCompat"
            java.lang.CharSequence r3 = r1.string
            if (r3 == 0) goto L_0x00e8
            java.lang.String r1 = r3.toString()
            java.lang.String r3 = "res/"
            boolean r3 = r1.startsWith(r3)
            r11 = -3
            if (r3 != 0) goto L_0x0045
            if (r15 == 0) goto L_0x00c6
            r15.a((int) r11, (android.os.Handler) r0)
            goto L_0x00c6
        L_0x0045:
            d.f.f<java.lang.String, android.graphics.Typeface> r3 = d.i.c.c.b
            java.lang.String r5 = d.i.c.c.a((android.content.res.Resources) r4, (int) r13, (int) r14)
            java.lang.Object r3 = r3.a(r5)
            android.graphics.Typeface r3 = (android.graphics.Typeface) r3
            if (r3 == 0) goto L_0x005b
            if (r15 == 0) goto L_0x0058
            r15.a((android.graphics.Typeface) r3, (android.os.Handler) r0)
        L_0x0058:
            r0 = r3
            goto L_0x00c6
        L_0x005b:
            java.lang.String r3 = r1.toLowerCase()     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            java.lang.String r5 = ".xml"
            boolean r3 = r3.endsWith(r5)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            if (r3 == 0) goto L_0x0085
            android.content.res.XmlResourceParser r3 = r4.getXml(r13)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            d.i.b.b.b r3 = d.b.a.r.a((org.xmlpull.v1.XmlPullParser) r3, (android.content.res.Resources) r4)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            if (r3 != 0) goto L_0x007c
            java.lang.String r14 = "Failed to find font-family tag"
            android.util.Log.e(r10, r14)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            if (r15 == 0) goto L_0x00c6
            r15.a((int) r11, (android.os.Handler) r0)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            goto L_0x00c6
        L_0x007c:
            r8 = 0
            r5 = r13
            r6 = r14
            r7 = r15
            android.graphics.Typeface r14 = d.i.c.c.a(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            goto L_0x0094
        L_0x0085:
            android.graphics.Typeface r14 = d.i.c.c.a(r2, r4, r13, r1, r14)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            if (r15 == 0) goto L_0x0094
            if (r14 == 0) goto L_0x0091
            r15.a((android.graphics.Typeface) r14, (android.os.Handler) r0)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
            goto L_0x0094
        L_0x0091:
            r15.a((int) r11, (android.os.Handler) r0)     // Catch:{ XmlPullParserException -> 0x00ac, IOException -> 0x0096 }
        L_0x0094:
            r0 = r14
            goto L_0x00c6
        L_0x0096:
            r14 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Failed to read xml resource "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            android.util.Log.e(r10, r1, r14)
            goto L_0x00c1
        L_0x00ac:
            r14 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Failed to parse xml resource "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            android.util.Log.e(r10, r1, r14)
        L_0x00c1:
            if (r15 == 0) goto L_0x00c6
            r15.a((int) r11, (android.os.Handler) r0)
        L_0x00c6:
            if (r0 != 0) goto L_0x00e7
            if (r15 == 0) goto L_0x00cb
            goto L_0x00e7
        L_0x00cb:
            android.content.res.Resources$NotFoundException r14 = new android.content.res.Resources$NotFoundException
            java.lang.String r15 = "Font resource ID #0x"
            java.lang.StringBuilder r15 = e.a.a.a.a.a(r15)
            java.lang.String r13 = java.lang.Integer.toHexString(r13)
            r15.append(r13)
            java.lang.String r13 = " could not be retrieved."
            r15.append(r13)
            java.lang.String r13 = r15.toString()
            r14.<init>(r13)
            throw r14
        L_0x00e7:
            return r0
        L_0x00e8:
            android.content.res.Resources$NotFoundException r14 = new android.content.res.Resources$NotFoundException
            java.lang.String r15 = "Resource \""
            java.lang.StringBuilder r15 = e.a.a.a.a.a(r15)
            java.lang.String r0 = r4.getResourceName(r13)
            r15.append(r0)
            java.lang.String r0 = "\" ("
            r15.append(r0)
            java.lang.String r13 = java.lang.Integer.toHexString(r13)
            r15.append(r13)
            java.lang.String r13 = ") is not a Font: "
            r15.append(r13)
            r15.append(r1)
            java.lang.String r13 = r15.toString()
            r14.<init>(r13)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.x0.a(int, int, d.i.b.b.g):android.graphics.Typeface");
    }

    public int c(int i2, int i3) {
        return this.b.getInt(i2, i3);
    }

    public int b(int i2, int i3) {
        return this.b.getDimensionPixelSize(i2, i3);
    }

    public boolean a(int i2, boolean z) {
        return this.b.getBoolean(i2, z);
    }

    public ColorStateList a(int i2) {
        int resourceId;
        ColorStateList b2;
        if (!this.b.hasValue(i2) || (resourceId = this.b.getResourceId(i2, 0)) == 0 || (b2 = a.b(this.a, resourceId)) == null) {
            return this.b.getColorStateList(i2);
        }
        return b2;
    }

    public int a(int i2, int i3) {
        return this.b.getDimensionPixelOffset(i2, i3);
    }
}
