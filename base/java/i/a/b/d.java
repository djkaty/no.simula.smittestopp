package i.a.b;

import i.a.b.m.l;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class d extends HashMap<String, Object> implements b, c, f {
    public d() {
    }

    public static String a(Map<String, ? extends Object> map) {
        return a(map, i.a);
    }

    public static String c(String str) {
        return i.a(str);
    }

    public String toString() {
        return a((Map<String, ? extends Object>) this, i.a);
    }

    public d(Map<String, ?> map) {
        super(map);
    }

    public static String a(Map<String, ? extends Object> map, g gVar) {
        StringBuilder sb = new StringBuilder();
        try {
            a(map, sb, gVar);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public static void a(String str, Object obj, Appendable appendable, g gVar) {
        if (str == null) {
            appendable.append("null");
        } else if (!gVar.f1408e.a(str)) {
            appendable.append(str);
        } else {
            appendable.append('\"');
            i.a(str, appendable, gVar);
            appendable.append('\"');
        }
        appendable.append(':');
        if (obj instanceof String) {
            gVar.a(appendable, (String) obj);
        } else {
            i.a(obj, appendable, gVar);
        }
    }

    public static void a(Map<String, ? extends Object> map, Appendable appendable, g gVar) {
        if (map == null) {
            appendable.append("null");
        } else {
            l.f1431i.a(map, appendable, gVar);
        }
    }

    public void a(Appendable appendable) {
        a(this, appendable, i.a);
    }

    public void a(Appendable appendable, g gVar) {
        a(this, appendable, gVar);
    }

    public String a() {
        return a((Map<String, ? extends Object>) this, i.a);
    }

    public String a(g gVar) {
        return a((Map<String, ? extends Object>) this, gVar);
    }
}
