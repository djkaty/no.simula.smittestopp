package k.c.a.a.a;

import e.a.a.a.a;
import java.util.MissingResourceException;
import k.c.a.a.a.s.h;

public class k extends Exception {
    public int x;
    public Throwable y;

    public k(int i2) {
        this.x = i2;
    }

    public Throwable getCause() {
        return this.y;
    }

    public String getMessage() {
        String str;
        boolean z;
        int i2 = this.x;
        if (h.a == null) {
            boolean z2 = true;
            try {
                Class.forName("java.util.ResourceBundle");
                z = true;
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (z) {
                try {
                    h.a = (h) Class.forName("k.c.a.a.a.s.k").newInstance();
                } catch (Exception unused2) {
                    return "";
                }
            } else {
                try {
                    Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog");
                } catch (ClassNotFoundException unused3) {
                    z2 = false;
                }
                if (z2) {
                    h.a = (h) Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog").newInstance();
                }
            }
        }
        k.c.a.a.a.s.k kVar = (k.c.a.a.a.s.k) h.a;
        if (kVar != null) {
            try {
                str = kVar.b.getString(Integer.toString(i2));
            } catch (MissingResourceException unused4) {
                str = "MqttException";
            }
            return str;
        }
        throw null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(String.valueOf(getMessage()));
        sb.append(" (");
        String a = a.a(sb, this.x, ")");
        if (this.y == null) {
            return a;
        }
        return String.valueOf(a) + " - " + this.y.toString();
    }

    public k(Throwable th) {
        this.x = 0;
        this.y = th;
    }

    public k(int i2, Throwable th) {
        this.x = i2;
        this.y = th;
    }
}
