package j.b.a;

import d.u.g;
import d.u.k;
import d.w.a.f.f;

public final class t implements s {
    public final g a;
    public final d.u.b<r> b;

    /* renamed from: c  reason: collision with root package name */
    public final k f1527c;

    /* renamed from: d  reason: collision with root package name */
    public final k f1528d;

    public class a extends d.u.b<r> {
        public a(t tVar, g gVar) {
            super(gVar);
        }

        public void a(f fVar, Object obj) {
            r rVar = (r) obj;
            Integer num = rVar.a;
            if (num == null) {
                fVar.x.bindNull(1);
            } else {
                fVar.x.bindLong(1, (long) num.intValue());
            }
            fVar.x.bindLong(2, rVar.f1518d);
            Double d2 = rVar.f1519e;
            if (d2 == null) {
                fVar.x.bindNull(3);
            } else {
                fVar.x.bindDouble(3, d2.doubleValue());
            }
            Double d3 = rVar.f1520f;
            if (d3 == null) {
                fVar.x.bindNull(4);
            } else {
                fVar.x.bindDouble(4, d3.doubleValue());
            }
            Double d4 = rVar.f1521g;
            if (d4 == null) {
                fVar.x.bindNull(5);
            } else {
                fVar.x.bindDouble(5, d4.doubleValue());
            }
            Double d5 = rVar.f1522h;
            if (d5 == null) {
                fVar.x.bindNull(6);
            } else {
                fVar.x.bindDouble(6, d5.doubleValue());
            }
            Double d6 = rVar.f1523i;
            if (d6 == null) {
                fVar.x.bindNull(7);
            } else {
                fVar.x.bindDouble(7, d6.doubleValue());
            }
            Double d7 = rVar.f1524j;
            if (d7 == null) {
                fVar.x.bindNull(8);
            } else {
                fVar.x.bindDouble(8, d7.doubleValue());
            }
            Double d8 = rVar.f1525k;
            if (d8 == null) {
                fVar.x.bindNull(9);
            } else {
                fVar.x.bindDouble(9, d8.doubleValue());
            }
            fVar.x.bindLong(10, rVar.f1526l ? 1 : 0);
        }

        public String b() {
            return "INSERT OR ABORT INTO `Measurement` (`id`,`timestamp`,`latitude`,`longitude`,`latLongAccuracy`,`altitude`,`altitudeAccuracy`,`speed`,`speedAccuracy`,`isUploaded`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends k {
        public b(t tVar, g gVar) {
            super(gVar);
        }

        public String b() {
            return "DELETE from measurement WHERE isUploaded is 1";
        }
    }

    public class c extends k {
        public c(t tVar, g gVar) {
            super(gVar);
        }

        public String b() {
            return "DELETE FROM measurement";
        }
    }

    public t(g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
        this.f1527c = new b(this, gVar);
        this.f1528d = new c(this, gVar);
    }

    public void a() {
        this.a.b();
        f a2 = this.f1528d.a();
        this.a.c();
        try {
            a2.a();
            this.a.g();
            this.a.d();
            k kVar = this.f1528d;
            if (a2 == kVar.f925c) {
                kVar.a.set(false);
            }
        } catch (Throwable th) {
            this.a.d();
            this.f1528d.a(a2);
            throw th;
        }
    }
}
