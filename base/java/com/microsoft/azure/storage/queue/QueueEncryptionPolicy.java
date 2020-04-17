package com.microsoft.azure.storage.queue;

import com.microsoft.azure.keyvault.core.IKey;
import com.microsoft.azure.keyvault.core.IKeyResolver;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.EncryptionAgent;
import com.microsoft.azure.storage.core.EncryptionAlgorithm;
import com.microsoft.azure.storage.core.EncryptionData;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.core.WrappedContentKey;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import k.a.a.b.e.b;

public final class QueueEncryptionPolicy {
    public IKeyResolver keyResolver;
    public IKey keyWrapper;

    /* renamed from: com.microsoft.azure.storage.queue.QueueEncryptionPolicy$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$core$EncryptionAlgorithm;

        static {
            int[] iArr = new int[EncryptionAlgorithm.values().length];
            $SwitchMap$com$microsoft$azure$storage$core$EncryptionAlgorithm = iArr;
            try {
                EncryptionAlgorithm encryptionAlgorithm = EncryptionAlgorithm.AES_CBC_256;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public QueueEncryptionPolicy(IKey iKey, IKeyResolver iKeyResolver) {
        this.keyWrapper = iKey;
        this.keyResolver = iKeyResolver;
    }

    public byte[] decryptMessage(String str, Boolean bool) {
        byte[] bArr;
        Utility.assertNotNull("inputMessage", str);
        try {
            CloudQueueEncryptedMessage deserialize = CloudQueueEncryptedMessage.deserialize(str);
            if (bool != null && bool.booleanValue()) {
                if (deserialize.getEncryptionData() == null) {
                    throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.ENCRYPTION_DATA_NOT_PRESENT_ERROR, (Exception) null);
                }
            }
            if (deserialize.getEncryptionData() == null) {
                return Base64.decode(deserialize.getEncryptedMessageContents());
            }
            EncryptionData encryptionData = deserialize.getEncryptionData();
            Utility.assertNotNull("contentEncryptionIV", encryptionData.getContentEncryptionIV());
            Utility.assertNotNull("encryptedKey", encryptionData.getWrappedContentKey().getEncryptedKey());
            if ("1.0".equals(encryptionData.getEncryptionAgent().getProtocol())) {
                if (this.keyWrapper == null) {
                    if (this.keyResolver == null) {
                        throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.KEY_AND_RESOLVER_MISSING, (Exception) null);
                    }
                }
                if (this.keyResolver != null) {
                    IKey iKey = this.keyResolver.resolveKeyAsync(encryptionData.getWrappedContentKey().getKeyId()).get();
                    Utility.assertNotNull("keyEncryptionKey", iKey);
                    bArr = iKey.unwrapKeyAsync(encryptionData.getWrappedContentKey().getEncryptedKey(), encryptionData.getWrappedContentKey().getAlgorithm()).get();
                } else if (encryptionData.getWrappedContentKey().getKeyId().equals(this.keyWrapper.getKid())) {
                    bArr = this.keyWrapper.unwrapKeyAsync(encryptionData.getWrappedContentKey().getEncryptedKey(), encryptionData.getWrappedContentKey().getAlgorithm()).get();
                } else {
                    throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.KEY_MISMATCH, (Exception) null);
                }
                if (encryptionData.getEncryptionAgent().getEncryptionAlgorithm().ordinal() == 0) {
                    Cipher instance = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                    instance.init(2, new SecretKeySpec(bArr, 0, bArr.length, StorageHelper.KEYSPEC_ALGORITHM), new IvParameterSpec(encryptionData.getContentEncryptionIV()));
                    byte[] decode = Base64.decode(deserialize.getEncryptedMessageContents());
                    return instance.doFinal(decode, 0, decode.length);
                }
                throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.INVALID_ENCRYPTION_ALGORITHM, (Exception) null);
            }
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.ENCRYPTION_PROTOCOL_VERSION_INVALID, (Exception) null);
        } catch (StorageException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.DECRYPTION_LOGIC_ERROR, e3);
        }
    }

    public String encryptMessage(byte[] bArr) {
        Utility.assertNotNull("inputMessage", bArr);
        if (this.keyWrapper != null) {
            CloudQueueEncryptedMessage cloudQueueEncryptedMessage = new CloudQueueEncryptedMessage();
            EncryptionData encryptionData = new EncryptionData();
            if (encryptionData.getKeyWrappingMetadata() == null) {
                encryptionData.setKeyWrappingMetadata(new HashMap());
            }
            encryptionData.getKeyWrappingMetadata().put(Constants.EncryptionConstants.ENCRYPTION_LIBRARY, "Java 8.1.0");
            encryptionData.setEncryptionAgent(new EncryptionAgent("1.0", EncryptionAlgorithm.AES_CBC_256));
            try {
                KeyGenerator instance = KeyGenerator.getInstance(StorageHelper.KEYSPEC_ALGORITHM);
                instance.init(256);
                Cipher instance2 = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                SecretKey generateKey = instance.generateKey();
                instance2.init(1, generateKey);
                b bVar = this.keyWrapper.wrapKeyAsync(generateKey.getEncoded(), (String) null).get();
                encryptionData.setWrappedContentKey(new WrappedContentKey(this.keyWrapper.getKid(), (byte[]) bVar.getKey(), (String) bVar.getValue()));
                cloudQueueEncryptedMessage.setEncryptedMessageContents(new String(Base64.encode(instance2.doFinal(bArr, 0, bArr.length))));
                encryptionData.setContentEncryptionIV(instance2.getIV());
                cloudQueueEncryptedMessage.setEncryptionData(encryptionData);
                return cloudQueueEncryptedMessage.serialize();
            } catch (Exception e2) {
                throw StorageException.translateClientException(e2);
            }
        } else {
            throw new IllegalArgumentException(SR.KEY_MISSING);
        }
    }

    public IKey getKey() {
        return this.keyWrapper;
    }

    public IKeyResolver getKeyResolver() {
        return this.keyResolver;
    }

    public void setKey(IKey iKey) {
        this.keyWrapper = iKey;
    }

    public void setKeyResolver(IKeyResolver iKeyResolver) {
        this.keyResolver = iKeyResolver;
    }
}
