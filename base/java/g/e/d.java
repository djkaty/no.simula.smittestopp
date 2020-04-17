package g.e;

import g.a.d.c;
import g.a.d.h;
import g.a.d.i;
import g.c.d;
import g.c.f;
import g.c.g;
import g.c.m.a;
import g.d.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class d {
    public static final String[] a = (g.c.d.d().a == d.f.SOLARIS ? new String[]{"socket", "nsl", d.g.a.a()} : new String[]{d.g.a.a()});
    public static final a b;

    public interface a {
        static {
            c.F_GETFL.intValue();
            c.F_SETFL.intValue();
            g.a.d.d.O_NONBLOCK.intValue();
        }

        int a(int i2, int i3, int i4);

        int a(int i2, int i3, int i4, b bVar, g.c.k.a aVar);

        int a(int i2, int i3, int i4, ByteBuffer byteBuffer, int i5);

        int a(int i2, int i3, int i4, ByteBuffer byteBuffer, g.c.k.a aVar);

        int a(int i2, e eVar, int i3);

        int a(int i2, e eVar, g.c.k.a aVar);

        String a(int i2);

        int b(int i2, e eVar, int i3);

        int b(int i2, e eVar, g.c.k.a aVar);
    }

    static {
        Class<a> cls = a.class;
        g.c.m.c cVar = (g.c.m.c) a.C0085a.a;
        if (cVar != null) {
            g.c.m.b bVar = new g.c.m.b(cVar, cls);
            for (String add : a) {
                bVar.b.add(add);
            }
            b = (a) bVar.a();
            return;
        }
        throw null;
    }

    public static String a() {
        return b.a(f.a.a.a());
    }

    public static int a(int i2, h hVar, i iVar, int i3) {
        if (iVar == i.SO_RCVTIMEO || iVar == i.SO_SNDTIMEO) {
            new g.d.a(f.a.a).f1367c.a(new long[]{(long) (i3 / 1000), (((long) i3) % 1000) * 1000}[0]);
            throw null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(ByteOrder.nativeOrder());
        allocate.putInt(i3).flip();
        return b.a(i2, hVar.intValue(), iVar.intValue(), allocate, allocate.remaining());
    }

    public static int a(int i2, h hVar, i iVar, g gVar) {
        gVar.a.a(0);
        new g.c.k.a(gVar.a.b());
        throw null;
    }

    public static int a(int i2, h hVar, int i3) {
        if (i3 == i.SO_RCVTIMEO.intValue() || i3 == i.SO_SNDTIMEO.intValue()) {
            g.d.a aVar = new g.d.a(f.a.a);
            int i4 = i2;
            b.a(i4, hVar.intValue(), i3, (b) aVar, new g.c.k.a(aVar.a.b()));
            aVar.f1367c.b();
            throw null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(ByteOrder.nativeOrder());
        int i5 = i2;
        b.a(i5, hVar.intValue(), i3, allocate, new g.c.k.a(4));
        return allocate.getInt();
    }
}
