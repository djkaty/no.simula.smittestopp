package k.a.a.b.d.a;

import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;

public class f extends b {
    public final HashMap<String, String> b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    public final HashSet<Character> f1564c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    public final int f1565d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1566e;

    public f(CharSequence[]... charSequenceArr) {
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        if (charSequenceArr != null) {
            int i4 = 0;
            for (CharSequence[] charSequenceArr2 : charSequenceArr) {
                this.b.put(charSequenceArr2[0].toString(), charSequenceArr2[1].toString());
                this.f1564c.add(Character.valueOf(charSequenceArr2[0].charAt(0)));
                int length = charSequenceArr2[0].length();
                i3 = length < i3 ? length : i3;
                if (length > i4) {
                    i4 = length;
                }
            }
            i2 = i4;
        }
        this.f1565d = i3;
        this.f1566e = i2;
    }

    public int a(CharSequence charSequence, int i2, Writer writer) {
        if (!this.f1564c.contains(Character.valueOf(charSequence.charAt(i2)))) {
            return 0;
        }
        int i3 = this.f1566e;
        if (i2 + i3 > charSequence.length()) {
            i3 = charSequence.length() - i2;
        }
        while (i3 >= this.f1565d) {
            String str = this.b.get(charSequence.subSequence(i2, i2 + i3).toString());
            if (str != null) {
                writer.write(str);
                return i3;
            }
            i3--;
        }
        return 0;
    }
}
