package com.microsoft.identity.common.internal.platform;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyInfo;
import android.security.keystore.StrongBoxUnavailableException;
import android.text.TextUtils;
import android.util.Base64;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.controllers.TaskCompletedCallbackWithError;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import e.c.a.a.b.l.c;
import e.e.a.a;
import e.e.a.f;
import e.e.a.h;
import e.e.a.l;
import e.e.a.m;
import e.e.a.u.e;
import e.e.a.u.g;
import e.e.a.u.k;
import e.e.b.c;
import i.a.b.d;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.UnrecoverableEntryException;
import java.security.interfaces.RSAMultiPrimePrivateCrtKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAKeyGenParameterSpec;
import java.security.spec.RSAOtherPrimeInfo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.security.auth.x500.X500Principal;
import org.json.JSONException;
import org.json.JSONObject;

public class DevicePopManager implements IDevicePopManager {
    public static final String ANDROID_KEYSTORE = "AndroidKeyStore";
    public static final String KEYSTORE_ENTRY_ALIAS = "microsoft-device-pop";
    public static final int RSA_KEY_SIZE = 2048;
    public static final String TAG = "DevicePopManager";
    public static final ExecutorService sThreadExecutor = Executors.newCachedThreadPool();
    public final KeyStore mKeyStore;

    public static final class CertificateProperties {
        public static final int CERTIFICATE_VALIDITY_YEARS = 99;
        public static final String COMMON_NAME = "CN=device-pop";
        public static final BigInteger SERIAL_NUMBER = BigInteger.ONE;
    }

    public static final class KeyPairGeneratorAlgorithms {
        public static final String RSA = "RSA";
    }

    public static final class SignedHttpRequestJwtClaims {
        public static final String ACCESS_TOKEN = "at";
        public static final String CNF = "cnf";
        public static final String HTTP_HOST = "u";
        public static final String HTTP_METHOD = "m";
        public static final String HTTP_PATH = "p";
        public static final String NONCE = "nonce";
        public static final String TIMESTAMP = "ts";
    }

    public DevicePopManager() {
        KeyStore instance = KeyStore.getInstance("AndroidKeyStore");
        this.mKeyStore = instance;
        instance.load((KeyStore.LoadStoreParameter) null);
    }

    @SuppressLint({"NewApi"})
    public static KeyGenParameterSpec.Builder applyHardwareIsolation(KeyGenParameterSpec.Builder builder) {
        return builder.setIsStrongBoxBacked(true);
    }

    public static String base64UrlEncode(String str) {
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 11);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private KeyPair generateNewKeyPair(Context context, boolean z) {
        return getInitializedRsaKeyPairGenerator(context, 2048, z).generateKeyPair();
    }

    @SuppressLint({"NewApi"})
    private KeyPair generateNewRsaKeyPair(Context context, int i2) {
        KeyPair keyPair;
        for (int i3 = 0; i3 < 4; i3++) {
            try {
                keyPair = generateNewKeyPair(context, true);
            } catch (StrongBoxUnavailableException e2) {
                Logger.error(TAG, "StrongBox unsupported - skipping hardware flags.", e2);
                keyPair = generateNewKeyPair(context, false);
            }
            int a = c.a(keyPair.getPrivate());
            if (a >= i2 || a < 0) {
                logSecureHardwareState(keyPair);
                return keyPair;
            }
        }
        clearAsymmetricKey();
        throw new UnsupportedOperationException("Failed to generate valid KeyPair. Attempted 4 times.");
    }

    private d getDevicePopJwkMinifiedJson() {
        List<T> list = null;
        k rsaKeyForKeyPair = getRsaKeyForKeyPair(getKeyPairForEntry(this.mKeyStore.getEntry(KEYSTORE_ENTRY_ALIAS, (KeyStore.ProtectionParameter) null)));
        e.e.a.v.c cVar = rsaKeyForKeyPair.I;
        e.e.a.v.c cVar2 = rsaKeyForKeyPair.J;
        g gVar = rsaKeyForKeyPair.y;
        Set<e> set = rsaKeyForKeyPair.z;
        a aVar = rsaKeyForKeyPair.A;
        String str = rsaKeyForKeyPair.B;
        URI uri = rsaKeyForKeyPair.C;
        e.e.a.v.c cVar3 = rsaKeyForKeyPair.D;
        e.e.a.v.c cVar4 = rsaKeyForKeyPair.E;
        List<e.e.a.v.a> list2 = rsaKeyForKeyPair.F;
        if (list2 != null) {
            list = Collections.unmodifiableList(list2);
        }
        URI uri2 = uri;
        String str2 = str;
        a aVar2 = aVar;
        d f2 = new k(cVar, cVar2, (e.e.a.v.c) null, (e.e.a.v.c) null, (e.e.a.v.c) null, (e.e.a.v.c) null, (e.e.a.v.c) null, (e.e.a.v.c) null, (List<k.a>) null, (PrivateKey) null, gVar, set, aVar2, str2, uri2, cVar3, cVar4, list, rsaKeyForKeyPair.H).f();
        d dVar = new d();
        dVar.put("jwk", f2);
        return dVar;
    }

    private KeyPairGenerator getInitializedRsaKeyPairGenerator(Context context, int i2, boolean z) {
        KeyPairGenerator instance = KeyPairGenerator.getInstance(KeyPairGeneratorAlgorithms.RSA, "AndroidKeyStore");
        initialize(context, instance, i2, z);
        return instance;
    }

    public static KeyPair getKeyPairForEntry(KeyStore.Entry entry) {
        KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) entry;
        return new KeyPair(privateKeyEntry.getCertificate().getPublicKey(), privateKeyEntry.getPrivateKey());
    }

    public static Date getNow(Calendar calendar) {
        return calendar.getTime();
    }

    public static String getReqCnfForRsaKey(k kVar) {
        return base64UrlEncode(new JSONObject().put(AccessTokenRecord.SerializedNames.KID, getThumbprintForRsaKey(kVar)).toString());
    }

    public static k getRsaKeyForKeyPair(KeyPair keyPair) {
        PrivateKey privateKey;
        ArrayList arrayList;
        e.e.a.v.c cVar;
        e.e.a.v.c cVar2;
        e.e.a.v.c cVar3;
        e.e.a.v.c cVar4;
        e.e.a.v.c cVar5;
        e.e.a.v.c cVar6;
        ArrayList arrayList2;
        e.e.a.v.c cVar7;
        e.e.a.v.c cVar8;
        e.e.a.v.c cVar9;
        e.e.a.v.c cVar10;
        e.e.a.v.c cVar11;
        e.e.a.v.c cVar12;
        RSAPublicKey rSAPublicKey = (RSAPublicKey) keyPair.getPublic();
        e.e.a.v.c a = e.e.a.v.c.a(rSAPublicKey.getModulus());
        e.e.a.v.c a2 = e.e.a.v.c.a(rSAPublicKey.getPublicExponent());
        PrivateKey privateKey2 = keyPair.getPrivate();
        if (privateKey2 instanceof RSAPrivateKey) {
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) privateKey2;
            if (rSAPrivateKey instanceof RSAPrivateCrtKey) {
                RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) rSAPrivateKey;
                cVar11 = e.e.a.v.c.a(rSAPrivateCrtKey.getPrivateExponent());
                cVar10 = e.e.a.v.c.a(rSAPrivateCrtKey.getPrimeP());
                cVar9 = e.e.a.v.c.a(rSAPrivateCrtKey.getPrimeQ());
                cVar8 = e.e.a.v.c.a(rSAPrivateCrtKey.getPrimeExponentP());
                cVar7 = e.e.a.v.c.a(rSAPrivateCrtKey.getPrimeExponentQ());
                cVar12 = e.e.a.v.c.a(rSAPrivateCrtKey.getCrtCoefficient());
                arrayList2 = null;
            } else if (rSAPrivateKey instanceof RSAMultiPrimePrivateCrtKey) {
                RSAMultiPrimePrivateCrtKey rSAMultiPrimePrivateCrtKey = (RSAMultiPrimePrivateCrtKey) rSAPrivateKey;
                cVar11 = e.e.a.v.c.a(rSAMultiPrimePrivateCrtKey.getPrivateExponent());
                cVar10 = e.e.a.v.c.a(rSAMultiPrimePrivateCrtKey.getPrimeP());
                cVar9 = e.e.a.v.c.a(rSAMultiPrimePrivateCrtKey.getPrimeQ());
                cVar8 = e.e.a.v.c.a(rSAMultiPrimePrivateCrtKey.getPrimeExponentP());
                cVar7 = e.e.a.v.c.a(rSAMultiPrimePrivateCrtKey.getPrimeExponentQ());
                e.e.a.v.c a3 = e.e.a.v.c.a(rSAMultiPrimePrivateCrtKey.getCrtCoefficient());
                RSAOtherPrimeInfo[] otherPrimeInfo = rSAMultiPrimePrivateCrtKey.getOtherPrimeInfo();
                arrayList2 = new ArrayList();
                if (otherPrimeInfo != null) {
                    for (RSAOtherPrimeInfo aVar : otherPrimeInfo) {
                        arrayList2.add(new k.a(aVar));
                    }
                }
                cVar12 = a3;
            } else {
                cVar11 = e.e.a.v.c.a(rSAPrivateKey.getPrivateExponent());
                cVar12 = null;
                cVar10 = null;
                cVar9 = null;
                cVar8 = null;
                cVar7 = null;
                arrayList2 = null;
            }
            privateKey = null;
            cVar2 = cVar7;
            arrayList = arrayList2;
            cVar = cVar12;
            cVar3 = cVar8;
            cVar4 = cVar9;
            cVar5 = cVar10;
            cVar6 = cVar11;
        } else if (KeyPairGeneratorAlgorithms.RSA.equalsIgnoreCase(privateKey2.getAlgorithm())) {
            privateKey = privateKey2;
            cVar6 = null;
            cVar5 = null;
            cVar4 = null;
            cVar3 = null;
            cVar2 = null;
            cVar = null;
            arrayList = null;
        } else {
            throw new IllegalArgumentException("The private key algorithm must be RSA");
        }
        try {
            return new k(a, a2, cVar6, cVar5, cVar4, cVar3, cVar2, cVar, arrayList, privateKey, (g) null, (Set<e>) null, (a) null, (String) null, (URI) null, (e.e.a.v.c) null, (e.e.a.v.c) null, (List<e.e.a.v.a>) null, (KeyStore) null);
        } catch (IllegalArgumentException e2) {
            throw new IllegalStateException(e2.getMessage(), e2);
        }
    }

    public static String getThumbprintForRsaKey(k kVar) {
        String a = d.a((Map<String, ? extends Object>) kVar.d());
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(a.getBytes(e.e.a.v.d.a));
            return e.e.a.v.c.a(instance.digest()).x;
        } catch (NoSuchAlgorithmException e2) {
            StringBuilder a2 = e.a.a.a.a.a("Couldn't compute JWK thumbprint: Unsupported hash algorithm: ");
            a2.append(e2.getMessage());
            throw new f(a2.toString(), e2);
        }
    }

    public static void initialize(Context context, KeyPairGenerator keyPairGenerator, int i2, boolean z) {
        if (Build.VERSION.SDK_INT < 23) {
            initializePre23(context, keyPairGenerator, i2);
        } else {
            initialize23(keyPairGenerator, i2, z);
        }
    }

    @SuppressLint({"InlinedApi"})
    public static void initialize23(KeyPairGenerator keyPairGenerator, int i2, boolean z) {
        KeyGenParameterSpec.Builder digests = new KeyGenParameterSpec.Builder(KEYSTORE_ENTRY_ALIAS, 15).setKeySize(i2).setSignaturePaddings(new String[]{"PKCS1"}).setDigests(new String[]{"SHA-256"});
        if (Build.VERSION.SDK_INT >= 28 && z) {
            Logger.verbose(TAG, "Attempting to apply StrongBox isolation.");
            digests = applyHardwareIsolation(digests);
        }
        keyPairGenerator.initialize(digests.build());
    }

    @SuppressLint({"NewApi"})
    public static void initializePre23(Context context, KeyPairGenerator keyPairGenerator, int i2) {
        Calendar instance = Calendar.getInstance();
        Date now = getNow(instance);
        instance.add(1, 99);
        KeyPairGeneratorSpec.Builder subject = new KeyPairGeneratorSpec.Builder(context).setAlias(KEYSTORE_ENTRY_ALIAS).setStartDate(now).setEndDate(instance.getTime()).setSerialNumber(CertificateProperties.SERIAL_NUMBER).setSubject(new X500Principal(CertificateProperties.COMMON_NAME));
        subject.setAlgorithmParameterSpec(new RSAKeyGenParameterSpec(i2, RSAKeyGenParameterSpec.F4));
        keyPairGenerator.initialize(subject.build());
    }

    private void logSecureHardwareState(KeyPair keyPair) {
        String str;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                str = "SecretKey is secure hardware backed? " + ((KeyInfo) KeyFactory.getInstance(privateKey.getAlgorithm(), "AndroidKeyStore").getKeySpec(privateKey, KeyInfo.class)).isInsideSecureHardware();
            } catch (Exception unused) {
                str = "Failed to query secure hardware state.";
            }
        } else {
            str = "Cannot query secure hardware state (API unavailable <23)";
        }
        Logger.info(TAG, str);
    }

    public boolean asymmetricKeyExists() {
        try {
            return this.mKeyStore.containsAlias(KEYSTORE_ENTRY_ALIAS);
        } catch (KeyStoreException e2) {
            Logger.error(TAG, "Error while querying KeyStore", e2);
            return false;
        }
    }

    public boolean clearAsymmetricKey() {
        try {
            this.mKeyStore.deleteEntry(KEYSTORE_ENTRY_ALIAS);
            return true;
        } catch (KeyStoreException e2) {
            Logger.error(TAG, "Error while clearing KeyStore", e2);
            return false;
        }
    }

    public void generateAsymmetricKey(final Context context, final TaskCompletedCallbackWithError<String, ClientException> taskCompletedCallbackWithError) {
        sThreadExecutor.submit(new Runnable() {
            public void run() {
                try {
                    taskCompletedCallbackWithError.onTaskCompleted(DevicePopManager.this.generateAsymmetricKey(context));
                } catch (ClientException e2) {
                    taskCompletedCallbackWithError.onError(e2);
                }
            }
        });
    }

    public String getAsymmetricKeyThumbprint() {
        String str;
        try {
            return getThumbprintForRsaKey(getRsaKeyForKeyPair(getKeyPairForEntry(this.mKeyStore.getEntry(KEYSTORE_ENTRY_ALIAS, (KeyStore.ProtectionParameter) null))));
        } catch (KeyStoreException e2) {
            e = e2;
            str = ClientException.KEYSTORE_NOT_INITIALIZED;
            throw new ClientException(str, e.getMessage(), e);
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str = "no_such_algorithm";
            throw new ClientException(str, e.getMessage(), e);
        } catch (UnrecoverableEntryException e4) {
            e = e4;
            str = ClientException.INVALID_PROTECTION_PARAMS;
            throw new ClientException(str, e.getMessage(), e);
        } catch (f e5) {
            e = e5;
            str = ClientException.THUMBPRINT_COMPUTATION_FAILURE;
            throw new ClientException(str, e.getMessage(), e);
        }
    }

    public String getRequestConfirmation() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final String[] strArr = new String[1];
        final ClientException[] clientExceptionArr = new ClientException[1];
        getRequestConfirmation(new TaskCompletedCallbackWithError<String, ClientException>() {
            public void onError(ClientException clientException) {
                clientExceptionArr[0] = clientException;
                countDownLatch.countDown();
            }

            public void onTaskCompleted(String str) {
                strArr[0] = str;
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            if (strArr[0] != null) {
                return strArr[0];
            }
            throw clientExceptionArr[0];
        } catch (InterruptedException e2) {
            Logger.error(TAG, "Interrupted while waiting on callback.", e2);
            throw new ClientException(ClientException.INTERRUPTED_OPERATION, e2.getMessage(), e2);
        }
    }

    public String mintSignedAccessToken(String str, URL url, String str2, String str3) {
        String str4;
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(SignedHttpRequestJwtClaims.ACCESS_TOKEN, str2);
            linkedHashMap.put(SignedHttpRequestJwtClaims.TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
            linkedHashMap.put(SignedHttpRequestJwtClaims.HTTP_METHOD, str);
            linkedHashMap.put(SignedHttpRequestJwtClaims.HTTP_HOST, url.getHost());
            linkedHashMap.put(SignedHttpRequestJwtClaims.HTTP_PATH, url.getPath());
            linkedHashMap.put(SignedHttpRequestJwtClaims.CNF, getDevicePopJwkMinifiedJson());
            if (!TextUtils.isEmpty(str3)) {
                linkedHashMap.put("nonce", str3);
            }
            e.e.b.c cVar = new e.e.b.c(linkedHashMap, (c.a) null);
            try {
                e.e.a.s.a aVar = new e.e.a.s.a(((KeyStore.PrivateKeyEntry) this.mKeyStore.getEntry(KEYSTORE_ENTRY_ALIAS, (KeyStore.ProtectionParameter) null)).getPrivateKey());
                l lVar = l.C;
                if (!lVar.x.equals(a.y.x)) {
                    m mVar = r4;
                    m mVar2 = new m(lVar, (h) null, (String) null, (Set<String>) null, (URI) null, (e.e.a.u.d) null, (URI) null, (e.e.a.v.c) null, (e.e.a.v.c) null, (List<e.e.a.v.a>) null, (String) null, (Map<String, Object>) null, (e.e.a.v.c) null);
                    e.e.b.e eVar = new e.e.b.e(mVar, cVar);
                    eVar.b(aVar);
                    return eVar.b();
                }
                throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
            } catch (NoSuchAlgorithmException e2) {
                e = e2;
                str4 = "no_such_algorithm";
                ClientException clientException = new ClientException(str4, e.getMessage(), e);
                Logger.error(TAG, clientException.getMessage(), clientException);
                throw clientException;
            } catch (KeyStoreException e3) {
                e = e3;
                str4 = ClientException.KEYSTORE_NOT_INITIALIZED;
                ClientException clientException2 = new ClientException(str4, e.getMessage(), e);
                Logger.error(TAG, clientException2.getMessage(), clientException2);
                throw clientException2;
            } catch (f e4) {
                e = e4;
                str4 = ClientException.JWT_SIGNING_FAILURE;
                ClientException clientException22 = new ClientException(str4, e.getMessage(), e);
                Logger.error(TAG, clientException22.getMessage(), clientException22);
                throw clientException22;
            } catch (UnrecoverableEntryException e5) {
                e = e5;
                str4 = ClientException.INVALID_PROTECTION_PARAMS;
                ClientException clientException222 = new ClientException(str4, e.getMessage(), e);
                Logger.error(TAG, clientException222.getMessage(), clientException222);
                throw clientException222;
            }
        } catch (NoSuchAlgorithmException e6) {
            e = e6;
            str4 = "no_such_algorithm";
            ClientException clientException2222 = new ClientException(str4, e.getMessage(), e);
            Logger.error(TAG, clientException2222.getMessage(), clientException2222);
            throw clientException2222;
        } catch (KeyStoreException e7) {
            e = e7;
            str4 = ClientException.KEYSTORE_NOT_INITIALIZED;
            ClientException clientException22222 = new ClientException(str4, e.getMessage(), e);
            Logger.error(TAG, clientException22222.getMessage(), clientException22222);
            throw clientException22222;
        } catch (f e8) {
            e = e8;
            str4 = ClientException.JWT_SIGNING_FAILURE;
            ClientException clientException222222 = new ClientException(str4, e.getMessage(), e);
            Logger.error(TAG, clientException222222.getMessage(), clientException222222);
            throw clientException222222;
        } catch (UnrecoverableEntryException e9) {
            e = e9;
            str4 = ClientException.INVALID_PROTECTION_PARAMS;
            ClientException clientException2222222 = new ClientException(str4, e.getMessage(), e);
            Logger.error(TAG, clientException2222222.getMessage(), clientException2222222);
            throw clientException2222222;
        }
    }

    public String generateAsymmetricKey(Context context) {
        String str;
        try {
            return getThumbprintForRsaKey(getRsaKeyForKeyPair(generateNewRsaKeyPair(context, 2048)));
        } catch (UnsupportedOperationException e2) {
            e = e2;
            str = ClientException.BAD_KEY_SIZE;
            ClientException clientException = new ClientException(str, e.getMessage(), e);
            Logger.error(TAG, clientException.getMessage(), clientException);
            throw clientException;
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str = "no_such_algorithm";
            ClientException clientException2 = new ClientException(str, e.getMessage(), e);
            Logger.error(TAG, clientException2.getMessage(), clientException2);
            throw clientException2;
        } catch (NoSuchProviderException e4) {
            e = e4;
            str = ClientException.ANDROID_KEYSTORE_UNAVAILABLE;
            ClientException clientException22 = new ClientException(str, e.getMessage(), e);
            Logger.error(TAG, clientException22.getMessage(), clientException22);
            throw clientException22;
        } catch (InvalidAlgorithmParameterException e5) {
            e = e5;
            str = ClientException.INVALID_ALG;
            ClientException clientException222 = new ClientException(str, e.getMessage(), e);
            Logger.error(TAG, clientException222.getMessage(), clientException222);
            throw clientException222;
        } catch (f e6) {
            e = e6;
            str = ClientException.THUMBPRINT_COMPUTATION_FAILURE;
            ClientException clientException2222 = new ClientException(str, e.getMessage(), e);
            Logger.error(TAG, clientException2222.getMessage(), clientException2222);
            throw clientException2222;
        }
    }

    public boolean asymmetricKeyExists(String str) {
        if (!asymmetricKeyExists()) {
            return false;
        }
        try {
            return getAsymmetricKeyThumbprint().equals(str);
        } catch (ClientException e2) {
            Logger.error(TAG, "Error while comparing thumbprints.", e2);
            return false;
        }
    }

    public void getRequestConfirmation(final TaskCompletedCallbackWithError<String, ClientException> taskCompletedCallbackWithError) {
        sThreadExecutor.submit(new Runnable() {
            public void run() {
                String str;
                try {
                    taskCompletedCallbackWithError.onTaskCompleted(DevicePopManager.getReqCnfForRsaKey(DevicePopManager.getRsaKeyForKeyPair(DevicePopManager.getKeyPairForEntry(DevicePopManager.this.mKeyStore.getEntry(DevicePopManager.KEYSTORE_ENTRY_ALIAS, (KeyStore.ProtectionParameter) null)))));
                } catch (KeyStoreException e2) {
                    e = e2;
                    str = ClientException.KEYSTORE_NOT_INITIALIZED;
                    ClientException clientException = new ClientException(str, e.getMessage(), e);
                    Logger.error(DevicePopManager.TAG, clientException.getMessage(), clientException);
                    taskCompletedCallbackWithError.onError(clientException);
                } catch (NoSuchAlgorithmException e3) {
                    e = e3;
                    str = "no_such_algorithm";
                    ClientException clientException2 = new ClientException(str, e.getMessage(), e);
                    Logger.error(DevicePopManager.TAG, clientException2.getMessage(), clientException2);
                    taskCompletedCallbackWithError.onError(clientException2);
                } catch (UnrecoverableEntryException e4) {
                    e = e4;
                    str = ClientException.INVALID_PROTECTION_PARAMS;
                    ClientException clientException22 = new ClientException(str, e.getMessage(), e);
                    Logger.error(DevicePopManager.TAG, clientException22.getMessage(), clientException22);
                    taskCompletedCallbackWithError.onError(clientException22);
                } catch (f e5) {
                    e = e5;
                    str = ClientException.THUMBPRINT_COMPUTATION_FAILURE;
                    ClientException clientException222 = new ClientException(str, e.getMessage(), e);
                    Logger.error(DevicePopManager.TAG, clientException222.getMessage(), clientException222);
                    taskCompletedCallbackWithError.onError(clientException222);
                } catch (JSONException e6) {
                    e = e6;
                    str = ClientException.JSON_CONSTRUCTION_FAILED;
                    ClientException clientException2222 = new ClientException(str, e.getMessage(), e);
                    Logger.error(DevicePopManager.TAG, clientException2222.getMessage(), clientException2222);
                    taskCompletedCallbackWithError.onError(clientException2222);
                }
            }
        });
    }
}
