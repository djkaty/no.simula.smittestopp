package k.e.a;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;

public final class r extends IndexOutOfBoundsException {
    public r(String str, String str2, String str3, int i2) {
        super("Method too large: " + str + CryptoConstants.ALIAS_SEPARATOR + str2 + " " + str3);
    }
}
