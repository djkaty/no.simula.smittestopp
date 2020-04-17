package k.a.a.b.d.a;

import e.a.a.a.a;
import java.io.Writer;

public class j extends b {
    public int a(CharSequence charSequence, int i2, Writer writer) {
        int i3;
        int i4;
        if (charSequence.charAt(i2) != '\\' || (i3 = i2 + 1) >= charSequence.length() || charSequence.charAt(i3) != 'u') {
            return 0;
        }
        int i5 = 2;
        while (true) {
            i4 = i2 + i5;
            if (i4 < charSequence.length() && charSequence.charAt(i4) == 'u') {
                i5++;
            }
        }
        if (i4 < charSequence.length() && charSequence.charAt(i4) == '+') {
            i5++;
        }
        int i6 = i2 + i5;
        int i7 = i6 + 4;
        if (i7 <= charSequence.length()) {
            CharSequence subSequence = charSequence.subSequence(i6, i7);
            try {
                writer.write((char) Integer.parseInt(subSequence.toString(), 16));
                return i5 + 4;
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException("Unable to parse unicode value: " + subSequence, e2);
            }
        } else {
            StringBuilder a = a.a("Less than 4 hex digits in unicode value: '");
            a.append(charSequence.subSequence(i2, charSequence.length()));
            a.append("' due to end of CharSequence");
            throw new IllegalArgumentException(a.toString());
        }
    }
}
