package com.microsoft.azure.storage.table;

import com.microsoft.azure.keyvault.core.IKey;
import com.microsoft.azure.keyvault.core.IKeyResolver;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.EncryptionAgent;
import com.microsoft.azure.storage.core.EncryptionAlgorithm;
import com.microsoft.azure.storage.core.EncryptionData;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.core.WrappedContentKey;
import com.microsoft.azure.storage.table.TableRequestOptions;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import java.security.Key;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import k.a.a.b.e.b;

public class TableEncryptionPolicy {
    public IKeyResolver keyResolver;
    public IKey keyWrapper;

    /* renamed from: com.microsoft.azure.storage.table.TableEncryptionPolicy$1  reason: invalid class name */
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

    public TableEncryptionPolicy(IKey iKey, IKeyResolver iKeyResolver) {
        this.keyWrapper = iKey;
        this.keyResolver = iKeyResolver;
    }

    public HashMap<String, EntityProperty> decryptEntity(HashMap<String, EntityProperty> hashMap, HashSet<String> hashSet, String str, String str2, Key key, EncryptionData encryptionData, Boolean bool) {
        StringBuilder sb;
        String str3 = str;
        String str4 = str2;
        HashMap<String, EntityProperty> hashMap2 = new HashMap<>();
        try {
            if (encryptionData.getEncryptionAgent().getEncryptionAlgorithm().ordinal() == 0) {
                Cipher instance = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                for (Map.Entry next : hashMap.entrySet()) {
                    if (next.getKey() != Constants.EncryptionConstants.TABLE_ENCRYPTION_KEY_DETAILS) {
                        if (next.getKey() != Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS) {
                            HashSet<String> hashSet2 = hashSet;
                            if (hashSet.contains(next.getKey())) {
                                MessageDigest instance2 = MessageDigest.getInstance("SHA-256");
                                if (bool.booleanValue()) {
                                    sb = new StringBuilder();
                                    sb.append(str3);
                                    sb.append(str4);
                                    sb.append((String) next.getKey());
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(str4);
                                    sb.append(str3);
                                    sb.append((String) next.getKey());
                                }
                                byte[] bArr = new byte[16];
                                System.arraycopy(instance2.digest(Utility.binaryAppend(encryptionData.getContentEncryptionIV(), sb.toString().getBytes("UTF-8"))), 0, bArr, 0, 16);
                                instance.init(2, key, new IvParameterSpec(bArr));
                                byte[] valueAsByteArray = ((EntityProperty) next.getValue()).getValueAsByteArray();
                                hashMap2.put(next.getKey(), new EntityProperty(new String(instance.doFinal(valueAsByteArray, 0, valueAsByteArray.length), "UTF-8")));
                            } else {
                                Key key2 = key;
                                hashMap2.put(next.getKey(), next.getValue());
                            }
                        }
                    }
                    HashSet<String> hashSet3 = hashSet;
                    Key key3 = key;
                }
                return hashMap2;
            }
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.INVALID_ENCRYPTION_ALGORITHM, (Exception) null);
        } catch (StorageException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.DECRYPTION_LOGIC_ERROR, e3);
        }
    }

    public CEKReturn decryptMetadataAndReturnCEK(String str, String str2, EntityProperty entityProperty, EntityProperty entityProperty2, EncryptionData encryptionData) {
        byte[] bArr;
        StringBuilder sb;
        if (this.keyWrapper == null && this.keyResolver == null) {
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.KEY_AND_RESOLVER_MISSING, (Exception) null);
        }
        try {
            encryptionData.copyValues(EncryptionData.deserialize(entityProperty.getValueAsString()));
            Utility.assertNotNull("contentEncryptionIV", encryptionData.getContentEncryptionIV());
            Utility.assertNotNull("encryptedKey", encryptionData.getWrappedContentKey().getEncryptedKey());
            if ("1.0".equals(encryptionData.getEncryptionAgent().getProtocol())) {
                Boolean valueOf = Boolean.valueOf(encryptionData.getEncryptionAgent().getProtocol().equals("1.0") && (encryptionData.getKeyWrappingMetadata() == null || (encryptionData.getKeyWrappingMetadata().containsKey(Constants.EncryptionConstants.ENCRYPTION_LIBRARY) && encryptionData.getKeyWrappingMetadata().get(Constants.EncryptionConstants.ENCRYPTION_LIBRARY).contains("Java"))));
                if (this.keyResolver != null) {
                    IKey iKey = this.keyResolver.resolveKeyAsync(encryptionData.getWrappedContentKey().getKeyId()).get();
                    Utility.assertNotNull("keyEncryptionKey", iKey);
                    bArr = iKey.unwrapKeyAsync(encryptionData.getWrappedContentKey().getEncryptedKey(), encryptionData.getWrappedContentKey().getAlgorithm()).get();
                } else if (encryptionData.getWrappedContentKey().getKeyId().equals(this.keyWrapper.getKid())) {
                    bArr = this.keyWrapper.unwrapKeyAsync(encryptionData.getWrappedContentKey().getEncryptedKey(), encryptionData.getWrappedContentKey().getAlgorithm()).get();
                } else {
                    throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.KEY_MISMATCH, (Exception) null);
                }
                Cipher instance = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                MessageDigest instance2 = MessageDigest.getInstance("SHA-256");
                if (valueOf.booleanValue()) {
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append(str2);
                    sb.append(Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS);
                } else {
                    sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(str);
                    sb.append(Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS);
                }
                byte[] bArr2 = new byte[16];
                System.arraycopy(instance2.digest(Utility.binaryAppend(encryptionData.getContentEncryptionIV(), sb.toString().getBytes("UTF-8"))), 0, bArr2, 0, 16);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, 0, bArr.length, StorageHelper.KEYSPEC_ALGORITHM);
                instance.init(2, secretKeySpec, ivParameterSpec);
                byte[] valueAsByteArray = entityProperty2.getValueAsByteArray();
                entityProperty2.setValue(instance.doFinal(valueAsByteArray, 0, valueAsByteArray.length));
                CEKReturn cEKReturn = new CEKReturn();
                cEKReturn.key = secretKeySpec;
                cEKReturn.isJavaV1 = valueOf;
                return cEKReturn;
            }
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.ENCRYPTION_PROTOCOL_VERSION_INVALID, (Exception) null);
        } catch (StorageException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new StorageException(StorageErrorCodeStrings.DECRYPTION_ERROR, SR.DECRYPTION_LOGIC_ERROR, e3);
        }
    }

    public Map<String, EntityProperty> encryptEntity(Map<String, EntityProperty> map, String str, String str2, TableRequestOptions.EncryptionResolver encryptionResolver) {
        Iterator<Map.Entry<String, EntityProperty>> it;
        String str3 = str;
        String str4 = str2;
        TableRequestOptions.EncryptionResolver encryptionResolver2 = encryptionResolver;
        Utility.assertNotNull("properties", map);
        if (this.keyWrapper != null) {
            EncryptionData encryptionData = new EncryptionData();
            if (encryptionData.getKeyWrappingMetadata() == null) {
                encryptionData.setKeyWrappingMetadata(new HashMap());
            }
            encryptionData.getKeyWrappingMetadata().put(Constants.EncryptionConstants.ENCRYPTION_LIBRARY, "Java 8.1.0");
            encryptionData.setEncryptionAgent(new EncryptionAgent("1.0", EncryptionAlgorithm.AES_CBC_256));
            try {
                HashMap hashMap = new HashMap();
                HashSet hashSet = new HashSet();
                KeyGenerator instance = KeyGenerator.getInstance(StorageHelper.KEYSPEC_ALGORITHM);
                instance.init(256);
                Cipher instance2 = Cipher.getInstance(StorageHelper.CIPHER_ALGORITHM);
                SecretKey generateKey = instance.generateKey();
                boolean z = true;
                instance2.init(1, generateKey);
                b bVar = this.keyWrapper.wrapKeyAsync(generateKey.getEncoded(), (String) null).get();
                encryptionData.setWrappedContentKey(new WrappedContentKey(this.keyWrapper.getKid(), (byte[]) bVar.getKey(), (String) bVar.getValue()));
                encryptionData.setContentEncryptionIV(instance2.getIV());
                MessageDigest instance3 = MessageDigest.getInstance("SHA-256");
                Iterator<Map.Entry<String, EntityProperty>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry next = it2.next();
                    if (encryptionResolver2 != null) {
                        if (encryptionResolver2.encryptionResolver(str3, str4, (String) next.getKey())) {
                            if (next.getValue() != null) {
                                ((EntityProperty) next.getValue()).setIsEncrypted(z);
                            } else {
                                throw new IllegalArgumentException(SR.ENCRYPTING_NULL_PROPERTIES_NOT_ALLOWED);
                            }
                        }
                    }
                    if (next.getValue() != null) {
                        if (((EntityProperty) next.getValue()).isEncrypted()) {
                            if (((EntityProperty) next.getValue()).getEdmType() == EdmType.STRING) {
                                byte[] contentEncryptionIV = encryptionData.getContentEncryptionIV();
                                byte[] bArr = new byte[16];
                                it = it2;
                                System.arraycopy(instance3.digest(Utility.binaryAppend(contentEncryptionIV, (str3 + str4 + ((String) next.getKey())).getBytes("UTF-8"))), 0, bArr, 0, 16);
                                instance2.init(1, generateKey, new IvParameterSpec(bArr));
                                if (next.getValue() != null) {
                                    byte[] bytes = ((EntityProperty) next.getValue()).getValueAsString().getBytes("UTF-8");
                                    hashMap.put(next.getKey(), new EntityProperty(instance2.doFinal(bytes, 0, bytes.length)));
                                    hashSet.add(next.getKey());
                                    byte[] contentEncryptionIV2 = encryptionData.getContentEncryptionIV();
                                    byte[] bArr2 = new byte[16];
                                    System.arraycopy(instance3.digest(Utility.binaryAppend(contentEncryptionIV2, (str3 + str4 + Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS).getBytes("UTF-8"))), 0, bArr2, 0, 16);
                                    instance2.init(1, generateKey, new IvParameterSpec(bArr2));
                                    byte[] bytes2 = Arrays.toString(hashSet.toArray()).getBytes("UTF-8");
                                    hashMap.put(Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS, new EntityProperty(instance2.doFinal(bytes2, 0, bytes2.length)));
                                    encryptionResolver2 = encryptionResolver;
                                    it2 = it;
                                    z = true;
                                } else {
                                    throw new IllegalArgumentException(SR.ENCRYPTING_NULL_PROPERTIES_NOT_ALLOWED);
                                }
                            } else {
                                throw new IllegalArgumentException(String.format(SR.UNSUPPORTED_PROPERTY_TYPE_FOR_ENCRYPTION, new Object[]{((EntityProperty) next.getValue()).getEdmType()}));
                            }
                        }
                    }
                    it = it2;
                    hashMap.put(next.getKey(), next.getValue());
                    byte[] contentEncryptionIV22 = encryptionData.getContentEncryptionIV();
                    byte[] bArr22 = new byte[16];
                    System.arraycopy(instance3.digest(Utility.binaryAppend(contentEncryptionIV22, (str3 + str4 + Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS).getBytes("UTF-8"))), 0, bArr22, 0, 16);
                    instance2.init(1, generateKey, new IvParameterSpec(bArr22));
                    byte[] bytes22 = Arrays.toString(hashSet.toArray()).getBytes("UTF-8");
                    hashMap.put(Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS, new EntityProperty(instance2.doFinal(bytes22, 0, bytes22.length)));
                    encryptionResolver2 = encryptionResolver;
                    it2 = it;
                    z = true;
                }
                hashMap.put(Constants.EncryptionConstants.TABLE_ENCRYPTION_KEY_DETAILS, new EntityProperty(encryptionData.serialize()));
                return hashMap;
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
