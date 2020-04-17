package d.i.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import d.i.b.b.c;
import d.i.b.b.d;
import d.i.f.b;
import java.io.IOException;

public class h extends i {
    public b.f a(b.f[] fVarArr, int i2) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x004c, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r7.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface a(android.content.Context r11, android.os.CancellationSignal r12, d.i.f.b.f[] r13, int r14) {
        /*
            r10 = this;
            android.content.ContentResolver r11 = r11.getContentResolver()
            int r0 = r13.length
            r1 = 0
            r2 = 0
            r4 = r1
            r3 = 0
        L_0x0009:
            r5 = 1
            if (r3 >= r0) goto L_0x0059
            r6 = r13[r3]
            android.net.Uri r7 = r6.a     // Catch:{ IOException -> 0x0056 }
            java.lang.String r8 = "r"
            android.os.ParcelFileDescriptor r7 = r11.openFileDescriptor(r7, r8, r12)     // Catch:{ IOException -> 0x0056 }
            if (r7 != 0) goto L_0x001e
            if (r7 == 0) goto L_0x0056
        L_0x001a:
            r7.close()     // Catch:{ IOException -> 0x0056 }
            goto L_0x0056
        L_0x001e:
            android.graphics.fonts.Font$Builder r8 = new android.graphics.fonts.Font$Builder     // Catch:{ all -> 0x004a }
            r8.<init>(r7)     // Catch:{ all -> 0x004a }
            int r9 = r6.f588c     // Catch:{ all -> 0x004a }
            android.graphics.fonts.Font$Builder r8 = r8.setWeight(r9)     // Catch:{ all -> 0x004a }
            boolean r9 = r6.f589d     // Catch:{ all -> 0x004a }
            if (r9 == 0) goto L_0x002e
            goto L_0x002f
        L_0x002e:
            r5 = 0
        L_0x002f:
            android.graphics.fonts.Font$Builder r5 = r8.setSlant(r5)     // Catch:{ all -> 0x004a }
            int r6 = r6.b     // Catch:{ all -> 0x004a }
            android.graphics.fonts.Font$Builder r5 = r5.setTtcIndex(r6)     // Catch:{ all -> 0x004a }
            android.graphics.fonts.Font r5 = r5.build()     // Catch:{ all -> 0x004a }
            if (r4 != 0) goto L_0x0046
            android.graphics.fonts.FontFamily$Builder r6 = new android.graphics.fonts.FontFamily$Builder     // Catch:{ all -> 0x004a }
            r6.<init>(r5)     // Catch:{ all -> 0x004a }
            r4 = r6
            goto L_0x001a
        L_0x0046:
            r4.addFont(r5)     // Catch:{ all -> 0x004a }
            goto L_0x001a
        L_0x004a:
            r5 = move-exception
            throw r5     // Catch:{ all -> 0x004c }
        L_0x004c:
            r6 = move-exception
            r7.close()     // Catch:{ all -> 0x0051 }
            goto L_0x0055
        L_0x0051:
            r7 = move-exception
            r5.addSuppressed(r7)     // Catch:{ IOException -> 0x0056 }
        L_0x0055:
            throw r6     // Catch:{ IOException -> 0x0056 }
        L_0x0056:
            int r3 = r3 + 1
            goto L_0x0009
        L_0x0059:
            if (r4 != 0) goto L_0x005c
            return r1
        L_0x005c:
            android.graphics.fonts.FontStyle r11 = new android.graphics.fonts.FontStyle
            r12 = r14 & 1
            if (r12 == 0) goto L_0x0065
            r12 = 700(0x2bc, float:9.81E-43)
            goto L_0x0067
        L_0x0065:
            r12 = 400(0x190, float:5.6E-43)
        L_0x0067:
            r13 = r14 & 2
            if (r13 == 0) goto L_0x006c
            r2 = 1
        L_0x006c:
            r11.<init>(r12, r2)
            android.graphics.Typeface$CustomFallbackBuilder r12 = new android.graphics.Typeface$CustomFallbackBuilder
            android.graphics.fonts.FontFamily r13 = r4.build()
            r12.<init>(r13)
            android.graphics.Typeface$CustomFallbackBuilder r11 = r12.setStyle(r11)
            android.graphics.Typeface r11 = r11.build()
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.c.h.a(android.content.Context, android.os.CancellationSignal, d.i.f.b$f[], int):android.graphics.Typeface");
    }

    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        try {
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(new Font.Builder(resources, i2).build()).build()).setStyle(new FontStyle((i3 & 1) != 0 ? 700 : 400, (i3 & 2) != 0 ? 1 : 0)).build();
        } catch (IOException unused) {
            return null;
        }
    }

    public Typeface a(Context context, c cVar, Resources resources, int i2) {
        d[] dVarArr = cVar.a;
        int length = dVarArr.length;
        int i3 = 0;
        FontFamily.Builder builder = null;
        int i4 = 0;
        while (true) {
            int i5 = 1;
            if (i4 >= length) {
                break;
            }
            d dVar = dVarArr[i4];
            try {
                Font.Builder weight = new Font.Builder(resources, dVar.f561f).setWeight(dVar.b);
                if (!dVar.f558c) {
                    i5 = 0;
                }
                Font build = weight.setSlant(i5).setTtcIndex(dVar.f560e).setFontVariationSettings(dVar.f559d).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException unused) {
            }
            i4++;
        }
        if (builder == null) {
            return null;
        }
        int i6 = (i2 & 1) != 0 ? 700 : 400;
        if ((i2 & 2) != 0) {
            i3 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i6, i3)).build();
    }
}
