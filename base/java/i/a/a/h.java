package i.a.a;

import java.lang.reflect.Method;

public class h extends ClassLoader {
    public static final String a = c.class.getName();
    public static final Class<?>[] b;

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            java.lang.Class<i.a.a.c> r0 = i.a.a.c.class
            java.lang.String r0 = r0.getName()
            a = r0
            r0 = 4
            java.lang.Class[] r0 = new java.lang.Class[r0]
            r1 = 0
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            r0[r1] = r2
            r1 = 1
            java.lang.Class<byte[]> r2 = byte[].class
            r0[r1] = r2
            java.lang.Class r1 = java.lang.Integer.TYPE
            r2 = 2
            r0[r2] = r1
            r2 = 3
            r0[r2] = r1
            b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.a.h.<clinit>():void");
    }

    public h(ClassLoader classLoader) {
        super(classLoader);
    }

    public Class<?> a(String str, byte[] bArr) {
        try {
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("defineClass", b);
            declaredMethod.setAccessible(true);
            return (Class) declaredMethod.invoke(getParent(), new Object[]{str, bArr, 0, Integer.valueOf(bArr.length)});
        } catch (Exception unused) {
            return defineClass(str, bArr, 0, bArr.length);
        }
    }

    public synchronized Class<?> loadClass(String str, boolean z) {
        if (str.equals(a)) {
            return c.class;
        }
        return super.loadClass(str, z);
    }
}
