package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.DoesServiceRequest;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class BlobOutputStream extends OutputStream {
    @DoesServiceRequest
    public abstract void close();

    @DoesServiceRequest
    public abstract void flush();

    @DoesServiceRequest
    public void write(int i2) {
        write(new byte[]{(byte) (i2 & 255)});
    }

    @DoesServiceRequest
    public abstract void write(InputStream inputStream, long j2);

    @DoesServiceRequest
    public abstract void write(byte[] bArr, int i2, int i3);

    @DoesServiceRequest
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
