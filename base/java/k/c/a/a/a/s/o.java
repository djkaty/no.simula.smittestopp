package k.c.a.a.a.s;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import k.c.a.a.a.i;
import k.c.a.a.a.v.a;

public class o implements a {
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"tcp"})));
    }

    public void a(URI uri) {
        String path = uri.getPath();
        if (path != null && !path.isEmpty()) {
            throw new IllegalArgumentException("URI path must be empty \"" + uri.toString() + "\"");
        }
    }

    public i a(URI uri, i iVar, String str) {
        String host = uri.getHost();
        int port = uri.getPort();
        if (port == -1) {
            port = 1883;
        }
        String path = uri.getPath();
        if (path == null || path.isEmpty()) {
            SocketFactory socketFactory = iVar.f2187g;
            if (socketFactory == null) {
                socketFactory = SocketFactory.getDefault();
            } else if (socketFactory instanceof SSLSocketFactory) {
                throw k.b.c.e.a.a(32105);
            }
            n nVar = new n(socketFactory, host, port, str);
            nVar.f2239f = iVar.f2192l;
            return nVar;
        }
        throw new IllegalArgumentException(uri.toString());
    }
}
