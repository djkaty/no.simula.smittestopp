package g.c.l;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public final class b implements d {
    public b(Collection<d> collection) {
        Collections.unmodifiableList(new ArrayList(collection));
    }
}
