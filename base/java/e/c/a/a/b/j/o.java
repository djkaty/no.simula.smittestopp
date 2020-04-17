package e.c.a.a.b.j;

import d.b.a.r;
import java.util.ArrayList;
import java.util.List;

public final class o {
    public final List<String> a = new ArrayList();
    public final Object b;

    public /* synthetic */ o(Object obj, i0 i0Var) {
        r.a(obj);
        this.b = obj;
    }

    public final o a(String str, Object obj) {
        List<String> list = this.a;
        r.a(str);
        String str2 = str;
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(valueOf.length() + String.valueOf(str2).length() + 1);
        sb.append(str2);
        sb.append("=");
        sb.append(valueOf);
        list.add(sb.toString());
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(this.b.getClass().getSimpleName());
        sb.append('{');
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append(this.a.get(i2));
            if (i2 < size - 1) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
