package d.f;

import d.f.g;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class c<E> implements Collection<E>, Set<E> {
    public static final int[] B = new int[0];
    public static final Object[] C = new Object[0];
    public static Object[] D;
    public static int E;
    public static Object[] F;
    public static int G;
    public g<E, E> A;
    public int[] x = B;
    public Object[] y = C;
    public int z = 0;

    public final int a(Object obj, int i2) {
        int i3 = this.z;
        if (i3 == 0) {
            return -1;
        }
        int a = d.a(this.x, i3, i2);
        if (a < 0 || obj.equals(this.y[a])) {
            return a;
        }
        int i4 = a + 1;
        while (i4 < i3 && this.x[i4] == i2) {
            if (obj.equals(this.y[i4])) {
                return i4;
            }
            i4++;
        }
        int i5 = a - 1;
        while (i5 >= 0 && this.x[i5] == i2) {
            if (obj.equals(this.y[i5])) {
                return i5;
            }
            i5--;
        }
        return ~i4;
    }

    public boolean add(E e2) {
        int i2;
        int i3;
        if (e2 == null) {
            i3 = a();
            i2 = 0;
        } else {
            int hashCode = e2.hashCode();
            i2 = hashCode;
            i3 = a(e2, hashCode);
        }
        if (i3 >= 0) {
            return false;
        }
        int i4 = ~i3;
        int i5 = this.z;
        if (i5 >= this.x.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.x;
            Object[] objArr = this.y;
            a(i6);
            int[] iArr2 = this.x;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.y, 0, objArr.length);
            }
            a(iArr, objArr, this.z);
        }
        int i7 = this.z;
        if (i4 < i7) {
            int[] iArr3 = this.x;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.y;
            System.arraycopy(objArr2, i4, objArr2, i8, this.z - i4);
        }
        this.x[i4] = i2;
        this.y[i4] = e2;
        this.z++;
        return true;
    }

    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.z;
        int[] iArr = this.x;
        boolean z2 = false;
        if (iArr.length < size) {
            Object[] objArr = this.y;
            a(size);
            int i2 = this.z;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.x, 0, i2);
                System.arraycopy(objArr, 0, this.y, 0, this.z);
            }
            a(iArr, objArr, this.z);
        }
        for (Object add : collection) {
            z2 |= add(add);
        }
        return z2;
    }

    public E b(int i2) {
        E[] eArr = this.y;
        E e2 = eArr[i2];
        int i3 = this.z;
        if (i3 <= 1) {
            a(this.x, eArr, i3);
            this.x = B;
            this.y = C;
            this.z = 0;
        } else {
            int[] iArr = this.x;
            int i4 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                int i5 = this.z - 1;
                this.z = i5;
                if (i2 < i5) {
                    int[] iArr2 = this.x;
                    int i6 = i2 + 1;
                    System.arraycopy(iArr2, i6, iArr2, i2, i5 - i2);
                    Object[] objArr = this.y;
                    System.arraycopy(objArr, i6, objArr, i2, this.z - i2);
                }
                this.y[this.z] = null;
            } else {
                if (i3 > 8) {
                    i4 = i3 + (i3 >> 1);
                }
                int[] iArr3 = this.x;
                Object[] objArr2 = this.y;
                a(i4);
                this.z--;
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.x, 0, i2);
                    System.arraycopy(objArr2, 0, this.y, 0, i2);
                }
                int i7 = this.z;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr3, i8, this.x, i2, i7 - i2);
                    System.arraycopy(objArr2, i8, this.y, i2, this.z - i2);
                }
            }
        }
        return e2;
    }

    public void clear() {
        int i2 = this.z;
        if (i2 != 0) {
            a(this.x, this.y, i2);
            this.x = B;
            this.y = C;
            this.z = 0;
        }
    }

    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    public boolean containsAll(Collection<?> collection) {
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.z != set.size()) {
                return false;
            }
            int i2 = 0;
            while (i2 < this.z) {
                try {
                    if (!set.contains(this.y[i2])) {
                        return false;
                    }
                    i2++;
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int[] iArr = this.x;
        int i2 = this.z;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.z <= 0;
    }

    public Iterator<E> iterator() {
        if (this.A == null) {
            this.A = new b(this);
        }
        g<E, E> gVar = this.A;
        if (gVar.b == null) {
            gVar.b = new g.c();
        }
        return gVar.b.iterator();
    }

    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        b(indexOf);
        return true;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean z2 = false;
        for (Object remove : collection) {
            z2 |= remove(remove);
        }
        return z2;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean z2 = false;
        for (int i2 = this.z - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.y[i2])) {
                b(i2);
                z2 = true;
            }
        }
        return z2;
    }

    public int size() {
        return this.z;
    }

    public Object[] toArray() {
        int i2 = this.z;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.y, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.z * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.z; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.y[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.z) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.z);
        }
        System.arraycopy(this.y, 0, tArr, 0, this.z);
        int length = tArr.length;
        int i2 = this.z;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    public final int a() {
        int i2 = this.z;
        if (i2 == 0) {
            return -1;
        }
        int a = d.a(this.x, i2, 0);
        if (a < 0 || this.y[a] == null) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.x[i3] == 0) {
            if (this.y[i3] == null) {
                return i3;
            }
            i3++;
        }
        int i4 = a - 1;
        while (i4 >= 0 && this.x[i4] == 0) {
            if (this.y[i4] == null) {
                return i4;
            }
            i4--;
        }
        return ~i3;
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (c.class) {
                if (F != null) {
                    Object[] objArr = F;
                    this.y = objArr;
                    F = (Object[]) objArr[0];
                    this.x = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    G--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (c.class) {
                if (D != null) {
                    Object[] objArr2 = D;
                    this.y = objArr2;
                    D = (Object[]) objArr2[0];
                    this.x = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    E--;
                    return;
                }
            }
        }
        this.x = new int[i2];
        this.y = new Object[i2];
    }

    public static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                if (G < 10) {
                    objArr[0] = F;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    F = objArr;
                    G++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (c.class) {
                if (E < 10) {
                    objArr[0] = D;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    D = objArr;
                    E++;
                }
            }
        }
    }
}
