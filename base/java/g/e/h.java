package g.e;

import e.a.a.a.a;
import g.a.d.e;
import java.net.SocketAddress;

public class h extends SocketAddress {
    public transient e x;

    public h() {
        e e2 = e.e();
        this.x = e2;
        e2.a(e.PF_UNIX);
    }

    public String a() {
        e eVar = this.x;
        String str = eVar.f1371c;
        if (str != null) {
            return str;
        }
        eVar.c().c();
        throw null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.x.a() != hVar.x.a() || !a().equals(hVar.a())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public String toString() {
        StringBuilder a = a.a("[family=");
        a.append(this.x.a());
        a.append(" path=");
        String a2 = a();
        if (a2.indexOf(0) == 0) {
            a2 = a2.replace(0, '@');
        }
        return a.a(a, a2, "]");
    }

    public h(String str) {
        e e2 = e.e();
        this.x = e2;
        e2.a(e.PF_UNIX);
        this.x.a(str);
    }
}
