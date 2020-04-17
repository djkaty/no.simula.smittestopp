package e.e.a;

import com.microsoft.azure.storage.Constants;

public final class d extends a {
    public static final d A = new d("A192CBC-HS384", r.OPTIONAL, 384);
    public static final d B = new d("A256CBC-HS512", r.REQUIRED, Constants.PAGE_SIZE);
    public static final d C = new d("A128CBC+HS256", r.OPTIONAL, 256);
    public static final d D = new d("A256CBC+HS512", r.OPTIONAL, Constants.PAGE_SIZE);
    public static final d E = new d("A128GCM", r.RECOMMENDED, 128);
    public static final d F = new d("A192GCM", r.OPTIONAL, 192);
    public static final d G = new d("A256GCM", r.RECOMMENDED, 256);
    public static final d z = new d("A128CBC-HS256", r.REQUIRED, 256);

    public d(String str) {
        super(str, (r) null);
    }

    public d(String str, r rVar, int i2) {
        super(str, rVar);
    }
}
