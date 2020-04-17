package k.b.i.b.g;

import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import com.microsoft.identity.common.internal.ui.browser.Browser;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class l implements v {

    /* renamed from: c  reason: collision with root package name */
    public static final Map<String, l> f2124c;
    public final int a;
    public final String b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(a("SHA-256", 32, 16, 67), new l(16777217, "WOTSP_SHA2-256_W16"));
        hashMap.put(a(Browser.DIGEST_SHA_512, 64, 16, 131), new l(33554434, "WOTSP_SHA2-512_W16"));
        hashMap.put(a("SHAKE128", 32, 16, 67), new l(50331651, "WOTSP_SHAKE128_W16"));
        hashMap.put(a("SHAKE256", 64, 16, 131), new l(67108868, "WOTSP_SHAKE256_W16"));
        f2124c = Collections.unmodifiableMap(hashMap);
    }

    public l(int i2, String str) {
        this.a = i2;
        this.b = str;
    }

    public static String a(String str, int i2, int i3, int i4) {
        if (str != null) {
            return str + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i2 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i3 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i4;
        }
        throw new NullPointerException("algorithmName == null");
    }

    public static l b(String str, int i2, int i3, int i4) {
        if (str != null) {
            return f2124c.get(a(str, i2, i3, i4));
        }
        throw new NullPointerException("algorithmName == null");
    }

    public int a() {
        return this.a;
    }

    public String toString() {
        return this.b;
    }
}
