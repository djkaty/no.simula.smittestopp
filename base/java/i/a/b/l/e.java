package i.a.b.l;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;

public class e extends Exception {
    public Object x;

    public e(int i2, int i3, Object obj) {
        super(a(i2, i3, obj));
        this.x = obj;
    }

    public static String a(int i2, int i3, Object obj) {
        StringBuilder sb = new StringBuilder();
        if (i3 == 0) {
            sb.append("Unexpected character (");
            sb.append(obj);
            sb.append(") at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        } else if (i3 == 1) {
            sb.append("Unexpected token ");
            sb.append(obj);
            sb.append(" at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        } else if (i3 == 2) {
            sb.append("Unexpected exception ");
            sb.append(obj);
            sb.append(" occur at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        } else if (i3 == 3) {
            sb.append("Unexpected End Of File position ");
            sb.append(i2);
            sb.append(": ");
            sb.append(obj);
        } else if (i3 == 4) {
            sb.append("Unexpected unicode escape sequence ");
            sb.append(obj);
            sb.append(" at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        } else if (i3 == 5) {
            sb.append("Unexpected duplicate key:");
            sb.append(obj);
            sb.append(" at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        } else if (i3 == 6) {
            sb.append("Unexpected leading 0 in digit for token:");
            sb.append(obj);
            sb.append(" at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        } else {
            sb.append("Unkown error at position ");
            sb.append(i2);
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
        }
        return sb.toString();
    }

    public e(int i2, Throwable th) {
        super(a(i2, 2, th), th);
    }
}
