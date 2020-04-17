package k.c.a.a.a.t;

public class c {
    public static String a = a.class.getName();

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Removed duplicated region for block: B:7:? A[ExcHandler: ClassNotFoundException | NoClassDefFoundError (unused java.lang.Throwable), SYNTHETIC, Splitter:B:3:0x000b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static k.c.a.a.a.t.b a(java.lang.String r2, java.lang.String r3) {
        /*
            java.lang.String r0 = a
            java.util.ResourceBundle r2 = java.util.ResourceBundle.getBundle(r2)
            r1 = 0
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{  }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ ClassNotFoundException | NoClassDefFoundError -> 0x0015, ClassNotFoundException | NoClassDefFoundError -> 0x0015, ClassNotFoundException | NoClassDefFoundError -> 0x0015 }
            k.c.a.a.a.t.b r0 = (k.c.a.a.a.t.b) r0     // Catch:{ ClassNotFoundException | NoClassDefFoundError -> 0x0015, ClassNotFoundException | NoClassDefFoundError -> 0x0015, ClassNotFoundException | NoClassDefFoundError -> 0x0015 }
            r0.a((java.util.ResourceBundle) r2, (java.lang.String) r3, (java.lang.String) r1)
            r1 = r0
        L_0x0015:
            if (r1 == 0) goto L_0x0018
            return r1
        L_0x0018:
            java.util.MissingResourceException r2 = new java.util.MissingResourceException
            java.lang.String r0 = "k.c.a.a.a.t.c"
            java.lang.String r1 = "Error locating the logging class"
            r2.<init>(r1, r0, r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.t.c.a(java.lang.String, java.lang.String):k.c.a.a.a.t.b");
    }
}
