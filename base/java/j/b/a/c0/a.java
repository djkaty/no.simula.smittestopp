package j.b.a.c0;

public final class a {
    public final boolean a;

    public a(boolean z) {
        this.a = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof a) && this.a == ((a) obj).a;
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
        StringBuilder a2 = e.a.a.a.a.a("BluetoothAdapterEvent(on=");
        a2.append(this.a);
        a2.append(")");
        return a2.toString();
    }
}
