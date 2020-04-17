package k.a.b.a.c;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

public class m implements y0 {
    public final y0 a;
    public final y0 b;

    public m(y0 y0Var, y0 y0Var2) {
        this.a = y0Var;
        this.b = y0Var2;
    }

    public void a(byte b2) {
        (this.a.b() ? this.a : this.b).a(b2);
    }

    public void b(int i2) {
        int c2 = this.a.c();
        if (c2 >= 4) {
            this.a.b(i2);
        } else if (c2 == 0) {
            this.b.b(i2);
        } else {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[4]);
            wrap.putInt(i2);
            wrap.flip();
            a(wrap);
        }
    }

    public int c() {
        return this.b.c() + this.a.c();
    }

    public /* synthetic */ void c(int i2) {
        x0.a((y0) this, i2);
    }

    public int position() {
        return this.b.position() + this.a.position();
    }

    public String toString() {
        return this.a.toString() + " + " + this.b.toString();
    }

    public void a(float f2) {
        b(Float.floatToRawIntBits(f2));
    }

    public void a(double d2) {
        a(Double.doubleToRawLongBits(d2));
    }

    public void a(short s) {
        int c2 = this.a.c();
        if (c2 >= 2) {
            this.a.a(s);
        } else if (c2 == 0) {
            this.b.a(s);
        } else {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[2]);
            wrap.putShort(s);
            wrap.flip();
            a(wrap);
        }
    }

    public boolean b() {
        return this.a.b() || this.b.b();
    }

    public void a(long j2) {
        int c2 = this.a.c();
        if (c2 >= 8) {
            this.a.a(j2);
        } else if (c2 == 0) {
            this.b.a(j2);
        } else {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[8]);
            wrap.putLong(j2);
            wrap.flip();
            a(wrap);
        }
    }

    public int a() {
        return this.b.a() + this.a.a();
    }

    public void a(int i2) {
        int a2 = this.a.a();
        if (i2 <= a2) {
            this.a.a(i2);
            this.b.a(0);
            return;
        }
        this.a.a(a2);
        this.b.a(i2 - a2);
    }

    public void a(byte[] bArr, int i2, int i3) {
        int c2 = this.a.c();
        if (c2 > 0) {
            if (c2 >= i3) {
                this.a.a(bArr, i2, i3);
                return;
            }
            this.a.a(bArr, i2, c2);
        }
        this.b.a(bArr, i2 + c2, i3 - c2);
    }

    public void a(ByteBuffer byteBuffer) {
        int c2 = this.a.c();
        if (c2 > 0) {
            if (c2 >= byteBuffer.remaining()) {
                this.a.a(byteBuffer);
                return;
            }
            int limit = byteBuffer.limit();
            byteBuffer.limit(byteBuffer.position() + c2);
            this.a.a(byteBuffer);
            byteBuffer.limit(limit);
        }
        this.b.a(byteBuffer);
    }

    public void a(String str) {
        if (this.a.b()) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            a(bytes, 0, bytes.length);
            return;
        }
        this.b.a(str);
    }
}
