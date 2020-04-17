package d.f;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import java.util.ConcurrentModificationException;
import java.util.Map;

public class h<K, V> {
    public static Object[] A;
    public static int B;
    public static Object[] C;
    public static int D;
    public int[] x;
    public Object[] y;
    public int z;

    public h() {
        this.x = d.a;
        this.y = d.f427c;
        this.z = 0;
    }

    public int a(Object obj, int i2) {
        int i3 = this.z;
        if (i3 == 0) {
            return -1;
        }
        try {
            int a = d.a(this.x, i3, i2);
            if (a < 0 || obj.equals(this.y[a << 1])) {
                return a;
            }
            int i4 = a + 1;
            while (i4 < i3 && this.x[i4] == i2) {
                if (obj.equals(this.y[i4 << 1])) {
                    return i4;
                }
                i4++;
            }
            int i5 = a - 1;
            while (i5 >= 0 && this.x[i5] == i2) {
                if (obj.equals(this.y[i5 << 1])) {
                    return i5;
                }
                i5--;
            }
            return ~i4;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public void b(int i2) {
        int i3 = this.z;
        int[] iArr = this.x;
        if (iArr.length < i2) {
            Object[] objArr = this.y;
            a(i2);
            if (this.z > 0) {
                System.arraycopy(iArr, 0, this.x, 0, i3);
                System.arraycopy(objArr, 0, this.y, 0, i3 << 1);
            }
            a(iArr, objArr, i3);
        }
        if (this.z != i3) {
            throw new ConcurrentModificationException();
        }
    }

    public K c(int i2) {
        return this.y[i2 << 1];
    }

    public void clear() {
        int i2 = this.z;
        if (i2 > 0) {
            int[] iArr = this.x;
            Object[] objArr = this.y;
            this.x = d.a;
            this.y = d.f427c;
            this.z = 0;
            a(iArr, objArr, i2);
        }
        if (this.z > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public V d(int i2) {
        V[] vArr = this.y;
        int i3 = i2 << 1;
        V v = vArr[i3 + 1];
        int i4 = this.z;
        int i5 = 0;
        if (i4 <= 1) {
            a(this.x, vArr, i4);
            this.x = d.a;
            this.y = d.f427c;
        } else {
            int i6 = i4 - 1;
            int[] iArr = this.x;
            int i7 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i2 < i6) {
                    int[] iArr2 = this.x;
                    int i8 = i2 + 1;
                    int i9 = i6 - i2;
                    System.arraycopy(iArr2, i8, iArr2, i2, i9);
                    Object[] objArr = this.y;
                    System.arraycopy(objArr, i8 << 1, objArr, i3, i9 << 1);
                }
                Object[] objArr2 = this.y;
                int i10 = i6 << 1;
                objArr2[i10] = null;
                objArr2[i10 + 1] = null;
            } else {
                if (i4 > 8) {
                    i7 = i4 + (i4 >> 1);
                }
                int[] iArr3 = this.x;
                Object[] objArr3 = this.y;
                a(i7);
                if (i4 == this.z) {
                    if (i2 > 0) {
                        System.arraycopy(iArr3, 0, this.x, 0, i2);
                        System.arraycopy(objArr3, 0, this.y, 0, i3);
                    }
                    if (i2 < i6) {
                        int i11 = i2 + 1;
                        int i12 = i6 - i2;
                        System.arraycopy(iArr3, i11, this.x, i2, i12);
                        System.arraycopy(objArr3, i11 << 1, this.y, i3, i12 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            }
            i5 = i6;
        }
        if (i4 == this.z) {
            this.z = i5;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public V e(int i2) {
        return this.y[(i2 << 1) + 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.z != hVar.z) {
                return false;
            }
            int i2 = 0;
            while (i2 < this.z) {
                try {
                    Object c2 = c(i2);
                    Object e2 = e(i2);
                    Object obj2 = hVar.get(c2);
                    if (e2 == null) {
                        if (obj2 != null || !hVar.containsKey(c2)) {
                            return false;
                        }
                    } else if (!e2.equals(obj2)) {
                        return false;
                    }
                    i2++;
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.z != map.size()) {
                return false;
            }
            int i3 = 0;
            while (i3 < this.z) {
                try {
                    Object c3 = c(i3);
                    Object e3 = e(i3);
                    Object obj3 = map.get(c3);
                    if (e3 == null) {
                        if (obj3 != null || !map.containsKey(c3)) {
                            return false;
                        }
                    } else if (!e3.equals(obj3)) {
                        return false;
                    }
                    i3++;
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public V get(Object obj) {
        return getOrDefault(obj, (Object) null);
    }

    public V getOrDefault(Object obj, V v) {
        int a = a(obj);
        return a >= 0 ? this.y[(a << 1) + 1] : v;
    }

    public int hashCode() {
        int[] iArr = this.x;
        Object[] objArr = this.y;
        int i2 = this.z;
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            i5 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return i5;
    }

    public boolean isEmpty() {
        return this.z <= 0;
    }

    public V put(K k2, V v) {
        int i2;
        int i3;
        int i4 = this.z;
        if (k2 == null) {
            i3 = a();
            i2 = 0;
        } else {
            int hashCode = k2.hashCode();
            i2 = hashCode;
            i3 = a((Object) k2, hashCode);
        }
        if (i3 >= 0) {
            int i5 = (i3 << 1) + 1;
            V[] vArr = this.y;
            V v2 = vArr[i5];
            vArr[i5] = v;
            return v2;
        }
        int i6 = ~i3;
        if (i4 >= this.x.length) {
            int i7 = 4;
            if (i4 >= 8) {
                i7 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i7 = 8;
            }
            int[] iArr = this.x;
            Object[] objArr = this.y;
            a(i7);
            if (i4 == this.z) {
                int[] iArr2 = this.x;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr, 0, this.y, 0, objArr.length);
                }
                a(iArr, objArr, i4);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i6 < i4) {
            int[] iArr3 = this.x;
            int i8 = i6 + 1;
            System.arraycopy(iArr3, i6, iArr3, i8, i4 - i6);
            Object[] objArr2 = this.y;
            System.arraycopy(objArr2, i6 << 1, objArr2, i8 << 1, (this.z - i6) << 1);
        }
        int i9 = this.z;
        if (i4 == i9) {
            int[] iArr4 = this.x;
            if (i6 < iArr4.length) {
                iArr4[i6] = i2;
                Object[] objArr3 = this.y;
                int i10 = i6 << 1;
                objArr3[i10] = k2;
                objArr3[i10 + 1] = v;
                this.z = i9 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k2, V v) {
        V orDefault = getOrDefault(k2, (Object) null);
        return orDefault == null ? put(k2, v) : orDefault;
    }

    public V remove(Object obj) {
        int a = a(obj);
        if (a >= 0) {
            return d(a);
        }
        return null;
    }

    public V replace(K k2, V v) {
        int a = a((Object) k2);
        if (a >= 0) {
            return a(a, v);
        }
        return null;
    }

    public int size() {
        return this.z;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.z * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.z; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object c2 = c(i2);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
            sb.append(Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR);
            Object e2 = e(i2);
            if (e2 != this) {
                sb.append(e2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int a = a(obj);
        if (a < 0) {
            return false;
        }
        Object e2 = e(a);
        if (obj2 != e2 && (obj2 == null || !obj2.equals(e2))) {
            return false;
        }
        d(a);
        return true;
    }

    public boolean replace(K k2, V v, V v2) {
        int a = a((Object) k2);
        if (a < 0) {
            return false;
        }
        V e2 = e(a);
        if (e2 != v && (v == null || !v.equals(e2))) {
            return false;
        }
        a(a, v2);
        return true;
    }

    public h(int i2) {
        if (i2 == 0) {
            this.x = d.a;
            this.y = d.f427c;
        } else {
            a(i2);
        }
        this.z = 0;
    }

    public int a() {
        int i2 = this.z;
        if (i2 == 0) {
            return -1;
        }
        try {
            int a = d.a(this.x, i2, 0);
            if (a < 0 || this.y[a << 1] == null) {
                return a;
            }
            int i3 = a + 1;
            while (i3 < i2 && this.x[i3] == 0) {
                if (this.y[i3 << 1] == null) {
                    return i3;
                }
                i3++;
            }
            int i4 = a - 1;
            while (i4 >= 0 && this.x[i4] == 0) {
                if (this.y[i4 << 1] == null) {
                    return i4;
                }
                i4--;
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public int b(Object obj) {
        int i2 = this.z * 2;
        Object[] objArr = this.y;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public final void a(int i2) {
        Class<h> cls = h.class;
        if (i2 == 8) {
            synchronized (cls) {
                if (C != null) {
                    Object[] objArr = C;
                    this.y = objArr;
                    C = (Object[]) objArr[0];
                    this.x = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    D--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (cls) {
                if (A != null) {
                    Object[] objArr2 = A;
                    this.y = objArr2;
                    A = (Object[]) objArr2[0];
                    this.x = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    B--;
                    return;
                }
            }
        }
        this.x = new int[i2];
        this.y = new Object[(i2 << 1)];
    }

    public static void a(int[] iArr, Object[] objArr, int i2) {
        Class<h> cls = h.class;
        if (iArr.length == 8) {
            synchronized (cls) {
                if (D < 10) {
                    objArr[0] = C;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    C = objArr;
                    D++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (cls) {
                if (B < 10) {
                    objArr[0] = A;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    A = objArr;
                    B++;
                }
            }
        }
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public V a(int i2, V v) {
        int i3 = (i2 << 1) + 1;
        V[] vArr = this.y;
        V v2 = vArr[i3];
        vArr[i3] = v;
        return v2;
    }
}
