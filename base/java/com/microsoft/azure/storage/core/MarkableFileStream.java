package com.microsoft.azure.storage.core;

import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class MarkableFileStream extends FilterInputStream {
    public FileChannel fileChannel;
    public long mark = -1;

    public MarkableFileStream(FileInputStream fileInputStream) {
        super(fileInputStream);
        this.fileChannel = fileInputStream.getChannel();
    }

    public synchronized void mark(int i2) {
        try {
            this.mark = this.fileChannel.position();
        } catch (IOException unused) {
            this.mark = -1;
        }
        return;
    }

    public boolean markSupported() {
        return true;
    }

    public synchronized void reset() {
        if (this.mark != -1) {
            this.fileChannel.position(this.mark);
        } else {
            throw new IOException("Stream must be marked before calling reset");
        }
    }
}
