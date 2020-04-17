package e.b.a.a;

import java.io.Closeable;

public abstract class i implements Closeable {
    public int x;

    public enum a {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        ALLOW_MISSING_VALUES(false),
        ALLOW_TRAILING_COMMA(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false),
        INCLUDE_SOURCE_IN_LOCATION(true);
        
        public final boolean _defaultState;
        public final int _mask;

        /* access modifiers changed from: public */
        a(boolean z) {
            this._mask = 1 << ordinal();
            this._defaultState = z;
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

    public i() {
    }

    public byte[] a() {
        return a(b.b);
    }

    public abstract byte[] a(a aVar);

    public abstract g b();

    public abstract String b(String str);

    public abstract String c();

    public abstract void close();

    public String d() {
        return b((String) null);
    }

    public abstract boolean e();

    public abstract l f();

    public abstract l g();

    public i(int i2) {
        this.x = i2;
    }

    public boolean a(a aVar) {
        return aVar.enabledIn(this.x);
    }

    public h a(String str) {
        h hVar = new h(this, str);
        hVar.z = null;
        return hVar;
    }
}
