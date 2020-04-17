package g.c.l;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public final class a implements c {
    public a(Collection<c> collection) {
        Collections.unmodifiableList(new ArrayList(collection));
    }
}
