package k.b.j.g;

import java.io.ByteArrayOutputStream;

public class a {
    public static final d a = new b();

    public static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() / 4) * 3);
        try {
            a.a(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            StringBuilder a2 = e.a.a.a.a.a("unable to decode base64 string: ");
            a2.append(e2.getMessage());
            throw new c(a2.toString(), e2);
        }
    }
}
