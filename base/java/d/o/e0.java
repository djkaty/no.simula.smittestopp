package d.o;

import java.util.HashMap;

public class e0 {
    public final HashMap<String, y> a = new HashMap<>();

    public final void a() {
        for (y a2 : this.a.values()) {
            a2.a();
        }
        this.a.clear();
    }
}
