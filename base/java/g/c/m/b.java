package g.c.m;

import g.c.a;
import java.util.Collection;
import java.util.Map;

public class b extends a<T> {

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ c f1365j;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(c cVar, Class cls) {
        super(cls);
        this.f1365j = cVar;
    }

    public T a(Class<T> cls, Collection<String> collection, Collection<String> collection2, Map<g.c.b, Object> map) {
        UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(this.f1365j.a);
        unsatisfiedLinkError.initCause(this.f1365j.b);
        throw unsatisfiedLinkError;
    }
}
