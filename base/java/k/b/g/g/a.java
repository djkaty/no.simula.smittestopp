package k.b.g.g;

import com.microsoft.identity.common.internal.platform.DevicePopManager;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import k.b.a.i2.e;
import k.b.a.m2.f;
import k.b.a.o;

public class a {
    public static final Map b;
    public k.b.d.b.a a = new k.b.d.b.a();

    static {
        HashMap hashMap = new HashMap();
        b = hashMap;
        hashMap.put(f.m, "ECDSA");
        b.put(e.b, DevicePopManager.KeyPairGeneratorAlgorithms.RSA);
        b.put(f.r, "DSA");
    }

    public final KeyFactory a(k.b.a.l2.a aVar) {
        o oVar = aVar.x;
        String str = (String) b.get(oVar);
        if (str == null) {
            str = oVar.x;
        }
        try {
            if (this.a != null) {
                return KeyFactory.getInstance(str);
            }
            throw null;
        } catch (NoSuchAlgorithmException e2) {
            if (!str.equals("ECDSA")) {
                throw e2;
            } else if (this.a != null) {
                return KeyFactory.getInstance("EC");
            } else {
                throw null;
            }
        }
    }
}
