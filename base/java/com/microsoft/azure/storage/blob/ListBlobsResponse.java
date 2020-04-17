package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.ListResponse;

public final class ListBlobsResponse extends ListResponse<ListBlobItem> {
    public String delimiter;

    public String getDelimiter() {
        return this.delimiter;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }
}
