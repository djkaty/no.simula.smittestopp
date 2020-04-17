package j.b.a;

import h.c;
import h.k.b.g;
import java.util.List;
import org.json.JSONObject;

public final class o {
    public final List<c<List<Integer>, JSONObject>> a;

    public o(List<? extends c<? extends List<Integer>, ? extends JSONObject>> list) {
        if (list != null) {
            this.a = list;
        } else {
            g.a("items");
            throw null;
        }
    }
}
