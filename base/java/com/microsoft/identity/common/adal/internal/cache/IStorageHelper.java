package com.microsoft.identity.common.adal.internal.cache;

import javax.crypto.SecretKey;

public interface IStorageHelper {
    String decrypt(String str);

    String encrypt(String str);

    SecretKey loadSecretKeyForEncryption();
}
