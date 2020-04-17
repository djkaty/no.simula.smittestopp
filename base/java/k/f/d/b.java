package k.f.d;

public enum b {
    ERROR(40, "ERROR"),
    WARN(30, "WARN"),
    INFO(20, "INFO"),
    DEBUG(10, "DEBUG"),
    TRACE(0, "TRACE");
    
    public int levelInt;
    public String levelStr;

    /* access modifiers changed from: public */
    b(int i2, String str) {
        this.levelInt = i2;
        this.levelStr = str;
    }

    public int toInt() {
        return this.levelInt;
    }

    public String toString() {
        return this.levelStr;
    }
}
