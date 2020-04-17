package k.c.a.a.a.s.r;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttIotHubConnection;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.util.Properties;
import javax.net.ssl.SSLSocketFactory;
import k.c.a.a.a.s.l;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class i extends l {
    public b n = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.r.i");
    public PipedInputStream o;
    public h p;
    public String q;
    public String r;
    public int s;
    public Properties t;
    public ByteArrayOutputStream u = new b(this);

    public i(SSLSocketFactory sSLSocketFactory, String str, String str2, int i2, String str3, Properties properties) {
        super(sSLSocketFactory, str2, i2, str3);
        this.q = str;
        this.r = str2;
        this.s = i2;
        this.t = properties;
        this.o = new PipedInputStream();
        this.n.a(str3);
    }

    public OutputStream a() {
        return this.u;
    }

    public InputStream b() {
        return this.o;
    }

    public String c() {
        return MqttIotHubConnection.WS_SSL_PREFIX + this.r + ":" + this.s;
    }

    public OutputStream d() {
        return super.a();
    }

    public void start() {
        super.start();
        new e(super.b(), super.a(), this.q, this.r, this.s, this.t).a();
        h hVar = new h(super.b(), this.o);
        this.p = hVar;
        hVar.a("WssSocketReceiver");
    }

    public void stop() {
        super.a().write(new d((byte) 8, true, "1000".getBytes()).a());
        super.a().flush();
        h hVar = this.p;
        if (hVar != null) {
            hVar.a();
        }
        super.stop();
    }
}
