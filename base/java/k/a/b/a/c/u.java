package k.a.b.a.c;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

public class u implements y0 {
    public int a = 0;

    public int a() {
        return Integer.MAX_VALUE;
    }

    public void a(byte b) {
        this.a++;
    }

    public void b(int i2) {
        this.a += 4;
    }

    public boolean b() {
        return true;
    }

    public int c() {
        return Integer.MAX_VALUE - this.a;
    }

    public /* synthetic */ void c(int i2) {
        x0.a((y0) this, i2);
    }

    public int position() {
        return this.a;
    }

    public void a(float f2) {
        this.a += 4;
    }

    public void a(double d2) {
        this.a += 8;
    }

    public void a(byte[] bArr, int i2, int i3) {
        this.a += i3;
    }

    public void a(short s) {
        this.a += 2;
    }

    public void a(long j2) {
        this.a += 8;
    }

    public void a(int i2) {
        this.a = i2;
    }

    public void a(ByteBuffer byteBuffer) {
        this.a = byteBuffer.remaining() + this.a;
        byteBuffer.position(byteBuffer.limit());
    }

    public void a(String str) {
        this.a += str.getBytes(StandardCharsets.UTF_8).length;
    }
}
