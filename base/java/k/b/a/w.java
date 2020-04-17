package k.b.a;

import java.util.Enumeration;
import java.util.NoSuchElementException;

public class w implements Enumeration {
    public int a = 0;
    public final /* synthetic */ x b;

    public w(x xVar) {
        this.b = xVar;
    }

    public boolean hasMoreElements() {
        return this.a < this.b.x.length;
    }

    public Object nextElement() {
        int i2 = this.a;
        e[] eVarArr = this.b.x;
        if (i2 < eVarArr.length) {
            this.a = i2 + 1;
            return eVarArr[i2];
        }
        throw new NoSuchElementException("ASN1Set Enumeration");
    }
}
