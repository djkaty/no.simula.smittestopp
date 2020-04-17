package g.b.a;

import g.a.d.d;
import g.c.e;
import java.nio.ByteBuffer;

public interface c {
    public static final int a = g.a.d.c.F_GETFL.intValue();
    public static final int b = g.a.d.c.F_SETFL.intValue();

    /* renamed from: c  reason: collision with root package name */
    public static final int f1337c = d.O_NONBLOCK.intValue();

    int a(int i2, int i3);

    int a(int i2, int i3, int i4);

    int a(int i2, e eVar, int i3, e eVar2, int i4, e eVar3);

    int a(int i2, ByteBuffer byteBuffer, long j2);

    int a(int i2, byte[] bArr, long j2);

    int a(ByteBuffer byteBuffer, int i2, int i3);

    int a(int[] iArr);

    String a(int i2);

    int b(int i2);

    int b(int i2, ByteBuffer byteBuffer, long j2);
}
