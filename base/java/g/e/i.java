package g.e;

import g.a.d.h;
import g.c.f;
import g.c.g;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;
import java.nio.channels.UnsupportedAddressTypeException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;

public class i extends g.e.k.a {
    public b A;
    public h B;
    public h C;
    public final ReadWriteLock D;
    public final a E;

    public static class a {
        public static final Set<SocketOption<?>> a;

        static {
            HashSet hashSet = new HashSet(5);
            hashSet.add(j.a);
            hashSet.add(j.b);
            hashSet.add(j.f1380c);
            hashSet.add(j.f1381d);
            hashSet.add(j.f1383f);
            hashSet.add(j.f1382e);
            hashSet.add(j.f1384g);
            a = Collections.unmodifiableSet(hashSet);
        }
    }

    public enum b {
        UNINITIALIZED,
        CONNECTED,
        IDLE,
        CONNECTING
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public i() {
        /*
            r4 = this;
            g.a.d.e r0 = g.a.d.e.PF_UNIX
            g.a.d.g r1 = g.a.d.g.SOCK_STREAM
            g.e.d$a r2 = g.e.d.b
            int r0 = r0.intValue()
            int r1 = r1.intValue()
            r3 = 0
            int r0 = r2.a((int) r0, (int) r1, (int) r3)
            if (r0 < 0) goto L_0x0040
            g.e.i$b r1 = g.e.i.b.CONNECTED
            r4.<init>(r0)
            r0 = 0
            r4.B = r0
            r4.C = r0
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = new java.util.concurrent.locks.ReentrantReadWriteLock
            r0.<init>()
            r4.D = r0
            java.util.concurrent.locks.Lock r0 = r0.writeLock()
            r0.lock()
            r4.A = r1
            g.e.a r0 = new g.e.a
            r0.<init>(r3)
            r4.E = r0
            java.util.concurrent.locks.ReadWriteLock r0 = r4.D
            java.util.concurrent.locks.Lock r0 = r0.writeLock()
            r0.unlock()
            return
        L_0x0040:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = g.e.d.a()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: g.e.i.<init>():void");
    }

    public final boolean a(e eVar) {
        if (d.b.b(this.x.a, eVar, eVar.d()) == 0) {
            return true;
        }
        g.a.d.b valueOf = g.a.d.b.valueOf((long) f.a.a.a());
        int ordinal = valueOf.ordinal();
        if (ordinal == 34 || ordinal == 35) {
            return false;
        }
        throw new IOException(valueOf.toString());
    }

    public boolean connect(SocketAddress socketAddress) {
        if (socketAddress instanceof h) {
            return a((h) socketAddress);
        }
        throw new UnsupportedAddressTypeException();
    }

    public boolean finishConnect() {
        this.D.writeLock().lock();
        try {
            int ordinal = this.A.ordinal();
            if (ordinal != 1) {
                if (ordinal != 3) {
                    throw new IllegalStateException("socket is not waiting for connect to complete");
                } else if (!a(this.B.x)) {
                    return false;
                } else {
                    this.A = b.CONNECTED;
                }
            }
            this.D.writeLock().unlock();
            return true;
        } finally {
            this.D.writeLock().unlock();
        }
    }

    public SocketAddress getLocalAddress() {
        return this.C;
    }

    public <T> T getOption(SocketOption<T> socketOption) {
        if (a.a.contains(socketOption)) {
            int i2 = this.x.a;
            g.a.d.i iVar = b.f1369c.get(socketOption);
            if (iVar != null) {
                Class<T> type = socketOption.type();
                if (type == c.class) {
                    d.a(i2, h.SOL_SOCKET, g.a.d.i.SO_PEERCRED, (g) new f());
                    throw null;
                } else if (type == Integer.class) {
                    return Integer.valueOf(d.a(i2, h.SOL_SOCKET, iVar.intValue()));
                } else {
                    return Boolean.valueOf(d.a(i2, h.SOL_SOCKET, iVar.intValue()) != 0);
                }
            } else {
                throw new AssertionError("Option not found");
            }
        } else {
            throw new UnsupportedOperationException("'" + socketOption + "' not supported");
        }
    }

    public SocketAddress getRemoteAddress() {
        return this.B;
    }

    public boolean isConnected() {
        this.D.readLock().lock();
        boolean z = this.A == b.CONNECTED;
        this.D.readLock().unlock();
        return z;
    }

    public boolean isConnectionPending() {
        this.D.readLock().lock();
        boolean z = this.A == b.CONNECTING;
        this.D.readLock().unlock();
        return z;
    }

    public int read(ByteBuffer byteBuffer) {
        if (isConnected()) {
            return this.x.a(byteBuffer);
        }
        if (a()) {
            return 0;
        }
        throw new ClosedChannelException();
    }

    public Socket socket() {
        return new g(this);
    }

    public final Set<SocketOption<?>> supportedOptions() {
        return a.a;
    }

    public long write(ByteBuffer[] byteBufferArr, int i2, int i3) {
        long j2 = 0;
        if (isConnected()) {
            g.e.k.b bVar = this.x;
            if (bVar != null) {
                while (i2 < i3) {
                    j2 += (long) bVar.b(byteBufferArr[i2]);
                    i2++;
                }
                return j2;
            }
            throw null;
        } else if (a()) {
            return 0;
        } else {
            throw new ClosedChannelException();
        }
    }

    public <T> SocketChannel setOption(SocketOption<T> socketOption, T t) {
        if (socketOption == null) {
            throw new IllegalArgumentException("name may not be null");
        } else if (a.a.contains(socketOption)) {
            b.a(this.x.a, socketOption, t);
            return this;
        } else {
            throw new UnsupportedOperationException("'" + socketOption + "' not supported");
        }
    }

    public synchronized i bind(SocketAddress socketAddress) {
        this.C = this.E.a(this.x.a, socketAddress);
        return this;
    }

    public int write(ByteBuffer byteBuffer) {
        if (isConnected()) {
            return this.x.b(byteBuffer);
        }
        if (a()) {
            return 0;
        }
        throw new ClosedChannelException();
    }

    public boolean a(h hVar) {
        this.B = hVar;
        if (!a(hVar.x)) {
            this.D.writeLock().lock();
            this.A = b.CONNECTING;
            this.D.writeLock().unlock();
            return false;
        }
        this.D.writeLock().lock();
        this.A = b.CONNECTED;
        this.D.writeLock().unlock();
        return true;
    }

    public final boolean a() {
        this.D.readLock().lock();
        boolean z = this.A == b.IDLE;
        this.D.readLock().unlock();
        return z;
    }
}
