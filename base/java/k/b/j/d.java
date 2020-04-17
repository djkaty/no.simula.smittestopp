package k.b.j;

import java.security.PrivilegedAction;
import java.util.Map;

public final class d implements PrivilegedAction {
    public final /* synthetic */ String a;

    public d(String str) {
        this.a = str;
    }

    public Object run() {
        Map map = (Map) e.a.get();
        return map != null ? map.get(this.a) : System.getProperty(this.a);
    }
}
