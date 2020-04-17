package k.b.f.a;

import com.microsoft.identity.common.internal.eststelemetry.Schema;
import java.math.BigInteger;

public class e implements Cloneable {
    public static final short[] y = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};
    public static final byte[] z = {0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};
    public long[] x;

    public e(int i2) {
        this.x = new long[i2];
    }

    public e(BigInteger bigInteger) {
        int i2;
        if (bigInteger == null || bigInteger.signum() < 0) {
            throw new IllegalArgumentException("invalid F2m field value");
        } else if (bigInteger.signum() == 0) {
            this.x = new long[]{0};
        } else {
            byte[] byteArray = bigInteger.toByteArray();
            int length = byteArray.length;
            if (byteArray[0] == 0) {
                length--;
                i2 = 1;
            } else {
                i2 = 0;
            }
            int i3 = (length + 7) / 8;
            this.x = new long[i3];
            int i4 = i3 - 1;
            int i5 = (length % 8) + i2;
            if (i2 < i5) {
                long j2 = 0;
                while (i2 < i5) {
                    j2 = (j2 << 8) | ((long) (byteArray[i2] & 255));
                    i2++;
                }
                this.x[i4] = j2;
                i4--;
            }
            while (i4 >= 0) {
                long j3 = 0;
                int i6 = 0;
                while (i6 < 8) {
                    j3 = (j3 << 8) | ((long) (byteArray[i2] & 255));
                    i6++;
                    i2++;
                }
                this.x[i4] = j3;
                i4--;
            }
        }
    }

    public e(long[] jArr) {
        this.x = jArr;
    }

    public e(long[] jArr, int i2, int i3) {
        if (i2 == 0 && i3 == jArr.length) {
            this.x = jArr;
            return;
        }
        long[] jArr2 = new long[i3];
        this.x = jArr2;
        System.arraycopy(jArr, i2, jArr2, 0, i3);
    }

    /* JADX WARNING: type inference failed for: r3v11, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r3v12, types: [byte] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=byte, code=int, for r3v12, types: [byte] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(long r3) {
        /*
            r0 = 32
            long r1 = r3 >>> r0
            int r2 = (int) r1
            if (r2 != 0) goto L_0x0009
            int r2 = (int) r3
            r0 = 0
        L_0x0009:
            int r3 = r2 >>> 16
            if (r3 != 0) goto L_0x001d
            int r3 = r2 >>> 8
            if (r3 != 0) goto L_0x0016
            byte[] r3 = z
            byte r3 = r3[r2]
            goto L_0x002e
        L_0x0016:
            byte[] r4 = z
            byte r3 = r4[r3]
            int r3 = r3 + 8
            goto L_0x002e
        L_0x001d:
            int r4 = r3 >>> 8
            if (r4 != 0) goto L_0x0028
            byte[] r4 = z
            byte r3 = r4[r3]
            int r3 = r3 + 16
            goto L_0x002e
        L_0x0028:
            byte[] r3 = z
            byte r3 = r3[r4]
            int r3 = r3 + 24
        L_0x002e:
            int r0 = r0 + r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.f.a.e.a(long):int");
    }

    public static long a(long[] jArr, int i2, long[] jArr2, int i3, int i4, int i5) {
        int i6 = 64 - i5;
        long j2 = 0;
        int i7 = i4;
        for (int i8 = 0; i8 < i7; i8++) {
            long j3 = jArr2[i3 + i8];
            int i9 = i2 + i8;
            jArr[i9] = (j2 | (j3 << i5)) ^ jArr[i9];
            j2 = j3 >>> i6;
        }
        return j2;
    }

    public static void a(long[] jArr, int i2, int i3) {
        int i4 = i2 + (i3 >>> 6);
        jArr[i4] = jArr[i4] ^ (1 << (i3 & 63));
    }

    public static void a(long[] jArr, int i2, int i3, int i4, int[] iArr) {
        a(jArr, i2, i3);
        int i5 = i3 - i4;
        int length = iArr.length;
        while (true) {
            length--;
            if (length >= 0) {
                a(jArr, i2, iArr[length] + i5);
            } else {
                a(jArr, i2, i5);
                return;
            }
        }
    }

    public static void a(long[] jArr, int i2, int i3, long j2) {
        int i4 = i2 + (i3 >>> 6);
        int i5 = i3 & 63;
        if (i5 == 0) {
            jArr[i4] = jArr[i4] ^ j2;
            return;
        }
        jArr[i4] = jArr[i4] ^ (j2 << i5);
        long j3 = j2 >>> (64 - i5);
        if (j3 != 0) {
            int i6 = i4 + 1;
            jArr[i6] = j3 ^ jArr[i6];
        }
    }

    public static void a(long[] jArr, int i2, long[] jArr2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + i5;
            jArr[i6] = jArr[i6] ^ jArr2[i3 + i5];
        }
    }

    public static long b(int i2) {
        short[] sArr = y;
        short s = sArr[i2 & 255] | (sArr[(i2 >>> 8) & 255] << 16);
        short s2 = sArr[(i2 >>> 16) & 255];
        return (((long) s) & 4294967295L) | ((((long) ((sArr[i2 >>> 24] << 16) | s2)) & 4294967295L) << 32);
    }

    public static void b(long[] jArr, int i2, long[] jArr2, int i3, int i4, int i5) {
        long[] jArr3 = jArr;
        long[] jArr4 = jArr2;
        int i6 = i3;
        int i7 = i2 + (i5 >>> 6);
        int i8 = i5 & 63;
        int i9 = i4;
        if (i8 == 0) {
            a(jArr3, i7, jArr4, i6, i9);
            return;
        }
        int i10 = i7 + 1;
        int i11 = 64 - i8;
        int i12 = 64 - i11;
        long j2 = 0;
        while (true) {
            i9--;
            if (i9 >= 0) {
                long j3 = jArr4[i6 + i9];
                int i13 = i10 + i9;
                jArr3[i13] = (j2 | (j3 >>> i11)) ^ jArr3[i13];
                j2 = j3 << i12;
            } else {
                jArr3[i7] = jArr3[i7] ^ j2;
                return;
            }
        }
    }

    public static long c(long[] jArr, int i2, long[] jArr2, int i3, int i4, int i5) {
        int i6 = 64 - i5;
        long j2 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            long j3 = jArr[i2 + i7];
            jArr2[i3 + i7] = j2 | (j3 << i5);
            j2 = j3 >>> i6;
        }
        return j2;
    }

    public int a() {
        int length = this.x.length;
        while (length != 0) {
            length--;
            long j2 = this.x[length];
            if (j2 != 0) {
                return a(j2) + (length << 6);
            }
        }
        return 0;
    }

    public final int a(int i2) {
        int i3 = (i2 + 62) >>> 6;
        while (i3 != 0) {
            i3--;
            long j2 = this.x[i3];
            if (j2 != 0) {
                return a(j2) + (i3 << 6);
            }
        }
        return 0;
    }

    public final void a(e eVar, int i2, int i3) {
        int i4 = (i2 + 63) >>> 6;
        int i5 = i3 >>> 6;
        int i6 = i3 & 63;
        if (i6 == 0) {
            a(this.x, i5, eVar.x, 0, i4);
            return;
        }
        long a = a(this.x, i5, eVar.x, 0, i4, i6);
        if (a != 0) {
            long[] jArr = this.x;
            int i7 = i4 + i5;
            jArr[i7] = a ^ jArr[i7];
        }
    }

    public Object clone() {
        long[] jArr = this.x;
        return new e(jArr == null ? null : (long[]) jArr.clone());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        int b = b();
        if (eVar.b() != b) {
            return false;
        }
        for (int i2 = 0; i2 < b; i2++) {
            if (this.x[i2] != eVar.x[i2]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int b = b();
        int i2 = 1;
        for (int i3 = 0; i3 < b; i3++) {
            long j2 = this.x[i3];
            i2 = (((i2 * 31) ^ ((int) j2)) * 31) ^ ((int) (j2 >>> 32));
        }
        return i2;
    }

    public String toString() {
        int b = b();
        if (b == 0) {
            return Schema.Value.FALSE;
        }
        int i2 = b - 1;
        StringBuffer stringBuffer = new StringBuffer(Long.toBinaryString(this.x[i2]));
        while (true) {
            i2--;
            if (i2 < 0) {
                return stringBuffer.toString();
            }
            String binaryString = Long.toBinaryString(this.x[i2]);
            int length = binaryString.length();
            if (length < 64) {
                stringBuffer.append("0000000000000000000000000000000000000000000000000000000000000000".substring(length));
            }
            stringBuffer.append(binaryString);
        }
    }

    public int b() {
        long[] jArr = this.x;
        int min = Math.min(jArr.length, jArr.length);
        if (min < 1) {
            return 0;
        }
        if (jArr[0] != 0) {
            do {
                min--;
            } while (jArr[min] == 0);
        } else {
            do {
                min--;
                if (jArr[min] != 0) {
                }
            } while (min > 0);
            return 0;
        }
        return min + 1;
    }

    public static int b(long[] jArr, int i2, int i3, int i4, int[] iArr) {
        long[] jArr2 = jArr;
        int i5 = i2;
        int i6 = i3;
        int i7 = i4;
        int[] iArr2 = iArr;
        int i8 = (i7 + 63) >>> 6;
        if (i6 < i8) {
            return i6;
        }
        int i9 = i6 << 6;
        int min = Math.min(i9, (i7 << 1) - 1);
        int i10 = i9 - min;
        int i11 = i6;
        while (i10 >= 64) {
            i11--;
            i10 -= 64;
        }
        int length = iArr2.length;
        int i12 = iArr2[length - 1];
        int i13 = length > 1 ? iArr2[length - 2] : 0;
        int max = Math.max(i7, i12 + 64);
        int min2 = (Math.min(min - max, i7 - i13) + i10) >> 6;
        if (min2 > 1) {
            int i14 = i11 - min2;
            int i15 = i14 << 6;
            int i16 = i15 - i7;
            int length2 = iArr2.length;
            while (true) {
                int i17 = length2 - 1;
                if (i17 < 0) {
                    break;
                }
                b(jArr, i2, jArr, i5 + i14, i11 - i14, i16 + iArr2[i17]);
                i14 = i14;
                length2 = i17;
            }
            int i18 = i14;
            b(jArr, i2, jArr, i5 + i18, i11 - i18, i16);
            while (i11 > i18) {
                i11--;
                jArr2[i5 + i11] = 0;
            }
            min = i15;
        }
        if (min > max) {
            int i19 = max >>> 6;
            while (true) {
                i11--;
                if (i11 <= i19) {
                    break;
                }
                int i20 = i5 + i11;
                long j2 = jArr2[i20];
                if (j2 != 0) {
                    jArr2[i20] = 0;
                    int i21 = (i11 << 6) - i7;
                    int length3 = iArr2.length;
                    while (true) {
                        length3--;
                        if (length3 < 0) {
                            break;
                        }
                        a(jArr2, i5, iArr2[length3] + i21, j2);
                    }
                    a(jArr2, i5, i21, j2);
                }
            }
            int i22 = max & 63;
            int i23 = i19 + i5;
            long j3 = jArr2[i23] >>> i22;
            if (j3 != 0) {
                jArr2[i23] = jArr2[i23] ^ (j3 << i22);
                int i24 = max - i7;
                int length4 = iArr2.length;
                while (true) {
                    length4--;
                    if (length4 < 0) {
                        break;
                    }
                    a(jArr2, i5, iArr2[length4] + i24, j3);
                }
                a(jArr2, i5, i24, j3);
            }
        } else {
            max = min;
        }
        if (max > i7) {
            while (true) {
                max--;
                if (max < i7) {
                    break;
                }
                if ((jArr2[(max >>> 6) + i5] & (1 << (max & 63))) != 0) {
                    a(jArr2, i5, max, i7, iArr2);
                }
            }
        }
        return i8;
    }
}
