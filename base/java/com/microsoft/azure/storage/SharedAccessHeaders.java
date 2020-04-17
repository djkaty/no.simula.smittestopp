package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Utility;

public abstract class SharedAccessHeaders {
    public String cacheControl;
    public String contentDisposition;
    public String contentEncoding;
    public String contentLanguage;
    public String contentType;

    public SharedAccessHeaders() {
    }

    public String getCacheControl() {
        return this.cacheControl;
    }

    public String getContentDisposition() {
        return this.contentDisposition;
    }

    public String getContentEncoding() {
        return this.contentEncoding;
    }

    public String getContentLanguage() {
        return this.contentLanguage;
    }

    public String getContentType() {
        return this.contentType;
    }

    public void setCacheControl(String str) {
        this.cacheControl = str;
    }

    public void setContentDisposition(String str) {
        this.contentDisposition = str;
    }

    public void setContentEncoding(String str) {
        this.contentEncoding = str;
    }

    public void setContentLanguage(String str) {
        this.contentLanguage = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public SharedAccessHeaders(SharedAccessHeaders sharedAccessHeaders) {
        Utility.assertNotNull("other", sharedAccessHeaders);
        this.contentType = sharedAccessHeaders.contentType;
        this.contentDisposition = sharedAccessHeaders.contentDisposition;
        this.contentEncoding = sharedAccessHeaders.contentEncoding;
        this.contentLanguage = sharedAccessHeaders.contentLanguage;
        this.cacheControl = sharedAccessHeaders.cacheControl;
    }
}
