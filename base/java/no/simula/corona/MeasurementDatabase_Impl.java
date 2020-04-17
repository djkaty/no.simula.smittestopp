package no.simula.corona;

import j.b.a.b;
import j.b.a.c;
import j.b.a.s;
import j.b.a.t;

public final class MeasurementDatabase_Impl extends MeasurementDatabase {

    /* renamed from: l  reason: collision with root package name */
    public volatile s f2459l;
    public volatile b m;

    public b h() {
        b bVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new c(this);
            }
            bVar = this.m;
        }
        return bVar;
    }

    public s i() {
        s sVar;
        if (this.f2459l != null) {
            return this.f2459l;
        }
        synchronized (this) {
            if (this.f2459l == null) {
                this.f2459l = new t(this);
            }
            sVar = this.f2459l;
        }
        return sVar;
    }
}
