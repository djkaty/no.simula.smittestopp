package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.SharedAccessHeaders;

public final class SharedAccessBlobHeaders extends SharedAccessHeaders {
    public SharedAccessBlobHeaders() {
    }

    public SharedAccessBlobHeaders(SharedAccessHeaders sharedAccessHeaders) {
        super(sharedAccessHeaders);
    }
}
