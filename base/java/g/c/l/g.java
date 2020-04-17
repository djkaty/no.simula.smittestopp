package g.c.l;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;

public final class g implements h {
    public g(Map<Class, Object<?, ?>> map, Map<Class, Object<?, ?>> map2) {
        Collections.unmodifiableMap(new IdentityHashMap(map));
        Collections.unmodifiableMap(new IdentityHashMap(map2));
    }
}
