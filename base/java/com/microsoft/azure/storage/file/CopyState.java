package com.microsoft.azure.storage.file;

import java.net.URI;
import java.util.Date;

public final class CopyState {
    public Long bytesCopied;
    public Date completionTime;
    public String copyId;
    public URI source;
    public CopyStatus status;
    public String statusDescription;
    public Long totalBytes;

    public Long getBytesCopied() {
        return this.bytesCopied;
    }

    public Date getCompletionTime() {
        return this.completionTime;
    }

    public String getCopyId() {
        return this.copyId;
    }

    public URI getSource() {
        return this.source;
    }

    public CopyStatus getStatus() {
        return this.status;
    }

    public String getStatusDescription() {
        return this.statusDescription;
    }

    public Long getTotalBytes() {
        return this.totalBytes;
    }

    public void setBytesCopied(Long l2) {
        this.bytesCopied = l2;
    }

    public void setCompletionTime(Date date) {
        this.completionTime = date;
    }

    public void setCopyId(String str) {
        this.copyId = str;
    }

    public void setSource(URI uri) {
        this.source = uri;
    }

    public void setStatus(CopyStatus copyStatus) {
        this.status = copyStatus;
    }

    public void setStatusDescription(String str) {
        this.statusDescription = str;
    }

    public void setTotalBytes(Long l2) {
        this.totalBytes = l2;
    }
}
