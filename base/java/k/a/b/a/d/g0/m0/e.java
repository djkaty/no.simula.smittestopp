package k.a.b.a.d.g0.m0;

import e.a.a.a.a;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import k.a.b.a.d.a0;
import k.a.b.a.d.b0;
import k.a.b.a.d.d0;
import k.a.b.a.d.g0.m0.f;
import k.a.b.a.d.r;

public class e implements a0, c, r {
    public a0.a a;
    public a0.b b;

    /* renamed from: c  reason: collision with root package name */
    public SSLContext f1893c;

    /* renamed from: d  reason: collision with root package name */
    public final f f1894d = new f();

    public a0.b a() {
        a0.b bVar = this.b;
        if (bVar == null) {
            return this.a == a0.a.SERVER ? a0.b.ANONYMOUS_PEER : a0.b.VERIFY_PEER_NAME;
        }
        return bVar;
    }

    public String toString() {
        StringBuilder a2 = a.a("SslDomainImpl [_mode=");
        a2.append(this.a);
        a2.append(", _verifyMode=");
        a2.append(this.b);
        a2.append(", _certificateFile=");
        a2.append((String) null);
        a2.append(", _privateKeyFile=");
        a2.append((String) null);
        a2.append(", _trustedCaDb=");
        a2.append((String) null);
        a2.append(", _allowUnsecuredClient=");
        a2.append(false);
        a2.append("]");
        return a2.toString();
    }

    public b a(b0 b0Var) {
        SSLEngine sSLEngine;
        TrustManager[] trustManagerArr;
        SSLContext sSLContext;
        f fVar = this.f1894d;
        if (fVar != null) {
            a0.a aVar = this.a;
            boolean z = false;
            if (fVar.a == null && (sSLContext = this.f1893c) != null) {
                fVar.a = sSLContext;
            } else if (fVar.a == null) {
                if (f.b.isLoggable(Level.FINE)) {
                    Logger logger = f.b;
                    logger.fine("lazily creating new SSLContext using domain " + this);
                }
                char[] charArray = "unused-passphrase".toCharArray();
                try {
                    SSLContext instance = SSLContext.getInstance("TLS");
                    KeyStore a2 = fVar.a(this, charArray);
                    KeyManagerFactory instance2 = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                    instance2.init(a2, charArray);
                    if (a() == a0.b.ANONYMOUS_PEER) {
                        trustManagerArr = new TrustManager[]{new f.b((f.a) null)};
                    } else {
                        TrustManagerFactory instance3 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                        instance3.init(a2);
                        trustManagerArr = instance3.getTrustManagers();
                    }
                    instance.init(instance2.getKeyManagers(), trustManagerArr, (SecureRandom) null);
                    fVar.a = instance;
                } catch (NoSuchAlgorithmException e2) {
                    throw new d0("Unexpected exception creating SSLContext", (Throwable) e2);
                } catch (KeyStoreException e3) {
                    throw new d0("Unexpected exception creating SSLContext", (Throwable) e3);
                } catch (UnrecoverableKeyException e4) {
                    throw new d0("Unexpected exception creating SSLContext", (Throwable) e4);
                } catch (KeyManagementException e5) {
                    throw new d0("Unexpected exception creating SSLContext", (Throwable) e5);
                }
            }
            SSLContext sSLContext2 = fVar.a;
            if (b0Var == null) {
                sSLEngine = sSLContext2.createSSLEngine();
            } else {
                sSLEngine = sSLContext2.createSSLEngine(b0Var.f(), b0Var.a());
            }
            if (a() == a0.b.ANONYMOUS_PEER) {
                List asList = Arrays.asList(sSLEngine.getSupportedCipherSuites());
                List asList2 = Arrays.asList(sSLEngine.getEnabledCipherSuites());
                List<String> list = f.o;
                ArrayList arrayList = new ArrayList(asList2);
                int i2 = 0;
                for (String next : list) {
                    if (asList.contains(next)) {
                        arrayList.add(next);
                        i2++;
                    }
                }
                if (i2 > 0 && f.b.isLoggable(Level.FINE)) {
                    Logger logger2 = f.b;
                    StringBuilder a3 = a.a("There are now ");
                    a3.append(arrayList.size());
                    a3.append(" cipher suites enabled (previously ");
                    a3.append(asList2.size());
                    a3.append("), including ");
                    a3.append(i2);
                    a3.append(" out of the ");
                    a3.append(list.size());
                    a3.append(" requested anonymous ones.");
                    logger2.fine(a3.toString());
                }
                sSLEngine.setEnabledCipherSuites((String[]) arrayList.toArray(new String[0]));
            } else {
                if (aVar == a0.a.SERVER) {
                    sSLEngine.setNeedClientAuth(true);
                }
                if (a() == a0.b.VERIFY_PEER_NAME) {
                    SSLParameters sSLParameters = sSLEngine.getSSLParameters();
                    sSLParameters.setEndpointIdentificationAlgorithm("HTTPS");
                    sSLEngine.setSSLParameters(sSLParameters);
                }
            }
            if (f.b.isLoggable(Level.FINE)) {
                Logger logger3 = f.b;
                Level level = Level.FINE;
                logger3.log(level, aVar + " Enabled cipher suites " + Arrays.asList(sSLEngine.getEnabledCipherSuites()));
            }
            if (aVar == a0.a.CLIENT) {
                z = true;
            }
            sSLEngine.setUseClientMode(z);
            List asList3 = Arrays.asList(sSLEngine.getEnabledProtocols());
            if (asList3.contains("SSLv3")) {
                ArrayList arrayList2 = new ArrayList(asList3);
                arrayList2.remove("SSLv3");
                sSLEngine.setEnabledProtocols((String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
            if (f.b.isLoggable(Level.FINE)) {
                Logger logger4 = f.b;
                StringBuilder a4 = a.a("Created SSL engine: ");
                a4.append("[ " + sSLEngine + ", needClientAuth=" + sSLEngine.getNeedClientAuth() + ", useClientMode=" + sSLEngine.getUseClientMode() + ", peerHost=" + sSLEngine.getPeerHost() + ", peerPort=" + sSLEngine.getPeerPort() + " ]");
                logger4.fine(a4.toString());
            }
            return new a(sSLEngine);
        }
        throw null;
    }
}
