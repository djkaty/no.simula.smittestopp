package j.b.a;

import d.u.g;
import d.u.k;
import d.w.a.f.f;

public final class c implements b {
    public final g a;
    public final d.u.b<a> b;

    /* renamed from: c  reason: collision with root package name */
    public final k f1506c;

    /* renamed from: d  reason: collision with root package name */
    public final k f1507d;

    public class a extends d.u.b<a> {
        public a(c cVar, g gVar) {
            super(gVar);
        }

        public void a(f fVar, Object obj) {
            a aVar = (a) obj;
            Integer num = aVar.a;
            if (num == null) {
                fVar.x.bindNull(1);
            } else {
                fVar.x.bindLong(1, (long) num.intValue());
            }
            fVar.x.bindLong(2, aVar.b);
            String str = aVar.f1483c;
            if (str == null) {
                fVar.x.bindNull(3);
            } else {
                fVar.x.bindString(3, str);
            }
            fVar.x.bindLong(4, (long) aVar.f1484d);
            fVar.x.bindLong(5, (long) aVar.f1485e);
            fVar.x.bindLong(6, aVar.f1486f ? 1 : 0);
        }

        public String b() {
            return "INSERT OR ABORT INTO `BluetoothContact` (`id`,`timestamp`,`deviceId`,`rssi`,`txPower`,`isUploaded`) VALUES (?,?,?,?,?,?)";
        }
    }

    public class b extends k {
        public b(c cVar, g gVar) {
            super(gVar);
        }

        public String b() {
            return "DELETE from bluetoothcontact WHERE isUploaded is 1";
        }
    }

    /* renamed from: j.b.a.c$c  reason: collision with other inner class name */
    public class C0093c extends k {
        public C0093c(c cVar, g gVar) {
            super(gVar);
        }

        public String b() {
            return "DELETE from bluetoothcontact";
        }
    }

    public c(g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
        this.f1506c = new b(this, gVar);
        this.f1507d = new C0093c(this, gVar);
    }

    public void a() {
        this.a.b();
        f a2 = this.f1507d.a();
        this.a.c();
        try {
            a2.a();
            this.a.g();
            this.a.d();
            k kVar = this.f1507d;
            if (a2 == kVar.f925c) {
                kVar.a.set(false);
            }
        } catch (Throwable th) {
            this.a.d();
            this.f1507d.a(a2);
            throw th;
        }
    }
}
