package g.b.a;

import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectionKey;

public class i extends AbstractSelectionKey {
    public final j a;
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public int f1340c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f1341d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f1342e = -1;

    public i(j jVar, g gVar) {
        this.a = jVar;
        this.b = gVar;
    }

    public SelectableChannel channel() {
        return (SelectableChannel) this.b;
    }

    public int interestOps() {
        return this.f1340c;
    }

    public int readyOps() {
        return this.f1341d;
    }

    public Selector selector() {
        return this.a;
    }

    public SelectionKey interestOps(int i2) {
        this.f1340c = i2;
        j jVar = this.a;
        if (jVar != null) {
            short s = (i2 & 17) != 0 ? (short) 1 : 0;
            if ((i2 & 12) != 0) {
                s = (short) (s | 4);
            }
            jVar.a(this.f1342e, s);
            return this;
        }
        throw null;
    }
}
