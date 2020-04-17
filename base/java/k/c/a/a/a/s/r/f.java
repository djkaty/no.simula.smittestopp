package k.c.a.a.a.s.r;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.util.Properties;
import javax.net.SocketFactory;
import k.c.a.a.a.s.n;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class f extends n {

    /* renamed from: g  reason: collision with root package name */
    public b f2259g = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.r.f");

    /* renamed from: h  reason: collision with root package name */
    public String f2260h;

    /* renamed from: i  reason: collision with root package name */
    public String f2261i;

    /* renamed from: j  reason: collision with root package name */
    public int f2262j;

    /* renamed from: k  reason: collision with root package name */
    public Properties f2263k;

    /* renamed from: l  reason: collision with root package name */
    public PipedInputStream f2264l;
    public h m;
    public ByteArrayOutputStream n = new b(this);

    public f(SocketFactory socketFactory, String str, String str2, int i2, String str3, Properties properties) {
        super(socketFactory, str2, i2, str3);
        this.f2260h = str;
        this.f2261i = str2;
        this.f2262j = i2;
        this.f2263k = properties;
        this.f2264l = new PipedInputStream();
        this.f2259g.a(str3);
    }

    public OutputStream a() {
        return this.n;
    }

    public InputStream b() {
        return this.f2264l;
    }

    public String c() {
        return "ws://" + this.f2261i + ":" + this.f2262j;
    }

    public OutputStream d() {
        return super.a();
    }

    public void start() {
        super.start();
        new e(super.b(), super.a(), this.f2260h, this.f2261i, this.f2262j, this.f2263k).a();
        h hVar = new h(super.b(), this.f2264l);
        this.m = hVar;
        hVar.a("webSocketReceiver");
    }

    public void stop() {
        super.a().write(new d((byte) 8, true, "1000".getBytes()).a());
        super.a().flush();
        h hVar = this.m;
        if (hVar != null) {
            hVar.a();
        }
        super.stop();
    }
}
