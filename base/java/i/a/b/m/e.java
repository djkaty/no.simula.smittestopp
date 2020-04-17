package i.a.b.m;

import i.a.b.g;

public class e implements n<Float> {
    public e(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        Float f2 = (Float) obj;
        if (f2.isInfinite()) {
            appendable.append("null");
        } else {
            appendable.append(f2.toString());
        }
    }
}
