package e.e.a.s;

import com.microsoft.identity.common.adal.internal.JWSBuilder;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.c.a.a.b.l.c;
import e.e.a.f;
import e.e.a.l;
import e.e.a.m;
import e.e.a.o;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

public class a extends e.e.a.s.b.a implements o {

    /* renamed from: d  reason: collision with root package name */
    public static final Set<l> f1313d;

    /* renamed from: c  reason: collision with root package name */
    public final PrivateKey f1314c;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(l.C);
        linkedHashSet.add(l.D);
        linkedHashSet.add(l.E);
        linkedHashSet.add(l.J);
        linkedHashSet.add(l.K);
        linkedHashSet.add(l.L);
        f1313d = Collections.unmodifiableSet(linkedHashSet);
    }

    public a(PrivateKey privateKey) {
        super(f1313d);
        if (DevicePopManager.KeyPairGeneratorAlgorithms.RSA.equalsIgnoreCase(privateKey.getAlgorithm())) {
            int a = c.a(privateKey);
            if (a <= 0 || a >= 2048) {
                this.f1314c = privateKey;
                return;
            }
            throw new IllegalArgumentException("The RSA key size must be at least 2048 bits");
        }
        throw new IllegalArgumentException("The private key algorithm must be RSA");
    }

    public e.e.a.v.c a(m mVar, byte[] bArr) {
        String str;
        Signature signature;
        String str2;
        l lVar = (l) mVar.x;
        Provider provider = this.b.a;
        PSSParameterSpec pSSParameterSpec = null;
        if (lVar.equals(l.C)) {
            str = JWSBuilder.JWS_ALGORITHM;
        } else if (lVar.equals(l.D)) {
            str = "SHA384withRSA";
        } else if (lVar.equals(l.E)) {
            str = "SHA512withRSA";
        } else {
            if (lVar.equals(l.J)) {
                pSSParameterSpec = new PSSParameterSpec("SHA256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1);
                str2 = "SHA256withRSAandMGF1";
            } else if (lVar.equals(l.K)) {
                pSSParameterSpec = new PSSParameterSpec("SHA384", "MGF1", MGF1ParameterSpec.SHA384, 48, 1);
                str2 = "SHA384withRSAandMGF1";
            } else if (lVar.equals(l.L)) {
                pSSParameterSpec = new PSSParameterSpec("SHA512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1);
                str2 = "SHA512withRSAandMGF1";
            } else {
                Set<l> set = f1313d;
                StringBuilder sb = new StringBuilder();
                sb.append("Unsupported JWS algorithm ");
                sb.append(lVar);
                sb.append(", must be ");
                StringBuilder sb2 = new StringBuilder();
                Object[] array = set.toArray();
                for (int i2 = 0; i2 < array.length; i2++) {
                    if (i2 != 0) {
                        if (i2 < array.length - 1) {
                            sb2.append(", ");
                        } else if (i2 == array.length - 1) {
                            sb2.append(" or ");
                        }
                    }
                    sb2.append(array[i2].toString());
                }
                sb.append(sb2.toString());
                throw new f(sb.toString());
            }
            str = str2;
        }
        if (provider != null) {
            try {
                signature = Signature.getInstance(str, provider);
            } catch (NoSuchAlgorithmException e2) {
                StringBuilder a = e.a.a.a.a.a("Unsupported RSASSA algorithm: ");
                a.append(e2.getMessage());
                throw new f(a.toString(), e2);
            }
        } else {
            signature = Signature.getInstance(str);
        }
        if (pSSParameterSpec != null) {
            try {
                signature.setParameter(pSSParameterSpec);
            } catch (InvalidAlgorithmParameterException e3) {
                StringBuilder a2 = e.a.a.a.a.a("Invalid RSASSA-PSS salt length parameter: ");
                a2.append(e3.getMessage());
                throw new f(a2.toString(), e3);
            }
        }
        try {
            signature.initSign(this.f1314c);
            signature.update(bArr);
            return e.e.a.v.c.a(signature.sign());
        } catch (InvalidKeyException e4) {
            StringBuilder a3 = e.a.a.a.a.a("Invalid private RSA key: ");
            a3.append(e4.getMessage());
            throw new f(a3.toString(), e4);
        } catch (SignatureException e5) {
            StringBuilder a4 = e.a.a.a.a.a("RSA signature exception: ");
            a4.append(e5.getMessage());
            throw new f(a4.toString(), e5);
        }
    }
}
