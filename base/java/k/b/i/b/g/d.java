package k.b.i.b.g;

import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import com.microsoft.identity.common.internal.ui.browser.Browser;
import e.a.a.a.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class d implements v {

    /* renamed from: c  reason: collision with root package name */
    public static final Map<String, d> f2103c;
    public final int a;
    public final String b;

    static {
        HashMap hashMap = new HashMap();
        a.a(1, "XMSSMT_SHA2_20/2_256", hashMap, a("SHA-256", 32, 16, 67, 20, 2));
        a.a(2, "XMSSMT_SHA2_20/4_256", hashMap, a("SHA-256", 32, 16, 67, 20, 4));
        a.a(3, "XMSSMT_SHA2_40/2_256", hashMap, a("SHA-256", 32, 16, 67, 40, 2));
        a.a(4, "XMSSMT_SHA2_40/4_256", hashMap, a("SHA-256", 32, 16, 67, 40, 2));
        a.a(5, "XMSSMT_SHA2_40/8_256", hashMap, a("SHA-256", 32, 16, 67, 40, 4));
        a.a(6, "XMSSMT_SHA2_60/3_256", hashMap, a("SHA-256", 32, 16, 67, 60, 8));
        a.a(7, "XMSSMT_SHA2_60/6_256", hashMap, a("SHA-256", 32, 16, 67, 60, 6));
        a.a(8, "XMSSMT_SHA2_60/12_256", hashMap, a("SHA-256", 32, 16, 67, 60, 12));
        a.a(9, "XMSSMT_SHA2_20/2_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 20, 2));
        a.a(10, "XMSSMT_SHA2_20/4_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 20, 4));
        a.a(11, "XMSSMT_SHA2_40/2_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 40, 2));
        a.a(12, "XMSSMT_SHA2_40/4_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 40, 4));
        a.a(13, "XMSSMT_SHA2_40/8_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 40, 8));
        a.a(14, "XMSSMT_SHA2_60/3_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 60, 3));
        a.a(15, "XMSSMT_SHA2_60/6_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 60, 6));
        a.a(16, "XMSSMT_SHA2_60/12_512", hashMap, a(Browser.DIGEST_SHA_512, 64, 16, 131, 60, 12));
        a.a(17, "XMSSMT_SHAKE_20/2_256", hashMap, a("SHAKE128", 32, 16, 67, 20, 2));
        a.a(18, "XMSSMT_SHAKE_20/4_256", hashMap, a("SHAKE128", 32, 16, 67, 20, 4));
        a.a(19, "XMSSMT_SHAKE_40/2_256", hashMap, a("SHAKE128", 32, 16, 67, 40, 2));
        a.a(20, "XMSSMT_SHAKE_40/4_256", hashMap, a("SHAKE128", 32, 16, 67, 40, 4));
        a.a(21, "XMSSMT_SHAKE_40/8_256", hashMap, a("SHAKE128", 32, 16, 67, 40, 8));
        a.a(22, "XMSSMT_SHAKE_60/3_256", hashMap, a("SHAKE128", 32, 16, 67, 60, 3));
        a.a(23, "XMSSMT_SHAKE_60/6_256", hashMap, a("SHAKE128", 32, 16, 67, 60, 6));
        a.a(24, "XMSSMT_SHAKE_60/12_256", hashMap, a("SHAKE128", 32, 16, 67, 60, 12));
        a.a(25, "XMSSMT_SHAKE_20/2_512", hashMap, a("SHAKE256", 64, 16, 131, 20, 2));
        a.a(26, "XMSSMT_SHAKE_20/4_512", hashMap, a("SHAKE256", 64, 16, 131, 20, 4));
        a.a(27, "XMSSMT_SHAKE_40/2_512", hashMap, a("SHAKE256", 64, 16, 131, 40, 2));
        a.a(28, "XMSSMT_SHAKE_40/4_512", hashMap, a("SHAKE256", 64, 16, 131, 40, 4));
        a.a(29, "XMSSMT_SHAKE_40/8_512", hashMap, a("SHAKE256", 64, 16, 131, 40, 8));
        a.a(30, "XMSSMT_SHAKE_60/3_512", hashMap, a("SHAKE256", 64, 16, 131, 60, 3));
        a.a(31, "XMSSMT_SHAKE_60/6_512", hashMap, a("SHAKE256", 64, 16, 131, 60, 6));
        hashMap.put(a("SHAKE256", 64, 16, 131, 60, 12), new d(32, "XMSSMT_SHAKE_60/12_512"));
        f2103c = Collections.unmodifiableMap(hashMap);
    }

    public d(int i2, String str) {
        this.a = i2;
        this.b = str;
    }

    public static String a(String str, int i2, int i3, int i4, int i5, int i6) {
        if (str != null) {
            return str + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i2 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i3 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i4 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i5 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i6;
        }
        throw new NullPointerException("algorithmName == null");
    }

    public static d b(String str, int i2, int i3, int i4, int i5, int i6) {
        if (str != null) {
            return f2103c.get(a(str, i2, i3, i4, i5, i6));
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
