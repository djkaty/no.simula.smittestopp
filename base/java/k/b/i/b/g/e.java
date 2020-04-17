package k.b.i.b.g;

import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import com.microsoft.identity.common.internal.ui.browser.Browser;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class e implements v {

    /* renamed from: c  reason: collision with root package name */
    public static final Map<String, e> f2104c;
    public final int a;
    public final String b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(a("SHA-256", 32, 16, 67, 10), new e(1, "XMSS_SHA2_10_256"));
        hashMap.put(a("SHA-256", 32, 16, 67, 16), new e(2, "XMSS_SHA2_16_256"));
        hashMap.put(a("SHA-256", 32, 16, 67, 20), new e(3, "XMSS_SHA2_20_256"));
        hashMap.put(a(Browser.DIGEST_SHA_512, 64, 16, 131, 10), new e(4, "XMSS_SHA2_10_512"));
        hashMap.put(a(Browser.DIGEST_SHA_512, 64, 16, 131, 16), new e(5, "XMSS_SHA2_16_512"));
        hashMap.put(a(Browser.DIGEST_SHA_512, 64, 16, 131, 20), new e(6, "XMSS_SHA2_20_512"));
        hashMap.put(a("SHAKE128", 32, 16, 67, 10), new e(7, "XMSS_SHAKE_10_256"));
        hashMap.put(a("SHAKE128", 32, 16, 67, 16), new e(8, "XMSS_SHAKE_16_256"));
        hashMap.put(a("SHAKE128", 32, 16, 67, 20), new e(9, "XMSS_SHAKE_20_256"));
        hashMap.put(a("SHAKE256", 64, 16, 131, 10), new e(10, "XMSS_SHAKE_10_512"));
        hashMap.put(a("SHAKE256", 64, 16, 131, 16), new e(11, "XMSS_SHAKE_16_512"));
        hashMap.put(a("SHAKE256", 64, 16, 131, 20), new e(12, "XMSS_SHAKE_20_512"));
        f2104c = Collections.unmodifiableMap(hashMap);
    }

    public e(int i2, String str) {
        this.a = i2;
        this.b = str;
    }

    public static String a(String str, int i2, int i3, int i4, int i5) {
        if (str != null) {
            return str + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i2 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i3 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i4 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i5;
        }
        throw new NullPointerException("algorithmName == null");
    }

    public static e b(String str, int i2, int i3, int i4, int i5) {
        if (str != null) {
            return f2104c.get(a(str, i2, i3, i4, i5));
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
