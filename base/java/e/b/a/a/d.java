package e.b.a.a;

import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.r.b;
import java.io.Reader;
import java.io.Serializable;
import java.lang.ref.SoftReference;

public class d implements Serializable {
    public static final int E = a.collectDefaults();
    public static final int F = i.a.collectDefaults();
    public static final int G = f.a.collectDefaults();
    public static final n H = e.b.a.a.s.d.x;
    public int A = E;
    public int B = F;
    public int C = G;
    public n D = H;
    public final transient b x;
    public final transient e.b.a.a.r.a y;
    public m z = null;

    public enum a {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);
        
        public final boolean _defaultState;

        /* access modifiers changed from: public */
        a(boolean z) {
            this._defaultState = z;
        }

        public static int collectDefaults() {
            int i2 = 0;
            for (a aVar : values()) {
                if (aVar.enabledByDefault()) {
                    i2 |= aVar.getMask();
                }
            }
            return i2;
        }

        public boolean enabledByDefault() {
            return this._defaultState;
        }

        public boolean enabledIn(int i2) {
            return (i2 & getMask()) != 0;
        }

        public int getMask() {
            return 1 << ordinal();
        }
    }

    public d() {
        long currentTimeMillis = System.currentTimeMillis();
        this.x = new b((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
        long currentTimeMillis2 = System.currentTimeMillis();
        this.y = new e.b.a.a.r.a(64, true, (((int) currentTimeMillis2) + ((int) (currentTimeMillis2 >>> 32))) | 1, true);
    }

    public i a(Reader reader) {
        return new e.b.a.a.q.f(a(reader, false), this.B, reader, this.x.b(this.A));
    }

    public e.b.a.a.p.b a(Object obj, boolean z2) {
        e.b.a.a.s.a aVar;
        if (a.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING.enabledIn(this.A)) {
            SoftReference softReference = e.b.a.a.s.b.a.get();
            if (softReference == null) {
                aVar = null;
            } else {
                aVar = (e.b.a.a.s.a) softReference.get();
            }
            if (aVar == null) {
                aVar = new e.b.a.a.s.a();
                e.b.a.a.s.b.a.set(new SoftReference(aVar));
            }
        } else {
            aVar = new e.b.a.a.s.a();
        }
        return new e.b.a.a.p.b(aVar, obj, z2);
    }
}
