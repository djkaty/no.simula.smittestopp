package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;
import java.util.UUID;

public class s0 extends c<UUID> {
    public a a;

    public class a extends z<UUID> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            UUID uuid = (UUID) obj;
            x xVar = this.a;
            xVar.a.a(uuid.getMostSignificantBits());
            x xVar2 = this.a;
            xVar2.a.a(uuid.getLeastSignificantBits());
        }

        public byte g() {
            return -104;
        }

        public a getType() {
            return s0.this;
        }

        public int i() {
            return 16;
        }

        public Object k() {
            return new UUID(this.b.g(), this.b.g());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m56getType() {
            return s0.this;
        }

        public boolean a(r0<UUID> r0Var) {
            return s0.this == r0Var.getType();
        }
    }

    public s0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(UUID.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        UUID uuid = (UUID) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m55a(Object obj) {
        UUID uuid = (UUID) obj;
        return this.a;
    }

    public Class<UUID> a() {
        return UUID.class;
    }
}
