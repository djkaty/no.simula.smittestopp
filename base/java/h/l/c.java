package h.l;

public final class c extends a {
    public static final c A = new c(1, 0);
    public static final c B = null;

    public c(int i2, int i3) {
        super(i2, i3, 1);
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (!(this.x == cVar.x && this.y == cVar.y)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.x * 31) + this.y;
    }

    public boolean isEmpty() {
        return this.x > this.y;
    }

    public String toString() {
        return this.x + ".." + this.y;
    }
}
