package com.microsoft.azure.storage.file;

import java.util.Date;

public final class FileShareProperties {
    public String etag;
    public Date lastModified;
    public Integer shareQuota;

    public FileShareProperties() {
    }

    public String getEtag() {
        return this.etag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public Integer getShareQuota() {
        return this.shareQuota;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setShareQuota(Integer num) {
        this.shareQuota = num;
    }

    public FileShareProperties(FileShareProperties fileShareProperties) {
        if (fileShareProperties != null) {
            setEtag(fileShareProperties.getEtag());
            setLastModified(fileShareProperties.getLastModified());
            setShareQuota(fileShareProperties.getShareQuota());
        }
    }
}
