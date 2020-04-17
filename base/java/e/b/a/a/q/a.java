package e.b.a.a.q;

import e.b.a.a.p.b;
import java.io.CharConversionException;
import java.io.InputStream;

public final class a {
    public final b a;
    public final InputStream b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f1062c;

    /* renamed from: d  reason: collision with root package name */
    public int f1063d;

    /* renamed from: e  reason: collision with root package name */
    public int f1064e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f1065f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1066g = true;

    /* renamed from: h  reason: collision with root package name */
    public int f1067h;

    public a(b bVar, InputStream inputStream) {
        this.a = bVar;
        this.b = inputStream;
        bVar.a((Object) bVar.f1057e);
        byte[] a2 = bVar.f1056d.a(0);
        bVar.f1057e = a2;
        this.f1062c = a2;
        this.f1063d = 0;
        this.f1064e = 0;
        this.f1065f = true;
    }

    public final boolean a(int i2) {
        if ((65280 & i2) == 0) {
            this.f1066g = true;
        } else if ((i2 & 255) != 0) {
            return false;
        } else {
            this.f1066g = false;
        }
        this.f1067h = 2;
        return true;
    }

    public boolean b(int i2) {
        int i3;
        int i4 = this.f1064e - this.f1063d;
        while (i4 < i2) {
            InputStream inputStream = this.b;
            if (inputStream == null) {
                i3 = -1;
            } else {
                byte[] bArr = this.f1062c;
                int i5 = this.f1064e;
                i3 = inputStream.read(bArr, i5, bArr.length - i5);
            }
            if (i3 < 1) {
                return false;
            }
            this.f1064e += i3;
            i4 += i3;
        }
        return true;
    }

    public final void a(String str) {
        throw new CharConversionException(e.a.a.a.a.a("Unsupported UCS-4 endianness (", str, ") detected"));
    }
}
