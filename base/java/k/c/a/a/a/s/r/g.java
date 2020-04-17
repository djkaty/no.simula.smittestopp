package k.c.a.a.a.s.r;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import k.c.a.a.a.s.i;
import k.c.a.a.a.v.a;

public class g implements a {
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"ws"})));
    }

    public void a(URI uri) {
    }

    public i a(URI uri, k.c.a.a.a.i iVar, String str) {
        String host = uri.getHost();
        int port = uri.getPort();
        int i2 = port == -1 ? 80 : port;
        SocketFactory socketFactory = iVar.f2187g;
        if (socketFactory == null) {
            socketFactory = SocketFactory.getDefault();
        } else if (socketFactory instanceof SSLSocketFactory) {
            throw k.b.c.e.a.a(32105);
        }
        f fVar = new f(socketFactory, uri.toString(), host, i2, str, iVar.q);
        fVar.f2239f = iVar.f2192l;
        return fVar;
    }
}
