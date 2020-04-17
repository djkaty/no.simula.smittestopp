package k.b.e.a;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import k.b.a.o;
import k.b.d.a.c.b;
import k.b.i.a.e;
import k.b.i.c.b.e.c;
import k.b.i.c.b.f.f;

public final class a extends Provider implements k.b.d.a.a.a {
    public static final String[] A = {StorageHelper.KEYSPEC_ALGORITHM, "ARC4", "ARIA", "Blowfish", "Camellia", "CAST5", "CAST6", "ChaCha", "DES", "DESede", "GOST28147", "Grainv1", "Grain128", "HC128", "HC256", "IDEA", "Noekeon", "RC2", "RC5", "RC6", "Rijndael", "Salsa20", "SEED", "Serpent", "Shacal2", "Skipjack", "SM4", "TEA", "Twofish", "Threefish", "VMPC", "VMPCKSA3", "XTEA", "XSalsa20", "OpenSSLPBKDF", "DSTU7624", "GOST3412_2015", "Zuc"};
    public static final String[] B = {"X509", "IES"};
    public static final String[] C = {"DSA", "DH", "EC", DevicePopManager.KeyPairGeneratorAlgorithms.RSA, "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC"};
    public static final String[] D = {"GOST3411", "Keccak", "MD2", "MD4", DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM, "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564", "Haraka"};
    public static final String[] E = {"BC", "BCFKS", "PKCS12"};
    public static final String[] F = {"DRBG"};
    public static final Map x = new HashMap();
    public static final String[] y = {"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};
    public static final String[] z = {"SipHash", "Poly1305"};

    /* renamed from: k.b.e.a.a$a  reason: collision with other inner class name */
    public class C0099a implements PrivilegedAction {
        public C0099a() {
        }

        public Object run() {
            a aVar = a.this;
            aVar.a("org.bouncycastle.jcajce.provider.digest.", a.D);
            aVar.a("org.bouncycastle.jcajce.provider.symmetric.", a.y);
            aVar.a("org.bouncycastle.jcajce.provider.symmetric.", a.z);
            aVar.a("org.bouncycastle.jcajce.provider.symmetric.", a.A);
            aVar.a("org.bouncycastle.jcajce.provider.asymmetric.", a.B);
            aVar.a("org.bouncycastle.jcajce.provider.asymmetric.", a.C);
            aVar.a("org.bouncycastle.jcajce.provider.keystore.", a.E);
            aVar.a("org.bouncycastle.jcajce.provider.drbg.", a.F);
            aVar.a(e.f2070e, (b) new c());
            aVar.a(e.f2071f, (b) new k.b.i.c.b.b.c());
            aVar.a(e.f2072g, (b) new k.b.i.c.b.f.e());
            aVar.a(e.f2077l, (b) new f());
            aVar.a(e.f2068c, (b) new k.b.i.c.b.a.f());
            aVar.a(e.f2069d, (b) new k.b.i.c.b.a.e());
            aVar.a(e.a, (b) new k.b.i.c.b.d.c());
            aVar.a(e.q, (b) new k.b.i.c.b.c.c());
            aVar.a(e.r, (b) new k.b.i.c.b.c.c());
            aVar.put("X509Store.CERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertCollection");
            aVar.put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreAttrCertCollection");
            aVar.put("X509Store.CRL/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCRLCollection");
            aVar.put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertPairCollection");
            aVar.put("X509Store.CERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCerts");
            aVar.put("X509Store.CRL/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCRLs");
            aVar.put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts");
            aVar.put("X509Store.CERTIFICATEPAIR/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs");
            aVar.put("X509StreamParser.CERTIFICATE", "org.bouncycastle.jce.provider.X509CertParser");
            aVar.put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.bouncycastle.jce.provider.X509AttrCertParser");
            aVar.put("X509StreamParser.CRL", "org.bouncycastle.jce.provider.X509CRLParser");
            aVar.put("X509StreamParser.CERTIFICATEPAIR", "org.bouncycastle.jce.provider.X509CertPairParser");
            aVar.put("Cipher.BROKENPBEWITHMD5ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
            aVar.put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
            aVar.put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
            aVar.put("CertPathValidator.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
            aVar.put("CertPathBuilder.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
            aVar.put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
            aVar.put("CertPathBuilder.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi");
            aVar.put("CertPathValidator.PKIX", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
            aVar.put("CertPathBuilder.PKIX", "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi");
            aVar.put("CertStore.Collection", "org.bouncycastle.jce.provider.CertStoreCollectionSpi");
            aVar.put("CertStore.LDAP", "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi");
            aVar.put("CertStore.Multi", "org.bouncycastle.jce.provider.MultiCertStoreSpi");
            aVar.put("Alg.Alias.CertStore.X509LDAP", "LDAP");
            return null;
        }
    }

    static {
        new b();
    }

    public a() {
        super("BC", 1.64d, "BouncyCastle Security Provider v1.64");
        AccessController.doPrivileged(new C0099a());
    }

    public final void a(String str, String[] strArr) {
        Class<?> cls;
        for (int i2 = 0; i2 != strArr.length; i2++) {
            Class<a> cls2 = a.class;
            String a = e.a.a.a.a.a(e.a.a.a.a.a(str), strArr[i2], "$Mappings");
            try {
                ClassLoader classLoader = cls2.getClassLoader();
                cls = classLoader != null ? classLoader.loadClass(a) : (Class) AccessController.doPrivileged(new k.b.d.a.b.a.a(a));
            } catch (ClassNotFoundException unused) {
                cls = null;
            }
            if (cls != null) {
                try {
                    ((k.b.d.a.c.a) cls.newInstance()).a(this);
                } catch (Exception e2) {
                    StringBuilder a2 = e.a.a.a.a.a("cannot create instance of ", str);
                    a2.append(strArr[i2]);
                    a2.append("$Mappings : ");
                    a2.append(e2);
                    throw new InternalError(a2.toString());
                }
            }
        }
    }

    public void a(o oVar, b bVar) {
        synchronized (x) {
            x.put(oVar, bVar);
        }
    }
}
