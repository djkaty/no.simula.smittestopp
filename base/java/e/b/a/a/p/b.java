package e.b.a.a.p;

import e.b.a.a.c;
import e.b.a.a.s.a;

public class b {
    public final Object a;
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f1055c;

    /* renamed from: d  reason: collision with root package name */
    public final a f1056d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f1057e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f1058f;

    /* renamed from: g  reason: collision with root package name */
    public char[] f1059g;

    /* renamed from: h  reason: collision with root package name */
    public char[] f1060h;

    /* renamed from: i  reason: collision with root package name */
    public char[] f1061i;

    public b(a aVar, Object obj, boolean z) {
        this.f1056d = aVar;
        this.a = obj;
        this.f1055c = z;
    }

    public void a(byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = this.f1057e;
            if (bArr == bArr2 || bArr.length >= bArr2.length) {
                this.f1057e = null;
                this.f1056d.a[0] = bArr;
                return;
            }
            throw new IllegalArgumentException("Trying to release buffer smaller than original");
        }
    }

    public void b(byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = this.f1058f;
            if (bArr == bArr2 || bArr.length >= bArr2.length) {
                this.f1058f = null;
                this.f1056d.a[1] = bArr;
                return;
            }
            throw new IllegalArgumentException("Trying to release buffer smaller than original");
        }
    }

    public final void a(Object obj) {
        if (obj != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
    }

    public final void a(char[] cArr, char[] cArr2) {
        if (cArr != cArr2 && cArr.length < cArr2.length) {
            throw new IllegalArgumentException("Trying to release buffer smaller than original");
        }
    }
}
