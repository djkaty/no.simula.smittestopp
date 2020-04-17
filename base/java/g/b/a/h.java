package g.b.a;

import g.c.d;
import java.net.ProtocolFamily;
import java.nio.channels.DatagramChannel;
import java.nio.channels.Pipe;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.AbstractSelector;
import java.nio.channels.spi.SelectorProvider;

public final class h extends SelectorProvider {

    public static final class a {
        public static h a = new h();
    }

    public static final SelectorProvider a() {
        return a.a;
    }

    public DatagramChannel openDatagramChannel() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Pipe openPipe() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public AbstractSelector openSelector() {
        if (!d.d().b()) {
            return new j(this);
        }
        new b(this);
        throw null;
    }

    public ServerSocketChannel openServerSocketChannel() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public SocketChannel openSocketChannel() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public DatagramChannel openDatagramChannel(ProtocolFamily protocolFamily) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
