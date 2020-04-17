package d.x;

import android.view.View;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class p {
    public final Map<String, Object> a = new HashMap();
    public View b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<h> f973c = new ArrayList<>();

    public boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.b == pVar.b && this.a.equals(pVar.a);
    }

    public int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder a2 = a.a("TransitionValues@");
        a2.append(Integer.toHexString(hashCode()));
        a2.append(":\n");
        StringBuilder a3 = a.a(a2.toString(), "    view = ");
        a3.append(this.b);
        a3.append("\n");
        String b2 = a.b(a3.toString(), "    values:");
        for (String next : this.a.keySet()) {
            b2 = b2 + "    " + next + ": " + this.a.get(next) + "\n";
        }
        return b2;
    }
}
