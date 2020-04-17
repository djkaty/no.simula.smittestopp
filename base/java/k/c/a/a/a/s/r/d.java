package k.c.a.a.a.s.r;

import java.nio.ByteBuffer;
import java.security.SecureRandom;

public class d {
    public byte a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f2253c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2254d = false;

    public d(byte b2, boolean z, byte[] bArr) {
        this.a = b2;
        this.b = z;
        if (bArr != null) {
            this.f2253c = (byte[]) bArr.clone();
        }
    }

    public byte[] a() {
        byte[] bArr = this.f2253c;
        int length = bArr.length + 6;
        if (bArr.length > 65535) {
            length += 8;
        } else if (bArr.length >= 126) {
            length += 2;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        int i2 = 0;
        allocate.put((byte) ((this.a & 15) | (this.b ? (byte) 128 : 0)));
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr2 = {(byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255)};
        a(allocate, this.f2253c.length, true);
        allocate.put(bArr2);
        while (true) {
            byte[] bArr3 = this.f2253c;
            if (i2 >= bArr3.length) {
                allocate.flip();
                return allocate.array();
            }
            byte b2 = (byte) (bArr3[i2] ^ bArr2[i2 % 4]);
            bArr3[i2] = b2;
            allocate.put(b2);
            i2++;
        }
    }

    public static void a(ByteBuffer byteBuffer, int i2, boolean z) {
        if (i2 >= 0) {
            int i3 = z ? -128 : 0;
            if (i2 > 65535) {
                byteBuffer.put((byte) (i3 | 127));
                byteBuffer.put((byte) 0);
                byteBuffer.put((byte) 0);
                byteBuffer.put((byte) 0);
                byteBuffer.put((byte) 0);
                byteBuffer.put((byte) ((i2 >> 24) & 255));
                byteBuffer.put((byte) ((i2 >> 16) & 255));
                byteBuffer.put((byte) ((i2 >> 8) & 255));
                byteBuffer.put((byte) (i2 & 255));
            } else if (i2 >= 126) {
                byteBuffer.put((byte) (i3 | 126));
                byteBuffer.put((byte) (i2 >> 8));
                byteBuffer.put((byte) (i2 & 255));
            } else {
                byteBuffer.put((byte) (i2 | i3));
            }
        } else {
            throw new IllegalArgumentException("Length cannot be negative");
        }
    }
}
