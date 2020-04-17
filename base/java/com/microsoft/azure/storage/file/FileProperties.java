package com.microsoft.azure.storage.file;

import java.util.Date;

public final class FileProperties {
    public String cacheControl;
    public String contentDisposition;
    public String contentEncoding;
    public String contentLanguage;
    public String contentMD5;
    public String contentType;
    public CopyState copyState;
    public String etag;
    public Date lastModified;
    public long length;
    public boolean serverEncrypted;

    public FileProperties() {
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

    public String getContentMD5() {
        return this.contentMD5;
    }

    public String getContentType() {
        return this.contentType;
    }

    public CopyState getCopyState() {
        return this.copyState;
    }

    public String getEtag() {
        return this.etag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public long getLength() {
        return this.length;
    }

    public boolean isServerEncrypted() {
        return this.serverEncrypted;
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

    public void setContentMD5(String str) {
        this.contentMD5 = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setCopyState(CopyState copyState2) {
        this.copyState = copyState2;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setLength(long j2) {
        this.length = j2;
    }

    public void setServerEncrypted(boolean z) {
        this.serverEncrypted = z;
    }

    public FileProperties(FileProperties fileProperties) {
        this.cacheControl = fileProperties.cacheControl;
        this.contentDisposition = fileProperties.contentDisposition;
        this.contentEncoding = fileProperties.contentEncoding;
        this.contentLanguage = fileProperties.contentLanguage;
        this.contentMD5 = fileProperties.contentMD5;
        this.contentType = fileProperties.contentType;
        this.etag = fileProperties.etag;
        this.length = fileProperties.length;
        this.lastModified = fileProperties.lastModified;
        this.serverEncrypted = fileProperties.serverEncrypted;
    }
}
