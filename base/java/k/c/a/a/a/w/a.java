package k.c.a.a.a.w;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.Enumeration;
import java.util.Properties;

public class a {
    public static final String a = System.getProperty("line.separator", "\n");

    public static String a(Properties properties, String str) {
        String str2;
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration<?> propertyNames = properties.propertyNames();
        stringBuffer.append(String.valueOf(a) + "==============" + " " + str + " " + "==============" + a);
        while (propertyNames.hasMoreElements()) {
            String str3 = (String) propertyNames.nextElement();
            if (str3.length() >= 28) {
                str2 = str3;
            } else {
                StringBuffer stringBuffer2 = new StringBuffer(28);
                stringBuffer2.append(str3);
                int length = 28 - str3.length();
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    stringBuffer2.append(WWWAuthenticateHeader.SPACE);
                }
                str2 = stringBuffer2.toString();
            }
            stringBuffer.append(String.valueOf(str2) + ":  " + properties.get(str3) + a);
        }
        stringBuffer.append("==========================================" + a);
        return stringBuffer.toString();
    }
}
