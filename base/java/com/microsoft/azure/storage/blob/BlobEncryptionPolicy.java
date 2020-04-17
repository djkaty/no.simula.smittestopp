package com.microsoft.azure.storage.blob;

import com.microsoft.azure.keyvault.core.IKey;
import com.microsoft.azure.keyvault.core.IKeyResolver;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.EncryptionAgent;
import com.microsoft.azure.storage.core.EncryptionAlgorithm;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.core.WrappedContentKey;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import k.a.a.b.e.b;

public final class BlobEncryptionPolicy {
    public IKeyResolver keyResolver;
    public IKey keyWrapper;

    /* renamed from: com.microsoft.azure.storage.blob.BlobEncryptionPolicy$1  reason: invalid class name */
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

    public BlobEncryptionPolicy(IKey iKey, IKeyResolver iKeyResolver) {
        this.keyWrapper = iKey;
        this.keyResolver = iKeyResolver;
    }

    public static OutputStream wrapUserStreamWithDecryptStream(CloudBlob cloudBlob, OutputStream outputStream, BlobRequestOptions blobRequestOptions, Map<String, String> map, long j2, boolean z, Long l2, Long l3, int i2, boolean z2) {
        Map<String, String> map2 = map;
        String str = map.get(Constants.EncryptionConstants.BLOB_ENCRYPTION_DATA);
        if (blobRequestOptions.requireEncryption() == null || !blobRequestOptions.requireEncryption().booleanValue() || str != null) {
            boolean z3 = false;
            if (!z) {
                BlobEncryptionPolicy encryptionPolicy = blobRequestOptions.getEncryptionPolicy();
                Boolean requireEncryption = blobRequestOptions.requireEncryption();
                if (cloudBlob.getProperties().getBlobType() == BlobType.PAGE_BLOB) {
                    z3 = true;
                }
                return encryptionPolicy.decryptBlob(outputStream, map, requireEncryption, (byte[]) null, z3);
            }
            return new BlobDecryptStream(outputStream, map, l3, i2, z2, cloudBlob.getProperties().getBlobType() == BlobType.PAGE_BLOB || (l2 != null && l2.longValue() < j2 - 16), blobRequestOptions.getEncryptionPolicy(), blobRequestOptions.requireEncryption());
        }
        throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.ENCRYPTION_DATA_NOT_PRESENT_ERROR, (Exception) null);
    }

    public Cipher createAndSetEncryptionContext(Map<String, String> map, boolean z) {
        Cipher cipher;
        Utility.assertNotNull("metadata", map);
        if (this.keyWrapper != null) {
            try {
                KeyGenerator instance = KeyGenerator.getInstance(StorageHelper.KEYSPEC_ALGORITHM);
                instance.init(256);
                if (z) {
                    cipher = Cipher.getInstance("AES/CBC/NoPadding");
                } else {
                    cipher = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                }
                SecretKey generateKey = instance.generateKey();
                cipher.init(1, generateKey);
                BlobEncryptionData blobEncryptionData = new BlobEncryptionData();
                if (blobEncryptionData.getKeyWrappingMetadata() == null) {
                    blobEncryptionData.setKeyWrappingMetadata(new HashMap());
                }
                blobEncryptionData.getKeyWrappingMetadata().put(Constants.EncryptionConstants.ENCRYPTION_LIBRARY, "Java 8.1.0");
                blobEncryptionData.setEncryptionAgent(new EncryptionAgent("1.0", EncryptionAlgorithm.AES_CBC_256));
                b bVar = this.keyWrapper.wrapKeyAsync(generateKey.getEncoded(), (String) null).get();
                blobEncryptionData.setWrappedContentKey(new WrappedContentKey(this.keyWrapper.getKid(), (byte[]) bVar.getKey(), (String) bVar.getValue()));
                blobEncryptionData.setContentEncryptionIV(cipher.getIV());
                map.put(Constants.EncryptionConstants.BLOB_ENCRYPTION_DATA, blobEncryptionData.serialize());
                return cipher;
            } catch (Exception e2) {
                throw StorageException.translateClientException(e2);
            }
        } else {
            throw new IllegalArgumentException(SR.KEY_MISSING);
        }
    }

    public OutputStream decryptBlob(OutputStream outputStream, Map<String, String> map, Boolean bool, byte[] bArr, boolean z) {
        byte[] bArr2;
        Cipher cipher;
        Utility.assertNotNull("metadata", map);
        String str = map.get(Constants.EncryptionConstants.BLOB_ENCRYPTION_DATA);
        if (str == null) {
            return outputStream;
        }
        try {
            BlobEncryptionData deserialize = BlobEncryptionData.deserialize(str);
            Utility.assertNotNull("encryptionData", deserialize);
            Utility.assertNotNull("contentEncryptionIV", deserialize.getContentEncryptionIV());
            Utility.assertNotNull("encryptedKey", deserialize.getWrappedContentKey().getEncryptedKey());
            if ("1.0".equals(deserialize.getEncryptionAgent().getProtocol())) {
                if (this.keyWrapper == null) {
                    if (this.keyResolver == null) {
                        throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.KEY_AND_RESOLVER_MISSING, (Exception) null);
                    }
                }
                if (this.keyResolver != null) {
                    IKey iKey = this.keyResolver.resolveKeyAsync(deserialize.getWrappedContentKey().getKeyId()).get();
                    Utility.assertNotNull("keyEncryptionKey", iKey);
                    bArr2 = iKey.unwrapKeyAsync(deserialize.getWrappedContentKey().getEncryptedKey(), deserialize.getWrappedContentKey().getAlgorithm()).get();
                } else if (deserialize.getWrappedContentKey().getKeyId().equals(this.keyWrapper.getKid())) {
                    bArr2 = this.keyWrapper.unwrapKeyAsync(deserialize.getWrappedContentKey().getEncryptedKey(), deserialize.getWrappedContentKey().getAlgorithm()).get();
                } else {
                    throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.KEY_MISMATCH, (Exception) null);
                }
                if (deserialize.getEncryptionAgent().getEncryptionAlgorithm().ordinal() == 0) {
                    if (z) {
                        cipher = Cipher.getInstance("AES/CBC/NoPadding");
                    } else {
                        cipher = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                    }
                    if (bArr == null) {
                        bArr = deserialize.getContentEncryptionIV();
                    }
                    cipher.init(2, new SecretKeySpec(bArr2, 0, bArr2.length, StorageHelper.KEYSPEC_ALGORITHM), new IvParameterSpec(bArr));
                    return new CipherOutputStream(outputStream, cipher);
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
