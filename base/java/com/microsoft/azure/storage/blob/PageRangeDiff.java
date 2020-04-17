package com.microsoft.azure.storage.blob;

public final class PageRangeDiff extends PageRange {
    public boolean isCleared;

    public PageRangeDiff(long j2, long j3, boolean z) {
        super(j2, j3);
        setIsCleared(z);
    }

    public boolean isCleared() {
        return this.isCleared;
    }

    public void setIsCleared(boolean z) {
        this.isCleared = z;
    }
}
