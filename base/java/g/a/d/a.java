package g.a.d;

import g.a.b;
import g.a.c;
import java.lang.Enum;
import java.lang.reflect.Array;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public class a<E extends Enum<E>> {
    public final Object a = new Object();
    public final Class<E> b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<Long, E> f1322c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    public final AtomicLong f1323d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f1324e;

    /* renamed from: f  reason: collision with root package name */
    public g.a.a[] f1325f = null;

    /* renamed from: g  reason: collision with root package name */
    public volatile E[] f1326g = null;

    /* renamed from: h  reason: collision with root package name */
    public volatile int f1327h = 0;

    /* renamed from: i  reason: collision with root package name */
    public volatile b f1328i;

    /* renamed from: g.a.d.a$a  reason: collision with other inner class name */
    public static final class C0079a implements g.a.a {
        public final long x;
        public final String y;

        public C0079a(long j2, String str) {
            this.x = j2;
            this.y = str;
        }

        public final void a() {
            if (!c.b) {
                StringBuilder a = e.a.a.a.a.a("Constant ");
                a.append(this.y);
                a.append(" is not defined on ");
                a.append(c.f1321g);
                throw new AssertionError(a.toString());
            }
        }

        public final boolean defined() {
            return false;
        }

        public final int intValue() {
            a();
            return (int) this.x;
        }

        public final long longValue() {
            a();
            return this.x;
        }

        public final String name() {
            return this.y;
        }

        public final String toString() {
            return this.y;
        }
    }

    public a(Class cls, int i2, boolean z) {
        this.b = cls;
        this.f1323d = new AtomicLong((long) i2);
        this.f1324e = z;
    }

    public static <T extends Enum<T>> a<T> a(Class<T> cls, int i2, int i3) {
        return new a<>(cls, i2, false);
    }

    public final g.a.a b(E e2) {
        g.a.a aVar;
        if (this.f1327h == 0 || (aVar = this.f1325f[e2.ordinal()]) == null) {
            return d(e2);
        }
        return aVar;
    }

    public final long c(E e2) {
        return b(e2).longValue();
    }

    public final g.a.a d(E e2) {
        g.a.a aVar;
        synchronized (this.a) {
            if (this.f1327h != 0 && (aVar = this.f1325f[e2.ordinal()]) != null) {
                return aVar;
            }
            EnumSet<E> allOf = EnumSet.allOf(this.b);
            b a2 = a();
            if (this.f1325f == null) {
                this.f1325f = new g.a.a[allOf.size()];
            }
            Iterator it = allOf.iterator();
            long j2 = 0;
            long j3 = 0;
            long j4 = 0;
            while (it.hasNext()) {
                Enum enumR = (Enum) it.next();
                g.a.a aVar2 = a2.x.get(enumR.name());
                if (aVar2 == null) {
                    if (this.f1324e) {
                        j4 |= 1 << enumR.ordinal();
                        aVar2 = new C0079a(0, enumR.name());
                    } else {
                        aVar2 = new C0079a(this.f1323d.getAndAdd(1), enumR.name());
                    }
                } else if (this.f1324e) {
                    j3 |= aVar2.longValue();
                }
                this.f1325f[enumR.ordinal()] = aVar2;
            }
            if (this.f1324e) {
                while (true) {
                    long lowestOneBit = Long.lowestOneBit(j4);
                    if (lowestOneBit == j2) {
                        break;
                    }
                    int numberOfTrailingZeros = Long.numberOfTrailingZeros(lowestOneBit);
                    long numberOfTrailingZeros2 = (long) (1 << Long.numberOfTrailingZeros(Long.lowestOneBit(~j3)));
                    this.f1325f[numberOfTrailingZeros] = new C0079a(numberOfTrailingZeros2, this.f1325f[numberOfTrailingZeros].name());
                    j3 |= numberOfTrailingZeros2;
                    j4 &= ~(1 << numberOfTrailingZeros);
                    j2 = 0;
                }
            }
            this.f1327h = 1;
            g.a.a aVar3 = this.f1325f[e2.ordinal()];
            return aVar3;
        }
    }

    public final boolean a(E e2) {
        return b(e2).defined();
    }

    public final E a(long j2) {
        E e2;
        if (j2 >= 0 && j2 < 256 && this.f1326g != null && (e2 = this.f1326g[(int) j2]) != null) {
            return e2;
        }
        E e3 = (Enum) this.f1322c.get(Long.valueOf(j2));
        if (e3 != null) {
            return e3;
        }
        g.a.a aVar = a().y.get(Long.valueOf(j2));
        if (aVar != null) {
            try {
                E valueOf = Enum.valueOf(this.b, aVar.name());
                this.f1322c.put(Long.valueOf(j2), valueOf);
                if (aVar.intValue() >= 0 && aVar.intValue() < 256) {
                    E[] eArr = this.f1326g;
                    if (eArr == null) {
                        eArr = (Enum[]) Array.newInstance(this.b, 256);
                    }
                    eArr[aVar.intValue()] = valueOf;
                    this.f1326g = eArr;
                }
                return valueOf;
            } catch (IllegalArgumentException unused) {
            }
        }
        return Enum.valueOf(this.b, "__UNKNOWN_CONSTANT__");
    }

    public final b a() {
        if (this.f1328i == null) {
            String simpleName = this.b.getSimpleName();
            b bVar = (b) b.B.get(simpleName);
            if (bVar == null) {
                bVar = b.b(simpleName);
            }
            this.f1328i = bVar;
            if (this.f1328i == null) {
                StringBuilder a2 = e.a.a.a.a.a("Could not load platform constants for ");
                a2.append(this.b.getSimpleName());
                throw new RuntimeException(a2.toString());
            }
        }
        return this.f1328i;
    }
}
