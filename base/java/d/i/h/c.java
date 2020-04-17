package d.i.h;

public class c<T> extends b<T> {

    /* renamed from: c  reason: collision with root package name */
    public final Object f599c = new Object();

    public c(int i2) {
        super(i2);
    }

    public T a() {
        T a;
        synchronized (this.f599c) {
            a = super.a();
        }
        return a;
    }

    public boolean a(T t) {
        boolean a;
        synchronized (this.f599c) {
            a = super.a(t);
        }
        return a;
    }
}
