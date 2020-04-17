package k.a.b.a.g.i;

import k.a.b.a.d.g0.r;
import k.a.b.a.d.u;
import k.a.b.a.g.d;
import k.a.b.a.g.h;

public class l implements h, Comparable<l> {
    public u A = new r();
    public d B;
    public final long x;
    public final int y;
    public boolean z = false;

    public l(long j2, int i2) {
        this.x = j2;
        this.y = i2;
    }

    public d b() {
        return this.B;
    }

    public int compareTo(Object obj) {
        l lVar = (l) obj;
        int i2 = (this.x > lVar.x ? 1 : (this.x == lVar.x ? 0 : -1));
        if (i2 < 0) {
            return -1;
        }
        if (i2 > 0) {
            return 1;
        }
        return this.y - lVar.y;
    }

    public long j() {
        return this.x;
    }

    public u q() {
        return this.A;
    }
}
