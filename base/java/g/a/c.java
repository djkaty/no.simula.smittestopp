package g.a;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class c {
    public static final c a = new c();
    public static final boolean b = Boolean.valueOf(System.getProperty("jnr.constants.fake", "true")).booleanValue();

    /* renamed from: c  reason: collision with root package name */
    public static final Map<String, String> f1317c = new a();

    /* renamed from: d  reason: collision with root package name */
    public static final Map<String, String> f1318d = new b();

    /* renamed from: e  reason: collision with root package name */
    public static final String f1319e;

    /* renamed from: f  reason: collision with root package name */
    public static final String f1320f;

    /* renamed from: g  reason: collision with root package name */
    public static final String f1321g;

    public static class a extends HashMap<String, String> {
        public a() {
            put("Mac OS X", "darwin");
            put("SunOS", "solaris");
        }
    }

    public static class b extends HashMap<String, String> {
        public b() {
            put("x86", "i386");
        }
    }

    /* renamed from: g.a.c$c  reason: collision with other inner class name */
    public static final class C0078c {
        public static final String a;

        static {
            String str;
            try {
                Class<?> cls = new C0078c().getClass();
                Package packageR = cls.getPackage();
                str = packageR != null ? packageR.getName() : cls.getName().substring(0, cls.getName().lastIndexOf(46));
            } catch (NullPointerException unused) {
                str = "jnr.constants";
            }
            a = str;
        }
    }

    static {
        String str;
        String str2 = TelemetryEventStrings.Value.UNKNOWN;
        try {
            str = System.getProperty("os.arch", str2);
        } catch (SecurityException unused) {
            str = str2;
        }
        String lowerCase = str.toLowerCase();
        Iterator<String> it = f1318d.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (next.equalsIgnoreCase(lowerCase)) {
                lowerCase = f1318d.get(next);
                break;
            }
        }
        f1319e = lowerCase;
        try {
            str2 = System.getProperty("os.name", str2);
        } catch (SecurityException unused2) {
        }
        String lowerCase2 = str2.toLowerCase();
        Iterator<String> it2 = f1317c.keySet().iterator();
        while (true) {
            if (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.equalsIgnoreCase(lowerCase2)) {
                    lowerCase2 = f1317c.get(next2);
                    break;
                }
            } else if (lowerCase2.startsWith("windows")) {
                lowerCase2 = "windows";
            }
        }
        f1320f = lowerCase2;
        f1321g = String.format("%s-%s", new Object[]{f1319e, lowerCase2});
        boolean equals = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
    }

    public String a() {
        return String.format("%s.platform.%s.%s", new Object[]{C0078c.a, f1320f, f1319e});
    }

    public String b() {
        return String.format("%s.platform.%s", new Object[]{C0078c.a, f1320f});
    }
}
