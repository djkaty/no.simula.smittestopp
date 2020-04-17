package g.b.a;

import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectionKey;

public class a extends AbstractSelectionKey {
    public final b a;
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public int f1329c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f1330d = 0;

    public a(b bVar, g gVar, int i2) {
        this.a = bVar;
        this.b = gVar;
        this.f1329c = i2;
    }

    public int a() {
        return this.b.getFD();
    }

    public SelectableChannel channel() {
        return (SelectableChannel) this.b;
    }

    public int interestOps() {
        return this.f1329c;
    }

    public int readyOps() {
        return this.f1330d;
    }

    public Selector selector() {
        return this.a;
    }

    public SelectionKey interestOps(int i2) {
        this.f1329c = i2;
        this.a.a(this);
        return this;
    }
}
