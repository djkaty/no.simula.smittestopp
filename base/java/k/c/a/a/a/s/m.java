package k.c.a.a.a.s;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import k.c.a.a.a.i;
import k.c.a.a.a.v.a;

public class m implements a {
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"ssl"})));
    }

    public void a(URI uri) {
        String path = uri.getPath();
        if (path != null && !path.isEmpty()) {
            throw new IllegalArgumentException(uri.toString());
        }
    }

    public i a(URI uri, i iVar, String str) {
        k.c.a.a.a.s.q.a aVar;
        String[] b;
        String host = uri.getHost();
        int port = uri.getPort();
        if (port == -1) {
            port = 8883;
        }
        String path = uri.getPath();
        if (path == null || path.isEmpty()) {
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
            l lVar = new l((SSLSocketFactory) socketFactory, host, port, str);
            int i2 = iVar.f2192l;
            lVar.f2239f = i2;
            lVar.f2232i = i2;
            lVar.f2233j = iVar.f2190j;
            lVar.f2234k = iVar.f2189i;
            if (!(aVar == null || (b = aVar.b((String) null)) == null)) {
                lVar.a(b);
            }
            return lVar;
        }
        throw new IllegalArgumentException(uri.toString());
    }
}
