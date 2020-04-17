package i.a.b;

import i.a.b.m.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class a extends ArrayList<Object> implements List<Object>, c, f {
    public String a(g gVar) {
        StringBuilder sb = new StringBuilder();
        try {
            a(this, sb, gVar);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public String toString() {
        g gVar = i.a;
        StringBuilder sb = new StringBuilder();
        try {
            a(this, sb, gVar);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public static void a(Iterable<? extends Object> iterable, Appendable appendable, g gVar) {
        if (iterable == null) {
            appendable.append("null");
        } else {
            l.f1429g.a(iterable, appendable, gVar);
        }
    }

    public String a() {
        g gVar = i.a;
        StringBuilder sb = new StringBuilder();
        try {
            a(this, sb, gVar);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public void a(Appendable appendable) {
        a(this, appendable, i.a);
    }

    public void a(Appendable appendable, g gVar) {
        a(this, appendable, gVar);
    }
}
