package com.microsoft.identity.common.adal.internal.cache;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.security.KeyPairGeneratorSpec;
import android.util.Base64;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.a.a.a.a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.DigestException;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.x500.X500Principal;

public class StorageHelper implements IStorageHelper {
    public static final String ADALKS = "adalks";
    public static final String ANDROID_KEY_STORE = "AndroidKeyStore";
    public static final String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
    public static final String CURRENT_ACTIVE_BROKER = "current_active_broker";
    public static final int DATA_KEY_LENGTH = 16;
    public static final String ENCODE_VERSION = "E1";
    public static final String HMAC_ALGORITHM = "HmacSHA256";
    public static final String HMAC_KEY_HASH_ALGORITHM = "SHA256";
    public static final int HMAC_LENGTH = 32;
    public static final String KEYSPEC_ALGORITHM = "AES";
    public static final int KEY_FILE_SIZE = 1024;
    public static final int KEY_SIZE = 256;
    public static final String KEY_STORE_CERT_ALIAS = "AdalKey";
    public static final int KEY_VERSION_BLOB_LENGTH = 4;
    public static final String TAG = "StorageHelper";
    public static final String VERSION_ANDROID_KEY_STORE = "A001";
    public static final String VERSION_USER_DEFINED = "U001";
    public static final String WRAP_ALGORITHM = "RSA/ECB/PKCS1Padding";
    public static final boolean sShouldEncryptWithKeyStoreKey = false;
    public String mBlobVersion;
    public SecretKey mCachedKeyStoreEncryptedKey;
    public final Context mContext;
    public SecretKey mEncryptionHMACKey;
    public SecretKey mEncryptionKey;
    public KeyPair mKeyPair;
    public final SecureRandom mRandom;
    public IWpjTelemetryCallback mTelemetryCallback;

    /* renamed from: com.microsoft.identity.common.adal.internal.cache.StorageHelper$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$common$adal$internal$cache$StorageHelper$KeyType;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001d */
        static {
            /*
                com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType[] r0 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$common$adal$internal$cache$StorageHelper$KeyType = r0
                r1 = 1
                com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r2 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.LEGACY_AUTHENTICATOR_APP_KEY     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$identity$common$adal$internal$cache$StorageHelper$KeyType     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r3 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.LEGACY_COMPANY_PORTAL_KEY     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$identity$common$adal$internal$cache$StorageHelper$KeyType     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r3 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.ADAL_USER_DEFINED_KEY     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$adal$internal$cache$StorageHelper$KeyType     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r2 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.KEYSTORE_ENCRYPTED_KEY     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.adal.internal.cache.StorageHelper.AnonymousClass1.<clinit>():void");
        }
    }

    public enum EncryptionType {
        USER_DEFINED,
        ANDROID_KEY_STORE,
        UNENCRYPTED
    }

    public enum KeyType {
        LEGACY_AUTHENTICATOR_APP_KEY,
        LEGACY_COMPANY_PORTAL_KEY,
        ADAL_USER_DEFINED_KEY,
        KEYSTORE_ENCRYPTED_KEY
    }

    public StorageHelper(Context context) {
        this(context, (IWpjTelemetryCallback) null);
    }

    private void assertHMac(byte[] bArr, int i2, int i3, byte[] bArr2) {
        if (bArr2.length == i3 - i2) {
            byte b = 0;
            for (int i4 = i2; i4 < i3; i4++) {
                b = (byte) (b | (bArr2[i4 - i2] ^ bArr[i4]));
            }
            if (b != 0) {
                throw new DigestException();
            }
            return;
        }
        throw new IllegalArgumentException("Unexpected HMAC length");
    }

    private String decryptWithSecretKey(byte[] bArr, SecretKey secretKey) {
        SecretKey hMacKey = getHMacKey(secretKey);
        int length = (bArr.length - 16) - 32;
        int length2 = bArr.length - 32;
        int i2 = length - 4;
        if (length < 0 || length2 < 0 || i2 < 0) {
            throw new IOException("Invalid byte array input for decryption.");
        }
        Cipher instance = Cipher.getInstance(CIPHER_ALGORITHM);
        Mac instance2 = Mac.getInstance("HmacSHA256");
        instance2.init(hMacKey);
        instance2.update(bArr, 0, length2);
        assertHMac(bArr, length2, bArr.length, instance2.doFinal());
        instance.init(2, secretKey, new IvParameterSpec(bArr, length, 16));
        return new String(instance.doFinal(bArr, 4, i2), "UTF-8");
    }

    private void emitDecryptionFailureTelemetryIfNeeded(KeyType keyType, Exception exc) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        String string = defaultSharedPreferences.getString(CURRENT_ACTIVE_BROKER, "");
        String packageName = this.mContext.getPackageName();
        if (!string.equalsIgnoreCase(packageName)) {
            StringBuilder a = a.a("Decryption failed with key: ");
            a.append(keyType.name());
            a.append(" Active broker: ");
            a.append(packageName);
            a.append(" Exception: ");
            a.append(exc.toString());
            String sb = a.toString();
            Logger.info("StorageHelper:emitDecryptionFailureTelemetryIfNeeded", sb);
            IWpjTelemetryCallback iWpjTelemetryCallback = this.mTelemetryCallback;
            if (iWpjTelemetryCallback != null) {
                iWpjTelemetryCallback.logEvent(this.mContext, AuthenticationConstants.TelemetryEvents.DECRYPTION_ERROR, true, sb);
            }
            defaultSharedPreferences.edit().putString(CURRENT_ACTIVE_BROKER, packageName).apply();
        }
    }

    @TargetApi(18)
    private synchronized KeyPair generateKeyPairFromAndroidKeyStore() {
        KeyPair generateKeyPair;
        try {
            logFlowStart(":generateKeyPairFromAndroidKeyStore", AuthenticationConstants.TelemetryEvents.KEYCHAIN_WRITE_START);
            KeyStore.getInstance("AndroidKeyStore").load((KeyStore.LoadStoreParameter) null);
            Logger.verbose("StorageHelper:generateKeyPairFromAndroidKeyStore", "Generate KeyPair from AndroidKeyStore");
            Calendar instance = Calendar.getInstance();
            Calendar instance2 = Calendar.getInstance();
            instance2.add(1, 100);
            KeyPairGenerator instance3 = KeyPairGenerator.getInstance(DevicePopManager.KeyPairGeneratorAlgorithms.RSA, "AndroidKeyStore");
            instance3.initialize(getKeyPairGeneratorSpec(this.mContext, instance.getTime(), instance2.getTime()));
            generateKeyPair = instance3.generateKeyPair();
            logFlowSuccess(":generateKeyPairFromAndroidKeyStore", AuthenticationConstants.TelemetryEvents.KEYCHAIN_WRITE_END, "");
        } catch (GeneralSecurityException e2) {
            e = e2;
            logFlowError(":generateKeyPairFromAndroidKeyStore", AuthenticationConstants.TelemetryEvents.KEYCHAIN_WRITE_END, e.toString(), e);
            throw e;
        } catch (IOException e3) {
            e = e3;
            logFlowError(":generateKeyPairFromAndroidKeyStore", AuthenticationConstants.TelemetryEvents.KEYCHAIN_WRITE_END, e.toString(), e);
            throw e;
        } catch (IllegalStateException e4) {
            logFlowError(":generateKeyPairFromAndroidKeyStore", AuthenticationConstants.TelemetryEvents.KEYCHAIN_WRITE_END, e4.toString(), e4);
            throw new KeyStoreException(e4);
        }
        return generateKeyPair;
    }

    private byte[] getByteArrayFromEncryptedBlob(String str) {
        int charAt = str.charAt(0) - 'a';
        validateEncodeVersion(str, charAt);
        return Base64.decode(str.substring(charAt + 1), 0);
    }

    private char getEncodeVersionLengthPrefix() {
        return (char) 99;
    }

    private SecretKey getHMacKey(SecretKey secretKey) {
        byte[] encoded = secretKey.getEncoded();
        return encoded != null ? new SecretKeySpec(MessageDigest.getInstance("SHA256").digest(encoded), KEYSPEC_ALGORITHM) : secretKey;
    }

    @TargetApi(18)
    private AlgorithmParameterSpec getKeyPairGeneratorSpec(Context context, Date date, Date date2) {
        return new KeyPairGeneratorSpec.Builder(context).setAlias(KEY_STORE_CERT_ALIAS).setSubject(new X500Principal(String.format(Locale.ROOT, "CN=%s, OU=%s", new Object[]{KEY_STORE_CERT_ALIAS, getPackageName()}))).setSerialNumber(BigInteger.ONE).setStartDate(date).setEndDate(date2).build();
    }

    public static SecretKey getSecretKey(byte[] bArr) {
        if (bArr != null) {
            return new SecretKeySpec(bArr, KEYSPEC_ALGORITHM);
        }
        throw new IllegalArgumentException("rawBytes");
    }

    @TargetApi(18)
    private synchronized SecretKey getUnwrappedSecretKey() {
        Logger.verbose("StorageHelper:getUnwrappedSecretKey", "Reading SecretKey");
        byte[] readKeyData = readKeyData();
        if (readKeyData == null) {
            Logger.verbose("StorageHelper:getUnwrappedSecretKey", "Key data is null");
            return null;
        }
        KeyPair readKeyPair = readKeyPair();
        this.mKeyPair = readKeyPair;
        if (readKeyPair == null) {
            return null;
        }
        SecretKey unwrap = unwrap(readKeyData);
        Logger.verbose("StorageHelper:getUnwrappedSecretKey", "Finished reading SecretKey");
        return unwrap;
    }

    private synchronized SecretKey loadKeyStoreEncryptedKey() {
        if (this.mCachedKeyStoreEncryptedKey != null) {
            return this.mCachedKeyStoreEncryptedKey;
        }
        try {
            SecretKey unwrappedSecretKey = getUnwrappedSecretKey();
            this.mCachedKeyStoreEncryptedKey = unwrappedSecretKey;
            return unwrappedSecretKey;
        } catch (IOException | GeneralSecurityException e2) {
            Logger.error("StorageHelper:loadKeyStoreEncryptedKey", ErrorStrings.ANDROIDKEYSTORE_FAILED, e2);
            this.mKeyPair = null;
            this.mCachedKeyStoreEncryptedKey = null;
            deleteKeyFile();
            resetKeyPairFromAndroidKeyStore();
            throw e2;
        }
    }

    private void logEvent(String str, String str2, boolean z, String str3) {
        String b = a.b(TAG, str);
        Logger.verbose(b, str2 + ": " + str3);
        IWpjTelemetryCallback iWpjTelemetryCallback = this.mTelemetryCallback;
        if (iWpjTelemetryCallback != null) {
            iWpjTelemetryCallback.logEvent(this.mContext, str2, Boolean.valueOf(z), str3);
        }
    }

    private void logFlowError(String str, String str2, String str3, Exception exc) {
        String b = a.b(TAG, str);
        Logger.error(b, str2 + " failed: " + str3, exc);
        IWpjTelemetryCallback iWpjTelemetryCallback = this.mTelemetryCallback;
        if (iWpjTelemetryCallback != null) {
            iWpjTelemetryCallback.logEvent(this.mContext, str2, true, str3);
        }
    }

    private void logFlowStart(String str, String str2) {
        String b = a.b(TAG, str);
        Logger.verbose(b, str2 + " started.");
        IWpjTelemetryCallback iWpjTelemetryCallback = this.mTelemetryCallback;
        if (iWpjTelemetryCallback != null) {
            iWpjTelemetryCallback.logEvent(this.mContext, str2, false, "");
        }
    }

    private void logFlowSuccess(String str, String str2, String str3) {
        String b = a.b(TAG, str);
        Logger.verbose(b, str2 + " successfully finished: " + str3);
        IWpjTelemetryCallback iWpjTelemetryCallback = this.mTelemetryCallback;
        if (iWpjTelemetryCallback != null) {
            iWpjTelemetryCallback.logEvent(this.mContext, str2, false, str3);
        }
    }

    private byte[] readKeyData() {
        File file = new File(this.mContext.getDir(getPackageName(), 0), ADALKS);
        if (!file.exists()) {
            return null;
        }
        Logger.verbose("StorageHelper:readKeyData", "Reading key data from a file");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
            fileInputStream.close();
        }
    }

    private synchronized KeyPair readKeyPair() {
        Logger.verbose("StorageHelper:readKeyPair", "Reading Key entry");
        try {
            logFlowStart(":readKeyPair", AuthenticationConstants.TelemetryEvents.KEYCHAIN_READ_START);
            KeyStore instance = KeyStore.getInstance("AndroidKeyStore");
            instance.load((KeyStore.LoadStoreParameter) null);
            Certificate certificate = instance.getCertificate(KEY_STORE_CERT_ALIAS);
            Key key = instance.getKey(KEY_STORE_CERT_ALIAS, (char[]) null);
            if (certificate != null) {
                if (key != null) {
                    KeyPair keyPair = new KeyPair(certificate.getPublicKey(), (PrivateKey) key);
                    logFlowSuccess(":readKeyPair", AuthenticationConstants.TelemetryEvents.KEYCHAIN_READ_END, "KeyStore KeyPair is loaded.");
                    return keyPair;
                }
            }
            logFlowSuccess(":readKeyPair", AuthenticationConstants.TelemetryEvents.KEYCHAIN_READ_END, "KeyStore is empty.");
            Logger.verbose("StorageHelper:readKeyPair", "Key entry doesn't exist.");
            return null;
        } catch (GeneralSecurityException e2) {
            e = e2;
            logFlowError(":readKeyPair", AuthenticationConstants.TelemetryEvents.KEYCHAIN_READ_END, e.toString(), e);
            throw e;
        } catch (IOException e3) {
            e = e3;
            logFlowError(":readKeyPair", AuthenticationConstants.TelemetryEvents.KEYCHAIN_READ_END, e.toString(), e);
            throw e;
        } catch (RuntimeException e4) {
            logFlowError(":readKeyPair", AuthenticationConstants.TelemetryEvents.KEYCHAIN_READ_END, e4.toString(), e4);
            throw new KeyStoreException(e4);
        }
    }

    @SuppressLint({"GetInstance"})
    @TargetApi(18)
    private SecretKey unwrap(byte[] bArr) {
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(4, this.mKeyPair.getPrivate());
        try {
            return (SecretKey) instance.unwrap(bArr, KEYSPEC_ALGORITHM, 3);
        } catch (IllegalArgumentException e2) {
            throw new KeyStoreException(e2);
        }
    }

    private void validateEncodeVersion(String str, int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException(String.format("Encode version length: '%s' is not valid, it must be greater of equal to 0", new Object[]{Integer.valueOf(i2)}));
        } else if (!str.substring(1, i2 + 1).equals(ENCODE_VERSION)) {
            throw new IllegalArgumentException(String.format("Unsupported encode version received. Encode version supported is: '%s'", new Object[]{ENCODE_VERSION}));
        }
    }

    @SuppressLint({"GetInstance"})
    @TargetApi(18)
    private byte[] wrap(SecretKey secretKey) {
        Logger.verbose("StorageHelper:wrap", "Wrap secret key.");
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(3, this.mKeyPair.getPublic());
        return instance.wrap(secretKey);
    }

    private void writeKeyData(byte[] bArr) {
        Logger.verbose("StorageHelper:writeKeyData", "Writing key data to a file");
        FileOutputStream fileOutputStream = new FileOutputStream(new File(this.mContext.getDir(getPackageName(), 0), ADALKS));
        try {
            fileOutputStream.write(bArr);
        } finally {
            fileOutputStream.close();
        }
    }

    public String decrypt(String str) {
        Logger.verbose("StorageHelper:decrypt", "Starting decryption");
        if (StringExtensions.isNullOrBlank(str)) {
            throw new IllegalArgumentException("Input is empty or null");
        } else if (getEncryptionType(str) == EncryptionType.UNENCRYPTED) {
            Logger.warn("StorageHelper:decrypt", "This string is not encrypted. Finished decryption.");
            return str;
        } else {
            if (this.mTelemetryCallback != null) {
                try {
                    if (loadSecretKey(KeyType.KEYSTORE_ENCRYPTED_KEY) == null) {
                        this.mTelemetryCallback.logEvent(this.mContext, ":decrypt", false, "KEY_DECRYPTION_KEYSTORE_KEY_NOT_INITIALIZED");
                    }
                } catch (Exception unused) {
                    this.mTelemetryCallback.logEvent(this.mContext, ":decrypt", false, "KEY_DECRYPTION_KEYSTORE_KEY_FAILED_TO_LOAD");
                }
            }
            List<KeyType> keysForDecryptionType = getKeysForDecryptionType(str, getPackageName());
            byte[] byteArrayFromEncryptedBlob = getByteArrayFromEncryptedBlob(str);
            for (KeyType next : keysForDecryptionType) {
                try {
                    SecretKey loadSecretKey = loadSecretKey(next);
                    if (loadSecretKey != null) {
                        String decryptWithSecretKey = decryptWithSecretKey(byteArrayFromEncryptedBlob, loadSecretKey);
                        Logger.verbose("StorageHelper:decrypt", "Finished decryption with keyType:" + next.name());
                        return decryptWithSecretKey;
                    }
                } catch (IOException | GeneralSecurityException e2) {
                    emitDecryptionFailureTelemetryIfNeeded(next, e2);
                }
            }
            Logger.info("StorageHelper:decrypt", "Tried all decryption keys and decryption still fails. Throw an exception.");
            throw new GeneralSecurityException(ErrorStrings.DECRYPTION_FAILED);
        }
    }

    public void deleteKeyFile() {
        File file = new File(this.mContext.getDir(getPackageName(), 0), ADALKS);
        if (file.exists()) {
            Logger.verbose("StorageHelper:deleteKeyFile", "Delete KeyFile");
            if (!file.delete()) {
                Logger.verbose("StorageHelper:deleteKeyFile", "Delete KeyFile failed");
            }
        }
    }

    public SecretKey deserializeSecretKey(String str) {
        return getSecretKey(Base64.decode(str, 0));
    }

    public String encrypt(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            Logger.verbose("StorageHelper:encrypt", "Starting encryption");
            SecretKey loadSecretKeyForEncryption = loadSecretKeyForEncryption();
            this.mEncryptionKey = loadSecretKeyForEncryption;
            this.mEncryptionHMACKey = getHMacKey(loadSecretKeyForEncryption);
            StringBuilder a = a.a("Encrypt version:");
            a.append(this.mBlobVersion);
            Logger.verbose("StorageHelper:encrypt", a.toString());
            byte[] bytes = this.mBlobVersion.getBytes("UTF-8");
            byte[] bytes2 = str.getBytes("UTF-8");
            byte[] bArr = new byte[16];
            this.mRandom.nextBytes(bArr);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
            Cipher instance = Cipher.getInstance(CIPHER_ALGORITHM);
            Mac instance2 = Mac.getInstance("HmacSHA256");
            instance.init(1, this.mEncryptionKey, ivParameterSpec);
            byte[] doFinal = instance.doFinal(bytes2);
            instance2.init(this.mEncryptionHMACKey);
            instance2.update(bytes);
            instance2.update(doFinal);
            instance2.update(bArr);
            byte[] doFinal2 = instance2.doFinal();
            byte[] bArr2 = new byte[(bytes.length + doFinal.length + 16 + doFinal2.length)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(doFinal, 0, bArr2, bytes.length, doFinal.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length + doFinal.length, 16);
            System.arraycopy(doFinal2, 0, bArr2, bytes.length + doFinal.length + 16, doFinal2.length);
            String str2 = new String(Base64.encode(bArr2, 2), "UTF-8");
            Logger.verbose("StorageHelper:encrypt", "Finished encryption");
            return getEncodeVersionLengthPrefix() + ENCODE_VERSION + str2;
        }
        throw new IllegalArgumentException("Input is empty or null");
    }

    public synchronized SecretKey generateKeyStoreEncryptedKey() {
        SecretKey generateSecretKey = generateSecretKey();
        this.mCachedKeyStoreEncryptedKey = generateSecretKey;
        saveKeyStoreEncryptedKey(generateSecretKey);
        logEvent(":generateKeyStoreEncryptedKey", AuthenticationConstants.TelemetryEvents.KEY_CREATED, false, "New key is generated.");
        return this.mCachedKeyStoreEncryptedKey;
    }

    public SecretKey generateSecretKey() {
        KeyGenerator instance = KeyGenerator.getInstance(KEYSPEC_ALGORITHM);
        instance.init(256, this.mRandom);
        return instance.generateKey();
    }

    public EncryptionType getEncryptionType(String str) {
        try {
            try {
                String str2 = new String(getByteArrayFromEncryptedBlob(str), 0, 4, "UTF-8");
                if (VERSION_USER_DEFINED.equalsIgnoreCase(str2)) {
                    return EncryptionType.USER_DEFINED;
                }
                if (VERSION_ANDROID_KEY_STORE.equalsIgnoreCase(str2)) {
                    return EncryptionType.ANDROID_KEY_STORE;
                }
                return EncryptionType.UNENCRYPTED;
            } catch (UnsupportedEncodingException e2) {
                Logger.error("StorageHelper:getEncryptionType", "Failed to extract keyVersion.", e2);
                throw e2;
            }
        } catch (Exception e3) {
            Logger.error("StorageHelper:getEncryptionType", "This data is not an encrypted blob. Treat as unencrypted data.", e3);
            return EncryptionType.UNENCRYPTED;
        }
    }

    public List<KeyType> getKeysForDecryptionType(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        EncryptionType encryptionType = getEncryptionType(str);
        if (encryptionType == EncryptionType.USER_DEFINED) {
            if (AuthenticationSettings.INSTANCE.getSecretKeyData() != null) {
                arrayList.add(KeyType.ADAL_USER_DEFINED_KEY);
            } else if ("com.microsoft.windowsintune.companyportal".equalsIgnoreCase(str2)) {
                arrayList.add(KeyType.LEGACY_COMPANY_PORTAL_KEY);
                arrayList.add(KeyType.LEGACY_AUTHENTICATOR_APP_KEY);
            } else if (AuthenticationConstants.Broker.AZURE_AUTHENTICATOR_APP_PACKAGE_NAME.equalsIgnoreCase(str2)) {
                arrayList.add(KeyType.LEGACY_AUTHENTICATOR_APP_KEY);
                arrayList.add(KeyType.LEGACY_COMPANY_PORTAL_KEY);
            }
        } else if (encryptionType == EncryptionType.ANDROID_KEY_STORE) {
            arrayList.add(KeyType.KEYSTORE_ENCRYPTED_KEY);
        }
        return arrayList;
    }

    public String getPackageName() {
        return this.mContext.getPackageName();
    }

    public SecretKey loadSecretKey(KeyType keyType) {
        int ordinal = keyType.ordinal();
        if (ordinal == 0) {
            return getSecretKey(AuthenticationSettings.INSTANCE.getBrokerSecretKeys().get(AuthenticationConstants.Broker.AZURE_AUTHENTICATOR_APP_PACKAGE_NAME));
        }
        if (ordinal == 1) {
            return getSecretKey(AuthenticationSettings.INSTANCE.getBrokerSecretKeys().get("com.microsoft.windowsintune.companyportal"));
        }
        if (ordinal == 2) {
            return getSecretKey(AuthenticationSettings.INSTANCE.getSecretKeyData());
        }
        if (ordinal == 3) {
            return loadKeyStoreEncryptedKey();
        }
        Logger.verbose("StorageHelper:loadSecretKey", "Unknown KeyType. This code should never be reached.");
        throw new GeneralSecurityException("unknown_error");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        r6.mTelemetryCallback.logEvent(r6.mContext, ":loadSecretKeyForEncryption", false, "KEY_ENCRYPTION_KEYSTORE_KEY_FAILED_TO_LOAD");
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x003a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized javax.crypto.SecretKey loadSecretKeyForEncryption() {
        /*
            r6 = this;
            monitor-enter(r6)
            javax.crypto.SecretKey r0 = r6.mEncryptionKey     // Catch:{ all -> 0x009b }
            if (r0 == 0) goto L_0x000d
            javax.crypto.SecretKey r0 = r6.mEncryptionHMACKey     // Catch:{ all -> 0x009b }
            if (r0 == 0) goto L_0x000d
            javax.crypto.SecretKey r0 = r6.mEncryptionKey     // Catch:{ all -> 0x009b }
            monitor-exit(r6)
            return r0
        L_0x000d:
            com.microsoft.identity.common.adal.internal.AuthenticationSettings r0 = com.microsoft.identity.common.adal.internal.AuthenticationSettings.INSTANCE     // Catch:{ all -> 0x009b }
            java.util.Map r0 = r0.getBrokerSecretKeys()     // Catch:{ all -> 0x009b }
            java.lang.String r1 = r6.getPackageName()     // Catch:{ all -> 0x009b }
            boolean r0 = r0.containsKey(r1)     // Catch:{ all -> 0x009b }
            if (r0 == 0) goto L_0x006a
            com.microsoft.identity.common.adal.internal.cache.IWpjTelemetryCallback r0 = r6.mTelemetryCallback     // Catch:{ all -> 0x009b }
            if (r0 == 0) goto L_0x0049
            r0 = 0
            com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r1 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.KEYSTORE_ENCRYPTED_KEY     // Catch:{ Exception -> 0x003a }
            javax.crypto.SecretKey r1 = r6.loadSecretKey(r1)     // Catch:{ Exception -> 0x003a }
            if (r1 != 0) goto L_0x0049
            com.microsoft.identity.common.adal.internal.cache.IWpjTelemetryCallback r1 = r6.mTelemetryCallback     // Catch:{ Exception -> 0x003a }
            android.content.Context r2 = r6.mContext     // Catch:{ Exception -> 0x003a }
            java.lang.String r3 = ":loadSecretKeyForEncryption"
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r0)     // Catch:{ Exception -> 0x003a }
            java.lang.String r5 = "KEY_ENCRYPTION_KEYSTORE_KEY_NOT_INITIALIZED"
            r1.logEvent(r2, r3, r4, r5)     // Catch:{ Exception -> 0x003a }
            goto L_0x0049
        L_0x003a:
            com.microsoft.identity.common.adal.internal.cache.IWpjTelemetryCallback r1 = r6.mTelemetryCallback     // Catch:{ all -> 0x009b }
            android.content.Context r2 = r6.mContext     // Catch:{ all -> 0x009b }
            java.lang.String r3 = ":loadSecretKeyForEncryption"
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch:{ all -> 0x009b }
            java.lang.String r4 = "KEY_ENCRYPTION_KEYSTORE_KEY_FAILED_TO_LOAD"
            r1.logEvent(r2, r3, r0, r4)     // Catch:{ all -> 0x009b }
        L_0x0049:
            java.lang.String r0 = "U001"
            r6.setBlobVersion(r0)     // Catch:{ all -> 0x009b }
            java.lang.String r0 = "com.azure.authenticator"
            java.lang.String r1 = r6.getPackageName()     // Catch:{ all -> 0x009b }
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch:{ all -> 0x009b }
            if (r0 == 0) goto L_0x0062
            com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r0 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.LEGACY_AUTHENTICATOR_APP_KEY     // Catch:{ all -> 0x009b }
            javax.crypto.SecretKey r0 = r6.loadSecretKey(r0)     // Catch:{ all -> 0x009b }
            monitor-exit(r6)
            return r0
        L_0x0062:
            com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r0 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.LEGACY_COMPANY_PORTAL_KEY     // Catch:{ all -> 0x009b }
            javax.crypto.SecretKey r0 = r6.loadSecretKey(r0)     // Catch:{ all -> 0x009b }
            monitor-exit(r6)
            return r0
        L_0x006a:
            com.microsoft.identity.common.adal.internal.AuthenticationSettings r0 = com.microsoft.identity.common.adal.internal.AuthenticationSettings.INSTANCE     // Catch:{ all -> 0x009b }
            byte[] r0 = r0.getSecretKeyData()     // Catch:{ all -> 0x009b }
            if (r0 == 0) goto L_0x007f
            java.lang.String r0 = "U001"
            r6.setBlobVersion(r0)     // Catch:{ all -> 0x009b }
            com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r0 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.ADAL_USER_DEFINED_KEY     // Catch:{ all -> 0x009b }
            javax.crypto.SecretKey r0 = r6.loadSecretKey(r0)     // Catch:{ all -> 0x009b }
            monitor-exit(r6)
            return r0
        L_0x007f:
            java.lang.String r0 = "A001"
            r6.setBlobVersion(r0)     // Catch:{ all -> 0x009b }
            com.microsoft.identity.common.adal.internal.cache.StorageHelper$KeyType r0 = com.microsoft.identity.common.adal.internal.cache.StorageHelper.KeyType.KEYSTORE_ENCRYPTED_KEY     // Catch:{ IOException | GeneralSecurityException -> 0x008e }
            javax.crypto.SecretKey r0 = r6.loadSecretKey(r0)     // Catch:{ IOException | GeneralSecurityException -> 0x008e }
            if (r0 == 0) goto L_0x008e
            monitor-exit(r6)
            return r0
        L_0x008e:
            java.lang.String r0 = "StorageHelper:loadSecretKeyForEncryption"
            java.lang.String r1 = "Keystore-encrypted key does not exist, try to generate new keys."
            com.microsoft.identity.common.internal.logging.Logger.verbose(r0, r1)     // Catch:{ all -> 0x009b }
            javax.crypto.SecretKey r0 = r6.generateKeyStoreEncryptedKey()     // Catch:{ all -> 0x009b }
            monitor-exit(r6)
            return r0
        L_0x009b:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.adal.internal.cache.StorageHelper.loadSecretKeyForEncryption():javax.crypto.SecretKey");
    }

    @TargetApi(18)
    public synchronized void resetKeyPairFromAndroidKeyStore() {
        KeyStore instance = KeyStore.getInstance("AndroidKeyStore");
        instance.load((KeyStore.LoadStoreParameter) null);
        instance.deleteEntry(KEY_STORE_CERT_ALIAS);
    }

    public void saveKeyStoreEncryptedKey(SecretKey secretKey) {
        if (this.mKeyPair == null) {
            this.mKeyPair = generateKeyPairFromAndroidKeyStore();
        }
        writeKeyData(wrap(secretKey));
    }

    public String serializeSecretKey(SecretKey secretKey) {
        return Base64.encodeToString(secretKey.getEncoded(), 0);
    }

    public void setBlobVersion(String str) {
        this.mBlobVersion = str;
    }

    @SuppressLint({"TrulyRandom"})
    public StorageHelper(Context context, IWpjTelemetryCallback iWpjTelemetryCallback) {
        this.mEncryptionKey = null;
        this.mEncryptionHMACKey = null;
        this.mCachedKeyStoreEncryptedKey = null;
        this.mContext = context.getApplicationContext();
        this.mRandom = new SecureRandom();
        this.mTelemetryCallback = iWpjTelemetryCallback;
    }
}
