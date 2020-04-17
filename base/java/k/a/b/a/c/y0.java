package k.a.b.a.c;

import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

public interface y0 {

    public static class a implements y0 {
        public final ByteBuffer a;

        public a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
        }

        public void a(byte b) {
            this.a.put(b);
        }

        public void b(int i2) {
            this.a.putInt(i2);
        }

        public void c(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Required remaining bytes cannot be negative");
            } else if (this.a.remaining() < i2) {
                throw ((BufferOverflowException) new BufferOverflowException().initCause(new IndexOutOfBoundsException(String.format("Requested min remaining bytes(%d) exceeds remaining(%d) in underlying ByteBuffer: %s", new Object[]{Integer.valueOf(i2), Integer.valueOf(this.a.remaining()), this.a}))));
            }
        }

        public int position() {
            return this.a.position();
        }

        public String toString() {
            return String.format("[pos: %d, limit: %d, remaining:%d]", new Object[]{Integer.valueOf(this.a.position()), Integer.valueOf(this.a.limit()), Integer.valueOf(this.a.remaining())});
        }

        public void a(float f2) {
            this.a.putFloat(f2);
        }

        public boolean b() {
            return this.a.hasRemaining();
        }

        public void a(double d2) {
            this.a.putDouble(d2);
        }

        public void a(byte[] bArr, int i2, int i3) {
            this.a.put(bArr, i2, i3);
        }

        public void a(short s) {
            this.a.putShort(s);
        }

        public void a(long j2) {
            this.a.putLong(j2);
        }

        public void a(int i2) {
            this.a.position(i2);
        }

        public int c() {
            return this.a.remaining();
        }

        public void a(ByteBuffer byteBuffer) {
            this.a.put(byteBuffer);
        }

        public void a(String str) {
            int i2;
            int length = str.length();
            int position = this.a.position();
            int i3 = 0;
            while (i3 < length) {
                char charAt = str.charAt(i3);
                if ((65408 & charAt) == 0) {
                    i2 = position + 1;
                    try {
                        a(position, (byte) charAt);
                    } catch (IndexOutOfBoundsException unused) {
                        throw new BufferOverflowException();
                    }
                } else {
                    if ((63488 & charAt) == 0) {
                        int i4 = position + 1;
                        a(position, (byte) (((charAt >> 6) & 31) | 192));
                        position = i4 + 1;
                        a(i4, (byte) ((charAt & '?') | 128));
                    } else {
                        if ((charAt & 55296) == 55296) {
                            if (charAt <= 56319) {
                                i3++;
                                if (i3 != length) {
                                    char charAt2 = str.charAt(i3);
                                    if ((charAt2 & 56320) == 56320) {
                                        int i5 = ((charAt & 1023) << 10) + 65536 + (charAt2 & 1023);
                                        int i6 = position + 1;
                                        a(position, (byte) (((i5 >> 18) & 7) | 240));
                                        int i7 = i6 + 1;
                                        a(i6, (byte) (((i5 >> 12) & 63) | 128));
                                        int i8 = i7 + 1;
                                        a(i7, (byte) (((i5 >> 6) & 63) | 128));
                                        position = i8 + 1;
                                        a(i8, (byte) ((i5 & 63) | 128));
                                    }
                                }
                                throw new IllegalArgumentException("String contains invalid Unicode code points");
                            }
                        }
                        int i9 = position + 1;
                        a(position, (byte) (((charAt >> 12) & 15) | 224));
                        int i10 = i9 + 1;
                        a(i9, (byte) (((charAt >> 6) & 63) | 128));
                        i2 = i10 + 1;
                        a(i10, (byte) ((charAt & '?') | 128));
                    }
                    i3++;
                }
                position = i2;
                i3++;
            }
            this.a.position(position);
        }

        public int a() {
            return this.a.limit();
        }

        public final void a(int i2, byte b) {
            if (this.a.hasArray()) {
                this.a.array()[this.a.arrayOffset() + i2] = b;
            } else {
                this.a.put(i2, b);
            }
        }
    }

    int a();

    void a(byte b);

    void a(double d2);

    void a(float f2);

    void a(int i2);

    void a(long j2);

    void a(String str);

    void a(ByteBuffer byteBuffer);

    void a(short s);

    void a(byte[] bArr, int i2, int i3);

    void b(int i2);

    boolean b();

    int c();

    void c(int i2);

    int position();
}
