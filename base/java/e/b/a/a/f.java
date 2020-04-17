package e.b.a.a;

import java.io.Closeable;
import java.io.Flushable;

public abstract class f implements Closeable, Flushable {

    public enum a {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        FLUSH_PASSED_TO_STREAM(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        WRITE_NUMBERS_AS_STRINGS(false),
        WRITE_BIGDECIMAL_AS_PLAIN(false),
        ESCAPE_NON_ASCII(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNKNOWN(false);
        
        public final boolean _defaultState;
        public final int _mask;

        /* access modifiers changed from: public */
        a(boolean z) {
            this._defaultState = z;
            this._mask = 1 << ordinal();
        }

        public static int collectDefaults() {
            int i2 = 0;
            for (a aVar : values()) {
                if (aVar.enabledByDefault()) {
                    i2 |= aVar.getMask();
                }
            }
            return i2;
        }

        public boolean enabledByDefault() {
            return this._defaultState;
        }

        public boolean enabledIn(int i2) {
            return (i2 & this._mask) != 0;
        }

        public int getMask() {
            return this._mask;
        }
    }

    public abstract void a();

    public abstract void a(double d2);

    public abstract void a(int i2);

    public abstract void a(a aVar, byte[] bArr, int i2, int i3);

    public abstract void a(String str);

    public abstract void a(boolean z);

    public abstract void b();

    public abstract void b(String str);

    public abstract void c();

    public abstract void close();
}
