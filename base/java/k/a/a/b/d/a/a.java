package k.a.a.b.d.a;

import java.io.Writer;

public class a extends b {
    public final b[] b;

    public a(b... bVarArr) {
        Object[] objArr;
        if (bVarArr == null) {
            objArr = null;
        } else {
            objArr = (Object[]) bVarArr.clone();
        }
        this.b = (b[]) objArr;
    }

    public int a(CharSequence charSequence, int i2, Writer writer) {
        for (b a : this.b) {
            int a2 = a.a(charSequence, i2, writer);
            if (a2 != 0) {
                return a2;
            }
        }
        return 0;
    }
}
