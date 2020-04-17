package g.c.m;

public abstract class a {

    /* renamed from: g.c.m.a$a  reason: collision with other inner class name */
    public static final class C0085a {
        public static final a a;

        static {
            a aVar;
            String str = "jnr.ffi.provider";
            String property = System.getProperty(str);
            if (property == null) {
                Package packageR = a.class.getPackage();
                if (!(packageR == null || packageR.getName() == null)) {
                    str = packageR.getName();
                }
                property = e.a.a.a.a.b(str, ".jffi.Provider");
            }
            try {
                aVar = (a) Class.forName(property).newInstance();
            } catch (Throwable th) {
                aVar = new c(e.a.a.a.a.b("could not load FFI provider ", property), th);
            }
            a = aVar;
        }
    }
}
