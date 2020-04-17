package com.microsoft.azure.storage.core;

import java.net.HttpURLConnection;

public final class CanonicalizerFactory {
    public static final BlobQueueFileCanonicalizer BLOB_QUEUE_FILE_V2_INSTANCE = new BlobQueueFileCanonicalizer();
    public static final TableCanonicalizer TABLE_INSTANCE = new TableCanonicalizer();

    public static Canonicalizer getBlobQueueFileCanonicalizer(HttpURLConnection httpURLConnection) {
        return BLOB_QUEUE_FILE_V2_INSTANCE;
    }

    public static Canonicalizer getTableCanonicalizer(HttpURLConnection httpURLConnection) {
        return TABLE_INSTANCE;
    }
}
