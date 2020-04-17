package d.f;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;

public class i<E> implements Cloneable {
    public static final Object B = new Object();
    public int A;
    public boolean x;
    public int[] y;
    public Object[] z;

    public i() {
        this(10);
    }

    public E a(int i2) {
        return b(i2, (Object) null);
    }

    public E b(int i2, E e2) {
        int a = d.a(this.y, this.A, i2);
        if (a >= 0) {
            E[] eArr = this.z;
            if (eArr[a] != B) {
                return eArr[a];
            }
        }
        return e2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x000a, code lost:
        r0 = r3.z;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(int r4) {
        /*
            r3 = this;
            int[] r0 = r3.y
            int r1 = r3.A
            int r4 = d.f.d.a((int[]) r0, (int) r1, (int) r4)
            if (r4 < 0) goto L_0x0017
            java.lang.Object[] r0 = r3.z
            r1 = r0[r4]
            java.lang.Object r2 = B
            if (r1 == r2) goto L_0x0017
            r0[r4] = r2
            r4 = 1
            r3.x = r4
        L_0x0017:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.f.i.c(int):void");
    }

    public E d(int i2) {
        if (this.x) {
            a();
        }
        return this.z[i2];
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.A * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.A; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(b(i2));
            sb.append(Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR);
            Object d2 = d(i2);
            if (d2 != this) {
                sb.append(d2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public i(int i2) {
        this.x = false;
        if (i2 == 0) {
            this.y = d.a;
            this.z = d.f427c;
            return;
        }
        int b = d.b(i2);
        this.y = new int[b];
        this.z = new Object[b];
    }

    public final void a() {
        int i2 = this.A;
        int[] iArr = this.y;
        Object[] objArr = this.z;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != B) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.x = false;
        this.A = i3;
    }

    public i<E> clone() {
        try {
            i<E> iVar = (i) super.clone();
            iVar.y = (int[]) this.y.clone();
            iVar.z = (Object[]) this.z.clone();
            return iVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public int b() {
        if (this.x) {
            a();
        }
        return this.A;
    }

    public void c(int i2, E e2) {
        int a = d.a(this.y, this.A, i2);
        if (a >= 0) {
            this.z[a] = e2;
            return;
        }
        int i3 = ~a;
        if (i3 < this.A) {
            Object[] objArr = this.z;
            if (objArr[i3] == B) {
                this.y[i3] = i2;
                objArr[i3] = e2;
                return;
            }
        }
        if (this.x && this.A >= this.y.length) {
            a();
            i3 = ~d.a(this.y, this.A, i2);
        }
        int i4 = this.A;
        if (i4 >= this.y.length) {
            int b = d.b(i4 + 1);
            int[] iArr = new int[b];
            Object[] objArr2 = new Object[b];
            int[] iArr2 = this.y;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.z;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.y = iArr;
            this.z = objArr2;
        }
        int i5 = this.A;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.y;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Object[] objArr4 = this.z;
            System.arraycopy(objArr4, i3, objArr4, i6, this.A - i3);
        }
        this.y[i3] = i2;
        this.z[i3] = e2;
        this.A++;
    }

    public int b(int i2) {
        if (this.x) {
            a();
        }
        return this.y[i2];
    }

    public void a(int i2, E e2) {
        int i3 = this.A;
        if (i3 == 0 || i2 > this.y[i3 - 1]) {
            if (this.x && this.A >= this.y.length) {
                a();
            }
            int i4 = this.A;
            if (i4 >= this.y.length) {
                int b = d.b(i4 + 1);
                int[] iArr = new int[b];
                Object[] objArr = new Object[b];
                int[] iArr2 = this.y;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.z;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.y = iArr;
                this.z = objArr;
            }
            this.y[i4] = i2;
            this.z[i4] = e2;
            this.A = i4 + 1;
            return;
        }
        c(i2, e2);
    }
}
