package k.b.c.c;

import com.microsoft.identity.common.internal.ui.browser.Browser;
import k.b.c.e.a;

public class g extends b {
    public int a(byte[] bArr, int i2) {
        d();
        a.a(this.f2009e, bArr, i2);
        a.a(this.f2010f, bArr, i2 + 8);
        a.a(this.f2011g, bArr, i2 + 16);
        a.a(this.f2012h, bArr, i2 + 24);
        a.a(this.f2013i, bArr, i2 + 32);
        a.a(this.f2014j, bArr, i2 + 40);
        a.a(this.f2015k, bArr, i2 + 48);
        a.a(this.f2016l, bArr, i2 + 56);
        f();
        return 64;
    }

    public String a() {
        return Browser.DIGEST_SHA_512;
    }

    public int b() {
        return 64;
    }

    public void f() {
        super.f();
        this.f2009e = 7640891576956012808L;
        this.f2010f = -4942790177534073029L;
        this.f2011g = 4354685564936845355L;
        this.f2012h = -6534734903238641935L;
        this.f2013i = 5840696475078001361L;
        this.f2014j = -7276294671716946913L;
        this.f2015k = 2270897969802886507L;
        this.f2016l = 6620516959819538809L;
    }
}
