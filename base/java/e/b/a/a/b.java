package e.b.a.a;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import com.microsoft.azure.storage.core.Base64;
import e.a.a.a.a;
import java.util.Arrays;

public final class b {
    public static final a a;
    public static final a b;

    static {
        a aVar = new a("MIME", Base64.BASE_64_CHARS, true, (char) Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR, 76);
        a = aVar;
        b = new a(aVar, "MIME-NO-LINEFEEDS", aVar.B, aVar.C, Integer.MAX_VALUE);
        a aVar2 = a;
        byte[] bArr = aVar2.z;
        System.arraycopy(bArr, 0, new byte[64], 0, bArr.length);
        char[] cArr = aVar2.y;
        System.arraycopy(cArr, 0, new char[64], 0, cArr.length);
        int[] iArr = aVar2.x;
        System.arraycopy(iArr, 0, new int[128], 0, iArr.length);
        StringBuilder sb = new StringBuilder(Base64.BASE_64_CHARS);
        sb.setCharAt(sb.indexOf("+"), '-');
        sb.setCharAt(sb.indexOf("/"), '_');
        String sb2 = sb.toString();
        int[] iArr2 = new int[128];
        char[] cArr2 = new char[64];
        byte[] bArr2 = new byte[64];
        int length = sb2.length();
        if (length == 64) {
            sb2.getChars(0, length, cArr2, 0);
            Arrays.fill(iArr2, -1);
            for (int i2 = 0; i2 < length; i2++) {
                char c2 = cArr2[i2];
                bArr2[i2] = (byte) c2;
                iArr2[c2] = i2;
            }
            return;
        }
        throw new IllegalArgumentException(a.b("Base64Alphabet length must be exactly 64 (was ", length, ")"));
    }
}
