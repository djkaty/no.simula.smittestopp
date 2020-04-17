package k.b.i.c.b.a;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import java.io.IOException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import k.b.a.l2.s;
import k.b.a.t;
import k.b.a.u;
import k.b.d.a.c.b;
import k.b.i.a.c;
import k.b.i.a.e;
import k.b.i.d.a.a;
import k.b.i.d.a.d;

public class f extends KeyFactorySpi implements b {
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                k.b.a.i2.f a = k.b.a.i2.f.a(t.a(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
                try {
                    if (e.f2068c.b(a.y.x)) {
                        k.b.a.e f2 = a.f();
                        c cVar = f2 instanceof c ? (c) f2 : f2 != null ? new c(u.a((Object) f2)) : null;
                        return new c(new k.b.i.b.a.e(cVar.x, cVar.y, new k.b.i.d.a.b(cVar.z), new k.b.i.d.a.e(new k.b.i.d.a.b(cVar.z), cVar.A), new d(cVar.C), new d(cVar.D), new a(cVar.B)));
                    }
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                } catch (IOException unused) {
                    throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec.");
                }
            } catch (IOException e2) {
                throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec: " + e2);
            }
        } else {
            StringBuilder a2 = e.a.a.a.a.a("Unsupported key specification: ");
            a2.append(keySpec.getClass());
            a2.append(CryptoConstants.ALIAS_SEPARATOR);
            throw new InvalidKeySpecException(a2.toString());
        }
    }

    public PublicKey engineGeneratePublic(KeySpec keySpec) {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                s a = s.a(t.a(((X509EncodedKeySpec) keySpec).getEncoded()));
                try {
                    if (e.f2068c.b(a.x.x)) {
                        t f2 = a.f();
                        k.b.i.a.d dVar = f2 instanceof k.b.i.a.d ? (k.b.i.a.d) f2 : f2 != null ? new k.b.i.a.d(u.a((Object) f2)) : null;
                        return new d(new k.b.i.b.a.f(dVar.x, dVar.y, new a(dVar.z)));
                    }
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                } catch (IOException e2) {
                    StringBuilder a2 = e.a.a.a.a.a("Unable to decode X509EncodedKeySpec: ");
                    a2.append(e2.getMessage());
                    throw new InvalidKeySpecException(a2.toString());
                }
            } catch (IOException e3) {
                throw new InvalidKeySpecException(e3.toString());
            }
        } else {
            StringBuilder a3 = e.a.a.a.a.a("Unsupported key specification: ");
            a3.append(keySpec.getClass());
            a3.append(CryptoConstants.ALIAS_SEPARATOR);
            throw new InvalidKeySpecException(a3.toString());
        }
    }

    public KeySpec engineGetKeySpec(Key key, Class cls) {
        return null;
    }

    public Key engineTranslateKey(Key key) {
        return null;
    }
}
