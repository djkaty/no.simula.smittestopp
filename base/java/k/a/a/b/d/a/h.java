package k.a.a.b.d.a;

import java.io.Writer;
import java.util.Arrays;
import java.util.EnumSet;

public class h extends b {
    public final EnumSet<a> b;

    public enum a {
        semiColonRequired,
        semiColonOptional,
        errorIfNoSemiColon
    }

    public h(a... aVarArr) {
        if (aVarArr.length > 0) {
            this.b = EnumSet.copyOf(Arrays.asList(aVarArr));
            return;
        }
        this.b = EnumSet.copyOf(Arrays.asList(new a[]{a.semiColonRequired}));
    }

    public int a(CharSequence charSequence, int i2, Writer writer) {
        int i3;
        int i4;
        int length = charSequence.length();
        if (charSequence.charAt(i2) == '&' && i2 < length - 2 && charSequence.charAt(i2 + 1) == '#') {
            int i5 = i2 + 2;
            char charAt = charSequence.charAt(i5);
            if (charAt == 'x' || charAt == 'X') {
                i5++;
                if (i5 == length) {
                    return 0;
                }
                i3 = 1;
            } else {
                i3 = 0;
            }
            int i6 = i5;
            while (i6 < length && ((charSequence.charAt(i6) >= '0' && charSequence.charAt(i6) <= '9') || ((charSequence.charAt(i6) >= 'a' && charSequence.charAt(i6) <= 'f') || (charSequence.charAt(i6) >= 'A' && charSequence.charAt(i6) <= 'F')))) {
                i6++;
            }
            int i7 = (i6 == length || charSequence.charAt(i6) != ';') ? 0 : 1;
            if (i7 == 0) {
                a aVar = a.semiColonRequired;
                EnumSet<a> enumSet = this.b;
                if (enumSet == null ? false : enumSet.contains(aVar)) {
                    return 0;
                }
                a aVar2 = a.errorIfNoSemiColon;
                EnumSet<a> enumSet2 = this.b;
                if (enumSet2 == null ? false : enumSet2.contains(aVar2)) {
                    throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
                }
            }
            if (i3 != 0) {
                try {
                    i4 = Integer.parseInt(charSequence.subSequence(i5, i6).toString(), 16);
                } catch (NumberFormatException unused) {
                }
            } else {
                i4 = Integer.parseInt(charSequence.subSequence(i5, i6).toString(), 10);
            }
            if (i4 > 65535) {
                char[] chars = Character.toChars(i4);
                writer.write(chars[0]);
                writer.write(chars[1]);
            } else {
                writer.write(i4);
            }
            return ((i6 + 2) - i5) + i3 + i7;
        }
        return 0;
    }
}
