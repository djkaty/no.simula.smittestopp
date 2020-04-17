package k.a.b.a.d.g0.m0;

import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import k.a.b.a.d.d0;
import k.a.b.a.d.g0.b0;
import k.a.b.a.d.g0.f0;

public class d implements h {

    /* renamed from: l  reason: collision with root package name */
    public static final Logger f1883l = Logger.getLogger(d.class.getName());
    public final b a;
    public final b0 b;

    /* renamed from: c  reason: collision with root package name */
    public final f0 f1884c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1885d = false;

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f1886e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1887f = false;

    /* renamed from: g  reason: collision with root package name */
    public ByteBuffer f1888g;

    /* renamed from: h  reason: collision with root package name */
    public ByteBuffer f1889h;

    /* renamed from: i  reason: collision with root package name */
    public ByteBuffer f1890i;

    /* renamed from: j  reason: collision with root package name */
    public String f1891j;

    /* renamed from: k  reason: collision with root package name */
    public String f1892k;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        /* JADX WARNING: Can't wrap try/catch for region: R(21:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|13|14|15|16|17|19|20|21|22|23|24|25|26|28) */
        /* JADX WARNING: Can't wrap try/catch for region: R(23:0|1|2|3|(2:5|6)|7|9|10|11|13|14|15|16|17|19|20|21|22|23|24|25|26|28) */
        /* JADX WARNING: Can't wrap try/catch for region: R(24:0|1|2|3|5|6|7|9|10|11|13|14|15|16|17|19|20|21|22|23|24|25|26|28) */
        /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0033 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x004f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0059 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0063 */
        static {
            /*
                javax.net.ssl.SSLEngineResult$HandshakeStatus[] r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                b = r0
                r1 = 1
                javax.net.ssl.SSLEngineResult$HandshakeStatus r2 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_WRAP     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                r0 = 2
                int[] r2 = b     // Catch:{ NoSuchFieldError -> 0x001d }
                javax.net.ssl.SSLEngineResult$HandshakeStatus r3 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_TASK     // Catch:{ NoSuchFieldError -> 0x001d }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r3] = r0     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                r2 = 3
                int[] r3 = b     // Catch:{ NoSuchFieldError -> 0x0028 }
                javax.net.ssl.SSLEngineResult$HandshakeStatus r4 = javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r3[r4] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                r3 = 4
                int[] r4 = b     // Catch:{ NoSuchFieldError -> 0x0033 }
                javax.net.ssl.SSLEngineResult$HandshakeStatus r5 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r4[r5] = r3     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                int[] r4 = b     // Catch:{ NoSuchFieldError -> 0x003e }
                javax.net.ssl.SSLEngineResult$HandshakeStatus r5 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_UNWRAP     // Catch:{ NoSuchFieldError -> 0x003e }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x003e }
                r6 = 5
                r4[r5] = r6     // Catch:{ NoSuchFieldError -> 0x003e }
            L_0x003e:
                javax.net.ssl.SSLEngineResult$Status[] r4 = javax.net.ssl.SSLEngineResult.Status.values()
                int r4 = r4.length
                int[] r4 = new int[r4]
                a = r4
                javax.net.ssl.SSLEngineResult$Status r5 = javax.net.ssl.SSLEngineResult.Status.CLOSED     // Catch:{ NoSuchFieldError -> 0x004f }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x004f }
                r4[r5] = r1     // Catch:{ NoSuchFieldError -> 0x004f }
            L_0x004f:
                int[] r1 = a     // Catch:{ NoSuchFieldError -> 0x0059 }
                javax.net.ssl.SSLEngineResult$Status r4 = javax.net.ssl.SSLEngineResult.Status.BUFFER_OVERFLOW     // Catch:{ NoSuchFieldError -> 0x0059 }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x0059 }
                r1[r4] = r0     // Catch:{ NoSuchFieldError -> 0x0059 }
            L_0x0059:
                int[] r0 = a     // Catch:{ NoSuchFieldError -> 0x0063 }
                javax.net.ssl.SSLEngineResult$Status r1 = javax.net.ssl.SSLEngineResult.Status.BUFFER_UNDERFLOW     // Catch:{ NoSuchFieldError -> 0x0063 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0063 }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0063 }
            L_0x0063:
                int[] r0 = a     // Catch:{ NoSuchFieldError -> 0x006d }
                javax.net.ssl.SSLEngineResult$Status r1 = javax.net.ssl.SSLEngineResult.Status.OK     // Catch:{ NoSuchFieldError -> 0x006d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x006d }
                r0[r1] = r3     // Catch:{ NoSuchFieldError -> 0x006d }
            L_0x006d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.m0.d.a.<clinit>():void");
        }
    }

    public d(b bVar, b0 b0Var, f0 f0Var) {
        this.b = b0Var;
        this.f1884c = f0Var;
        this.a = bVar;
        int packetBufferSize = ((a) this.a).a.getSession().getPacketBufferSize();
        this.f1886e = ByteBuffer.allocate(packetBufferSize);
        ByteBuffer allocate = ByteBuffer.allocate(packetBufferSize);
        this.f1888g = allocate;
        ByteBuffer asReadOnlyBuffer = allocate.asReadOnlyBuffer();
        this.f1889h = asReadOnlyBuffer;
        asReadOnlyBuffer.limit(0);
        this.f1890i = ByteBuffer.allocate(((a) bVar).a.getSession().getApplicationBufferSize() + 50);
        if (f1883l.isLoggable(Level.FINE)) {
            Logger logger = f1883l;
            logger.fine("Constructed " + this);
        }
    }

    public final void a() {
        SSLEngineResult.HandshakeStatus handshakeStatus;
        int i2 = -1;
        while (true) {
            b bVar = this.a;
            SSLEngineResult unwrap = ((a) bVar).a.unwrap(this.f1886e, this.f1890i);
            a(unwrap, "input");
            unwrap.bytesProduced();
            SSLEngineResult.Status status = unwrap.getStatus();
            handshakeStatus = unwrap.getHandshakeStatus();
            int capacity = this.b.capacity();
            if (capacity == -1 || capacity <= 0) {
                this.f1885d = true;
                if (this.f1890i.position() > 0) {
                    throw new d0("bytes left unconsumed");
                }
            } else {
                this.f1890i.flip();
                while (this.f1890i.hasRemaining() && capacity > 0) {
                    ByteBuffer tail = this.b.tail();
                    int limit = this.f1890i.limit();
                    int remaining = this.f1890i.remaining() - capacity;
                    if (remaining > 0) {
                        this.f1890i.limit(limit - remaining);
                    }
                    tail.put(this.f1890i);
                    this.f1890i.limit(limit);
                    this.b.process();
                    capacity = this.b.capacity();
                }
                if (capacity == -1 || capacity <= 0) {
                    this.f1885d = true;
                    if (this.f1890i.hasRemaining()) {
                        throw new d0("bytes left unconsumed");
                    }
                }
                this.f1890i.compact();
            }
            int i3 = a.a[status.ordinal()];
            if (i3 == 1) {
                this.f1885d = true;
            } else if (i3 == 2) {
                ByteBuffer byteBuffer = this.f1890i;
                this.f1890i = ByteBuffer.allocate(byteBuffer.capacity() * 2);
                byteBuffer.flip();
                this.f1890i.put(byteBuffer);
            } else if (i3 == 3 && this.f1885d) {
                this.f1887f = true;
            }
            int i4 = a.b[handshakeStatus.ordinal()];
            if (i4 == 1) {
                int remaining2 = this.f1886e.remaining();
                if (remaining2 > 0 && status == SSLEngineResult.Status.OK) {
                    if (remaining2 < i2 || i2 < 0) {
                        pending();
                        i2 = remaining2;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } else if (i4 != 2) {
                if (i4 == 3) {
                    b(unwrap);
                } else if (!(i4 == 4 || i4 == 5)) {
                    return;
                }
                if (this.f1886e.position() <= 0 || status != SSLEngineResult.Status.OK) {
                }
            } else {
                a(unwrap);
            }
        }
        if (this.f1886e.position() == 0 && handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP && this.f1885d) {
            this.f1887f = true;
        }
    }

    public final void b() {
        while (true) {
            if (this.f1884c.pending() < 0) {
                this.f1887f = true;
            }
            ByteBuffer head = this.f1884c.head();
            b bVar = this.a;
            SSLEngineResult wrap = ((a) bVar).a.wrap(head, this.f1888g);
            a(wrap, "output");
            this.f1884c.pop(wrap.bytesConsumed());
            int pending = this.f1884c.pending();
            SSLEngineResult.Status status = wrap.getStatus();
            int i2 = a.a[status.ordinal()];
            if (i2 == 1) {
                this.f1887f = true;
            } else if (i2 == 2) {
                ByteBuffer byteBuffer = this.f1888g;
                ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.capacity() * 2);
                this.f1888g = allocate;
                this.f1889h = allocate.asReadOnlyBuffer();
                byteBuffer.flip();
                this.f1888g.put(byteBuffer);
            } else if (i2 == 3) {
                throw new IllegalStateException("app buffer underflow");
            }
            int i3 = a.b[wrap.getHandshakeStatus().ordinal()];
            if (i3 == 1) {
                continue;
            } else if (i3 != 2) {
                if (i3 == 3) {
                    b(wrap);
                } else if (i3 != 4) {
                    if (i3 == 5 && this.f1886e.position() == 0 && this.f1885d) {
                        this.f1887f = true;
                        return;
                    }
                    return;
                }
                if (pending <= 0 || status != SSLEngineResult.Status.OK) {
                    return;
                }
            } else {
                a(wrap);
            }
        }
    }

    public int capacity() {
        if (this.f1885d) {
            return -1;
        }
        return this.f1886e.remaining();
    }

    public void close_head() {
        this.f1884c.close_head();
        int pending = pending();
        if (pending > 0) {
            pop(pending);
        }
    }

    public void close_tail() {
        try {
            this.b.close_tail();
        } finally {
            this.f1885d = true;
        }
    }

    public ByteBuffer head() {
        pending();
        return this.f1889h;
    }

    public int pending() {
        try {
            b();
        } catch (SSLException e2) {
            f1883l.log(Level.WARNING, e2.getMessage());
            this.f1887f = true;
        }
        this.f1889h.limit(this.f1888g.position());
        if (!this.f1887f || this.f1888g.position() != 0) {
            return this.f1888g.position();
        }
        return -1;
    }

    public void pop(int i2) {
        this.f1888g.flip();
        this.f1888g.position(i2);
        this.f1888g.compact();
        this.f1889h.position(0);
        this.f1889h.limit(this.f1888g.position());
    }

    public int position() {
        if (this.f1885d) {
            return -1;
        }
        return this.f1886e.position();
    }

    public void process() {
        if (!this.f1885d) {
            this.f1886e.flip();
            try {
                a();
                this.f1886e.compact();
            } catch (SSLException e2) {
                if (f1883l.isLoggable(Level.FINEST)) {
                    f1883l.log(Level.FINEST, e2.getMessage(), e2);
                } else {
                    f1883l.log(Level.WARNING, e2.getMessage());
                }
                this.f1886e.position(this.f1886e.limit());
                this.f1885d = true;
                throw new d0((Throwable) e2);
            } catch (Throwable th) {
                this.f1886e.compact();
                throw th;
            }
        } else {
            throw new d0("tail closed");
        }
    }

    public ByteBuffer tail() {
        if (!this.f1885d) {
            return this.f1886e;
        }
        throw new d0("tail closed");
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("SimpleSslTransportWrapper [sslEngine=");
        a2.append(this.a);
        a2.append(", inputBuffer=");
        a2.append(this.f1886e);
        a2.append(", outputBuffer=");
        a2.append(this.f1888g);
        a2.append(", decodedInputBuffer=");
        a2.append(this.f1890i);
        a2.append(", cipherName=");
        a2.append(this.f1891j);
        a2.append(", protocolName=");
        return e.a.a.a.a.a(a2, this.f1892k, "]");
    }

    public final void b(SSLEngineResult sSLEngineResult) {
        if (sSLEngineResult.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
            this.f1891j = ((a) this.a).a.getSession().getCipherSuite();
            this.f1892k = ((a) this.a).a.getSession().getProtocol();
        }
    }

    public final void a(SSLEngineResult sSLEngineResult) {
        if (sSLEngineResult.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NEED_TASK) {
            while (true) {
                Runnable delegatedTask = ((a) this.a).a.getDelegatedTask();
                if (delegatedTask == null) {
                    break;
                }
                delegatedTask.run();
            }
            if (((a) this.a).a.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                throw new RuntimeException("handshake shouldn't need additional tasks");
            }
        }
    }

    public final void a(SSLEngineResult sSLEngineResult, String str) {
        if (f1883l.isLoggable(Level.FINEST)) {
            Logger logger = f1883l;
            Level level = Level.FINEST;
            StringBuilder a2 = e.a.a.a.a.a("useClientMode = ");
            a2.append(((a) this.a).a.getUseClientMode());
            a2.append(" direction = ");
            a2.append(str);
            a2.append(" ");
            a2.append("[SSLEngineResult status = " + sSLEngineResult.getStatus() + " handshakeStatus = " + sSLEngineResult.getHandshakeStatus() + " bytesConsumed = " + sSLEngineResult.bytesConsumed() + " bytesProduced = " + sSLEngineResult.bytesProduced() + "]");
            logger.log(level, a2.toString());
        }
    }
}
