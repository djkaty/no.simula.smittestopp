package e.b.a.a;

public enum c {
    UTF8("UTF-8", false, 8),
    UTF16_BE("UTF-16BE", true, 16),
    UTF16_LE("UTF-16LE", false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);
    
    public final boolean _bigEndian;
    public final int _bits;
    public final String _javaName;

    /* access modifiers changed from: public */
    c(String str, boolean z, int i2) {
        this._javaName = str;
        this._bigEndian = z;
        this._bits = i2;
    }

    public int bits() {
        return this._bits;
    }

    public String getJavaName() {
        return this._javaName;
    }

    public boolean isBigEndian() {
        return this._bigEndian;
    }
}
