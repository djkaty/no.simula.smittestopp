package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.SR;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public class SubStream extends InputStream {
    public final Object lock;
    public long markIndex;
    public byte[] readBuffer;
    public int readBufferLength;
    public ByteArrayInputStream readBufferStream;
    public long streamBeginIndex;
    public long streamLength;
    public long substreamCurrentIndex;
    public InputStream wrappedStream;

    public SubStream(InputStream inputStream, long j2, long j3, Object obj) {
        if (j2 < 0 || j3 < 1) {
            throw new IndexOutOfBoundsException();
        } else if (inputStream == null) {
            throw new NullPointerException("Source stream is null.");
        } else if (inputStream.markSupported()) {
            this.wrappedStream = inputStream;
            this.streamBeginIndex = j2;
            this.substreamCurrentIndex = 0;
            this.streamLength = j3;
            this.lock = obj;
            this.readBuffer = new byte[4194304];
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.readBuffer);
            this.readBufferStream = byteArrayInputStream;
            this.readBufferLength = 0;
            this.markIndex = 0;
            byteArrayInputStream.mark(Integer.MAX_VALUE);
        } else {
            throw new IllegalArgumentException("The source stream to be wrapped must be markable.");
        }
    }

    private int readHelper(byte[] bArr, int i2, int i3) {
        int read;
        synchronized (this.lock) {
            this.wrappedStream.reset();
            long j2 = this.streamBeginIndex + this.substreamCurrentIndex;
            long j3 = 0;
            byte b = 0;
            while (b <= 7) {
                long skip = this.wrappedStream.skip(j2 - j3);
                if (skip == 0) {
                    b = (byte) (b + 1);
                } else {
                    j3 += skip;
                    b = 0;
                }
                if (j3 == j2) {
                    read = this.wrappedStream.read(bArr, i2, i3);
                }
            }
            throw new IOException(SR.STREAM_SKIP_FAILED);
        }
        return read;
    }

    public void close() {
        this.wrappedStream = null;
        this.readBuffer = null;
        this.readBufferStream.close();
        this.readBufferStream = null;
    }

    public InputStream getInputStream() {
        return this.wrappedStream;
    }

    public long getLength() {
        return this.streamLength;
    }

    public synchronized void mark(int i2) {
        this.markIndex = this.substreamCurrentIndex;
    }

    public boolean markSupported() {
        return true;
    }

    public int read() {
        throw new IOException();
    }

    public synchronized void reset() {
        this.substreamCurrentIndex = this.markIndex;
    }

    public long skip(long j2) {
        long j3 = this.substreamCurrentIndex;
        long j4 = this.streamLength;
        if (j3 + j2 > j4) {
            j2 = j4 - j3;
        }
        this.substreamCurrentIndex += j2;
        this.readBufferLength = (int) Math.max(0, ((long) this.readBufferLength) - j2);
        return j2;
    }

    public synchronized int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public synchronized int read(byte[] bArr, int i2, int i3) {
        if (i2 >= 0 && i3 >= 0) {
            if (i3 <= bArr.length - i2) {
                if (i3 == 0) {
                    return 0;
                }
                if (this.substreamCurrentIndex + ((long) i3) > this.streamLength) {
                    i3 = (int) (this.streamLength - this.substreamCurrentIndex);
                }
                int read = this.readBufferStream.read(bArr, i2, Math.min(this.readBufferLength, i3));
                int max = Math.max(0, read);
                this.readBufferLength -= max;
                if (read == i3) {
                    this.substreamCurrentIndex += (long) max;
                    return max;
                }
                if (read < i3) {
                    this.readBufferStream.reset();
                    int readHelper = readHelper(this.readBuffer, 0, this.readBuffer.length);
                    this.readBufferLength = readHelper;
                    if (readHelper == -1) {
                        this.readBufferLength = 0;
                    }
                }
                int read2 = this.readBufferStream.read(bArr, i2 + max, Math.min(this.readBufferLength, i3 - max));
                if (read2 != -1) {
                    max += read2;
                    this.readBufferLength -= read2;
                }
                this.substreamCurrentIndex += (long) max;
                return max;
            }
        }
        throw new IndexOutOfBoundsException();
    }
}
