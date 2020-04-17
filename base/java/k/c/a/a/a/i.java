package k.c.a.a.a;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import java.util.Properties;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import k.c.a.a.a.w.a;

public class i {
    public int a = 60;
    public int b = 10;

    /* renamed from: c  reason: collision with root package name */
    public String f2183c = null;

    /* renamed from: d  reason: collision with root package name */
    public l f2184d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f2185e;

    /* renamed from: f  reason: collision with root package name */
    public char[] f2186f;

    /* renamed from: g  reason: collision with root package name */
    public SocketFactory f2187g;

    /* renamed from: h  reason: collision with root package name */
    public Properties f2188h = null;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2189i = true;

    /* renamed from: j  reason: collision with root package name */
    public HostnameVerifier f2190j = null;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2191k = true;

    /* renamed from: l  reason: collision with root package name */
    public int f2192l = 30;
    public String[] m = null;
    public int n = 0;
    public boolean o = false;
    public int p = 128000;
    public Properties q = null;

    public void a(int i2) {
        if (i2 == 0 || i2 == 3 || i2 == 4) {
            this.n = i2;
            return;
        }
        throw new IllegalArgumentException("An incorrect version was used \"" + i2 + "\". Acceptable version options are " + 0 + ", " + 3 + " and " + 4 + CryptoConstants.ALIAS_SEPARATOR);
    }

    public String toString() {
        Properties properties = new Properties();
        properties.put("MqttVersion", Integer.valueOf(this.n));
        properties.put("CleanSession", Boolean.valueOf(this.f2191k));
        properties.put("ConTimeout", Integer.valueOf(this.f2192l));
        properties.put("KeepAliveInterval", Integer.valueOf(this.a));
        String str = this.f2185e;
        if (str == null) {
            str = "null";
        }
        properties.put("UserName", str);
        String str2 = this.f2183c;
        if (str2 == null) {
            str2 = "null";
        }
        properties.put("WillDestination", str2);
        SocketFactory socketFactory = this.f2187g;
        if (socketFactory == null) {
            properties.put("SocketFactory", "null");
        } else {
            properties.put("SocketFactory", socketFactory);
        }
        Properties properties2 = this.f2188h;
        if (properties2 == null) {
            properties.put("SSLProperties", "null");
        } else {
            properties.put("SSLProperties", properties2);
        }
        return a.a(properties, "Connection options");
    }
}
