package d.f;

import java.util.Map;

public class b extends g<E, E> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f426d;

    public b(c cVar) {
        this.f426d = cVar;
    }

    public Object a(int i2, int i3) {
        return this.f426d.y[i2];
    }

    public int b(Object obj) {
        return this.f426d.indexOf(obj);
    }

    public int c() {
        return this.f426d.z;
    }

    public int a(Object obj) {
        return this.f426d.indexOf(obj);
    }

    public Map<E, E> b() {
        throw new UnsupportedOperationException("not a map");
    }

    public void a(E e2, E e3) {
        this.f426d.add(e2);
    }

    public E a(int i2, E e2) {
        throw new UnsupportedOperationException("not a map");
    }

    public void a(int i2) {
        this.f426d.b(i2);
    }

    public void a() {
        this.f426d.clear();
    }
}
