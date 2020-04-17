package k.a.a.b.d.a;

import java.io.Writer;

public abstract class c extends b {
    public final int a(CharSequence charSequence, int i2, Writer writer) {
        return a(Character.codePointAt(charSequence, i2), writer) ? 1 : 0;
    }

    public abstract boolean a(int i2, Writer writer);
}
