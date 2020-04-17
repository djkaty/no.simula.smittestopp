package com.microsoft.azure.storage;

import com.microsoft.azure.storage.blob.SubStream;
import java.io.InputStream;
import java.util.Iterator;

public final class SubStreamGenerator implements Iterable<InputStream> {
    public final long blockSize;
    public int blocksPending;
    public int currentBlock = 0;
    public long lastBlockSize;
    public final Object mutex = new Object();
    public final InputStream wrappedStream;

    public class SubStreamIterator implements Iterator<InputStream> {
        public SubStreamIterator() {
        }

        public boolean hasNext() {
            return SubStreamGenerator.this.blocksPending > 0;
        }

        public void remove() {
        }

        public SubStream next() {
            SubStreamGenerator.access$110(SubStreamGenerator.this);
            return new SubStream(SubStreamGenerator.this.wrappedStream, ((long) SubStreamGenerator.access$308(SubStreamGenerator.this)) * SubStreamGenerator.this.blockSize, SubStreamGenerator.this.blocksPending > 0 ? SubStreamGenerator.this.blockSize : SubStreamGenerator.this.lastBlockSize, SubStreamGenerator.this.mutex);
        }
    }

    public SubStreamGenerator(InputStream inputStream, int i2, long j2) {
        this.wrappedStream = inputStream;
        this.blocksPending = i2;
        this.blockSize = j2;
        this.lastBlockSize = j2;
    }

    public static /* synthetic */ int access$110(SubStreamGenerator subStreamGenerator) {
        int i2 = subStreamGenerator.blocksPending;
        subStreamGenerator.blocksPending = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int access$308(SubStreamGenerator subStreamGenerator) {
        int i2 = subStreamGenerator.currentBlock;
        subStreamGenerator.currentBlock = i2 + 1;
        return i2;
    }

    public Iterator<InputStream> iterator() {
        return new SubStreamIterator();
    }

    public void setLastBlockSize(long j2) {
        this.lastBlockSize = j2;
    }
}
