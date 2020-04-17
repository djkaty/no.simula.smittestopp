package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.io.OutputStream;

public class LengthLimitingStream extends BlobOutputStream {
    public Long endOffset;
    public Long length;
    public long position;
    public long startOffset;
    public final OutputStream wrappedStream;

    public LengthLimitingStream(OutputStream outputStream, long j2, Long l2) {
        this.wrappedStream = outputStream;
        this.startOffset = j2;
        this.length = l2;
        if (l2 != null) {
            this.endOffset = Long.valueOf((l2.longValue() - 1) + j2);
        }
    }

    public void close() {
    }

    public void flush() {
        this.wrappedStream.flush();
    }

    public void write(byte[] bArr, int i2, int i3) {
        long j2 = this.position;
        long j3 = this.startOffset;
        if (j2 < j3) {
            int min = (int) Math.min(j3 - j2, (long) i3);
            i2 += min;
            i3 -= min;
            this.position += (long) min;
        }
        Long l2 = this.endOffset;
        if (l2 != null) {
            i3 = (int) Math.min((l2.longValue() + 1) - this.position, (long) i3);
        }
        if (i3 > 0) {
            this.wrappedStream.write(bArr, i2, i3);
            this.position += (long) i3;
        }
    }

    public void write(InputStream inputStream, long j2) {
        Utility.writeToOutputStream(inputStream, this, j2, false, false, (OperationContext) null, (RequestOptions) null);
    }
}
