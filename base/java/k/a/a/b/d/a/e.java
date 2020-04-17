package k.a.a.b.d.a;

import e.a.a.a.a;
import java.io.Writer;
import java.util.Locale;

public class e extends c {
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1562c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f1563d;

    public e(int i2, int i3, boolean z) {
        this.b = i2;
        this.f1562c = i3;
        this.f1563d = z;
    }

    public static e a(int i2, int i3) {
        return new e(i2, i3, false);
    }

    public boolean a(int i2, Writer writer) {
        if (this.f1563d) {
            if (i2 < this.b || i2 > this.f1562c) {
                return false;
            }
        } else if (i2 >= this.b && i2 <= this.f1562c) {
            return false;
        }
        if (i2 > 65535) {
            char[] chars = Character.toChars(i2);
            StringBuilder a = a.a("\\u");
            a.append(Integer.toHexString(chars[0]).toUpperCase(Locale.ENGLISH));
            a.append("\\u");
            a.append(Integer.toHexString(chars[1]).toUpperCase(Locale.ENGLISH));
            writer.write(a.toString());
        } else {
            writer.write("\\u");
            writer.write(b.a[(i2 >> 12) & 15]);
            writer.write(b.a[(i2 >> 8) & 15]);
            writer.write(b.a[(i2 >> 4) & 15]);
            writer.write(b.a[i2 & 15]);
        }
        return true;
    }
}
