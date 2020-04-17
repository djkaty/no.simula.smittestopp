package d.g.a;

import d.g.a.g;
import java.util.Arrays;

public class a {
    public int a = 0;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public final c f434c;

    /* renamed from: d  reason: collision with root package name */
    public int f435d = 8;

    /* renamed from: e  reason: collision with root package name */
    public g f436e = null;

    /* renamed from: f  reason: collision with root package name */
    public int[] f437f = new int[8];

    /* renamed from: g  reason: collision with root package name */
    public int[] f438g = new int[8];

    /* renamed from: h  reason: collision with root package name */
    public float[] f439h = new float[8];

    /* renamed from: i  reason: collision with root package name */
    public int f440i = -1;

    /* renamed from: j  reason: collision with root package name */
    public int f441j = -1;

    /* renamed from: k  reason: collision with root package name */
    public boolean f442k = false;

    public a(b bVar, c cVar) {
        this.b = bVar;
        this.f434c = cVar;
    }

    public final void a(g gVar, float f2) {
        if (f2 == 0.0f) {
            a(gVar, true);
            return;
        }
        int i2 = this.f440i;
        if (i2 == -1) {
            this.f440i = 0;
            this.f439h[0] = f2;
            this.f437f[0] = gVar.b;
            this.f438g[0] = -1;
            gVar.f465j++;
            gVar.a(this.b);
            this.a++;
            if (!this.f442k) {
                int i3 = this.f441j + 1;
                this.f441j = i3;
                int[] iArr = this.f437f;
                if (i3 >= iArr.length) {
                    this.f442k = true;
                    this.f441j = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i4 = 0;
        int i5 = -1;
        while (i2 != -1 && i4 < this.a) {
            int[] iArr2 = this.f437f;
            int i6 = iArr2[i2];
            int i7 = gVar.b;
            if (i6 == i7) {
                this.f439h[i2] = f2;
                return;
            }
            if (iArr2[i2] < i7) {
                i5 = i2;
            }
            i2 = this.f438g[i2];
            i4++;
        }
        int i8 = this.f441j;
        int i9 = i8 + 1;
        if (this.f442k) {
            int[] iArr3 = this.f437f;
            if (iArr3[i8] != -1) {
                i8 = iArr3.length;
            }
        } else {
            i8 = i9;
        }
        int[] iArr4 = this.f437f;
        if (i8 >= iArr4.length && this.a < iArr4.length) {
            int i10 = 0;
            while (true) {
                int[] iArr5 = this.f437f;
                if (i10 >= iArr5.length) {
                    break;
                } else if (iArr5[i10] == -1) {
                    i8 = i10;
                    break;
                } else {
                    i10++;
                }
            }
        }
        int[] iArr6 = this.f437f;
        if (i8 >= iArr6.length) {
            i8 = iArr6.length;
            int i11 = this.f435d * 2;
            this.f435d = i11;
            this.f442k = false;
            this.f441j = i8 - 1;
            this.f439h = Arrays.copyOf(this.f439h, i11);
            this.f437f = Arrays.copyOf(this.f437f, this.f435d);
            this.f438g = Arrays.copyOf(this.f438g, this.f435d);
        }
        this.f437f[i8] = gVar.b;
        this.f439h[i8] = f2;
        if (i5 != -1) {
            int[] iArr7 = this.f438g;
            iArr7[i8] = iArr7[i5];
            iArr7[i5] = i8;
        } else {
            this.f438g[i8] = this.f440i;
            this.f440i = i8;
        }
        gVar.f465j++;
        gVar.a(this.b);
        this.a++;
        if (!this.f442k) {
            this.f441j++;
        }
        if (this.a >= this.f437f.length) {
            this.f442k = true;
        }
        int i12 = this.f441j;
        int[] iArr8 = this.f437f;
        if (i12 >= iArr8.length) {
            this.f442k = true;
            this.f441j = iArr8.length - 1;
        }
    }

    public final boolean b(g gVar) {
        return gVar.f465j <= 1;
    }

    public String toString() {
        int i2 = this.f440i;
        String str = "";
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            StringBuilder a2 = e.a.a.a.a.a(e.a.a.a.a.b(str, " -> "));
            a2.append(this.f439h[i2]);
            a2.append(" : ");
            StringBuilder a3 = e.a.a.a.a.a(a2.toString());
            a3.append(this.f434c.f446c[this.f437f[i2]]);
            str = a3.toString();
            i2 = this.f438g[i2];
            i3++;
        }
        return str;
    }

    public final float b(int i2) {
        int i3 = this.f440i;
        int i4 = 0;
        while (i3 != -1 && i4 < this.a) {
            if (i4 == i2) {
                return this.f439h[i3];
            }
            i3 = this.f438g[i3];
            i4++;
        }
        return 0.0f;
    }

    public final void a(g gVar, float f2, boolean z) {
        if (f2 != 0.0f) {
            int i2 = this.f440i;
            if (i2 == -1) {
                this.f440i = 0;
                this.f439h[0] = f2;
                this.f437f[0] = gVar.b;
                this.f438g[0] = -1;
                gVar.f465j++;
                gVar.a(this.b);
                this.a++;
                if (!this.f442k) {
                    int i3 = this.f441j + 1;
                    this.f441j = i3;
                    int[] iArr = this.f437f;
                    if (i3 >= iArr.length) {
                        this.f442k = true;
                        this.f441j = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i4 = 0;
            int i5 = -1;
            while (i2 != -1 && i4 < this.a) {
                int[] iArr2 = this.f437f;
                int i6 = iArr2[i2];
                int i7 = gVar.b;
                if (i6 == i7) {
                    float[] fArr = this.f439h;
                    fArr[i2] = fArr[i2] + f2;
                    if (fArr[i2] == 0.0f) {
                        if (i2 == this.f440i) {
                            this.f440i = this.f438g[i2];
                        } else {
                            int[] iArr3 = this.f438g;
                            iArr3[i5] = iArr3[i2];
                        }
                        if (z) {
                            gVar.b(this.b);
                        }
                        if (this.f442k) {
                            this.f441j = i2;
                        }
                        gVar.f465j--;
                        this.a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i2] < i7) {
                    i5 = i2;
                }
                i2 = this.f438g[i2];
                i4++;
            }
            int i8 = this.f441j;
            int i9 = i8 + 1;
            if (this.f442k) {
                int[] iArr4 = this.f437f;
                if (iArr4[i8] != -1) {
                    i8 = iArr4.length;
                }
            } else {
                i8 = i9;
            }
            int[] iArr5 = this.f437f;
            if (i8 >= iArr5.length && this.a < iArr5.length) {
                int i10 = 0;
                while (true) {
                    int[] iArr6 = this.f437f;
                    if (i10 >= iArr6.length) {
                        break;
                    } else if (iArr6[i10] == -1) {
                        i8 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            int[] iArr7 = this.f437f;
            if (i8 >= iArr7.length) {
                i8 = iArr7.length;
                int i11 = this.f435d * 2;
                this.f435d = i11;
                this.f442k = false;
                this.f441j = i8 - 1;
                this.f439h = Arrays.copyOf(this.f439h, i11);
                this.f437f = Arrays.copyOf(this.f437f, this.f435d);
                this.f438g = Arrays.copyOf(this.f438g, this.f435d);
            }
            this.f437f[i8] = gVar.b;
            this.f439h[i8] = f2;
            if (i5 != -1) {
                int[] iArr8 = this.f438g;
                iArr8[i8] = iArr8[i5];
                iArr8[i5] = i8;
            } else {
                this.f438g[i8] = this.f440i;
                this.f440i = i8;
            }
            gVar.f465j++;
            gVar.a(this.b);
            this.a++;
            if (!this.f442k) {
                this.f441j++;
            }
            int i12 = this.f441j;
            int[] iArr9 = this.f437f;
            if (i12 >= iArr9.length) {
                this.f442k = true;
                this.f441j = iArr9.length - 1;
            }
        }
    }

    public final float a(g gVar, boolean z) {
        if (this.f436e == gVar) {
            this.f436e = null;
        }
        int i2 = this.f440i;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.a) {
            if (this.f437f[i2] == gVar.b) {
                if (i2 == this.f440i) {
                    this.f440i = this.f438g[i2];
                } else {
                    int[] iArr = this.f438g;
                    iArr[i4] = iArr[i2];
                }
                if (z) {
                    gVar.b(this.b);
                }
                gVar.f465j--;
                this.a--;
                this.f437f[i2] = -1;
                if (this.f442k) {
                    this.f441j = i2;
                }
                return this.f439h[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f438g[i2];
        }
        return 0.0f;
    }

    public final void a() {
        int i2 = this.f440i;
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            g gVar = this.f434c.f446c[this.f437f[i2]];
            if (gVar != null) {
                gVar.b(this.b);
            }
            i2 = this.f438g[i2];
            i3++;
        }
        this.f440i = -1;
        this.f441j = -1;
        this.f442k = false;
        this.a = 0;
    }

    public g a(boolean[] zArr, g gVar) {
        g.a aVar;
        int i2 = this.f440i;
        int i3 = 0;
        g gVar2 = null;
        float f2 = 0.0f;
        while (i2 != -1 && i3 < this.a) {
            if (this.f439h[i2] < 0.0f) {
                g gVar3 = this.f434c.f446c[this.f437f[i2]];
                if ((zArr == null || !zArr[gVar3.b]) && gVar3 != gVar && ((aVar = gVar3.f462g) == g.a.SLACK || aVar == g.a.ERROR)) {
                    float f3 = this.f439h[i2];
                    if (f3 < f2) {
                        gVar2 = gVar3;
                        f2 = f3;
                    }
                }
            }
            i2 = this.f438g[i2];
            i3++;
        }
        return gVar2;
    }

    public final g a(int i2) {
        int i3 = this.f440i;
        int i4 = 0;
        while (i3 != -1 && i4 < this.a) {
            if (i4 == i2) {
                return this.f434c.f446c[this.f437f[i3]];
            }
            i3 = this.f438g[i3];
            i4++;
        }
        return null;
    }

    public final float a(g gVar) {
        int i2 = this.f440i;
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            if (this.f437f[i2] == gVar.b) {
                return this.f439h[i2];
            }
            i2 = this.f438g[i2];
            i3++;
        }
        return 0.0f;
    }
}
