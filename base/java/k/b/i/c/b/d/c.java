package k.b.i.c.b.d;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import k.b.a.e;
import k.b.a.i2.f;
import k.b.a.l2.s;
import k.b.a.t;
import k.b.a.u;
import k.b.c.e.a;
import k.b.d.a.c.b;
import k.b.i.a.g;

public class c extends KeyFactorySpi implements b {
    public PrivateKey a(f fVar) {
        e f2 = fVar.f();
        k.b.i.a.f fVar2 = f2 instanceof k.b.i.a.f ? (k.b.i.a.f) f2 : f2 != null ? new k.b.i.a.f(u.a((Object) f2)) : null;
        short[][] b = a.b(fVar2.z);
        short[] c2 = a.c(fVar2.A);
        short[][] b2 = a.b(fVar2.B);
        short[] c3 = a.c(fVar2.C);
        byte[] bArr = fVar2.D;
        int[] iArr = new int[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        return new a(b, c2, b2, c3, iArr, fVar2.E);
    }

    public PrivateKey engineGeneratePrivate(KeySpec keySpec) {
        if (keySpec instanceof k.b.i.c.c.a) {
            return new a((k.b.i.c.c.a) keySpec);
        }
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return a(f.a(t.a(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e2) {
                throw new InvalidKeySpecException(e2.toString());
            }
        } else {
            StringBuilder a = e.a.a.a.a.a("Unsupported key specification: ");
            a.append(keySpec.getClass());
            a.append(CryptoConstants.ALIAS_SEPARATOR);
            throw new InvalidKeySpecException(a.toString());
        }
    }

    public PublicKey engineGeneratePublic(KeySpec keySpec) {
        if (keySpec instanceof k.b.i.c.c.b) {
            return new b((k.b.i.c.c.b) keySpec);
        }
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return a(s.a(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e2) {
                throw new InvalidKeySpecException(e2.toString());
            }
        } else {
            throw new InvalidKeySpecException("Unknown key specification: " + keySpec + CryptoConstants.ALIAS_SEPARATOR);
        }
    }

    public final KeySpec engineGetKeySpec(Key key, Class cls) {
        if (key instanceof a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
            if (k.b.i.c.c.a.class.isAssignableFrom(cls)) {
                a aVar = (a) key;
                return new k.b.i.c.c.a(aVar.x, aVar.y, aVar.z, aVar.A, aVar.C, aVar.B);
            }
        } else if (!(key instanceof b)) {
            StringBuilder a = e.a.a.a.a.a("Unsupported key type: ");
            a.append(key.getClass());
            a.append(CryptoConstants.ALIAS_SEPARATOR);
            throw new InvalidKeySpecException(a.toString());
        } else if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
            return new X509EncodedKeySpec(key.getEncoded());
        } else {
            if (k.b.i.c.c.b.class.isAssignableFrom(cls)) {
                b bVar = (b) key;
                return new k.b.i.c.c.b(bVar.A, bVar.x, bVar.a(), a.a(bVar.z));
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + CryptoConstants.ALIAS_SEPARATOR);
    }

    public final Key engineTranslateKey(Key key) {
        if ((key instanceof a) || (key instanceof b)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }

    public PublicKey a(s sVar) {
        t f2 = sVar.f();
        g gVar = f2 instanceof g ? (g) f2 : f2 != null ? new g(u.a((Object) f2)) : null;
        return new b(gVar.z.k(), a.b(gVar.A), a.b(gVar.B), a.c(gVar.C));
    }
}
