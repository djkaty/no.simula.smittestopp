package d.i.c;

import android.graphics.Path;
import android.util.Log;
import d.b.a.r;

public class b {
    public char a;
    public float[] b;

    public b(char c2, float[] fArr) {
        this.a = c2;
        this.b = fArr;
    }

    public static void a(b[] bVarArr, Path path) {
        int i2;
        float f2;
        float f3;
        int i3;
        int i4;
        float[] fArr;
        char c2;
        int i5;
        float[] fArr2;
        char c3;
        int i6;
        float f4;
        float f5;
        float f6;
        float f7;
        int i7;
        float f8;
        float f9;
        int i8;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        b[] bVarArr2 = bVarArr;
        Path path2 = path;
        float[] fArr3 = new float[6];
        char c4 = 'm';
        char c5 = 0;
        char c6 = 'm';
        int i9 = 0;
        while (i9 < bVarArr2.length) {
            char c7 = bVarArr2[i9].a;
            float[] fArr4 = bVarArr2[i9].b;
            float f25 = fArr3[c5];
            float f26 = fArr3[1];
            float f27 = fArr3[2];
            float f28 = fArr3[3];
            float f29 = fArr3[4];
            float f30 = fArr3[5];
            switch (c7) {
                case 'A':
                case 'a':
                    i2 = 7;
                    break;
                case 'C':
                case 'c':
                    i2 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i2 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i2 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path2.moveTo(f29, f30);
                    f25 = f29;
                    f27 = f25;
                    f26 = f30;
                    f28 = f26;
                    break;
            }
            i2 = 2;
            float f31 = f29;
            float f32 = f30;
            float f33 = f25;
            float f34 = f26;
            int i10 = 0;
            while (i10 < fArr4.length) {
                if (c7 != 'A') {
                    if (c7 != 'C') {
                        if (c7 == 'H') {
                            i3 = i10;
                            fArr = fArr4;
                            c2 = c7;
                            i4 = i9;
                            int i11 = i3 + 0;
                            path2.lineTo(fArr[i11], f34);
                            f33 = fArr[i11];
                        } else if (c7 == 'Q') {
                            i7 = i10;
                            fArr = fArr4;
                            c2 = c7;
                            i4 = i9;
                            int i12 = i7 + 0;
                            int i13 = i7 + 1;
                            int i14 = i7 + 2;
                            int i15 = i7 + 3;
                            path2.quadTo(fArr[i12], fArr[i13], fArr[i14], fArr[i15]);
                            f7 = fArr[i12];
                            f6 = fArr[i13];
                            f33 = fArr[i14];
                            f34 = fArr[i15];
                        } else if (c7 == 'V') {
                            i3 = i10;
                            fArr = fArr4;
                            c2 = c7;
                            i4 = i9;
                            int i16 = i3 + 0;
                            path2.lineTo(f33, fArr[i16]);
                            f34 = fArr[i16];
                        } else if (c7 != 'a') {
                            if (c7 != 'c') {
                                if (c7 == 'h') {
                                    i3 = i10;
                                    float f35 = f34;
                                    int i17 = i3 + 0;
                                    path2.rLineTo(fArr4[i17], 0.0f);
                                    f33 += fArr4[i17];
                                } else if (c7 != 'q') {
                                    if (c7 == 'v') {
                                        i3 = i10;
                                        f15 = f34;
                                        float f36 = f33;
                                        int i18 = i3 + 0;
                                        path2.rLineTo(0.0f, fArr4[i18]);
                                        f16 = fArr4[i18];
                                    } else if (c7 != 'L') {
                                        if (c7 == 'M') {
                                            i3 = i10;
                                            int i19 = i3 + 0;
                                            float f37 = fArr4[i19];
                                            int i20 = i3 + 1;
                                            float f38 = fArr4[i20];
                                            if (i3 > 0) {
                                                path2.lineTo(fArr4[i19], fArr4[i20]);
                                                f33 = f37;
                                                f34 = f38;
                                            } else {
                                                path2.moveTo(fArr4[i19], fArr4[i20]);
                                                f33 = f37;
                                                f34 = f38;
                                            }
                                        } else if (c7 == 'S') {
                                            i8 = i10;
                                            float f39 = f34;
                                            float f40 = f33;
                                            if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                f17 = (f39 * 2.0f) - f2;
                                                f18 = (f40 * 2.0f) - f3;
                                            } else {
                                                f18 = f40;
                                                f17 = f39;
                                            }
                                            int i21 = i8 + 0;
                                            int i22 = i8 + 1;
                                            int i23 = i8 + 2;
                                            int i24 = i8 + 3;
                                            path.cubicTo(f18, f17, fArr4[i21], fArr4[i22], fArr4[i23], fArr4[i24]);
                                            float f41 = fArr4[i21];
                                            float f42 = fArr4[i22];
                                            f9 = fArr4[i23];
                                            f8 = fArr4[i24];
                                            f3 = f41;
                                            f2 = f42;
                                            f33 = f9;
                                            f34 = f8;
                                        } else if (c7 == 'T') {
                                            i3 = i10;
                                            float f43 = f34;
                                            float f44 = f33;
                                            if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                f19 = (f44 * 2.0f) - f3;
                                                f20 = (f43 * 2.0f) - f2;
                                            } else {
                                                f19 = f44;
                                                f20 = f43;
                                            }
                                            int i25 = i3 + 0;
                                            int i26 = i3 + 1;
                                            path2.quadTo(f19, f20, fArr4[i25], fArr4[i26]);
                                            f2 = f20;
                                            f3 = f19;
                                            fArr = fArr4;
                                            c2 = c7;
                                            i4 = i9;
                                            f33 = fArr4[i25];
                                            f34 = fArr4[i26];
                                        } else if (c7 == 'l') {
                                            i3 = i10;
                                            f15 = f34;
                                            int i27 = i3 + 0;
                                            int i28 = i3 + 1;
                                            path2.rLineTo(fArr4[i27], fArr4[i28]);
                                            f33 += fArr4[i27];
                                            f16 = fArr4[i28];
                                        } else if (c7 == c4) {
                                            i3 = i10;
                                            int i29 = i3 + 0;
                                            f33 += fArr4[i29];
                                            int i30 = i3 + 1;
                                            f34 += fArr4[i30];
                                            if (i3 > 0) {
                                                path2.rLineTo(fArr4[i29], fArr4[i30]);
                                            } else {
                                                path2.rMoveTo(fArr4[i29], fArr4[i30]);
                                            }
                                        } else if (c7 != 's') {
                                            if (c7 == 't') {
                                                if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                    f23 = f33 - f3;
                                                    f24 = f34 - f2;
                                                } else {
                                                    f24 = 0.0f;
                                                    f23 = 0;
                                                }
                                                int i31 = i10 + 0;
                                                int i32 = i10 + 1;
                                                path2.rQuadTo(f23, f24, fArr4[i31], fArr4[i32]);
                                                f3 = f23 + f33;
                                                float f45 = f24 + f34;
                                                f33 += fArr4[i31];
                                                f34 += fArr4[i32];
                                                f2 = f45;
                                            }
                                            i3 = i10;
                                        } else {
                                            if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                f21 = f34 - f2;
                                                f22 = f33 - f3;
                                            } else {
                                                f22 = 0.0f;
                                                f21 = 0.0f;
                                            }
                                            int i33 = i10 + 0;
                                            int i34 = i10 + 1;
                                            int i35 = i10 + 2;
                                            int i36 = i10 + 3;
                                            i8 = i10;
                                            f10 = f34;
                                            float f46 = f33;
                                            path.rCubicTo(f22, f21, fArr4[i33], fArr4[i34], fArr4[i35], fArr4[i36]);
                                            f13 = fArr4[i33] + f46;
                                            f12 = fArr4[i34] + f10;
                                            f11 = f46 + fArr4[i35];
                                            f14 = fArr4[i36];
                                        }
                                        f32 = f34;
                                        f31 = f33;
                                    } else {
                                        i3 = i10;
                                        int i37 = i3 + 0;
                                        int i38 = i3 + 1;
                                        path2.lineTo(fArr4[i37], fArr4[i38]);
                                        f33 = fArr4[i37];
                                        f34 = fArr4[i38];
                                    }
                                    f34 = f15 + f16;
                                } else {
                                    i8 = i10;
                                    f10 = f34;
                                    float f47 = f33;
                                    int i39 = i8 + 0;
                                    int i40 = i8 + 1;
                                    int i41 = i8 + 2;
                                    int i42 = i8 + 3;
                                    path2.rQuadTo(fArr4[i39], fArr4[i40], fArr4[i41], fArr4[i42]);
                                    f13 = fArr4[i39] + f47;
                                    f12 = fArr4[i40] + f10;
                                    float f48 = f47 + fArr4[i41];
                                    float f49 = fArr4[i42];
                                    f11 = f48;
                                    f14 = f49;
                                }
                                fArr = fArr4;
                                c2 = c7;
                                i4 = i9;
                            } else {
                                i8 = i10;
                                f10 = f34;
                                float f50 = f33;
                                int i43 = i8 + 2;
                                int i44 = i8 + 3;
                                int i45 = i8 + 4;
                                int i46 = i8 + 5;
                                path.rCubicTo(fArr4[i8 + 0], fArr4[i8 + 1], fArr4[i43], fArr4[i44], fArr4[i45], fArr4[i46]);
                                f13 = fArr4[i43] + f50;
                                f12 = fArr4[i44] + f10;
                                f11 = f50 + fArr4[i45];
                                f14 = fArr4[i46];
                            }
                            f8 = f10 + f14;
                            f3 = f13;
                            f2 = f12;
                            f9 = f11;
                            f33 = f9;
                            f34 = f8;
                            fArr = fArr4;
                            c2 = c7;
                            i4 = i9;
                        } else {
                            i5 = i10;
                            float f51 = f34;
                            float f52 = f33;
                            int i47 = i5 + 5;
                            float f53 = fArr4[i47] + f52;
                            int i48 = i5 + 6;
                            float f54 = fArr4[i48] + f51;
                            float f55 = fArr4[i5 + 0];
                            float f56 = fArr4[i5 + 1];
                            float f57 = fArr4[i5 + 2];
                            boolean z = fArr4[i5 + 3] != 0.0f;
                            boolean z2 = fArr4[i5 + 4] != 0.0f;
                            fArr2 = fArr4;
                            float f58 = f57;
                            c3 = c7;
                            i6 = i9;
                            a(path, f52, f51, f53, f54, f55, f56, f58, z, z2);
                            f4 = f52 + fArr2[i47];
                            f5 = f51 + fArr2[i48];
                        }
                        i10 = i3 + i2;
                        c4 = 'm';
                        b[] bVarArr3 = bVarArr;
                        c6 = c2;
                        c7 = c6;
                        fArr4 = fArr;
                        i9 = i4;
                    } else {
                        i7 = i10;
                        fArr = fArr4;
                        c2 = c7;
                        i4 = i9;
                        int i49 = i7 + 2;
                        int i50 = i7 + 3;
                        int i51 = i7 + 4;
                        int i52 = i7 + 5;
                        path.cubicTo(fArr[i7 + 0], fArr[i7 + 1], fArr[i49], fArr[i50], fArr[i51], fArr[i52]);
                        f33 = fArr[i51];
                        f34 = fArr[i52];
                        f7 = fArr[i49];
                        f6 = fArr[i50];
                    }
                    f3 = f7;
                    f2 = f6;
                    i10 = i3 + i2;
                    c4 = 'm';
                    b[] bVarArr32 = bVarArr;
                    c6 = c2;
                    c7 = c6;
                    fArr4 = fArr;
                    i9 = i4;
                } else {
                    i5 = i10;
                    fArr2 = fArr4;
                    c3 = c7;
                    i6 = i9;
                    int i53 = i5 + 5;
                    int i54 = i5 + 6;
                    a(path, f33, f34, fArr2[i53], fArr2[i54], fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i5 + 2], fArr2[i5 + 3] != 0.0f, fArr2[i5 + 4] != 0.0f);
                    f4 = fArr2[i53];
                    f5 = fArr2[i54];
                }
                f2 = f34;
                f3 = f33;
                i10 = i3 + i2;
                c4 = 'm';
                b[] bVarArr322 = bVarArr;
                c6 = c2;
                c7 = c6;
                fArr4 = fArr;
                i9 = i4;
            }
            int i55 = i9;
            fArr3[0] = f33;
            fArr3[1] = f34;
            fArr3[2] = f3;
            fArr3[3] = f2;
            fArr3[4] = f31;
            fArr3[5] = f32;
            i9 = i55 + 1;
            c6 = bVarArr[i55].a;
            c4 = 'm';
            c5 = 0;
            bVarArr2 = bVarArr;
        }
    }

    public b(b bVar) {
        this.a = bVar.a;
        float[] fArr = bVar.b;
        this.b = r.a(fArr, 0, fArr.length);
    }

    public static void a(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
        double d2;
        double d3;
        float f9 = f2;
        float f10 = f4;
        float f11 = f6;
        boolean z3 = z2;
        double radians = Math.toRadians((double) f8);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d4 = (double) f9;
        double d5 = (double) f3;
        double d6 = (d5 * sin) + (d4 * cos);
        double d7 = d4;
        double d8 = (double) f11;
        double d9 = d6 / d8;
        double d10 = radians;
        double d11 = (double) f7;
        double d12 = ((d5 * cos) + (((double) (-f9)) * sin)) / d11;
        double d13 = d5;
        double d14 = (double) f5;
        double d15 = ((d14 * sin) + (((double) f10) * cos)) / d8;
        double d16 = ((d14 * cos) + (((double) (-f10)) * sin)) / d11;
        double d17 = d9 - d15;
        double d18 = d12 - d16;
        double d19 = (d9 + d15) / 2.0d;
        double d20 = (d12 + d16) / 2.0d;
        double d21 = sin;
        double d22 = (d18 * d18) + (d17 * d17);
        if (d22 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d23 = (1.0d / d22) - 0.25d;
        if (d23 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d22);
            float sqrt = (float) (Math.sqrt(d22) / 1.99999d);
            a(path, f2, f3, f4, f5, f11 * sqrt, f7 * sqrt, f8, z, z2);
            return;
        }
        double sqrt2 = Math.sqrt(d23);
        double d24 = d17 * sqrt2;
        double d25 = sqrt2 * d18;
        if (z == z3) {
            d3 = d19 - d25;
            d2 = d20 + d24;
        } else {
            d3 = d19 + d25;
            d2 = d20 - d24;
        }
        double atan2 = Math.atan2(d12 - d2, d9 - d3);
        double atan22 = Math.atan2(d16 - d2, d15 - d3) - atan2;
        int i2 = 0;
        int i3 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
        if (z3 != (i3 >= 0)) {
            atan22 = i3 > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d26 = d3 * d8;
        double d27 = d2 * d11;
        double d28 = (d26 * cos) - (d27 * d21);
        double d29 = (d27 * cos) + (d26 * d21);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(d10);
        double sin2 = Math.sin(d10);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d30 = -d8;
        double d31 = d30 * cos2;
        double d32 = d11 * sin2;
        double d33 = (d31 * sin3) - (d32 * cos3);
        double d34 = d30 * sin2;
        double d35 = d11 * cos2;
        double d36 = (cos3 * d35) + (sin3 * d34);
        double d37 = atan22 / ((double) ceil);
        double d38 = atan2;
        while (i2 < ceil) {
            double d39 = d38 + d37;
            double sin4 = Math.sin(d39);
            double cos4 = Math.cos(d39);
            double d40 = d37;
            double d41 = (((d8 * cos2) * cos4) + d28) - (d32 * sin4);
            double d42 = d28;
            double d43 = (d35 * sin4) + (d8 * sin2 * cos4) + d29;
            double d44 = (d31 * sin4) - (d32 * cos4);
            double d45 = (cos4 * d35) + (sin4 * d34);
            double d46 = d39 - d38;
            double tan = Math.tan(d46 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d46)) / 3.0d;
            double d47 = (d33 * sqrt3) + d7;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) d47, (float) ((d36 * sqrt3) + d13), (float) (d41 - (sqrt3 * d44)), (float) (d43 - (sqrt3 * d45)), (float) d41, (float) d43);
            i2++;
            d35 = d35;
            d34 = d34;
            ceil = ceil;
            cos2 = cos2;
            d38 = d39;
            d8 = d8;
            d36 = d45;
            d33 = d44;
            d7 = d41;
            d13 = d43;
            d37 = d40;
            d28 = d42;
        }
    }
}
