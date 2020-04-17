package k.a.b.a.d.g0;

public class w extends l<l0, l0> {
    public w(l0 l0Var, l0 l0Var2) {
        super(l0Var, l0Var2);
    }

    public int bufferSize() {
        return b.b.length;
    }

    public void makeDetermination(byte[] bArr) {
        if (bArr.length >= b.b.length) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = b.b;
                if (i2 >= bArr2.length) {
                    this._selectedTransportWrapper = this._wrapper1;
                    return;
                } else if (bArr[i2] != bArr2[i2]) {
                    this._selectedTransportWrapper = this._wrapper2;
                    return;
                } else {
                    i2++;
                }
            }
        } else {
            throw new IllegalArgumentException("insufficient bytes");
        }
    }
}
