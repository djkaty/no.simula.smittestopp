package e.e.a.u;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class h {
    public static Map<g, Set<e>> a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(g.y, new HashSet(Arrays.asList(new e[]{e.SIGN, e.VERIFY})));
        hashMap.put(g.z, new HashSet(Arrays.asList(new e[]{e.ENCRYPT, e.DECRYPT, e.WRAP_KEY, e.UNWRAP_KEY})));
        a = Collections.unmodifiableMap(hashMap);
    }

    public static boolean a(g gVar, Set<e> set) {
        if (gVar == null || set == null) {
            return true;
        }
        return a.get(gVar).containsAll(set);
    }
}
