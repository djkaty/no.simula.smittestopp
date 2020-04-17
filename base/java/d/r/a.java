package d.r;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a {
    public static final Set<File> a = new HashSet();
    public static final boolean b;

    static {
        String property = System.getProperty("java.vm.version");
        boolean z = false;
        if (property != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(property);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder a2 = e.a.a.a.a.a("VM with version ", property);
        a2.append(z ? " has multidex support" : " does not have multidex support");
        Log.i("MultiDex", a2.toString());
        b = z;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0077 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:51:0x00bb */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r5, java.io.File r6, java.io.File r7, java.lang.String r8, java.lang.String r9, boolean r10) {
        /*
            java.util.Set<java.io.File> r0 = a
            monitor-enter(r0)
            java.util.Set<java.io.File> r1 = a     // Catch:{ all -> 0x00c6 }
            boolean r1 = r1.contains(r6)     // Catch:{ all -> 0x00c6 }
            if (r1 == 0) goto L_0x000d
            monitor-exit(r0)     // Catch:{ all -> 0x00c6 }
            return
        L_0x000d:
            java.util.Set<java.io.File> r1 = a     // Catch:{ all -> 0x00c6 }
            r1.add(r6)     // Catch:{ all -> 0x00c6 }
            java.lang.String r1 = "MultiDex"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c6 }
            r2.<init>()     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "MultiDex is not guaranteed to work in SDK version "
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x00c6 }
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = ": SDK version higher than "
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            r3 = 20
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = " should be backed by "
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "runtime with built-in multidex capabilty but it's not the "
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "case here: java.vm.version=\""
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "java.vm.version"
            java.lang.String r3 = java.lang.System.getProperty(r3)     // Catch:{ all -> 0x00c6 }
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "\""
            r2.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x00c6 }
            android.util.Log.w(r1, r2)     // Catch:{ all -> 0x00c6 }
            java.lang.ClassLoader r1 = r5.getClassLoader()     // Catch:{ RuntimeException -> 0x00bc }
            if (r1 != 0) goto L_0x0060
            java.lang.String r5 = "MultiDex"
            java.lang.String r6 = "Context class loader is null. Must be running in test mode. Skip patching."
            android.util.Log.e(r5, r6)     // Catch:{ all -> 0x00c6 }
            monitor-exit(r0)     // Catch:{ all -> 0x00c6 }
            return
        L_0x0060:
            a((android.content.Context) r5)     // Catch:{ all -> 0x0064 }
            goto L_0x006c
        L_0x0064:
            r2 = move-exception
            java.lang.String r3 = "MultiDex"
            java.lang.String r4 = "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."
            android.util.Log.w(r3, r4, r2)     // Catch:{ all -> 0x00c6 }
        L_0x006c:
            java.io.File r2 = new java.io.File     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "code_cache"
            r2.<init>(r7, r3)     // Catch:{ all -> 0x00c6 }
            a((java.io.File) r2)     // Catch:{ IOException -> 0x0077 }
            goto L_0x0083
        L_0x0077:
            java.io.File r2 = new java.io.File     // Catch:{ all -> 0x00c6 }
            java.io.File r7 = r5.getFilesDir()     // Catch:{ all -> 0x00c6 }
            r2.<init>(r7, r3)     // Catch:{ all -> 0x00c6 }
            a((java.io.File) r2)     // Catch:{ all -> 0x00c6 }
        L_0x0083:
            java.io.File r7 = new java.io.File     // Catch:{ all -> 0x00c6 }
            r7.<init>(r2, r8)     // Catch:{ all -> 0x00c6 }
            a((java.io.File) r7)     // Catch:{ all -> 0x00c6 }
            d.r.d r8 = new d.r.d     // Catch:{ all -> 0x00c6 }
            r8.<init>(r6, r7)     // Catch:{ all -> 0x00c6 }
            r6 = 0
            r2 = 0
            java.util.List r2 = r8.a(r5, r9, r2)     // Catch:{ all -> 0x00b7 }
            a((java.lang.ClassLoader) r1, (java.io.File) r7, (java.util.List<? extends java.io.File>) r2)     // Catch:{ IOException -> 0x009a }
            goto L_0x00ac
        L_0x009a:
            r2 = move-exception
            if (r10 == 0) goto L_0x00b6
            java.lang.String r10 = "MultiDex"
            java.lang.String r3 = "Failed to install extracted secondary dex files, retrying with forced extraction"
            android.util.Log.w(r10, r3, r2)     // Catch:{ all -> 0x00b7 }
            r10 = 1
            java.util.List r5 = r8.a(r5, r9, r10)     // Catch:{ all -> 0x00b7 }
            a((java.lang.ClassLoader) r1, (java.io.File) r7, (java.util.List<? extends java.io.File>) r5)     // Catch:{ all -> 0x00b7 }
        L_0x00ac:
            r8.close()     // Catch:{ IOException -> 0x00b0 }
            goto L_0x00b1
        L_0x00b0:
            r6 = move-exception
        L_0x00b1:
            if (r6 != 0) goto L_0x00b5
            monitor-exit(r0)     // Catch:{ all -> 0x00c6 }
            return
        L_0x00b5:
            throw r6     // Catch:{ all -> 0x00c6 }
        L_0x00b6:
            throw r2     // Catch:{ all -> 0x00b7 }
        L_0x00b7:
            r5 = move-exception
            r8.close()     // Catch:{ IOException -> 0x00bb }
        L_0x00bb:
            throw r5     // Catch:{ all -> 0x00c6 }
        L_0x00bc:
            r5 = move-exception
            java.lang.String r6 = "MultiDex"
            java.lang.String r7 = "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."
            android.util.Log.w(r6, r7, r5)     // Catch:{ all -> 0x00c6 }
            monitor-exit(r0)     // Catch:{ all -> 0x00c6 }
            return
        L_0x00c6:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00c6 }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: d.r.a.a(android.content.Context, java.io.File, java.io.File, java.lang.String, java.lang.String, boolean):void");
    }

    public static void b(Context context) {
        ApplicationInfo applicationInfo;
        Log.i("MultiDex", "Installing application");
        if (b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        try {
            applicationInfo = context.getApplicationInfo();
        } catch (RuntimeException e2) {
            try {
                Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e2);
                applicationInfo = null;
            } catch (Exception e3) {
                Log.e("MultiDex", "MultiDex installation failure", e3);
                StringBuilder a2 = e.a.a.a.a.a("MultiDex installation failed (");
                a2.append(e3.getMessage());
                a2.append(").");
                throw new RuntimeException(a2.toString());
            }
        }
        if (applicationInfo == null) {
            Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
            return;
        }
        a(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "", true);
        Log.i("MultiDex", "install done");
    }

    public static void a(ClassLoader classLoader, File file, List<? extends File> list) {
        IOException[] iOExceptionArr;
        if (!list.isEmpty()) {
            Object obj = a(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList(list);
            a(obj, "dexElements", (Object[]) a(obj, "makeDexElements", new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(obj, new Object[]{arrayList2, file, arrayList}));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field a2 = a(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) a2.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[(arrayList.size() + iOExceptionArr2.length)];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                a2.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }
    }

    public static Field a(Object obj, String str) {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    public static /* synthetic */ Method a(Object obj, String str, Class[] clsArr) {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    public static /* synthetic */ void a(Object obj, String str, Object[] objArr) {
        Field a2 = a(obj, str);
        Object[] objArr2 = (Object[]) a2.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        a2.set(obj, objArr3);
    }

    public static void a(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            StringBuilder a2 = e.a.a.a.a.a("Clearing old secondary dex dir (");
            a2.append(file.getPath());
            a2.append(").");
            Log.i("MultiDex", a2.toString());
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                StringBuilder a3 = e.a.a.a.a.a("Failed to list secondary dex dir content (");
                a3.append(file.getPath());
                a3.append(").");
                Log.w("MultiDex", a3.toString());
                return;
            }
            for (File file2 : listFiles) {
                StringBuilder a4 = e.a.a.a.a.a("Trying to delete old file ");
                a4.append(file2.getPath());
                a4.append(" of size ");
                a4.append(file2.length());
                Log.i("MultiDex", a4.toString());
                if (!file2.delete()) {
                    StringBuilder a5 = e.a.a.a.a.a("Failed to delete old file ");
                    a5.append(file2.getPath());
                    Log.w("MultiDex", a5.toString());
                } else {
                    StringBuilder a6 = e.a.a.a.a.a("Deleted old file ");
                    a6.append(file2.getPath());
                    Log.i("MultiDex", a6.toString());
                }
            }
            if (!file.delete()) {
                StringBuilder a7 = e.a.a.a.a.a("Failed to delete secondary dex dir ");
                a7.append(file.getPath());
                Log.w("MultiDex", a7.toString());
                return;
            }
            StringBuilder a8 = e.a.a.a.a.a("Deleted old secondary dex dir ");
            a8.append(file.getPath());
            Log.i("MultiDex", a8.toString());
        }
    }

    public static void a(File file) {
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                StringBuilder a2 = e.a.a.a.a.a("Failed to create dir ");
                a2.append(file.getPath());
                a2.append(". Parent file is null.");
                Log.e("MultiDex", a2.toString());
            } else {
                StringBuilder a3 = e.a.a.a.a.a("Failed to create dir ");
                a3.append(file.getPath());
                a3.append(". parent file is a dir ");
                a3.append(parentFile.isDirectory());
                a3.append(", a file ");
                a3.append(parentFile.isFile());
                a3.append(", exists ");
                a3.append(parentFile.exists());
                a3.append(", readable ");
                a3.append(parentFile.canRead());
                a3.append(", writable ");
                a3.append(parentFile.canWrite());
                Log.e("MultiDex", a3.toString());
            }
            StringBuilder a4 = e.a.a.a.a.a("Failed to create directory ");
            a4.append(file.getPath());
            throw new IOException(a4.toString());
        }
    }
}
