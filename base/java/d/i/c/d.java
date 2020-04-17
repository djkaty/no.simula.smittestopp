package d.i.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import d.b.a.r;
import d.i.b.b.c;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class d extends i {
    public static Class<?> b = null;

    /* renamed from: c  reason: collision with root package name */
    public static Constructor<?> f563c = null;

    /* renamed from: d  reason: collision with root package name */
    public static Method f564d = null;

    /* renamed from: e  reason: collision with root package name */
    public static Method f565e = null;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f566f = false;

    public static void a() {
        Method method;
        Class<?> cls;
        Method method2;
        if (!f566f) {
            f566f = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
                method = cls.getMethod("addFontWeightStyle", new Class[]{String.class, Integer.TYPE, Boolean.TYPE});
                method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", new Class[]{Array.newInstance(cls, 1).getClass()});
                constructor = constructor2;
            } catch (ClassNotFoundException | NoSuchMethodException e2) {
                Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
                method2 = null;
                cls = null;
                method = null;
            }
            f563c = constructor;
            b = cls;
            f564d = method;
            f565e = method2;
        }
    }

    public Typeface a(Context context, c cVar, Resources resources, int i2) {
        a();
        try {
            Object newInstance = f563c.newInstance(new Object[0]);
            d.i.b.b.d[] dVarArr = cVar.a;
            int length = dVarArr.length;
            int i3 = 0;
            while (i3 < length) {
                d.i.b.b.d dVar = dVarArr[i3];
                File a = r.a(context);
                if (a == null) {
                    return null;
                }
                try {
                    if (!r.a(a, resources, dVar.f561f)) {
                        a.delete();
                        return null;
                    } else if (!a((Object) newInstance, a.getPath(), dVar.b, dVar.f558c)) {
                        return null;
                    } else {
                        a.delete();
                        i3++;
                    }
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    a.delete();
                }
            }
            a();
            try {
                Object newInstance2 = Array.newInstance(b, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f565e.invoke((Object) null, new Object[]{newInstance2});
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static boolean a(Object obj, String str, int i2, boolean z) {
        a();
        try {
            return ((Boolean) f564d.invoke(obj, new Object[]{str, Integer.valueOf(i2), Boolean.valueOf(z)})).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0071, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0076, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
        r4.addSuppressed(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x007a, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x007d, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0086, code lost:
        throw r6;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x004c A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface a(android.content.Context r4, android.os.CancellationSignal r5, d.i.f.b.f[] r6, int r7) {
        /*
            r3 = this;
            int r0 = r6.length
            r1 = 0
            r2 = 1
            if (r0 >= r2) goto L_0x0006
            return r1
        L_0x0006:
            d.i.f.b$f r6 = r3.a((d.i.f.b.f[]) r6, (int) r7)
            android.content.ContentResolver r7 = r4.getContentResolver()
            android.net.Uri r6 = r6.a     // Catch:{ IOException -> 0x0087 }
            java.lang.String r0 = "r"
            android.os.ParcelFileDescriptor r5 = r7.openFileDescriptor(r6, r0, r5)     // Catch:{ IOException -> 0x0087 }
            if (r5 != 0) goto L_0x001e
            if (r5 == 0) goto L_0x001d
            r5.close()     // Catch:{ IOException -> 0x0087 }
        L_0x001d:
            return r1
        L_0x001e:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ ErrnoException -> 0x0049 }
            r6.<init>()     // Catch:{ ErrnoException -> 0x0049 }
            java.lang.String r7 = "/proc/self/fd/"
            r6.append(r7)     // Catch:{ ErrnoException -> 0x0049 }
            int r7 = r5.getFd()     // Catch:{ ErrnoException -> 0x0049 }
            r6.append(r7)     // Catch:{ ErrnoException -> 0x0049 }
            java.lang.String r6 = r6.toString()     // Catch:{ ErrnoException -> 0x0049 }
            java.lang.String r6 = android.system.Os.readlink(r6)     // Catch:{ ErrnoException -> 0x0049 }
            android.system.StructStat r7 = android.system.Os.stat(r6)     // Catch:{ ErrnoException -> 0x0049 }
            int r7 = r7.st_mode     // Catch:{ ErrnoException -> 0x0049 }
            boolean r7 = android.system.OsConstants.S_ISREG(r7)     // Catch:{ ErrnoException -> 0x0049 }
            if (r7 == 0) goto L_0x0049
            java.io.File r7 = new java.io.File     // Catch:{ ErrnoException -> 0x0049 }
            r7.<init>(r6)     // Catch:{ ErrnoException -> 0x0049 }
            goto L_0x004a
        L_0x0049:
            r7 = r1
        L_0x004a:
            if (r7 == 0) goto L_0x005b
            boolean r6 = r7.canRead()     // Catch:{ all -> 0x007b }
            if (r6 != 0) goto L_0x0053
            goto L_0x005b
        L_0x0053:
            android.graphics.Typeface r4 = android.graphics.Typeface.createFromFile(r7)     // Catch:{ all -> 0x007b }
            r5.close()     // Catch:{ IOException -> 0x0087 }
            return r4
        L_0x005b:
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch:{ all -> 0x007b }
            java.io.FileDescriptor r7 = r5.getFileDescriptor()     // Catch:{ all -> 0x007b }
            r6.<init>(r7)     // Catch:{ all -> 0x007b }
            android.graphics.Typeface r4 = super.a((android.content.Context) r4, (java.io.InputStream) r6)     // Catch:{ all -> 0x006f }
            r6.close()     // Catch:{ all -> 0x007b }
            r5.close()     // Catch:{ IOException -> 0x0087 }
            return r4
        L_0x006f:
            r4 = move-exception
            throw r4     // Catch:{ all -> 0x0071 }
        L_0x0071:
            r7 = move-exception
            r6.close()     // Catch:{ all -> 0x0076 }
            goto L_0x007a
        L_0x0076:
            r6 = move-exception
            r4.addSuppressed(r6)     // Catch:{ all -> 0x007b }
        L_0x007a:
            throw r7     // Catch:{ all -> 0x007b }
        L_0x007b:
            r4 = move-exception
            throw r4     // Catch:{ all -> 0x007d }
        L_0x007d:
            r6 = move-exception
            r5.close()     // Catch:{ all -> 0x0082 }
            goto L_0x0086
        L_0x0082:
            r5 = move-exception
            r4.addSuppressed(r5)     // Catch:{ IOException -> 0x0087 }
        L_0x0086:
            throw r6     // Catch:{ IOException -> 0x0087 }
        L_0x0087:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.c.d.a(android.content.Context, android.os.CancellationSignal, d.i.f.b$f[], int):android.graphics.Typeface");
    }
}
