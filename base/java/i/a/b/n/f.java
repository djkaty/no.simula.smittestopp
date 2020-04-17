package i.a.b.n;

public abstract class f<T> {
    public final e a;

    public f(e eVar) {
        this.a = eVar;
    }

    public f<?> a(String str) {
        throw new RuntimeException(String.valueOf("Invalid or non Implemented status") + " startArray in " + getClass() + " key=" + str);
    }

    public abstract Object a();

    public T a(Object obj) {
        return obj;
    }

    public abstract void a(Object obj, Object obj2);

    public f<?> b(String str) {
        throw new RuntimeException(String.valueOf("Invalid or non Implemented status") + " startObject(String key) in " + getClass() + " key=" + str);
    }

    public void a(Object obj, String str, Object obj2) {
        throw new RuntimeException(String.valueOf("Invalid or non Implemented status") + " setValue in " + getClass() + " key=" + str);
    }

    public Object b() {
        throw new RuntimeException(String.valueOf("Invalid or non Implemented status") + " createObject() in " + getClass());
    }
}
