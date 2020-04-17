package k.a.b.a.d.g0;

public class n<E> {
    public E a;
    public n<E> b;

    /* renamed from: c  reason: collision with root package name */
    public n<E> f1911c;

    public n(E e2) {
        this.a = e2;
    }

    public n<E> a(E e2) {
        n<E> nVar = this.f1911c;
        if (nVar != null) {
            return nVar.a(e2);
        }
        n<E> nVar2 = new n<>(e2);
        this.f1911c = nVar2;
        nVar2.b = this;
        return nVar2;
    }
}
