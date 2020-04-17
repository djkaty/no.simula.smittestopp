package k.a.b.a.c;

import e.a.a.a.a;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.util.ArrayList;
import java.util.Collections;

public class l implements k0 {

    /* renamed from: j  reason: collision with root package name */
    public static final ByteBuffer f1741j = ByteBuffer.wrap(new byte[0]);

    /* renamed from: k  reason: collision with root package name */
    public static final l f1742k = new l(false);

    /* renamed from: l  reason: collision with root package name */
    public static int f1743l = -1;
    public ArrayList<byte[]> a;
    public int b = -1;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f1744c;

    /* renamed from: d  reason: collision with root package name */
    public int f1745d;

    /* renamed from: e  reason: collision with root package name */
    public int f1746e;

    /* renamed from: f  reason: collision with root package name */
    public int f1747f;

    /* renamed from: g  reason: collision with root package name */
    public int f1748g;

    /* renamed from: h  reason: collision with root package name */
    public int f1749h = -1;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1750i = true;

    static {
        Collections.unmodifiableList(new ArrayList());
    }

    public l() {
    }

    public k0 b(int i2) {
        if (i2 < 0 || i2 > this.f1748g) {
            throw new IllegalArgumentException("limit must be non-negative and no greater than the capacity");
        }
        if (this.f1749h > i2) {
            this.f1749h = f1743l;
        }
        if (this.f1746e > i2) {
            a(i2);
        }
        this.f1747f = i2;
        return this;
    }

    public int c() {
        return this.f1747f - this.f1746e;
    }

    public int d() {
        int i2;
        if (c() >= 4) {
            byte[] bArr = this.f1744c;
            int length = bArr.length;
            int i3 = this.f1745d;
            int i4 = 0;
            if (length - i3 >= 4) {
                int i5 = i3 + 1;
                this.f1745d = i5;
                int i6 = i5 + 1;
                this.f1745d = i6;
                int i7 = ((bArr[i5] & 255) << 16) | ((bArr[i3] & 255) << 24);
                int i8 = i6 + 1;
                this.f1745d = i8;
                int i9 = i7 | ((bArr[i6] & 255) << 8);
                this.f1745d = i8 + 1;
                i2 = ((bArr[i8] & 255) << 0) | i9;
                p();
            } else {
                for (int i10 = 3; i10 >= 0; i10--) {
                    byte[] bArr2 = this.f1744c;
                    int i11 = this.f1745d;
                    this.f1745d = i11 + 1;
                    i4 |= (bArr2[i11] & 255) << (i10 * 8);
                    p();
                }
                i2 = i4;
            }
            this.f1746e += 4;
            return i2;
        }
        throw new BufferUnderflowException();
    }

    public ByteBuffer e() {
        ByteBuffer byteBuffer;
        int i2 = this.f1747f - this.f1746e;
        if (i2 == 0) {
            byteBuffer = f1741j;
        } else {
            byte[] bArr = this.f1744c;
            int length = bArr.length;
            int i3 = this.f1745d;
            if (i2 <= length - i3) {
                byteBuffer = ByteBuffer.wrap(bArr, i3, i2);
            } else {
                byte[] bArr2 = new byte[i2];
                int i4 = this.b;
                System.arraycopy(bArr, i3, bArr2, 0, bArr.length - i3);
                int length2 = this.f1744c.length - this.f1745d;
                while (length2 < i2) {
                    i4++;
                    byte[] bArr3 = this.a.get(i4);
                    int min = Math.min(i2 - length2, bArr3.length);
                    System.arraycopy(bArr3, 0, bArr2, length2, min);
                    length2 += min;
                }
                byteBuffer = ByteBuffer.wrap(bArr2);
            }
        }
        return byteBuffer.asReadOnlyBuffer();
    }

    /* JADX INFO: finally extract failed */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        int c2 = c();
        if (c2 != k0Var.c()) {
            return false;
        }
        if (c2 == 0) {
            return true;
        }
        if (o() || c2 <= this.f1744c.length - this.f1745d) {
            byte[] bArr = this.f1744c;
            int i2 = this.f1745d;
            int position = k0Var.position();
            for (int i3 = 0; i3 < c2; i3++) {
                if (bArr[i2 + i3] != k0Var.get(position + i3)) {
                    return false;
                }
            }
            return true;
        }
        int position2 = position();
        try {
            int position3 = k0Var.position();
            while (b()) {
                if (!(get() == k0Var.get(position3))) {
                    a(position2);
                    return false;
                }
                position3++;
            }
            a(position2);
            return true;
        } catch (Throwable th) {
            a(position2);
            throw th;
        }
    }

    public double f() {
        return Double.longBitsToDouble(l());
    }

    public k0 g() {
        l lVar = new l(this.f1744c, this.f1745d);
        if (this.a != null) {
            lVar.a = new ArrayList<>(this.a);
        }
        lVar.f1748g = this.f1748g;
        lVar.b = this.b;
        lVar.f1747f = this.f1747f;
        lVar.f1746e = this.f1746e;
        lVar.f1749h = this.f1749h;
        lVar.f1750i = this.f1750i;
        return lVar;
    }

    public byte get() {
        int i2 = this.f1746e;
        if (i2 != this.f1747f) {
            byte[] bArr = this.f1744c;
            int i3 = this.f1745d;
            this.f1745d = i3 + 1;
            byte b2 = bArr[i3];
            this.f1746e = i2 + 1;
            p();
            return b2;
        }
        throw new BufferUnderflowException();
    }

    public int h() {
        if (o()) {
            return this.f1745d - this.f1746e;
        }
        throw new UnsupportedOperationException("Buffer not backed by a single array");
    }

    public int hashCode() {
        int c2 = c();
        int i2 = this.b;
        int i3 = 1;
        if (i2 >= 0) {
            byte[] bArr = this.f1744c;
            int length = bArr.length;
            int i4 = this.f1745d;
            if (c2 > length - i4) {
                int c3 = c();
                int i5 = c3;
                while (true) {
                    if (i5 <= 0) {
                        break;
                    } else if (i5 <= bArr.length - i4) {
                        i4 += i5;
                        break;
                    } else {
                        i5 -= bArr.length - i4;
                        i2++;
                        bArr = this.a.get(i2);
                        i4 = 0;
                    }
                }
                while (c3 > 0) {
                    int i6 = i6 - 1;
                    i3 = (i3 * 31) + bArr[i6];
                    if (i6 == 0 && i2 > 0) {
                        i2--;
                        bArr = this.a.get(i2);
                        i6 = bArr.length;
                    }
                    c3--;
                }
                return i3;
            }
        }
        while (c2 > 0) {
            c2--;
            i3 = (i3 * 31) + this.f1744c[this.f1745d + c2];
        }
        return i3;
    }

    public k0 i() {
        int i2 = this.f1747f - this.f1746e;
        if (i2 == 0) {
            return f1742k;
        }
        l lVar = new l(this.f1744c, this.f1745d);
        lVar.a = this.a;
        lVar.b = this.b;
        lVar.f1748g = i2;
        lVar.f1747f = i2;
        lVar.f1746e = 0;
        lVar.f1750i = false;
        return lVar;
    }

    public byte[] j() {
        if (o()) {
            return this.f1744c;
        }
        throw new UnsupportedOperationException("Buffer not backed by a single array");
    }

    public float k() {
        return Float.intBitsToFloat(d());
    }

    public long l() {
        if (c() >= 8) {
            long j2 = 0;
            byte[] bArr = this.f1744c;
            int length = bArr.length;
            int i2 = this.f1745d;
            if (length - i2 >= 8) {
                int i3 = i2 + 1;
                this.f1745d = i3;
                int i4 = i3 + 1;
                this.f1745d = i4;
                int i5 = i4 + 1;
                this.f1745d = i5;
                long j3 = (((long) (bArr[i2] & 255)) << 56) | (((long) (bArr[i3] & 255)) << 48) | (((long) (bArr[i4] & 255)) << 40);
                int i6 = i5 + 1;
                this.f1745d = i6;
                int i7 = i6 + 1;
                this.f1745d = i7;
                long j4 = j3 | (((long) (bArr[i5] & 255)) << 32) | (((long) (bArr[i6] & 255)) << 24);
                int i8 = i7 + 1;
                this.f1745d = i8;
                int i9 = i8 + 1;
                this.f1745d = i9;
                long j5 = j4 | (((long) (bArr[i7] & 255)) << 16) | (((long) (bArr[i8] & 255)) << 8);
                this.f1745d = i9 + 1;
                j2 = j5 | (((long) (bArr[i9] & 255)) << 0);
                p();
            } else {
                for (int i10 = 7; i10 >= 0; i10--) {
                    byte[] bArr2 = this.f1744c;
                    int i11 = this.f1745d;
                    this.f1745d = i11 + 1;
                    j2 |= ((long) (bArr2[i11] & 255)) << (i10 * 8);
                    p();
                }
            }
            this.f1746e += 8;
            return j2;
        }
        throw new BufferUnderflowException();
    }

    public short m() {
        if (c() >= 2) {
            short s = 0;
            for (int i2 = 1; i2 >= 0; i2--) {
                byte[] bArr = this.f1744c;
                int i3 = this.f1745d;
                this.f1745d = i3 + 1;
                s = (short) (s | ((bArr[i3] & 255) << (i2 * 8)));
                p();
            }
            this.f1746e += 2;
            return s;
        }
        throw new BufferUnderflowException();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0005, code lost:
        r0 = r2.a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean o() {
        /*
            r2 = this;
            byte[] r0 = r2.f1744c
            r1 = 1
            if (r0 == 0) goto L_0x0010
            java.util.ArrayList<byte[]> r0 = r2.a
            if (r0 == 0) goto L_0x0011
            int r0 = r0.size()
            if (r0 != r1) goto L_0x0010
            goto L_0x0011
        L_0x0010:
            r1 = 0
        L_0x0011:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.l.o():boolean");
    }

    public final void p() {
        int i2;
        if (this.f1744c.length == this.f1745d && (i2 = this.b) >= 0 && i2 < this.a.size() - 1) {
            ArrayList<byte[]> arrayList = this.a;
            int i3 = this.b + 1;
            this.b = i3;
            this.f1744c = arrayList.get(i3);
            this.f1745d = 0;
        }
    }

    public int position() {
        return this.f1746e;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CompositeReadableBuffer");
        stringBuffer.append("{ pos=");
        stringBuffer.append(this.f1746e);
        stringBuffer.append(" limit=");
        stringBuffer.append(this.f1747f);
        stringBuffer.append(" capacity=");
        stringBuffer.append(this.f1748g);
        stringBuffer.append(" }");
        return stringBuffer.toString();
    }

    public l n() {
        int i2;
        if (this.f1750i && !(this.f1744c == null && this.a == null)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i2 = this.b;
                if (i3 >= i2) {
                    break;
                }
                i4 += this.a.remove(0).length;
                i3++;
            }
            int i5 = i2 - i3;
            this.b = i5;
            byte[] bArr = this.f1744c;
            if (bArr.length == this.f1745d) {
                i4 += bArr.length;
                if (i5 == 0) {
                    this.a.clear();
                    this.a = null;
                }
                this.f1744c = null;
                this.b = -1;
                this.f1745d = 0;
            }
            this.f1746e -= i4;
            int i6 = this.f1748g - i4;
            this.f1748g = i6;
            this.f1747f = i6;
            int i7 = this.f1749h;
            if (i7 != f1743l) {
                this.f1749h = i7 - i4;
            }
        }
        return this;
    }

    public k0 a(byte[] bArr) {
        a(bArr, 0, bArr.length);
        return this;
    }

    public l a(byte[] bArr, int i2, int i3) {
        int length = bArr.length;
        if ((i2 | i3) < 0) {
            throw new IndexOutOfBoundsException("offset and legnth must be non-negative");
        } else if (((long) i2) + ((long) i3) > ((long) length)) {
            throw new IndexOutOfBoundsException("target is to small for specified read size");
        } else if (i3 <= c()) {
            int i4 = 0;
            while (i3 > 0) {
                int min = Math.min(this.f1744c.length - this.f1745d, i3);
                System.arraycopy(this.f1744c, this.f1745d, bArr, i2 + i4, min);
                this.f1745d += min;
                i3 -= min;
                i4 += min;
                p();
            }
            this.f1746e += i4;
            return this;
        } else {
            throw new BufferUnderflowException();
        }
    }

    public l(byte[] bArr, int i2) {
        this.f1744c = bArr;
        this.f1745d = i2;
        if (bArr != null) {
            this.f1748g = bArr.length;
        }
        this.f1747f = this.f1748g;
    }

    public byte get(int i2) {
        if (i2 < 0 || i2 >= this.f1747f) {
            throw new IndexOutOfBoundsException(a.a("The given index is not valid: ", i2));
        }
        int i3 = this.f1746e;
        if (i2 == i3) {
            return this.f1744c[this.f1745d];
        }
        if (i2 < i3) {
            int i4 = this.b;
            int i5 = this.f1745d;
            byte[] bArr = this.f1744c;
            int i6 = i3 - i2;
            while (i6 >= 0) {
                int i7 = i5 - i6;
                if (i7 >= 0) {
                    return bArr[i7];
                }
                i6 -= i5;
                i4--;
                bArr = this.a.get(i4);
                i5 = bArr.length;
            }
        } else {
            int i8 = this.b;
            int i9 = this.f1745d;
            byte[] bArr2 = this.f1744c;
            int i10 = i2 - i3;
            while (i10 >= 0) {
                if (i10 < bArr2.length - i9) {
                    return bArr2[i9 + i10];
                }
                i10 -= bArr2.length - i9;
                i8++;
                bArr2 = this.a.get(i8);
                i9 = 0;
            }
        }
        return 0;
    }

    public boolean b() {
        return c() > 0;
    }

    public l b(byte[] bArr) {
        if (!this.f1750i) {
            throw new IllegalStateException();
        } else if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Array must not be empty or null");
        } else {
            if (this.f1744c == null) {
                this.f1744c = bArr;
                this.f1745d = 0;
            } else {
                ArrayList<byte[]> arrayList = this.a;
                if (arrayList == null) {
                    ArrayList<byte[]> arrayList2 = new ArrayList<>();
                    this.a = arrayList2;
                    arrayList2.add(this.f1744c);
                    this.a.add(bArr);
                    this.b = 0;
                    p();
                } else {
                    arrayList.add(bArr);
                    p();
                }
            }
            int length = this.f1748g + bArr.length;
            this.f1748g = length;
            this.f1747f = length;
            return this;
        }
    }

    public l(boolean z) {
        this.f1750i = z;
    }

    public l a(int i2) {
        if (i2 < 0 || i2 > this.f1747f) {
            throw new IllegalArgumentException("position must be non-negative and no greater than the limit");
        }
        int i3 = i2 - this.f1746e;
        if (i3 >= 0) {
            while (true) {
                if (i3 <= 0) {
                    break;
                }
                byte[] bArr = this.f1744c;
                int length = bArr.length;
                int i4 = this.f1745d;
                if (i3 < length - i4) {
                    this.f1745d = i4 + i3;
                    break;
                }
                i3 -= bArr.length - i4;
                int i5 = this.b;
                if (i5 == -1 || i5 >= this.a.size() - 1) {
                    this.f1745d = this.f1744c.length;
                } else {
                    ArrayList<byte[]> arrayList = this.a;
                    int i6 = this.b + 1;
                    this.b = i6;
                    this.f1744c = arrayList.get(i6);
                    this.f1745d = 0;
                }
            }
        } else {
            int abs = Math.abs(i3);
            while (true) {
                if (abs <= 0) {
                    break;
                }
                int i7 = this.f1745d;
                int i8 = i7 - abs;
                if (i8 >= 0) {
                    this.f1745d = i8;
                    break;
                }
                abs -= i7;
                ArrayList<byte[]> arrayList2 = this.a;
                int i9 = this.b - 1;
                this.b = i9;
                byte[] bArr2 = arrayList2.get(i9);
                this.f1744c = bArr2;
                this.f1745d = bArr2.length;
            }
        }
        this.f1746e = i2;
        if (this.f1749h > i2) {
            this.f1749h = f1743l;
        }
        return this;
    }

    public int a() {
        return this.f1747f;
    }

    public String a(CharsetDecoder charsetDecoder) {
        CharBuffer charBuffer;
        CoderResult decode;
        if (!b()) {
            return "";
        }
        if (o()) {
            charBuffer = charsetDecoder.decode(ByteBuffer.wrap(this.f1744c, this.f1745d, c()));
        } else {
            int averageCharsPerByte = (int) (charsetDecoder.averageCharsPerByte() * ((float) c()));
            CharBuffer allocate = CharBuffer.allocate(averageCharsPerByte);
            int i2 = this.b;
            int i3 = this.f1747f - this.f1746e;
            int min = Math.min(this.f1744c.length - this.f1745d, i3);
            ByteBuffer wrap = ByteBuffer.wrap(this.f1744c, this.f1745d, min);
            CoderResult coderResult = CoderResult.OVERFLOW;
            while (true) {
                boolean z = min == i3;
                decode = charsetDecoder.decode(wrap, allocate, z);
                if (decode.isUnderflow() && z) {
                    decode = charsetDecoder.flush(allocate);
                    break;
                }
                if (decode.isOverflow()) {
                    averageCharsPerByte = (averageCharsPerByte * 2) + 1;
                    CharBuffer allocate2 = CharBuffer.allocate(averageCharsPerByte);
                    allocate.flip();
                    allocate2.put(allocate);
                    allocate = allocate2;
                } else {
                    i2++;
                    byte[] bArr = this.a.get(i2);
                    int min2 = Math.min(bArr.length, i3 - min);
                    wrap = ByteBuffer.wrap(bArr, 0, min2);
                    min += min2;
                }
                if (decode.isError()) {
                    break;
                }
            }
            if (decode.isError()) {
                decode.throwException();
            }
            charBuffer = (CharBuffer) allocate.flip();
        }
        return charBuffer.toString();
    }
}
