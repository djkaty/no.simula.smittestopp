package k.c.a.a.a.s;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttIotHubConnection;
import java.util.ArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class l extends n {

    /* renamed from: g  reason: collision with root package name */
    public b f2230g;

    /* renamed from: h  reason: collision with root package name */
    public String[] f2231h;

    /* renamed from: i  reason: collision with root package name */
    public int f2232i;

    /* renamed from: j  reason: collision with root package name */
    public HostnameVerifier f2233j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2234k = false;

    /* renamed from: l  reason: collision with root package name */
    public String f2235l;
    public int m;

    public l(SSLSocketFactory sSLSocketFactory, String str, int i2, String str2) {
        super(sSLSocketFactory, str, i2, str2);
        b a = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.l");
        this.f2230g = a;
        this.f2235l = str;
        this.m = i2;
        a.a(str2);
    }

    public void a(String[] strArr) {
        if (strArr != null) {
            this.f2231h = (String[]) strArr.clone();
        }
        if (this.b != null && this.f2231h != null) {
            if (this.f2230g.a(5)) {
                String str = "";
                for (int i2 = 0; i2 < this.f2231h.length; i2++) {
                    if (i2 > 0) {
                        str = String.valueOf(str) + ",";
                    }
                    str = String.valueOf(str) + this.f2231h[i2];
                }
                this.f2230g.b("k.c.a.a.a.s.l", "setEnabledCiphers", "260", new Object[]{str});
            }
            ((SSLSocket) this.b).setEnabledCipherSuites(this.f2231h);
        }
    }

    public String c() {
        return MqttIotHubConnection.SSL_PREFIX + this.f2235l + ":" + this.m;
    }

    public void start() {
        super.start();
        a(this.f2231h);
        int soTimeout = this.b.getSoTimeout();
        this.b.setSoTimeout(this.f2232i * 1000);
        SSLParameters sSLParameters = new SSLParameters();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new SNIHostName(this.f2235l));
        sSLParameters.setServerNames(arrayList);
        ((SSLSocket) this.b).setSSLParameters(sSLParameters);
        if (this.f2234k) {
            SSLParameters sSLParameters2 = new SSLParameters();
            sSLParameters2.setEndpointIdentificationAlgorithm("HTTPS");
            ((SSLSocket) this.b).setSSLParameters(sSLParameters2);
        }
        ((SSLSocket) this.b).startHandshake();
        if (this.f2233j != null && !this.f2234k) {
            SSLSession session = ((SSLSocket) this.b).getSession();
            if (!this.f2233j.verify(this.f2235l, session)) {
                session.invalidate();
                this.b.close();
                throw new SSLPeerUnverifiedException("Host: " + this.f2235l + ", Peer Host: " + session.getPeerHost());
            }
        }
        this.b.setSoTimeout(soTimeout);
    }
}
