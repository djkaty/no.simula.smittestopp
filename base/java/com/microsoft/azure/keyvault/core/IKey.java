package com.microsoft.azure.keyvault.core;

import e.c.b.a.a.a;
import java.io.Closeable;
import k.a.a.b.e.b;

public interface IKey extends Closeable {
    a<byte[]> decryptAsync(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, String str);

    a<Object<byte[], byte[], String>> encryptAsync(byte[] bArr, byte[] bArr2, byte[] bArr3, String str);

    String getDefaultEncryptionAlgorithm();

    String getDefaultKeyWrapAlgorithm();

    String getDefaultSignatureAlgorithm();

    String getKid();

    a<b<byte[], String>> signAsync(byte[] bArr, String str);

    a<byte[]> unwrapKeyAsync(byte[] bArr, String str);

    a<Boolean> verifyAsync(byte[] bArr, byte[] bArr2, String str);

    a<b<byte[], String>> wrapKeyAsync(byte[] bArr, String str);
}
