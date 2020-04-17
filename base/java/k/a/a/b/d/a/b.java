package k.a.a.b.d.a;

import java.io.Writer;

public abstract class b {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public abstract int a(CharSequence charSequence, int i2, Writer writer);

    public final b a(b... bVarArr) {
        b[] bVarArr2 = new b[(bVarArr.length + 1)];
        bVarArr2[0] = this;
        System.arraycopy(bVarArr, 0, bVarArr2, 1, bVarArr.length);
        return new a(bVarArr2);
    }
}
