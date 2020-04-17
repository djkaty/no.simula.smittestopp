package d.i.h;

public class b<T> {
    public final Object[] a;
    public int b;

    public b(int i2) {
        if (i2 > 0) {
            this.a = new Object[i2];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    public T a() {
        int i2 = this.b;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        T[] tArr = this.a;
        T t = tArr[i3];
        tArr[i3] = null;
        this.b = i2 - 1;
        return t;
    }

    public boolean a(T t) {
        boolean z;
        int i2 = 0;
        while (true) {
            if (i2 >= this.b) {
                z = false;
                break;
            } else if (this.a[i2] == t) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            int i3 = this.b;
            Object[] objArr = this.a;
            if (i3 >= objArr.length) {
                return false;
            }
            objArr[i3] = t;
            this.b = i3 + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }
}
