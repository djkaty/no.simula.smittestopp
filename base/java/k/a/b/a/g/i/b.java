package k.a.b.a.g.i;

import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.ProtonIOException;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import k.a.b.a.b.f;
import k.a.b.a.b.n.j;
import k.a.b.a.d.c0;
import k.a.b.a.d.d0;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.r;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.h;
import k.a.b.a.g.g;

public class b extends k.a.b.a.d.a {
    public static g.a a = new a();
    public static g.a b = new C0097b();

    /* renamed from: c  reason: collision with root package name */
    public static g.a f1942c = new c();

    /* renamed from: d  reason: collision with root package name */
    public static g.a f1943d = new d();

    /* renamed from: e  reason: collision with root package name */
    public static g.a f1944e = new e();

    public static class a implements g.a {
        public void a(g gVar) {
            k.a.b.a.g.d b = gVar.b();
            c0 c0Var = ((j) gVar).J;
            if (c0Var.capacity() > 0) {
                try {
                    if (((SocketChannel) gVar.I()).read(c0Var.tail()) == -1) {
                        c0Var.close_tail();
                    } else {
                        c0Var.process();
                    }
                } catch (IOException | d0 e2) {
                    j jVar = new j();
                    jVar.a(f.a(ProtonIOException.errorCode));
                    jVar.b = e2.getMessage();
                    c0Var.a(jVar);
                    c0Var.close_tail();
                }
            }
            b.c(gVar);
            b.a(gVar);
        }
    }

    /* renamed from: k.a.b.a.g.i.b$b  reason: collision with other inner class name */
    public static class C0097b implements g.a {
        public void a(g gVar) {
            k.a.b.a.g.d b = gVar.b();
            c0 c0Var = ((j) gVar).J;
            int pending = c0Var.pending();
            if (pending > 0) {
                try {
                    int write = ((SocketChannel) gVar.I()).write(c0Var.head());
                    if (write < 0) {
                        c0Var.close_head();
                    } else {
                        c0Var.pop(write);
                    }
                } catch (IOException e2) {
                    j jVar = new j();
                    jVar.a(f.a(ProtonIOException.errorCode));
                    jVar.b = e2.getMessage();
                    c0Var.a(jVar);
                    c0Var.close_head();
                }
            }
            if (c0Var.pending() != pending) {
                b.c(gVar);
                b.a(gVar);
            }
        }
    }

    public static class c implements g.a {
        public void a(g gVar) {
            k.a.b.a.g.d b = gVar.b();
            gVar.p();
            b.a(gVar);
        }
    }

    public static class d implements g.a {
        public void a(g gVar) {
            k.a.b.a.g.d b = gVar.b();
            gVar.c(((j) gVar).J.a(b.S()));
            int a = b.a(gVar);
            int b2 = b.b(gVar);
            boolean z = true;
            gVar.a(a > 0);
            if (b2 <= 0) {
                z = false;
            }
            gVar.b(z);
            b.a(gVar);
        }
    }

    public static class e implements g.a {
        public void a(g gVar) {
            SelectableChannel I = gVar.I();
            if (I != null) {
                try {
                    I.close();
                } catch (IOException unused) {
                }
            }
        }
    }

    public static void c(g gVar) {
        j jVar = (j) gVar;
        int a2 = a(jVar);
        int b2 = b(jVar);
        boolean z = true;
        gVar.a(a2 > 0);
        if (b2 <= 0) {
            z = false;
        }
        gVar.b(z);
        gVar.c(jVar.J.a(jVar.I.S()));
    }

    public final void a(k.a.b.a.g.d dVar, k kVar) {
        long j2;
        if (dVar.o()) {
            long h2 = dVar.h();
            if (kVar != null) {
                long currentTimeMillis = System.currentTimeMillis();
                if (h2 > 0) {
                    Iterator<g> it = kVar.b.iterator();
                    long j3 = 0;
                    while (it.hasNext()) {
                        long Q = it.next().Q();
                        if (Q > 0) {
                            if (j3 == 0) {
                                j3 = Q;
                            } else {
                                j3 = Math.min(j3, Q);
                            }
                        }
                    }
                    if (j3 > 0) {
                        long j4 = j3 - currentTimeMillis;
                        if (j4 < 0) {
                            h2 = 0;
                        } else if (j4 < h2) {
                            h2 = j4;
                        }
                    }
                }
                kVar.f1948f.clear();
                if (h2 > 0) {
                    j2 = 0;
                    while (h2 > 0) {
                        kVar.a.select(h2);
                        j2 = System.currentTimeMillis();
                        Iterator<SelectionKey> it2 = kVar.a.selectedKeys().iterator();
                        while (it2.hasNext()) {
                            SelectionKey next = it2.next();
                            if (next.isConnectable()) {
                                try {
                                    ((SocketChannel) next.channel()).finishConnect();
                                    kVar.a((g) next.attachment());
                                } catch (IOException e2) {
                                    j jVar = (j) next.attachment();
                                    j jVar2 = new j();
                                    jVar2.a(f.a(ProtonIOException.errorCode));
                                    jVar2.b = e2.getMessage();
                                    c0 c0Var = jVar.J;
                                    if (c0Var != null) {
                                        c0Var.a(jVar2);
                                        c0Var.close_tail();
                                        c0Var.close_head();
                                        c0Var.pop(Math.max(0, c0Var.pending()));
                                    }
                                    kVar.f1948f.add(jVar);
                                }
                                it2.remove();
                            }
                        }
                        if (!kVar.a.selectedKeys().isEmpty()) {
                            break;
                        }
                        h2 -= j2 - currentTimeMillis;
                    }
                } else {
                    kVar.a.selectNow();
                    j2 = System.currentTimeMillis();
                }
                kVar.f1945c.clear();
                kVar.f1946d.clear();
                kVar.f1947e.clear();
                for (SelectionKey next2 : kVar.a.selectedKeys()) {
                    g gVar = (g) next2.attachment();
                    if (next2.isReadable()) {
                        kVar.f1945c.add(gVar);
                    }
                    if (next2.isAcceptable()) {
                        kVar.f1945c.add(gVar);
                    }
                    if (next2.isWritable()) {
                        kVar.f1946d.add(gVar);
                    }
                }
                kVar.a.selectedKeys().clear();
                Iterator<g> it3 = kVar.b.iterator();
                while (it3.hasNext()) {
                    g next3 = it3.next();
                    long Q2 = next3.Q();
                    if (Q2 > 0 && j2 >= Q2) {
                        kVar.f1947e.add(next3);
                    }
                }
                dVar.n();
                Iterator<g> it4 = kVar.f1945c.iterator();
                while (it4.hasNext()) {
                    it4.next().C();
                }
                Iterator<g> it5 = kVar.f1946d.iterator();
                while (it5.hasNext()) {
                    it5.next().u();
                }
                Iterator<g> it6 = kVar.f1947e.iterator();
                while (it6.hasNext()) {
                    it6.next().y();
                }
                Iterator<g> it7 = kVar.f1948f.iterator();
                while (it7.hasNext()) {
                    it7.next().N();
                }
                dVar.i();
                return;
            }
            throw null;
        }
    }

    public final void b(k.a.b.a.g.d dVar, h hVar) {
        int i2;
        String str;
        String str2;
        int indexOf;
        k.a.b.a.d.c U = ((k.a.b.a.d.g0.g) hVar).U();
        if (U.e() == k.a.b.a.d.g.UNINITIALIZED) {
            String f2 = U.f();
            if (f2 == null) {
                String a2 = dVar.a(U);
                if (a2 != null) {
                    int indexOf2 = a2.indexOf("://", 0);
                    if (indexOf2 >= 0) {
                        a2.substring(0, indexOf2);
                        i2 = indexOf2 + 3;
                    } else {
                        i2 = 0;
                    }
                    int indexOf3 = a2.indexOf("/", i2);
                    if (indexOf3 >= 0) {
                        str = a2.substring(i2, indexOf3);
                        a2.substring(indexOf3 + 1);
                    } else {
                        str = a2.substring(i2);
                    }
                    int indexOf4 = str.indexOf(64);
                    if (indexOf4 >= 0) {
                        String substring = str.substring(0, indexOf4);
                        str = str.substring(indexOf4 + 1);
                        int indexOf5 = substring.indexOf(58);
                        if (indexOf5 >= 0) {
                            substring.substring(0, indexOf5);
                            substring.substring(indexOf5 + 1);
                        }
                    }
                    if (!str.startsWith("[") || (indexOf = str.indexOf(93)) < 0) {
                        str2 = null;
                    } else {
                        str2 = str.substring(1, indexOf);
                        if (str.substring(indexOf + 1).startsWith(":")) {
                            str.substring(indexOf + 2);
                        }
                    }
                    if (str2 == null) {
                        int indexOf6 = str.indexOf(58);
                        if (indexOf6 >= 0) {
                            String substring2 = str.substring(0, indexOf6);
                            str.substring(indexOf6 + 1);
                            str = substring2;
                        }
                    } else {
                        str = str2;
                    }
                    if (str.startsWith("~")) {
                        str = str.substring(1);
                    }
                    U.c(str);
                }
            } else if (f2.isEmpty()) {
                U.c((String) null);
            }
            a0 a0Var = new a0();
            if (dVar.B() != null) {
                if (dVar.B().a) {
                    v vVar = (v) a0Var.E();
                    vVar.a();
                    vVar.a("ANONYMOUS");
                }
                a0Var.b(U);
                return;
            }
            throw null;
        }
    }

    public void onUnhandled(h hVar) {
        SelectionKey keyFor;
        k.a.b.a.d.g0.g gVar = (k.a.b.a.d.g0.g) hVar;
        try {
            d dVar = (d) gVar.b();
            k kVar = dVar.K;
            if (kVar == null) {
                kVar = new k(dVar.M);
                dVar.K = kVar;
            }
            int ordinal = gVar.w().ordinal();
            if (ordinal == 1) {
                a((k.a.b.a.g.d) dVar, kVar);
            } else if (ordinal == 5) {
                a((k.a.b.a.g.d) dVar, (h) gVar);
            } else if (ordinal == 7) {
                b(dVar, gVar);
            } else if (ordinal == 28) {
                g gVar2 = ((a0) gVar.l()).v0;
                if (gVar2 != null && !gVar2.P()) {
                    c(gVar2);
                    dVar.a(gVar2);
                }
            } else if (ordinal != 39) {
                switch (ordinal) {
                    case 32:
                        gVar.l().v();
                        return;
                    case 33:
                        g n = gVar.n();
                        if (n.I() != null) {
                            n.I().configureBlocking(false);
                            n.I().register(kVar.a, 0).attach(n);
                        }
                        kVar.b.add(n);
                        kVar.a(n);
                        return;
                    case 34:
                        kVar.a(gVar.n());
                        return;
                    default:
                        return;
                }
            } else {
                g n2 = gVar.n();
                if (!(n2.I() == null || (keyFor = n2.I().keyFor(kVar.a)) == null)) {
                    keyFor.cancel();
                    keyFor.attach((Object) null);
                }
                kVar.b.remove(n2);
                n2.c();
            }
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public static int b(g gVar) {
        c0 c0Var = ((j) gVar).J;
        int pending = c0Var.pending();
        if (pending < 0 && c0Var.m()) {
            gVar.p();
        }
        return pending;
    }

    public final void a(k.a.b.a.g.d dVar, h hVar) {
        int i2;
        String str;
        Socket socket;
        String str2;
        int i3;
        String str3;
        String str4;
        int indexOf;
        k.a.b.a.d.g0.g gVar = (k.a.b.a.d.g0.g) hVar;
        k.a.b.a.d.c U = gVar.U();
        if (k.a.b.a.g.a.class.cast(((r) U.q()).a.get("pn_reactor_connection_acceptor")) == null) {
            String a2 = dVar.a(U);
            String f2 = U.f();
            int i4 = 5672;
            SocketChannel socketChannel = null;
            if (a2 != null) {
                int indexOf2 = a2.indexOf("://", 0);
                if (indexOf2 >= 0) {
                    str2 = a2.substring(0, indexOf2);
                    i3 = indexOf2 + 3;
                } else {
                    i3 = 0;
                    str2 = null;
                }
                int indexOf3 = a2.indexOf("/", i3);
                if (indexOf3 >= 0) {
                    str = a2.substring(i3, indexOf3);
                    a2.substring(indexOf3 + 1);
                } else {
                    str = a2.substring(i3);
                }
                int indexOf4 = str.indexOf(64);
                if (indexOf4 >= 0) {
                    String substring = str.substring(0, indexOf4);
                    str = str.substring(indexOf4 + 1);
                    int indexOf5 = substring.indexOf(58);
                    if (indexOf5 >= 0) {
                        substring.substring(0, indexOf5);
                        substring.substring(indexOf5 + 1);
                    }
                }
                if (!str.startsWith("[") || (indexOf = str.indexOf(93)) < 0) {
                    str4 = null;
                    str3 = null;
                } else {
                    str3 = str.substring(1, indexOf);
                    str4 = str.substring(indexOf + 1).startsWith(":") ? str.substring(indexOf + 2) : null;
                }
                if (str3 == null) {
                    int indexOf6 = str.indexOf(58);
                    if (indexOf6 >= 0) {
                        String substring2 = str.substring(0, indexOf6);
                        str4 = str.substring(indexOf6 + 1);
                        str = substring2;
                    }
                } else {
                    str = str3;
                }
                if (str.startsWith("~")) {
                    str = str.substring(1);
                }
                if (str4 == null) {
                    try {
                        str4 = "amqps".equals(str2) ? "5671" : "5672";
                    } catch (NumberFormatException e2) {
                        throw new IllegalArgumentException(e.a.a.a.a.b("Not a valid host: ", a2), e2);
                    }
                }
                i2 = Integer.parseInt(str4);
            } else if (f2 == null || f2.equals("")) {
                throw new IllegalStateException("No address provided for Connection");
            } else {
                int indexOf7 = f2.indexOf(58);
                if (indexOf7 >= 0) {
                    try {
                        i4 = Integer.parseInt(f2.substring(indexOf7 + 1));
                        f2 = f2.substring(0, indexOf7);
                    } catch (NumberFormatException e3) {
                        throw new IllegalArgumentException(e.a.a.a.a.b("Not a valid host: ", f2), e3);
                    }
                }
                i2 = i4;
            }
            c0 l2 = gVar.U().l();
            try {
                if (((d) dVar).M != null) {
                    SocketChannel open = SocketChannel.open();
                    open.configureBlocking(false);
                    open.connect(new InetSocketAddress(str, i2));
                    socket = open.socket();
                    g w = dVar.w();
                    if (socket != null) {
                        socketChannel = socket.getChannel();
                    }
                    w.a((SelectableChannel) socketChannel);
                    w.a(a);
                    w.b(b);
                    w.d(f1942c);
                    w.e(f1943d);
                    w.c(f1944e);
                    ((j) w).J = l2;
                    a0 a0Var = (a0) l2;
                    a0Var.v0 = w;
                    a0Var.w0 = dVar;
                    c(w);
                    dVar.a(w);
                    return;
                }
                throw null;
            } catch (Exception e4) {
                j jVar = new j();
                jVar.a(f.a(ProtonIOException.errorCode));
                jVar.b = e4.getMessage();
                l2.a(jVar);
                l2.close_tail();
                l2.close_head();
                l2.pop(Math.max(0, l2.pending()));
                socket = null;
            }
        }
    }

    public static int a(g gVar) {
        c0 c0Var = ((j) gVar).J;
        int capacity = c0Var.capacity();
        if (capacity < 0 && c0Var.m()) {
            gVar.p();
        }
        return capacity;
    }
}
