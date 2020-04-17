package d.i.c;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import d.b.a.r;
import d.f.h;
import d.i.f.b;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

public class e extends i {
    public static final Class<?> b;

    /* renamed from: c  reason: collision with root package name */
    public static final Constructor<?> f567c;

    /* renamed from: d  reason: collision with root package name */
    public static final Method f568d;

    /* renamed from: e  reason: collision with root package name */
    public static final Method f569e;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method = cls.getMethod("addFontWeightStyle", new Class[]{ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE});
            method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", new Class[]{Array.newInstance(cls, 1).getClass()});
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method2 = null;
            method = null;
        }
        f567c = constructor;
        b = cls;
        f568d = method;
        f569e = method2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x006a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x006b A[LOOP:0: B:8:0x0015->B:43:0x006b, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface a(android.content.Context r17, d.i.b.b.c r18, android.content.res.Resources r19, int r20) {
        /*
            r16 = this;
            r0 = 0
            r1 = 0
            java.lang.reflect.Constructor<?> r2 = f567c     // Catch:{ IllegalAccessException | InstantiationException | InvocationTargetException -> 0x000b }
            java.lang.Object[] r3 = new java.lang.Object[r0]     // Catch:{ IllegalAccessException | InstantiationException | InvocationTargetException -> 0x000b }
            java.lang.Object r2 = r2.newInstance(r3)     // Catch:{ IllegalAccessException | InstantiationException | InvocationTargetException -> 0x000b }
            goto L_0x000c
        L_0x000b:
            r2 = r1
        L_0x000c:
            if (r2 != 0) goto L_0x000f
            return r1
        L_0x000f:
            r3 = r18
            d.i.b.b.d[] r3 = r3.a
            int r4 = r3.length
            r5 = 0
        L_0x0015:
            if (r5 >= r4) goto L_0x0073
            r6 = r3[r5]
            int r0 = r6.f561f
            java.io.File r7 = d.b.a.r.a((android.content.Context) r17)
            r8 = r19
            if (r7 != 0) goto L_0x0024
            goto L_0x002d
        L_0x0024:
            boolean r0 = d.b.a.r.a((java.io.File) r7, (android.content.res.Resources) r8, (int) r0)     // Catch:{ all -> 0x006e }
            if (r0 != 0) goto L_0x002f
            r7.delete()
        L_0x002d:
            r0 = r1
            goto L_0x005b
        L_0x002f:
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0057 }
            r9.<init>(r7)     // Catch:{ IOException -> 0x0057 }
            java.nio.channels.FileChannel r10 = r9.getChannel()     // Catch:{ all -> 0x0048 }
            long r14 = r10.size()     // Catch:{ all -> 0x0048 }
            java.nio.channels.FileChannel$MapMode r11 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch:{ all -> 0x0048 }
            r12 = 0
            java.nio.MappedByteBuffer r0 = r10.map(r11, r12, r14)     // Catch:{ all -> 0x0048 }
            r9.close()     // Catch:{ IOException -> 0x0057 }
            goto L_0x0058
        L_0x0048:
            r0 = move-exception
            r10 = r0
            throw r10     // Catch:{ all -> 0x004b }
        L_0x004b:
            r0 = move-exception
            r11 = r0
            r9.close()     // Catch:{ all -> 0x0051 }
            goto L_0x0056
        L_0x0051:
            r0 = move-exception
            r9 = r0
            r10.addSuppressed(r9)     // Catch:{ IOException -> 0x0057 }
        L_0x0056:
            throw r11     // Catch:{ IOException -> 0x0057 }
        L_0x0057:
            r0 = r1
        L_0x0058:
            r7.delete()
        L_0x005b:
            if (r0 != 0) goto L_0x005e
            return r1
        L_0x005e:
            int r7 = r6.f560e
            int r9 = r6.b
            boolean r6 = r6.f558c
            boolean r0 = a(r2, r0, r7, r9, r6)
            if (r0 != 0) goto L_0x006b
            return r1
        L_0x006b:
            int r5 = r5 + 1
            goto L_0x0015
        L_0x006e:
            r0 = move-exception
            r7.delete()
            throw r0
        L_0x0073:
            android.graphics.Typeface r0 = a(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.c.e.a(android.content.Context, d.i.b.b.c, android.content.res.Resources, int):android.graphics.Typeface");
    }

    public Typeface a(Context context, CancellationSignal cancellationSignal, b.f[] fVarArr, int i2) {
        Object obj;
        try {
            obj = f567c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        h hVar = new h();
        for (b.f fVar : fVarArr) {
            Uri uri = fVar.a;
            ByteBuffer byteBuffer = (ByteBuffer) hVar.get(uri);
            if (byteBuffer == null) {
                byteBuffer = r.a(context, cancellationSignal, uri);
                hVar.put(uri, byteBuffer);
            }
            if (byteBuffer == null || !a(obj, byteBuffer, fVar.b, fVar.f588c, fVar.f589d)) {
                return null;
            }
        }
        Typeface a = a(obj);
        if (a == null) {
            return null;
        }
        return Typeface.create(a, i2);
    }

    public static boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, boolean z) {
        try {
            return ((Boolean) f568d.invoke(obj, new Object[]{byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Boolean.valueOf(z)})).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f569e.invoke((Object) null, new Object[]{newInstance});
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }
}
