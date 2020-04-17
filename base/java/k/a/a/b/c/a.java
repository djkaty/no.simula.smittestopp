package k.a.a.b.c;

import java.util.Comparator;

public class a {
    public int a = 0;

    public a a(Object obj, Object obj2, Comparator<?> comparator) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if (this.a != 0 || obj == obj2) {
            return this;
        }
        int i10 = -1;
        if (obj == null) {
            this.a = -1;
            return this;
        } else if (obj2 == null) {
            this.a = 1;
            return this;
        } else {
            if (obj.getClass().isArray()) {
                int i11 = 0;
                if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    long[] jArr2 = (long[]) obj2;
                    if (this.a == 0 && jArr != jArr2) {
                        if (jArr.length != jArr2.length) {
                            if (jArr.length >= jArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            for (int i12 = 0; i12 < jArr.length && (i9 = this.a) == 0; i12++) {
                                long j2 = jArr[i12];
                                long j3 = jArr2[i12];
                                if (i9 == 0) {
                                    int i13 = (j2 > j3 ? 1 : (j2 == j3 ? 0 : -1));
                                    this.a = i13 < 0 ? -1 : i13 > 0 ? 1 : 0;
                                }
                            }
                        }
                    }
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    int[] iArr2 = (int[]) obj2;
                    if (this.a == 0 && iArr != iArr2) {
                        if (iArr.length != iArr2.length) {
                            if (iArr.length >= iArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            for (int i14 = 0; i14 < iArr.length && (i8 = this.a) == 0; i14++) {
                                int i15 = iArr[i14];
                                int i16 = iArr2[i14];
                                if (i8 == 0) {
                                    this.a = i15 < i16 ? -1 : i15 > i16 ? 1 : 0;
                                }
                            }
                        }
                    }
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    short[] sArr2 = (short[]) obj2;
                    if (this.a == 0 && sArr != sArr2) {
                        if (sArr.length != sArr2.length) {
                            if (sArr.length >= sArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            for (int i17 = 0; i17 < sArr.length && (i7 = this.a) == 0; i17++) {
                                short s = sArr[i17];
                                short s2 = sArr2[i17];
                                if (i7 == 0) {
                                    this.a = s < s2 ? -1 : s > s2 ? 1 : 0;
                                }
                            }
                        }
                    }
                } else if (obj instanceof char[]) {
                    char[] cArr = (char[]) obj;
                    char[] cArr2 = (char[]) obj2;
                    if (this.a == 0 && cArr != cArr2) {
                        if (cArr.length != cArr2.length) {
                            if (cArr.length >= cArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            for (int i18 = 0; i18 < cArr.length && (i6 = this.a) == 0; i18++) {
                                char c2 = cArr[i18];
                                char c3 = cArr2[i18];
                                if (i6 == 0) {
                                    this.a = c2 < c3 ? -1 : c2 > c3 ? 1 : 0;
                                }
                            }
                        }
                    }
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = (byte[]) obj2;
                    if (this.a == 0 && bArr != bArr2) {
                        if (bArr.length != bArr2.length) {
                            if (bArr.length >= bArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            for (int i19 = 0; i19 < bArr.length && (i5 = this.a) == 0; i19++) {
                                byte b = bArr[i19];
                                byte b2 = bArr2[i19];
                                if (i5 == 0) {
                                    this.a = b < b2 ? -1 : b > b2 ? 1 : 0;
                                }
                            }
                        }
                    }
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    double[] dArr2 = (double[]) obj2;
                    if (this.a == 0 && dArr != dArr2) {
                        if (dArr.length != dArr2.length) {
                            if (dArr.length >= dArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            while (i11 < dArr.length && (i4 = this.a) == 0) {
                                double d2 = dArr[i11];
                                double d3 = dArr2[i11];
                                if (i4 == 0) {
                                    this.a = Double.compare(d2, d3);
                                }
                                i11++;
                            }
                        }
                    }
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    float[] fArr2 = (float[]) obj2;
                    if (this.a == 0 && fArr != fArr2) {
                        if (fArr.length != fArr2.length) {
                            if (fArr.length >= fArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            while (i11 < fArr.length && (i3 = this.a) == 0) {
                                float f2 = fArr[i11];
                                float f3 = fArr2[i11];
                                if (i3 == 0) {
                                    this.a = Float.compare(f2, f3);
                                }
                                i11++;
                            }
                        }
                    }
                } else if (obj instanceof boolean[]) {
                    boolean[] zArr = (boolean[]) obj;
                    boolean[] zArr2 = (boolean[]) obj2;
                    if (this.a == 0 && zArr != zArr2) {
                        if (zArr.length != zArr2.length) {
                            if (zArr.length >= zArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            while (i11 < zArr.length && (i2 = this.a) == 0) {
                                boolean z = zArr[i11];
                                boolean z2 = zArr2[i11];
                                if (i2 == 0 && z != z2) {
                                    if (!z) {
                                        this.a = -1;
                                    } else {
                                        this.a = 1;
                                    }
                                }
                                i11++;
                            }
                        }
                    }
                } else {
                    Object[] objArr = (Object[]) obj;
                    Object[] objArr2 = (Object[]) obj2;
                    if (this.a == 0 && objArr != objArr2) {
                        if (objArr.length != objArr2.length) {
                            if (objArr.length >= objArr2.length) {
                                i10 = 1;
                            }
                            this.a = i10;
                        } else {
                            while (i11 < objArr.length && this.a == 0) {
                                a(objArr[i11], objArr2[i11], comparator);
                                i11++;
                            }
                        }
                    }
                }
            } else if (comparator == null) {
                this.a = ((Comparable) obj).compareTo(obj2);
            } else {
                this.a = comparator.compare(obj, obj2);
            }
            return this;
        }
    }
}
