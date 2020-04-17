package e.e.a;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import e.e.a.v.c;
import java.io.Serializable;
import java.text.ParseException;

public abstract class g implements Serializable {
    public p x = null;
    public c[] y = null;

    public String a() {
        if (this.y == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (c cVar : this.y) {
            if (sb.length() > 0) {
                sb.append('.');
            }
            if (cVar != null) {
                sb.append(cVar.x);
            }
        }
        return sb.toString();
    }

    public static c[] a(String str) {
        String trim = str.trim();
        int indexOf = trim.indexOf(CryptoConstants.ALIAS_SEPARATOR);
        if (indexOf != -1) {
            int i2 = indexOf + 1;
            int indexOf2 = trim.indexOf(CryptoConstants.ALIAS_SEPARATOR, i2);
            if (indexOf2 != -1) {
                int i3 = indexOf2 + 1;
                int indexOf3 = trim.indexOf(CryptoConstants.ALIAS_SEPARATOR, i3);
                if (indexOf3 == -1) {
                    return new c[]{new c(trim.substring(0, indexOf)), new c(trim.substring(i2, indexOf2)), new c(trim.substring(i3))};
                }
                int i4 = indexOf3 + 1;
                int indexOf4 = trim.indexOf(CryptoConstants.ALIAS_SEPARATOR, i4);
                if (indexOf4 == -1) {
                    throw new ParseException("Invalid serialized JWE object: Missing fourth delimiter", 0);
                } else if (indexOf4 == -1 || trim.indexOf(CryptoConstants.ALIAS_SEPARATOR, indexOf4 + 1) == -1) {
                    return new c[]{new c(trim.substring(0, indexOf)), new c(trim.substring(i2, indexOf2)), new c(trim.substring(i3, indexOf3)), new c(trim.substring(i4, indexOf4)), new c(trim.substring(indexOf4 + 1))};
                } else {
                    throw new ParseException("Invalid serialized unsecured/JWS/JWE object: Too many part delimiters", 0);
                }
            } else {
                throw new ParseException("Invalid serialized unsecured/JWS/JWE object: Missing second delimiter", 0);
            }
        } else {
            throw new ParseException("Invalid serialized unsecured/JWS/JWE object: Missing part delimiters", 0);
        }
    }
}
