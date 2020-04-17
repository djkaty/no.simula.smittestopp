package i.a.b.m;

import i.a.b.g;

public class c implements n<Double> {
    public c(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        Double d2 = (Double) obj;
        if (d2.isInfinite()) {
            appendable.append("null");
        } else {
            appendable.append(d2.toString());
        }
    }
}
