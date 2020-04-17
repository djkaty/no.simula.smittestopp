package k.c.a.a.a.s;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.SocketFactory;
import k.c.a.a.a.k;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class n implements i {
    public b a;
    public Socket b;

    /* renamed from: c  reason: collision with root package name */
    public SocketFactory f2236c;

    /* renamed from: d  reason: collision with root package name */
    public String f2237d;

    /* renamed from: e  reason: collision with root package name */
    public int f2238e;

    /* renamed from: f  reason: collision with root package name */
    public int f2239f;

    public n(SocketFactory socketFactory, String str, int i2, String str2) {
        b a2 = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.n");
        this.a = a2;
        a2.a(str2);
        this.f2236c = socketFactory;
        this.f2237d = str;
        this.f2238e = i2;
    }

    public OutputStream a() {
        return this.b.getOutputStream();
    }

    public InputStream b() {
        return this.b.getInputStream();
    }

    public String c() {
        return "tcp://" + this.f2237d + ":" + this.f2238e;
    }

    public void start() {
        try {
            this.a.b("k.c.a.a.a.s.n", "start", "252", new Object[]{this.f2237d, Integer.valueOf(this.f2238e), Long.valueOf((long) (this.f2239f * 1000))});
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f2237d, this.f2238e);
            Socket createSocket = this.f2236c.createSocket();
            this.b = createSocket;
            createSocket.connect(inetSocketAddress, this.f2239f * 1000);
            this.b.setSoTimeout(1000);
        } catch (ConnectException e2) {
            this.a.a("k.c.a.a.a.s.n", "start", "250", (Object[]) null, e2);
            throw new k(32103, e2);
        }
    }

    public void stop() {
        Socket socket = this.b;
        if (socket != null) {
            socket.close();
        }
    }
}
