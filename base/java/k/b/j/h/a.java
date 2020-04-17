package k.b.j.h;

import java.io.InputStream;

public final class a {
    public static int a(InputStream inputStream, byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            int read = inputStream.read(bArr, i2 + i4, i3 - i4);
            if (read < 0) {
                break;
            }
            i4 += read;
        }
        return i4;
    }
}
