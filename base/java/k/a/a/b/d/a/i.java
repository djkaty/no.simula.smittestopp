package k.a.a.b.d.a;

import java.io.Writer;

public class i extends b {
    public int a(CharSequence charSequence, int i2, Writer writer) {
        int length = (charSequence.length() - i2) - 1;
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        if (charSequence.charAt(i2) == '\\' && length > 0) {
            int i3 = i2 + 1;
            if (a(charSequence.charAt(i3))) {
                int i4 = i2 + 2;
                int i5 = i2 + 3;
                sb.append(charSequence.charAt(i3));
                if (length > 1 && a(charSequence.charAt(i4))) {
                    sb.append(charSequence.charAt(i4));
                    if (length > 2) {
                        char charAt = charSequence.charAt(i3);
                        if (charAt >= '0' && charAt <= '3') {
                            z = true;
                        }
                        if (z && a(charSequence.charAt(i5))) {
                            sb.append(charSequence.charAt(i5));
                        }
                    }
                }
                writer.write(Integer.parseInt(sb.toString(), 8));
                return sb.length() + 1;
            }
        }
        return 0;
    }

    public final boolean a(char c2) {
        return c2 >= '0' && c2 <= '7';
    }
}
