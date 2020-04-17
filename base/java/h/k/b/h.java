package h.k.b;

public abstract class h<R> implements Object<R> {
    public h(int i2) {
    }

    public String toString() {
        if (l.a != null) {
            String obj = getClass().getGenericInterfaces()[0].toString();
            if (obj.startsWith("kotlin.jvm.functions.")) {
                obj = obj.substring(21);
            }
            g.a((Object) obj, "Reflection.renderLambdaToString(this)");
            return obj;
        }
        throw null;
    }
}
