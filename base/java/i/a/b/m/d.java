package i.a.b.m;

import i.a.b.g;
import i.a.b.i;
import java.util.Date;

public class d implements n<Date> {
    public d(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        appendable.append('\"');
        i.a(((Date) obj).toString(), appendable, gVar);
        appendable.append('\"');
    }
}
