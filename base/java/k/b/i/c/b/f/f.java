package k.b.i.c.b.f;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import e.a.a.a.a;
import java.security.InvalidKeyException;
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
import k.b.d.a.c.b;

public class f extends KeyFactorySpi implements b {
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return new a(k.b.a.i2.f.a(t.a(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e2) {
                throw new InvalidKeySpecException(e2.toString());
            }
        } else {
            StringBuilder a = a.a("unsupported key specification: ");
            a.append(keySpec.getClass());
            a.append(CryptoConstants.ALIAS_SEPARATOR);
            throw new InvalidKeySpecException(a.toString());
        }
    }

    public PublicKey engineGeneratePublic(KeySpec keySpec) {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return new b(s.a(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e2) {
                throw new InvalidKeySpecException(e2.toString());
            }
        } else {
            throw new InvalidKeySpecException("unknown key specification: " + keySpec + CryptoConstants.ALIAS_SEPARATOR);
        }
    }

    public final KeySpec engineGetKeySpec(Key key, Class cls) {
        if (key instanceof a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else if (!(key instanceof b)) {
            StringBuilder a = a.a("unsupported key type: ");
            a.append(key.getClass());
            a.append(CryptoConstants.ALIAS_SEPARATOR);
            throw new InvalidKeySpecException(a.toString());
        } else if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
            return new X509EncodedKeySpec(key.getEncoded());
        }
        throw new InvalidKeySpecException("unknown key specification: " + cls + CryptoConstants.ALIAS_SEPARATOR);
    }

    public final Key engineTranslateKey(Key key) {
        if ((key instanceof a) || (key instanceof b)) {
            return key;
        }
        throw new InvalidKeyException("unsupported key type");
    }
}
