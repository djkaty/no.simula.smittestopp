package g.e;

import java.net.SocketAddress;
import java.nio.channels.AlreadyBoundException;
import java.nio.channels.UnsupportedAddressTypeException;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a {
    public final AtomicBoolean a;

    public a(boolean z) {
        this.a = new AtomicBoolean(z);
    }

    public synchronized h a(int i2, SocketAddress socketAddress) {
        h a2;
        if (socketAddress != null) {
            if (!(socketAddress instanceof h)) {
                throw new UnsupportedAddressTypeException();
            }
        }
        if (!this.a.get()) {
            a2 = b.a(i2, (h) socketAddress);
            this.a.set(true);
        } else {
            throw new AlreadyBoundException();
        }
        return a2;
    }
}
