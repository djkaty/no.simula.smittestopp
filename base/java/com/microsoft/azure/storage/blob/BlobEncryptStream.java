package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;

public final class BlobEncryptStream extends BlobOutputStream {
    public CipherOutputStream cipherStream;
    public OperationContext opContext;
    public BlobRequestOptions options;

    public BlobEncryptStream(CloudBlockBlob cloudBlockBlob, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext, Cipher cipher) {
        this.opContext = operationContext;
        this.options = blobRequestOptions;
        blobRequestOptions.setValidateEncryptionPolicy(false);
        this.cipherStream = new CipherOutputStream(new BlobOutputStreamInternal(cloudBlockBlob, accessCondition, blobRequestOptions, operationContext), cipher);
    }

    public void close() {
        this.cipherStream.close();
    }

    public void flush() {
        this.cipherStream.flush();
    }

    public void write(byte[] bArr, int i2, int i3) {
        this.cipherStream.write(bArr, i2, i3);
    }

    public void write(InputStream inputStream, long j2) {
        Utility.writeToOutputStream(inputStream, this, j2, false, false, this.opContext, this.options, false);
    }

    @DoesServiceRequest
    public BlobEncryptStream(CloudPageBlob cloudPageBlob, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext, Cipher cipher) {
        this.opContext = operationContext;
        this.options = blobRequestOptions;
        blobRequestOptions.setValidateEncryptionPolicy(false);
        this.cipherStream = new CipherOutputStream(new BlobOutputStreamInternal(cloudPageBlob, j2, accessCondition, blobRequestOptions, operationContext), cipher);
    }

    @DoesServiceRequest
    public BlobEncryptStream(CloudAppendBlob cloudAppendBlob, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext, Cipher cipher) {
        this.opContext = operationContext;
        this.options = blobRequestOptions;
        blobRequestOptions.setValidateEncryptionPolicy(false);
        this.cipherStream = new CipherOutputStream(new BlobOutputStreamInternal(cloudAppendBlob, accessCondition, blobRequestOptions, operationContext), cipher);
    }
}
