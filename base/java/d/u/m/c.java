package d.u.m;

import com.microsoft.identity.client.internal.MsalUtils;

public class c {
    public static void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(MsalUtils.QUERY_STRING_SYMBOL);
            if (i3 < i2 - 1) {
                sb.append(",");
            }
        }
    }
}
