package k.a.b.a.g.i;

import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.HashSet;
import k.a.b.a.g.g;

public class k {
    public final Selector a;
    public final HashSet<g> b = new HashSet<>();

    /* renamed from: c  reason: collision with root package name */
    public final HashSet<g> f1945c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    public final HashSet<g> f1946d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    public final HashSet<g> f1947e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    public final HashSet<g> f1948f = new HashSet<>();

    public k(c cVar) {
        if (cVar != null) {
            this.a = Selector.open();
            return;
        }
        throw null;
    }

    public void a(g gVar) {
        if (gVar.I() != null) {
            int i2 = 0;
            if (!(gVar.I() instanceof SocketChannel) || !((SocketChannel) gVar.I()).isConnectionPending()) {
                if (gVar.M()) {
                    i2 = gVar.I() instanceof ServerSocketChannel ? 16 : 1;
                }
                if (gVar.s()) {
                    i2 |= 4;
                }
            } else {
                i2 = 8;
            }
            gVar.I().keyFor(this.a).interestOps(i2);
        }
    }
}
