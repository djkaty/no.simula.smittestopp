package j.b.a.c0;

import e.a.a.a.a;

public final class b {
    public final boolean a;

    public b(boolean z) {
        this.a = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof b) && this.a == ((b) obj).a;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.a;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        StringBuilder a2 = a.a("BluetoothEvent(on=");
        a2.append(this.a);
        a2.append(")");
        return a2.toString();
    }
}
