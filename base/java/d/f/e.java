package d.f;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;

public class e<E> implements Cloneable {
    public static final Object B = new Object();
    public int A;
    public boolean x = false;
    public long[] y;
    public Object[] z;

    public e() {
        int c2 = d.c(10);
        this.y = new long[c2];
        this.z = new Object[c2];
    }

    public E a(long j2) {
        return b(j2, (Object) null);
    }

    public E b(long j2, E e2) {
        int a = d.a(this.y, this.A, j2);
        if (a >= 0) {
            E[] eArr = this.z;
            if (eArr[a] != B) {
                return eArr[a];
            }
        }
        return e2;
    }

    public void c(long j2, E e2) {
        int a = d.a(this.y, this.A, j2);
        if (a >= 0) {
            this.z[a] = e2;
            return;
        }
        int i2 = ~a;
        if (i2 < this.A) {
            Object[] objArr = this.z;
            if (objArr[i2] == B) {
                this.y[i2] = j2;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.x && this.A >= this.y.length) {
            b();
            i2 = ~d.a(this.y, this.A, j2);
        }
        int i3 = this.A;
        if (i3 >= this.y.length) {
            int c2 = d.c(i3 + 1);
            long[] jArr = new long[c2];
            Object[] objArr2 = new Object[c2];
            long[] jArr2 = this.y;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.z;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.y = jArr;
            this.z = objArr2;
        }
        int i4 = this.A;
        if (i4 - i2 != 0) {
            long[] jArr3 = this.y;
            int i5 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
            Object[] objArr4 = this.z;
            System.arraycopy(objArr4, i2, objArr4, i5, this.A - i2);
        }
        this.y[i2] = j2;
        this.z[i2] = e2;
        this.A++;
    }

    public String toString() {
        if (c() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.A * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.A; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.x) {
                b();
            }
            sb.append(this.y[i2]);
            sb.append(Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR);
            Object a = a(i2);
            if (a != this) {
                sb.append(a);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E a(int i2) {
        if (this.x) {
            b();
        }
        return this.z[i2];
    }

    public e<E> clone() {
        try {
            e<E> eVar = (e) super.clone();
            eVar.y = (long[]) this.y.clone();
            eVar.z = (Object[]) this.z.clone();
            return eVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void b() {
        int i2 = this.A;
        long[] jArr = this.y;
        Object[] objArr = this.z;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != B) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.x = false;
        this.A = i3;
    }

    public void a() {
        int i2 = this.A;
        Object[] objArr = this.z;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.A = 0;
        this.x = false;
    }

    public void a(long j2, E e2) {
        int i2 = this.A;
        if (i2 == 0 || j2 > this.y[i2 - 1]) {
            if (this.x && this.A >= this.y.length) {
                b();
            }
            int i3 = this.A;
            if (i3 >= this.y.length) {
                int c2 = d.c(i3 + 1);
                long[] jArr = new long[c2];
                Object[] objArr = new Object[c2];
                long[] jArr2 = this.y;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.z;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.y = jArr;
                this.z = objArr;
            }
            this.y[i3] = j2;
            this.z[i3] = e2;
            this.A = i3 + 1;
            return;
        }
        c(j2, e2);
    }

    public int c() {
        if (this.x) {
            b();
        }
        return this.A;
    }
}
