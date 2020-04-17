package com.microsoft.azure.storage.core;

import java.net.HttpURLConnection;
import java.security.InvalidParameterException;

public final class BlobQueueFileCanonicalizer extends Canonicalizer {
    public String canonicalize(HttpURLConnection httpURLConnection, String str, Long l2) {
        if (l2.longValue() >= -1) {
            HttpURLConnection httpURLConnection2 = httpURLConnection;
            return Canonicalizer.canonicalizeHttpRequest(httpURLConnection.getURL(), str, httpURLConnection.getRequestMethod(), Utility.getStandardHeaderValue(httpURLConnection, "Content-Type"), l2.longValue(), (String) null, httpURLConnection);
        }
        throw new InvalidParameterException(SR.INVALID_CONTENT_LENGTH);
    }
}
