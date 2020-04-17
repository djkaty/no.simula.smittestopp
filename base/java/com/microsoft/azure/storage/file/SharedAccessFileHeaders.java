package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.SharedAccessHeaders;

public final class SharedAccessFileHeaders extends SharedAccessHeaders {
    public SharedAccessFileHeaders() {
    }

    public SharedAccessFileHeaders(SharedAccessHeaders sharedAccessHeaders) {
        super(sharedAccessHeaders);
    }
}
