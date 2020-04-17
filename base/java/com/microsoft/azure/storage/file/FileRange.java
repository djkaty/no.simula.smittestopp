package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.Constants;

public final class FileRange {
    public long endOffset;
    public long startOffset;

    public FileRange(long j2, long j3) {
        setStartOffset(j2);
        setEndOffset(j3);
    }

    public long getEndOffset() {
        return this.endOffset;
    }

    public long getStartOffset() {
        return this.startOffset;
    }

    public void setEndOffset(long j2) {
        this.endOffset = j2;
    }

    public void setStartOffset(long j2) {
        this.startOffset = j2;
    }

    public String toString() {
        return String.format(Constants.HeaderConstants.RANGE_HEADER_FORMAT, new Object[]{Long.valueOf(getStartOffset()), Long.valueOf(getEndOffset())});
    }
}
