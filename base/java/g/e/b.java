package g.e;

import g.a.d.e;
import g.a.d.h;
import g.a.d.i;
import g.c.d;
import g.c.k.a;
import java.io.File;
import java.io.IOException;
import java.net.SocketOption;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.util.HashMap;
import java.util.Map;

public final class b {
    public static d.f a = d.d().a;
    public static final Map<SocketOption<?>, i> b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final Map<SocketOption<?>, i> f1369c = new HashMap();

    static {
        b.put(j.f1380c, i.SO_RCVBUF);
        b.put(j.a, i.SO_SNDBUF);
        b.put(j.f1381d, i.SO_RCVTIMEO);
        b.put(j.b, i.SO_SNDTIMEO);
        b.put(j.f1382e, i.SO_KEEPALIVE);
        b.put(j.f1384g, i.SO_PASSCRED);
        f1369c.putAll(b);
        f1369c.put(j.f1383f, i.SO_PEERCRED);
    }

    public static h a(int i2, h hVar) {
        e eVar;
        if (hVar == null) {
            eVar = e.e();
            eVar.a(e.PF_UNIX);
            if (a == d.f.LINUX) {
                eVar.a("");
            } else {
                File file = Files.createTempFile("jnr-unixsocket-tmp", ".sock", new FileAttribute[0]).toFile();
                file.deleteOnExit();
                file.delete();
                eVar.a(file.getPath());
            }
        } else {
            eVar = hVar.x;
        }
        if (d.b.a(i2, eVar, eVar.d()) >= 0) {
            return b(i2);
        }
        throw new IOException(d.a());
    }

    public static h b(int i2) {
        h hVar = new h();
        e eVar = hVar.x;
        a aVar = new a(eVar.c().f1360d + 2);
        if (d.b.b(i2, eVar, aVar) >= 0) {
            eVar.a(((Integer) aVar.x).intValue());
            return hVar;
        }
        throw new Error(d.a());
    }

    public static h a(int i2) {
        h hVar = new h();
        e eVar = hVar.x;
        a aVar = new a(eVar.c().f1360d + 2);
        if (d.b.a(i2, eVar, aVar) >= 0) {
            eVar.a(((Integer) aVar.x).intValue());
            return hVar;
        }
        throw new Error(d.a());
    }

    public static void a(int i2, SocketOption<?> socketOption, Object obj) {
        int i3;
        Class<Integer> cls = Integer.class;
        if (obj != null) {
            i iVar = b.get(socketOption);
            if (iVar != null) {
                Class<?> type = socketOption.type();
                if (type == cls || type == Boolean.class) {
                    if (type == cls) {
                        i3 = ((Integer) obj).intValue();
                    } else {
                        i3 = ((Boolean) obj).booleanValue();
                    }
                    if ((socketOption == j.f1380c || socketOption == j.a) && ((Integer) obj).intValue() < 0) {
                        throw new IllegalArgumentException("Invalid send/receive buffer size");
                    } else if ((socketOption == j.f1381d || socketOption == j.b) && ((Integer) obj).intValue() < 0) {
                        throw new IllegalArgumentException("Invalid send/receive timeout");
                    } else if (d.a(i2, h.SOL_SOCKET, iVar, i3) != 0) {
                        throw new IOException(d.a());
                    }
                } else {
                    throw new AssertionError("Unsupported option type");
                }
            } else {
                throw new AssertionError("Option not found or not writable");
            }
        } else {
            throw new IllegalArgumentException("Invalid option value");
        }
    }
}
