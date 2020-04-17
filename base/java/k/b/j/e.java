package k.b.j;

import java.security.AccessControlException;
import java.security.AccessController;

public class e {
    public static final ThreadLocal a = new ThreadLocal();

    public static boolean a(String str) {
        try {
            String str2 = (String) AccessController.doPrivileged(new d(str));
            if (str2 != null) {
                return "true".equals(f.b(str2));
            }
        } catch (AccessControlException unused) {
        }
        return false;
    }
}
