package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;

public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: j  reason: collision with root package name */
    public static final PorterDuff.Mode f55j = PorterDuff.Mode.SRC_IN;
    public int a = -1;
    public Object b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f56c = null;

    /* renamed from: d  reason: collision with root package name */
    public Parcelable f57d = null;

    /* renamed from: e  reason: collision with root package name */
    public int f58e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f59f = 0;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f60g = null;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f61h = f55j;

    /* renamed from: i  reason: collision with root package name */
    public String f62i = null;

    public IconCompat() {
    }

    public static IconCompat a(Resources resources, String str, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        } else if (i2 != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f58e = i2;
            if (resources != null) {
                try {
                    iconCompat.b = resources.getResourceName(i2);
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.b = str;
            }
            return iconCompat;
        } else {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
    }

    public String b() {
        int i2;
        if (this.a == -1 && (i2 = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.b;
            if (i2 >= 28) {
                return icon.getResPackage();
            }
            try {
                return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
            } catch (IllegalAccessException e2) {
                Log.e("IconCompat", "Unable to get icon package", e2);
                return null;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon package", e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.e("IconCompat", "Unable to get icon package", e4);
                return null;
            }
        } else if (this.a == 2) {
            return ((String) this.b).split(":", -1)[0];
        } else {
            throw new IllegalStateException("called getResPackage() on " + this);
        }
    }

    public Icon c() {
        Icon icon;
        int i2 = this.a;
        if (i2 == -1) {
            return (Icon) this.b;
        }
        if (i2 == 1) {
            icon = Icon.createWithBitmap((Bitmap) this.b);
        } else if (i2 == 2) {
            icon = Icon.createWithResource(b(), this.f58e);
        } else if (i2 == 3) {
            icon = Icon.createWithData((byte[]) this.b, this.f58e, this.f59f);
        } else if (i2 == 4) {
            icon = Icon.createWithContentUri((String) this.b);
        } else if (i2 != 5) {
            throw new IllegalArgumentException("Unknown type");
        } else if (Build.VERSION.SDK_INT >= 26) {
            icon = Icon.createWithAdaptiveBitmap((Bitmap) this.b);
        } else {
            Bitmap bitmap = (Bitmap) this.b;
            int min = (int) (((float) Math.min(bitmap.getWidth(), bitmap.getHeight())) * 0.6666667f);
            Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint(3);
            float f2 = ((float) min) * 0.5f;
            paint.setColor(-16777216);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            Matrix matrix = new Matrix();
            matrix.setTranslate((float) ((-(bitmap.getWidth() - min)) / 2), (float) ((-(bitmap.getHeight() - min)) / 2));
            bitmapShader.setLocalMatrix(matrix);
            paint.setShader(bitmapShader);
            canvas.drawCircle(f2, f2, 0.9166667f * f2, paint);
            canvas.setBitmap((Bitmap) null);
            icon = Icon.createWithBitmap(createBitmap);
        }
        ColorStateList colorStateList = this.f60g;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f61h;
        if (mode != f55j) {
            icon.setTintMode(mode);
        }
        return icon;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0042, code lost:
        if (r1 != 5) goto L_0x00b1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00c5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String toString() {
        /*
            r7 = this;
            int r0 = r7.a
            r1 = -1
            if (r0 != r1) goto L_0x000c
            java.lang.Object r0 = r7.b
            java.lang.String r0 = java.lang.String.valueOf(r0)
            return r0
        L_0x000c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Icon(typ="
            r0.<init>(r1)
            int r1 = r7.a
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == r6) goto L_0x0033
            if (r1 == r5) goto L_0x0030
            if (r1 == r4) goto L_0x002d
            if (r1 == r3) goto L_0x002a
            if (r1 == r2) goto L_0x0027
            java.lang.String r1 = "UNKNOWN"
            goto L_0x0035
        L_0x0027:
            java.lang.String r1 = "BITMAP_MASKABLE"
            goto L_0x0035
        L_0x002a:
            java.lang.String r1 = "URI"
            goto L_0x0035
        L_0x002d:
            java.lang.String r1 = "DATA"
            goto L_0x0035
        L_0x0030:
            java.lang.String r1 = "RESOURCE"
            goto L_0x0035
        L_0x0033:
            java.lang.String r1 = "BITMAP"
        L_0x0035:
            r0.append(r1)
            int r1 = r7.a
            if (r1 == r6) goto L_0x0091
            if (r1 == r5) goto L_0x0069
            if (r1 == r4) goto L_0x0050
            if (r1 == r3) goto L_0x0045
            if (r1 == r2) goto L_0x0091
            goto L_0x00b1
        L_0x0045:
            java.lang.String r1 = " uri="
            r0.append(r1)
            java.lang.Object r1 = r7.b
            r0.append(r1)
            goto L_0x00b1
        L_0x0050:
            java.lang.String r1 = " len="
            r0.append(r1)
            int r1 = r7.f58e
            r0.append(r1)
            int r1 = r7.f59f
            if (r1 == 0) goto L_0x00b1
            java.lang.String r1 = " off="
            r0.append(r1)
            int r1 = r7.f59f
            r0.append(r1)
            goto L_0x00b1
        L_0x0069:
            java.lang.String r1 = " pkg="
            r0.append(r1)
            java.lang.String r1 = r7.b()
            r0.append(r1)
            java.lang.String r1 = " id="
            r0.append(r1)
            java.lang.Object[] r1 = new java.lang.Object[r6]
            r2 = 0
            int r3 = r7.a()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            java.lang.String r2 = "0x%08x"
            java.lang.String r1 = java.lang.String.format(r2, r1)
            r0.append(r1)
            goto L_0x00b1
        L_0x0091:
            java.lang.String r1 = " size="
            r0.append(r1)
            java.lang.Object r1 = r7.b
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            int r1 = r1.getWidth()
            r0.append(r1)
            java.lang.String r1 = "x"
            r0.append(r1)
            java.lang.Object r1 = r7.b
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            int r1 = r1.getHeight()
            r0.append(r1)
        L_0x00b1:
            android.content.res.ColorStateList r1 = r7.f60g
            if (r1 == 0) goto L_0x00bf
            java.lang.String r1 = " tint="
            r0.append(r1)
            android.content.res.ColorStateList r1 = r7.f60g
            r0.append(r1)
        L_0x00bf:
            android.graphics.PorterDuff$Mode r1 = r7.f61h
            android.graphics.PorterDuff$Mode r2 = f55j
            if (r1 == r2) goto L_0x00cf
            java.lang.String r1 = " mode="
            r0.append(r1)
            android.graphics.PorterDuff$Mode r1 = r7.f61h
            r0.append(r1)
        L_0x00cf:
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }

    public int a() {
        int i2;
        if (this.a == -1 && (i2 = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.b;
            if (i2 >= 28) {
                return icon.getResId();
            }
            try {
                return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
            } catch (IllegalAccessException e2) {
                Log.e("IconCompat", "Unable to get icon resource", e2);
                return 0;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon resource", e3);
                return 0;
            } catch (NoSuchMethodException e4) {
                Log.e("IconCompat", "Unable to get icon resource", e4);
                return 0;
            }
        } else if (this.a == 2) {
            return this.f58e;
        } else {
            throw new IllegalStateException("called getResId() on " + this);
        }
    }

    public IconCompat(int i2) {
        this.a = i2;
    }
}
