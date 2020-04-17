package i.a.b.n;

import i.a.b.a;
import i.a.b.b;
import i.a.b.c;
import i.a.b.d;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;

public class e {
    public final ConcurrentHashMap<Type, f<?>> a;
    public f<c> b = new c(this);

    /* renamed from: c  reason: collision with root package name */
    public f<c> f1445c = new d(this);

    public e() {
        ConcurrentHashMap<Type, f<?>> concurrentHashMap = new ConcurrentHashMap<>(100);
        this.a = concurrentHashMap;
        concurrentHashMap.put(Date.class, b.b);
        this.a.put(int[].class, a.b);
        this.a.put(Integer[].class, a.f1435c);
        this.a.put(short[].class, a.b);
        this.a.put(Short[].class, a.f1435c);
        this.a.put(long[].class, a.f1440h);
        this.a.put(Long[].class, a.f1441i);
        this.a.put(byte[].class, a.f1436d);
        this.a.put(Byte[].class, a.f1437e);
        this.a.put(char[].class, a.f1438f);
        this.a.put(Character[].class, a.f1439g);
        this.a.put(float[].class, a.f1442j);
        this.a.put(Float[].class, a.f1443k);
        this.a.put(double[].class, a.f1444l);
        this.a.put(Double[].class, a.m);
        this.a.put(boolean[].class, a.n);
        this.a.put(Boolean[].class, a.o);
        this.a.put(c.class, this.b);
        this.a.put(b.class, this.b);
        this.a.put(a.class, this.b);
        this.a.put(d.class, this.b);
    }
}
