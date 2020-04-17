package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

public class BlobDecryptStream extends BlobOutputStream {
    public boolean bufferIV;
    public OutputStream cryptoStream;
    public int discardFirst;
    public BlobEncryptionPolicy encryptionPolicy;
    public byte[] iv = new byte[16];
    public final Map<String, String> metadata;
    public boolean noPadding;
    public long position;
    public Boolean requireEncryption;
    public Long userProvidedLength;
    public final OutputStream userStream;

    public BlobDecryptStream(OutputStream outputStream, Map<String, String> map, Long l2, int i2, boolean z, boolean z2, BlobEncryptionPolicy blobEncryptionPolicy, Boolean bool) {
        this.userStream = outputStream;
        this.metadata = map;
        this.userProvidedLength = l2;
        this.discardFirst = i2;
        this.encryptionPolicy = blobEncryptionPolicy;
        this.bufferIV = z;
        this.noPadding = z2;
        this.requireEncryption = bool;
    }

    public void close() {
        this.cryptoStream.close();
    }

    public void flush() {
        this.userStream.flush();
    }

    public void write(byte[] bArr, int i2, int i3) {
        if (this.bufferIV) {
            long j2 = this.position;
            if (j2 < 16) {
                int i4 = 16 - ((int) j2);
                if (i3 <= i4) {
                    i4 = i3;
                }
                System.arraycopy(bArr, i2, this.iv, (int) this.position, i4);
                this.position += (long) i4;
                i2 += i4;
                i3 -= i4;
            }
        }
        if (this.cryptoStream == null) {
            try {
                this.cryptoStream = this.encryptionPolicy.decryptBlob(new LengthLimitingStream(this.userStream, (long) this.discardFirst, this.userProvidedLength), this.metadata, this.requireEncryption, !this.bufferIV ? null : this.iv, this.noPadding);
            } catch (StorageException e2) {
                throw Utility.initIOException(e2);
            }
        }
        if (i3 > 0) {
            this.cryptoStream.write(bArr, i2, i3);
            this.position += (long) i3;
        }
    }

    public void write(InputStream inputStream, long j2) {
        Utility.writeToOutputStream(inputStream, this, j2, false, false, (OperationContext) null, (RequestOptions) null);
    }
}
