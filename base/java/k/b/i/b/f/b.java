package k.b.i.b.f;

import com.microsoft.identity.common.internal.ui.browser.Browser;
import java.util.HashMap;
import java.util.Map;
import k.b.a.l2.a;
import k.b.a.o;
import k.b.c.c.g;
import k.b.i.a.e;
import k.b.i.a.h;

public class b {
    public static final a a = new a(e.q);
    public static final a b = new a(e.r);

    /* renamed from: c  reason: collision with root package name */
    public static final a f2096c = new a(k.b.a.g2.a.f1967h);

    /* renamed from: d  reason: collision with root package name */
    public static final a f2097d = new a(k.b.a.g2.a.f1966g);

    /* renamed from: e  reason: collision with root package name */
    public static final a f2098e = new a(k.b.a.g2.a.f1962c);

    /* renamed from: f  reason: collision with root package name */
    public static final a f2099f = new a(k.b.a.g2.a.f1964e);

    /* renamed from: g  reason: collision with root package name */
    public static final a f2100g = new a(k.b.a.g2.a.f1968i);

    /* renamed from: h  reason: collision with root package name */
    public static final a f2101h = new a(k.b.a.g2.a.f1969j);

    /* renamed from: i  reason: collision with root package name */
    public static final Map f2102i;

    static {
        HashMap hashMap = new HashMap();
        f2102i = hashMap;
        hashMap.put(e.q, 5);
        f2102i.put(e.r, 6);
    }

    public static String a(h hVar) {
        a aVar = hVar.y;
        if (aVar.x.b(f2096c.x)) {
            return "SHA3-256";
        }
        if (aVar.x.b(f2097d.x)) {
            return "SHA-512/256";
        }
        StringBuilder a2 = e.a.a.a.a.a("unknown tree digest: ");
        a2.append(aVar.x);
        throw new IllegalArgumentException(a2.toString());
    }

    public static a a(int i2) {
        if (i2 == 5) {
            return a;
        }
        if (i2 == 6) {
            return b;
        }
        throw new IllegalArgumentException(e.a.a.a.a.a("unknown security category: ", i2));
    }

    public static a a(String str) {
        if (str.equals("SHA3-256")) {
            return f2096c;
        }
        if (str.equals("SHA-512/256")) {
            return f2097d;
        }
        throw new IllegalArgumentException(e.a.a.a.a.b("unknown tree digest: ", str));
    }

    public static k.b.c.a a(o oVar) {
        if (oVar.b(k.b.a.g2.a.f1962c)) {
            return new k.b.c.c.e();
        }
        if (oVar.b(k.b.a.g2.a.f1964e)) {
            return new g();
        }
        if (oVar.b(k.b.a.g2.a.f1968i)) {
            return new k.b.c.c.h(128);
        }
        if (oVar.b(k.b.a.g2.a.f1969j)) {
            return new k.b.c.c.h(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + oVar);
    }

    public static a b(String str) {
        if (str.equals("SHA-256")) {
            return f2098e;
        }
        if (str.equals(Browser.DIGEST_SHA_512)) {
            return f2099f;
        }
        if (str.equals("SHAKE128")) {
            return f2100g;
        }
        if (str.equals("SHAKE256")) {
            return f2101h;
        }
        throw new IllegalArgumentException(e.a.a.a.a.b("unknown tree digest: ", str));
    }
}
