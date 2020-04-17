package h.l;

import h.i.g;
import java.util.NoSuchElementException;

public final class b extends g {
    public final int A;
    public final int x;
    public boolean y;
    public int z;

    public b(int i2, int i3, int i4) {
        this.A = i4;
        this.x = i3;
        boolean z2 = true;
        if (i4 <= 0 ? i2 < i3 : i2 > i3) {
            z2 = false;
        }
        this.y = z2;
        this.z = !z2 ? this.x : i2;
    }

    public int a() {
        int i2 = this.z;
        if (i2 != this.x) {
            this.z = this.A + i2;
        } else if (this.y) {
            this.y = false;
        } else {
            throw new NoSuchElementException();
        }
        return i2;
    }

    public boolean hasNext() {
        return this.y;
    }
}
