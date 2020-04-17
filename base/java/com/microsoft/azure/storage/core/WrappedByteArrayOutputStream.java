package com.microsoft.azure.storage.core;

import java.io.IOException;
import java.io.OutputStream;

public class WrappedByteArrayOutputStream extends OutputStream {
    public byte[] buffer;
    public int offset;
    public final int startingOffset;

    public WrappedByteArrayOutputStream(byte[] bArr, int i2) {
        this.buffer = bArr;
        this.offset = i2;
        this.startingOffset = i2;
    }

    public int getPosition() {
        return this.offset - this.startingOffset;
    }

    public void write(int i2) {
        int i3 = this.offset;
        byte[] bArr = this.buffer;
        if (i3 != bArr.length) {
            bArr[i3] = (byte) i2;
            this.offset = i3 + 1;
            return;
        }
        throw new IOException(SR.CONTENT_LENGTH_MISMATCH);
    }
}
