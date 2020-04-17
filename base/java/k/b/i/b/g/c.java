package k.b.i.b.g;

import java.io.Serializable;

public class c implements Serializable, Cloneable {
    public int A;
    public boolean B = false;
    public boolean C = false;
    public u x;
    public final int y;
    public int z;

    public c(int i2) {
        this.y = i2;
    }

    public int a() {
        if (!this.B || this.C) {
            return Integer.MAX_VALUE;
        }
        return this.z;
    }

    public c clone() {
        c cVar = new c(this.y);
        cVar.x = this.x;
        cVar.z = this.z;
        cVar.A = this.A;
        cVar.B = this.B;
        cVar.C = this.C;
        return cVar;
    }
}
