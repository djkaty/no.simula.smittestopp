package k.b.i.b.g;

import com.microsoft.identity.common.internal.ui.browser.Browser;
import java.util.HashMap;
import java.util.Map;
import k.b.a.g2.a;
import k.b.a.o;
import k.b.c.c.e;
import k.b.c.c.g;
import k.b.c.c.h;

public class f {
    public static Map<String, o> a;

    static {
        HashMap hashMap = new HashMap();
        a = hashMap;
        hashMap.put("SHA-256", a.f1962c);
        a.put(Browser.DIGEST_SHA_512, a.f1964e);
        a.put("SHAKE128", a.f1968i);
        a.put("SHAKE256", a.f1969j);
    }

    public static k.b.c.a a(o oVar) {
        if (oVar.b(a.f1962c)) {
            return new e();
        }
        if (oVar.b(a.f1964e)) {
            return new g();
        }
        if (oVar.b(a.f1968i)) {
            return new h(128);
        }
        if (oVar.b(a.f1969j)) {
            return new h(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + oVar);
    }
}
