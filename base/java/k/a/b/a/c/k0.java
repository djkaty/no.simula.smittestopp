package k.a.b.a.c;

import java.nio.ByteBuffer;
import java.nio.charset.CharsetDecoder;

public interface k0 {

    public static final class a implements k0 {
        public ByteBuffer a;

        public a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
        }

        public int a() {
            return this.a.limit();
        }

        public k0 b(int i2) {
            this.a.limit(i2);
            return this;
        }

        public int c() {
            return this.a.remaining();
        }

        public int d() {
            return this.a.getInt();
        }

        public ByteBuffer e() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k0)) {
                return false;
            }
            k0 k0Var = (k0) obj;
            if (c() != k0Var.c()) {
                return false;
            }
            if (obj instanceof l) {
                return obj.equals(this);
            }
            return this.a.equals(k0Var.e());
        }

        public double f() {
            return this.a.getDouble();
        }

        public k0 g() {
            return new a(this.a.duplicate());
        }

        public byte get() {
            return this.a.get();
        }

        public int h() {
            return this.a.arrayOffset();
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public k0 i() {
            return new a(this.a.slice());
        }

        public byte[] j() {
            return this.a.array();
        }

        public float k() {
            return this.a.getFloat();
        }

        public long l() {
            return this.a.getLong();
        }

        public short m() {
            return this.a.getShort();
        }

        public k0 n() {
            return this;
        }

        public boolean o() {
            return this.a.hasArray();
        }

        public int position() {
            return this.a.position();
        }

        public String toString() {
            return this.a.toString();
        }

        public k0 a(byte[] bArr, int i2, int i3) {
            this.a.get(bArr, i2, i3);
            return this;
        }

        public boolean b() {
            return this.a.hasRemaining();
        }

        public byte get(int i2) {
            return this.a.get(i2);
        }

        public k0 a(byte[] bArr) {
            this.a.get(bArr);
            return this;
        }

        public k0 a(int i2) {
            this.a.position(i2);
            return this;
        }

        public String a(CharsetDecoder charsetDecoder) {
            return charsetDecoder.decode(this.a).toString();
        }
    }

    int a();

    String a(CharsetDecoder charsetDecoder);

    k0 a(int i2);

    k0 a(byte[] bArr);

    k0 a(byte[] bArr, int i2, int i3);

    k0 b(int i2);

    boolean b();

    int c();

    int d();

    ByteBuffer e();

    double f();

    k0 g();

    byte get();

    byte get(int i2);

    int h();

    k0 i();

    byte[] j();

    float k();

    long l();

    short m();

    k0 n();

    boolean o();

    int position();
}
