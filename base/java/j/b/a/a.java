package j.b.a;

import h.k.b.g;

public final class a {
    public Integer a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final String f1483c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1484d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1485e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f1486f;

    public a(long j2, String str, int i2, int i3, boolean z) {
        if (str != null) {
            this.b = j2;
            this.f1483c = str;
            this.f1484d = i2;
            this.f1485e = i3;
            this.f1486f = z;
            return;
        }
        g.a("deviceId");
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.b == aVar.b && g.a((Object) this.f1483c, (Object) aVar.f1483c) && this.f1484d == aVar.f1484d && this.f1485e == aVar.f1485e && this.f1486f == aVar.f1486f;
    }

    public int hashCode() {
        int a2 = defpackage.a.a(this.b) * 31;
        String str = this.f1483c;
        int hashCode = (((((a2 + (str != null ? str.hashCode() : 0)) * 31) + this.f1484d) * 31) + this.f1485e) * 31;
        boolean z = this.f1486f;
        if (z) {
            z = true;
        }
        return hashCode + (z ? 1 : 0);
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("BluetoothContact(timestamp=");
        a2.append(this.b);
        a2.append(", deviceId=");
        a2.append(this.f1483c);
        a2.append(", rssi=");
        a2.append(this.f1484d);
        a2.append(", txPower=");
        a2.append(this.f1485e);
        a2.append(", isUploaded=");
        a2.append(this.f1486f);
        a2.append(")");
        return a2.toString();
    }
}
