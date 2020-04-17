package k.c.a.a.a.s.q;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import k.c.a.a.a.p;
import k.c.a.a.a.t.b;

public class a {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f2250d = {"com.ibm.ssl.protocol", "com.ibm.ssl.contextProvider", "com.ibm.ssl.keyStore", "com.ibm.ssl.keyStorePassword", "com.ibm.ssl.keyStoreType", "com.ibm.ssl.keyStoreProvider", "com.ibm.ssl.keyManager", "com.ibm.ssl.trustStore", "com.ibm.ssl.trustStorePassword", "com.ibm.ssl.trustStoreType", "com.ibm.ssl.trustStoreProvider", "com.ibm.ssl.trustManager", "com.ibm.ssl.enabledCipherSuites", "com.ibm.ssl.clientAuthentication"};

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f2251e = {-99, -89, -39, Byte.MIN_VALUE, 5, -72, -119, -100};
    public Hashtable a = new Hashtable();
    public Properties b;

    /* renamed from: c  reason: collision with root package name */
    public b f2252c = null;

    public static char[] o(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] a2 = b.a(str.substring(5));
            int i2 = 0;
            for (int i3 = 0; i3 < a2.length; i3++) {
                byte b2 = a2[i3];
                byte[] bArr = f2251e;
                a2[i3] = (byte) ((b2 ^ bArr[i3 % bArr.length]) & 255);
            }
            char[] cArr = new char[(a2.length / 2)];
            int i4 = 0;
            while (i2 < a2.length) {
                int i5 = i2 + 1;
                cArr[i4] = (char) ((a2[i2] & 255) + ((a2[i5] & 255) << 8));
                i4++;
                i2 = i5 + 1;
            }
            return cArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(Properties properties, String str) {
        for (String str2 : properties.keySet()) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                String[] strArr = f2250d;
                if (i2 < strArr.length && !strArr[i2].equals(str2)) {
                    i2++;
                }
            }
            if (i2 < f2250d.length) {
                z = true;
                continue;
            }
            if (!z) {
                throw new IllegalArgumentException(String.valueOf(str2) + " is not a valid IBM SSL property key.");
            }
        }
        Properties properties2 = new Properties();
        properties2.putAll(properties);
        String property = properties2.getProperty("com.ibm.ssl.keyStorePassword");
        if (property != null && !property.startsWith("{xor}")) {
            properties2.put("com.ibm.ssl.keyStorePassword", a(property.toCharArray()));
        }
        String property2 = properties2.getProperty("com.ibm.ssl.trustStorePassword");
        if (property2 != null && !property2.startsWith("{xor}")) {
            properties2.put("com.ibm.ssl.trustStorePassword", a(property2.toCharArray()));
        }
        if (str != null) {
            this.a.put(str, properties2);
        } else {
            this.b = properties2;
        }
    }

    public String[] b(String str) {
        String a2 = a(str, "com.ibm.ssl.enabledCipherSuites", (String) null);
        if (a2 == null) {
            return null;
        }
        Vector vector = new Vector();
        int indexOf = a2.indexOf(44);
        int i2 = 0;
        while (indexOf > -1) {
            vector.add(a2.substring(i2, indexOf));
            i2 = indexOf + 1;
            indexOf = a2.indexOf(44, i2);
        }
        vector.add(a2.substring(i2));
        String[] strArr = new String[vector.size()];
        vector.toArray(strArr);
        return strArr;
    }

    public String c(String str) {
        return a(str, "com.ibm.ssl.contextProvider", (String) null);
    }

    public String d(String str) {
        return a(str, "com.ibm.ssl.keyManager", "ssl.KeyManagerFactory.algorithm");
    }

    public char[] e(String str) {
        String a2 = a(str, "com.ibm.ssl.keyStorePassword", "javax.net.ssl.keyStorePassword");
        if (a2 == null) {
            return null;
        }
        if (a2.startsWith("{xor}")) {
            return o(a2);
        }
        return a2.toCharArray();
    }

    public String f(String str) {
        return a(str, "com.ibm.ssl.keyStoreProvider", (String) null);
    }

    public String g(String str) {
        return a(str, "com.ibm.ssl.keyStoreType", "javax.net.ssl.keyStoreType");
    }

    public final SSLContext h(String str) {
        SSLContext sSLContext;
        KeyManager[] keyManagerArr;
        TrustManager[] trustManagerArr;
        TrustManagerFactory trustManagerFactory;
        String str2;
        String str3;
        String str4;
        String str5;
        KeyManagerFactory keyManagerFactory;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12 = str;
        String i2 = i(str);
        if (i2 == null) {
            i2 = "TLS";
        }
        b bVar = this.f2252c;
        if (bVar != null) {
            Object[] objArr = new Object[2];
            objArr[0] = str12 != null ? str12 : "null (broker defaults)";
            objArr[1] = i2;
            bVar.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12000", objArr);
        }
        String c2 = c(str);
        if (c2 == null) {
            try {
                sSLContext = SSLContext.getInstance(i2);
            } catch (KeyStoreException e2) {
                throw new p((Throwable) e2);
            } catch (CertificateException e3) {
                throw new p((Throwable) e3);
            } catch (FileNotFoundException e4) {
                throw new p((Throwable) e4);
            } catch (IOException e5) {
                throw new p((Throwable) e5);
            } catch (KeyStoreException e6) {
                throw new p((Throwable) e6);
            } catch (CertificateException e7) {
                throw new p((Throwable) e7);
            } catch (FileNotFoundException e8) {
                throw new p((Throwable) e8);
            } catch (IOException e9) {
                throw new p((Throwable) e9);
            } catch (UnrecoverableKeyException e10) {
                throw new p((Throwable) e10);
            } catch (NoSuchAlgorithmException e11) {
                throw new p((Throwable) e11);
            } catch (NoSuchProviderException e12) {
                throw new p((Throwable) e12);
            } catch (KeyManagementException e13) {
                throw new p((Throwable) e13);
            }
        } else {
            sSLContext = SSLContext.getInstance(i2, c2);
        }
        if (this.f2252c != null) {
            b bVar2 = this.f2252c;
            Object[] objArr2 = new Object[2];
            if (str12 != null) {
                str11 = str12;
            } else {
                str11 = "null (broker defaults)";
            }
            objArr2[0] = str11;
            objArr2[1] = sSLContext.getProvider().getName();
            bVar2.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12001", objArr2);
        }
        String a2 = a(str12, "com.ibm.ssl.keyStore", (String) null);
        if (a2 == null) {
            a2 = a(str12, "com.ibm.ssl.keyStore", "javax.net.ssl.keyStore");
        }
        String str13 = "null";
        if (this.f2252c != null) {
            b bVar3 = this.f2252c;
            Object[] objArr3 = new Object[2];
            if (str12 != null) {
                str10 = str12;
            } else {
                str10 = "null (broker defaults)";
            }
            objArr3[0] = str10;
            objArr3[1] = a2 != null ? a2 : str13;
            bVar3.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12004", objArr3);
        }
        char[] e14 = e(str);
        if (this.f2252c != null) {
            b bVar4 = this.f2252c;
            Object[] objArr4 = new Object[2];
            if (str12 != null) {
                str9 = str12;
            } else {
                str9 = "null (broker defaults)";
            }
            objArr4[0] = str9;
            objArr4[1] = e14 != null ? a(e14) : str13;
            bVar4.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12005", objArr4);
        }
        String g2 = g(str);
        if (g2 == null) {
            g2 = KeyStore.getDefaultType();
        }
        if (this.f2252c != null) {
            b bVar5 = this.f2252c;
            Object[] objArr5 = new Object[2];
            if (str12 != null) {
                str8 = str12;
            } else {
                str8 = "null (broker defaults)";
            }
            objArr5[0] = str8;
            objArr5[1] = g2 != null ? g2 : str13;
            bVar5.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12006", objArr5);
        }
        String defaultAlgorithm = KeyManagerFactory.getDefaultAlgorithm();
        String f2 = f(str);
        String d2 = d(str);
        if (d2 != null) {
            defaultAlgorithm = d2;
        }
        if (a2 == null || g2 == null || defaultAlgorithm == null) {
            keyManagerArr = null;
        } else {
            KeyStore instance = KeyStore.getInstance(g2);
            instance.load(new FileInputStream(a2), e14);
            if (f2 != null) {
                keyManagerFactory = KeyManagerFactory.getInstance(defaultAlgorithm, f2);
            } else {
                keyManagerFactory = KeyManagerFactory.getInstance(defaultAlgorithm);
            }
            if (this.f2252c != null) {
                b bVar6 = this.f2252c;
                Object[] objArr6 = new Object[2];
                if (str12 != null) {
                    str6 = str12;
                } else {
                    str6 = "null (broker defaults)";
                }
                objArr6[0] = str6;
                objArr6[1] = defaultAlgorithm;
                bVar6.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12010", objArr6);
                b bVar7 = this.f2252c;
                Object[] objArr7 = new Object[2];
                if (str12 != null) {
                    str7 = str12;
                } else {
                    str7 = "null (broker defaults)";
                }
                objArr7[0] = str7;
                objArr7[1] = keyManagerFactory.getProvider().getName();
                bVar7.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12009", objArr7);
            }
            keyManagerFactory.init(instance, e14);
            keyManagerArr = keyManagerFactory.getKeyManagers();
        }
        String k2 = k(str);
        if (this.f2252c != null) {
            b bVar8 = this.f2252c;
            Object[] objArr8 = new Object[2];
            if (str12 != null) {
                str5 = str12;
            } else {
                str5 = "null (broker defaults)";
            }
            objArr8[0] = str5;
            objArr8[1] = k2 != null ? k2 : str13;
            bVar8.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12011", objArr8);
        }
        char[] l2 = l(str);
        if (this.f2252c != null) {
            b bVar9 = this.f2252c;
            Object[] objArr9 = new Object[2];
            if (str12 != null) {
                str4 = str12;
            } else {
                str4 = "null (broker defaults)";
            }
            objArr9[0] = str4;
            objArr9[1] = l2 != null ? a(l2) : str13;
            bVar9.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12012", objArr9);
        }
        String n = n(str);
        if (n == null) {
            n = KeyStore.getDefaultType();
        }
        if (this.f2252c != null) {
            b bVar10 = this.f2252c;
            Object[] objArr10 = new Object[2];
            if (str12 != null) {
                str3 = str12;
            } else {
                str3 = "null (broker defaults)";
            }
            objArr10[0] = str3;
            if (n != null) {
                str13 = n;
            }
            objArr10[1] = str13;
            bVar10.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12013", objArr10);
        }
        String defaultAlgorithm2 = TrustManagerFactory.getDefaultAlgorithm();
        String m = m(str);
        String j2 = j(str);
        if (j2 != null) {
            defaultAlgorithm2 = j2;
        }
        if (k2 == null || n == null || defaultAlgorithm2 == null) {
            trustManagerArr = null;
        } else {
            KeyStore instance2 = KeyStore.getInstance(n);
            instance2.load(new FileInputStream(k2), l2);
            if (m != null) {
                trustManagerFactory = TrustManagerFactory.getInstance(defaultAlgorithm2, m);
            } else {
                trustManagerFactory = TrustManagerFactory.getInstance(defaultAlgorithm2);
            }
            if (this.f2252c != null) {
                b bVar11 = this.f2252c;
                Object[] objArr11 = new Object[2];
                if (str12 != null) {
                    str2 = str12;
                } else {
                    str2 = "null (broker defaults)";
                }
                objArr11[0] = str2;
                objArr11[1] = defaultAlgorithm2;
                bVar11.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12017", objArr11);
                b bVar12 = this.f2252c;
                Object[] objArr12 = new Object[2];
                if (str12 == null) {
                    str12 = "null (broker defaults)";
                }
                objArr12[0] = str12;
                objArr12[1] = trustManagerFactory.getProvider().getName();
                bVar12.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "getSSLContext", "12016", objArr12);
            }
            trustManagerFactory.init(instance2);
            trustManagerArr = trustManagerFactory.getTrustManagers();
        }
        sSLContext.init(keyManagerArr, trustManagerArr, (SecureRandom) null);
        return sSLContext;
    }

    public String i(String str) {
        return a(str, "com.ibm.ssl.protocol", (String) null);
    }

    public String j(String str) {
        return a(str, "com.ibm.ssl.trustManager", "ssl.TrustManagerFactory.algorithm");
    }

    public String k(String str) {
        return a(str, "com.ibm.ssl.trustStore", "javax.net.ssl.trustStore");
    }

    public char[] l(String str) {
        String a2 = a(str, "com.ibm.ssl.trustStorePassword", "javax.net.ssl.trustStorePassword");
        if (a2 == null) {
            return null;
        }
        if (a2.startsWith("{xor}")) {
            return o(a2);
        }
        return a2.toCharArray();
    }

    public String m(String str) {
        return a(str, "com.ibm.ssl.trustStoreProvider", (String) null);
    }

    public String n(String str) {
        return a(str, "com.ibm.ssl.trustStoreType", (String) null);
    }

    public static String a(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        byte[] bArr = new byte[(cArr.length * 2)];
        int i2 = 0;
        for (int i3 = 0; i3 < cArr.length; i3++) {
            int i4 = i2 + 1;
            bArr[i2] = (byte) (cArr[i3] & 255);
            i2 = i4 + 1;
            bArr[i4] = (byte) ((cArr[i3] >> 8) & 255);
        }
        for (int i5 = 0; i5 < bArr.length; i5++) {
            byte b2 = bArr[i5];
            byte[] bArr2 = f2251e;
            bArr[i5] = (byte) ((b2 ^ bArr2[i5 % bArr2.length]) & 255);
        }
        return "{xor}" + new String(b.a(bArr));
    }

    public final String a(String str, String str2, String str3) {
        Properties properties;
        String str4 = null;
        Properties properties2 = str != null ? (Properties) this.a.get(str) : null;
        if ((properties2 == null || (str4 = properties2.getProperty(str2)) == null) && (properties = this.b) != null) {
            str4 = properties.getProperty(str2);
        }
        return (str4 == null && str3 != null) ? System.getProperty(str3) : str4;
    }

    public SSLSocketFactory a(String str) {
        SSLContext h2 = h(str);
        b bVar = this.f2252c;
        if (bVar != null) {
            Object[] objArr = new Object[2];
            objArr[0] = str != null ? str : "null (broker defaults)";
            objArr[1] = b(str) != null ? a(str, "com.ibm.ssl.enabledCipherSuites", (String) null) : "null (using platform-enabled cipher suites)";
            bVar.b("org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory", "createSocketFactory", "12020", objArr);
        }
        return h2.getSocketFactory();
    }
}
