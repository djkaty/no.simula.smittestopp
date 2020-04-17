package com.microsoft.azure.storage.file;

import java.util.Date;

public final class FileDirectoryProperties {
    public String etag;
    public Date lastModified;
    public boolean serverEncrypted;

    public String getEtag() {
        return this.etag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public boolean isServerEncrypted() {
        return this.serverEncrypted;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setServerEncrypted(boolean z) {
        this.serverEncrypted = z;
    }
}
