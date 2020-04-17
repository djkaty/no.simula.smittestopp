package e.c.a.a.b.k;

import java.util.Collections;
import java.util.List;

public class a {
    public static final Object a = new Object();
    public static volatile a b;

    public a() {
        List list = Collections.EMPTY_LIST;
    }

    public static a a() {
        if (b == null) {
            synchronized (a) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }
}
