package g.e;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketOption;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.atomic.AtomicBoolean;

public class g extends Socket {
    public AtomicBoolean A = new AtomicBoolean(false);
    public InputStream B;
    public OutputStream C;
    public i x;
    public AtomicBoolean y = new AtomicBoolean(false);
    public AtomicBoolean z = new AtomicBoolean(false);

    public static final class a implements ReadableByteChannel, WritableByteChannel {
        public final i x;

        public a(i iVar) {
            this.x = iVar;
        }

        public void close() {
            this.x.close();
        }

        public boolean isOpen() {
            return this.x.isOpen();
        }

        public int read(ByteBuffer byteBuffer) {
            return this.x.read(byteBuffer);
        }

        public int write(ByteBuffer byteBuffer) {
            return this.x.write(byteBuffer);
        }
    }

    public g(i iVar) {
        this.x = iVar;
        this.B = Channels.newInputStream(new a(iVar));
        this.C = Channels.newOutputStream(new a(iVar));
    }

    public void bind(SocketAddress socketAddress) {
        if (this.x == null) {
            return;
        }
        if (isClosed()) {
            throw new SocketException("Socket is closed");
        } else if (!isBound()) {
            try {
                this.x.bind(socketAddress);
            } catch (IOException e2) {
                throw ((SocketException) new SocketException().initCause(e2));
            }
        } else {
            throw new SocketException("already bound");
        }
    }

    public void close() {
        if (this.x != null && this.y.compareAndSet(false, true)) {
            try {
                this.x.close();
            } catch (IOException unused) {
            }
        }
    }

    public void connect(SocketAddress socketAddress) {
        connect(socketAddress, 0);
    }

    public SocketChannel getChannel() {
        return this.x;
    }

    public InetAddress getInetAddress() {
        return null;
    }

    public InputStream getInputStream() {
        if (this.x.isConnected()) {
            return this.B;
        }
        throw new IOException("not connected");
    }

    public boolean getKeepAlive() {
        try {
            return ((Boolean) this.x.getOption(j.f1382e)).booleanValue();
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public SocketAddress getLocalSocketAddress() {
        i iVar = this.x;
        h hVar = iVar.C;
        if (hVar != null) {
            return hVar;
        }
        h b = b.b(iVar.x.a);
        iVar.C = b;
        return b;
    }

    public OutputStream getOutputStream() {
        if (this.x.isConnected()) {
            return this.C;
        }
        throw new IOException("not connected");
    }

    public int getReceiveBufferSize() {
        try {
            return ((Integer) this.x.getOption(j.f1380c)).intValue();
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public SocketAddress getRemoteSocketAddress() {
        h hVar;
        i iVar = this.x;
        if (!iVar.isConnected()) {
            hVar = null;
        } else {
            hVar = iVar.B;
            if (hVar == null) {
                hVar = b.a(iVar.x.a);
                iVar.B = hVar;
            }
        }
        if (hVar != null) {
            return hVar;
        }
        return null;
    }

    public int getSendBufferSize() {
        try {
            return ((Integer) this.x.getOption(j.a)).intValue();
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public int getSoTimeout() {
        try {
            return ((Integer) this.x.getOption(j.f1381d)).intValue();
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public boolean isBound() {
        i iVar = this.x;
        if (iVar == null) {
            return false;
        }
        return iVar.E.a.get();
    }

    public boolean isClosed() {
        return this.y.get();
    }

    public boolean isConnected() {
        return this.x.isConnected();
    }

    public boolean isInputShutdown() {
        return this.z.get();
    }

    public boolean isOutputShutdown() {
        return this.A.get();
    }

    public void setKeepAlive(boolean z2) {
        try {
            this.x.setOption((SocketOption) j.f1382e, (Object) Boolean.valueOf(z2));
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public void setReceiveBufferSize(int i2) {
        try {
            this.x.setOption((SocketOption) j.f1380c, (Object) Integer.valueOf(i2));
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public void setSendBufferSize(int i2) {
        try {
            this.x.setOption((SocketOption) j.a, (Object) Integer.valueOf(i2));
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public void setSoTimeout(int i2) {
        try {
            this.x.setOption((SocketOption) j.f1381d, (Object) Integer.valueOf(i2));
        } catch (IOException e2) {
            throw ((SocketException) new SocketException().initCause(e2));
        }
    }

    public void shutdownInput() {
        if (this.z.compareAndSet(false, true)) {
            this.x.shutdownInput();
        }
    }

    public void shutdownOutput() {
        if (this.A.compareAndSet(false, true)) {
            this.x.shutdownOutput();
        }
    }

    public void connect(SocketAddress socketAddress, int i2) {
        if (socketAddress instanceof h) {
            this.x.a((h) socketAddress);
            return;
        }
        StringBuilder a2 = e.a.a.a.a.a("address of type ");
        a2.append(socketAddress.getClass());
        a2.append(" are not supported. Use ");
        a2.append(h.class);
        a2.append(" instead");
        throw new IllegalArgumentException(a2.toString());
    }
}
