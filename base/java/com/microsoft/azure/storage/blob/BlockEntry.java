package com.microsoft.azure.storage.blob;

public final class BlockEntry {
    public String id;
    public BlockSearchMode searchMode;
    public long size;

    public BlockEntry(String str) {
        setId(str);
        this.searchMode = BlockSearchMode.LATEST;
    }

    public String getId() {
        return this.id;
    }

    public BlockSearchMode getSearchMode() {
        return this.searchMode;
    }

    public long getSize() {
        return this.size;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setSearchMode(BlockSearchMode blockSearchMode) {
        this.searchMode = blockSearchMode;
    }

    public void setSize(long j2) {
        this.size = j2;
    }

    public BlockEntry(String str, BlockSearchMode blockSearchMode) {
        setId(str);
        this.searchMode = blockSearchMode;
    }
}
