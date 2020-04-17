package d.g.a;

import java.util.Arrays;

public class g {

    /* renamed from: k  reason: collision with root package name */
    public static int f457k = 1;
    public String a;
    public int b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f458c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f459d = 0;

    /* renamed from: e  reason: collision with root package name */
    public float f460e;

    /* renamed from: f  reason: collision with root package name */
    public float[] f461f = new float[7];

    /* renamed from: g  reason: collision with root package name */
    public a f462g;

    /* renamed from: h  reason: collision with root package name */
    public b[] f463h = new b[8];

    /* renamed from: i  reason: collision with root package name */
    public int f464i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f465j = 0;

    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public g(a aVar) {
        this.f462g = aVar;
    }

    public final void a(b bVar) {
        int i2 = 0;
        while (true) {
            int i3 = this.f464i;
            if (i2 >= i3) {
                b[] bVarArr = this.f463h;
                if (i3 >= bVarArr.length) {
                    this.f463h = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f463h;
                int i4 = this.f464i;
                bVarArr2[i4] = bVar;
                this.f464i = i4 + 1;
                return;
            } else if (this.f463h[i2] != bVar) {
                i2++;
            } else {
                return;
            }
        }
    }

    public final void b(b bVar) {
        int i2 = this.f464i;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f463h[i3] == bVar) {
                for (int i4 = 0; i4 < (i2 - i3) - 1; i4++) {
                    b[] bVarArr = this.f463h;
                    int i5 = i3 + i4;
                    bVarArr[i5] = bVarArr[i5 + 1];
                }
                this.f464i--;
                return;
            }
        }
    }

    public final void c(b bVar) {
        int i2 = this.f464i;
        for (int i3 = 0; i3 < i2; i3++) {
            b[] bVarArr = this.f463h;
            a aVar = bVarArr[i3].f444d;
            b bVar2 = bVarArr[i3];
            int i4 = aVar.f440i;
            while (true) {
                int i5 = 0;
                while (i4 != -1 && i5 < aVar.a) {
                    int i6 = aVar.f437f[i4];
                    g gVar = bVar.a;
                    if (i6 == gVar.b) {
                        float f2 = aVar.f439h[i4];
                        aVar.a(gVar, false);
                        a aVar2 = bVar.f444d;
                        int i7 = aVar2.f440i;
                        int i8 = 0;
                        while (i7 != -1 && i8 < aVar2.a) {
                            aVar.a(aVar.f434c.f446c[aVar2.f437f[i7]], aVar2.f439h[i7] * f2, false);
                            i7 = aVar2.f438g[i7];
                            i8++;
                        }
                        bVar2.b = (bVar.b * f2) + bVar2.b;
                        i4 = aVar.f440i;
                    } else {
                        i4 = aVar.f438g[i4];
                        i5++;
                    }
                }
            }
        }
        this.f464i = 0;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("");
        a2.append(this.a);
        return a2.toString();
    }

    public void a() {
        this.a = null;
        this.f462g = a.UNKNOWN;
        this.f459d = 0;
        this.b = -1;
        this.f458c = -1;
        this.f460e = 0.0f;
        this.f464i = 0;
        this.f465j = 0;
    }
}
