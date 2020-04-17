package h.j;

import h.k.a.p;

public interface d {

    public interface a extends d {
        <E extends a> E get(b<E> bVar);

        b<?> getKey();
    }

    public interface b<E extends a> {
    }

    <R> R fold(R r, p<? super R, ? super a, ? extends R> pVar);

    <E extends a> E get(b<E> bVar);

    d minusKey(b<?> bVar);
}
