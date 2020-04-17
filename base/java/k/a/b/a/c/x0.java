package k.a.b.a.c;

/* compiled from: WritableBuffer */
public final /* synthetic */ class x0 {
    public static void a(y0 y0Var, int i2) {
    }

    public static void a(y0 _this, String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if ((65408 & charAt) == 0) {
                _this.a((byte) charAt);
            } else if ((63488 & charAt) == 0) {
                _this.a((byte) (((charAt >> 6) & 31) | 192));
                _this.a((byte) ((charAt & '?') | 128));
            } else if ((charAt & 55296) != 55296 || charAt > 56319) {
                _this.a((byte) (((charAt >> 12) & 15) | 224));
                _this.a((byte) (((charAt >> 6) & 63) | 128));
                _this.a((byte) ((charAt & '?') | 128));
            } else {
                i2++;
                if (i2 != length) {
                    char charAt2 = str.charAt(i2);
                    if ((charAt2 & 56320) == 56320) {
                        int i3 = ((charAt & 1023) << 10) + 65536 + (charAt2 & 1023);
                        _this.a((byte) (((i3 >> 18) & 7) | 240));
                        _this.a((byte) (((i3 >> 12) & 63) | 128));
                        _this.a((byte) (((i3 >> 6) & 63) | 128));
                        _this.a((byte) ((i3 & 63) | 128));
                    }
                }
                throw new IllegalArgumentException("String contains invalid Unicode code points");
            }
            i2++;
        }
    }
}
