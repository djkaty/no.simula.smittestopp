package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.net.URI;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class StorageCredentialsAccountAndKey extends StorageCredentials {
    public String accountName;
    public Mac hmacSha256;
    public byte[] key;

    public StorageCredentialsAccountAndKey(String str, byte[] bArr) {
        if (Utility.isNullOrEmptyOrWhitespace(str)) {
            throw new IllegalArgumentException(SR.INVALID_ACCOUNT_NAME);
        } else if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException(SR.INVALID_KEY);
        } else {
            this.accountName = str;
            this.key = bArr;
        }
    }

    public String exportBase64EncodedKey() {
        return Base64.encode(this.key);
    }

    public byte[] exportKey() {
        return (byte[]) this.key.clone();
    }

    public String getAccountName() {
        return this.accountName;
    }

    public synchronized Mac getHmac256() {
        if (this.hmacSha256 == null) {
            try {
                Mac instance = Mac.getInstance("HmacSHA256");
                this.hmacSha256 = instance;
                instance.init(new SecretKeySpec(this.key, "HmacSHA256"));
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalArgumentException();
            }
        }
        return this.hmacSha256;
    }

    public void setAccountName(String str) {
        this.accountName = str;
    }

    public String toString(boolean z) {
        Object[] objArr = new Object[4];
        objArr[0] = CloudStorageAccount.ACCOUNT_NAME_NAME;
        objArr[1] = getAccountName();
        objArr[2] = CloudStorageAccount.ACCOUNT_KEY_NAME;
        objArr[3] = z ? exportBase64EncodedKey() : "[key hidden]";
        return String.format("%s=%s;%s=%s", objArr);
    }

    public StorageUri transformUri(StorageUri storageUri, OperationContext operationContext) {
        return storageUri;
    }

    public URI transformUri(URI uri, OperationContext operationContext) {
        return uri;
    }

    public synchronized void updateKey(String str) {
        updateKey(Base64.decode(str));
    }

    public synchronized void updateKey(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length != 0) {
                this.key = bArr;
                this.hmacSha256 = null;
            }
        }
        throw new IllegalArgumentException(SR.INVALID_KEY);
    }

    public StorageCredentialsAccountAndKey(String str, String str2) {
        this(str, Base64.decode(str2));
    }
}
