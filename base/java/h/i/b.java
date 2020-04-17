package h.i;

import h.k.b.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class b {
    public static final <T> List<T> a(T... tArr) {
        if (tArr == null) {
            g.a("elements");
            throw null;
        } else if (tArr.length <= 0) {
            return d.x;
        } else {
            List<T> asList = Arrays.asList(tArr);
            g.a((Object) asList, "ArraysUtilJVM.asList(this)");
            return asList;
        }
    }

    public static final <T> List<T> b(T... tArr) {
        if (tArr != null) {
            return tArr.length == 0 ? new ArrayList() : new ArrayList(new a(tArr, true));
        }
        g.a("elements");
        throw null;
    }

    public static final <T> int a(List<? extends T> list) {
        if (list != null) {
            return list.size() - 1;
        }
        g.a("$this$lastIndex");
        throw null;
    }
}
