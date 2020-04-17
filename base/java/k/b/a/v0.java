package k.b.a;

import k.b.j.f;

public class v0 extends j {
    public v0(byte[] bArr) {
        super(bArr);
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 24, n());
    }

    public int f() {
        int length = n().length;
        return d2.a(length) + 1 + length;
    }

    public t h() {
        return this;
    }

    public t i() {
        return this;
    }

    public final byte[] n() {
        byte[] bArr = this.x;
        if (bArr[bArr.length - 1] != 90) {
            return bArr;
        }
        if (!l()) {
            byte[] bArr2 = this.x;
            byte[] bArr3 = new byte[(bArr2.length + 4)];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length - 1);
            System.arraycopy(f.a("0000Z"), 0, bArr3, this.x.length - 1, 5);
            return bArr3;
        } else if (!m()) {
            byte[] bArr4 = this.x;
            byte[] bArr5 = new byte[(bArr4.length + 2)];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 1);
            System.arraycopy(f.a("00Z"), 0, bArr5, this.x.length - 1, 3);
            return bArr5;
        } else if (!k()) {
            return this.x;
        } else {
            int length = this.x.length - 2;
            while (length > 0 && this.x[length] == 48) {
                length--;
            }
            byte[] bArr6 = this.x;
            if (bArr6[length] == 46) {
                byte[] bArr7 = new byte[(length + 1)];
                System.arraycopy(bArr6, 0, bArr7, 0, length);
                bArr7[length] = 90;
                return bArr7;
            }
            byte[] bArr8 = new byte[(length + 2)];
            int i2 = length + 1;
            System.arraycopy(bArr6, 0, bArr8, 0, i2);
            bArr8[i2] = 90;
            return bArr8;
        }
    }
}
