package com.microsoft.azure.storage.core;

import java.io.IOException;
import java.io.InputStream;

public class NetworkInputStream extends InputStream {
    public long bytesRead = 0;
    public final long expectedLength;
    public final InputStream inputStream;

    public NetworkInputStream(InputStream inputStream2, long j2) {
        this.inputStream = inputStream2;
        this.expectedLength = j2;
    }

    public void close() {
        this.inputStream.close();
    }

    public int read() {
        throw new UnsupportedOperationException();
    }

    public int read(byte[] bArr, int i2, int i3) {
        int read = this.inputStream.read(bArr, i2, i3);
        if (read > -1) {
            this.bytesRead += (long) read;
        } else if (this.bytesRead != this.expectedLength) {
            throw new IOException(SR.CONTENT_LENGTH_MISMATCH);
        }
        return read;
    }
}
