package k.c.a.a.a.s.r;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import k.c.a.a.a.s.i;
import k.c.a.a.a.v.a;

public class j implements a {
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"wss"})));
    }

    public void a(URI uri) {
    }

    public i a(URI uri, k.c.a.a.a.i iVar, String str) {
        k.c.a.a.a.s.q.a aVar;
        String[] b;
        String host = uri.getHost();
        int port = uri.getPort();
        int i2 = port == -1 ? 443 : port;
        SocketFactory socketFactory = iVar.f2187g;
        if (socketFactory == null) {
            k.c.a.a.a.s.q.a aVar2 = new k.c.a.a.a.s.q.a();
            Properties properties = iVar.f2188h;
            if (properties != null) {
                aVar2.a(properties, (String) null);
            }
            aVar = aVar2;
            socketFactory = aVar2.a((String) null);
        } else if (socketFactory instanceof SSLSocketFactory) {
            aVar = null;
        } else {
            throw k.b.c.e.a.a(32105);
        }
        i iVar2 = new i((SSLSocketFactory) socketFactory, uri.toString(), host, i2, str, iVar.q);
        int i3 = iVar.f2192l;
        iVar2.f2239f = i3;
        iVar2.f2232i = i3;
        iVar2.f2233j = iVar.f2190j;
        iVar2.f2234k = iVar.f2189i;
        if (!(aVar == null || (b = aVar.b((String) null)) == null)) {
            iVar2.a(b);
        }
        return iVar2;
    }
}
