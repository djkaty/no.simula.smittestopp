package com.microsoft.azure.storage.core;

import java.security.MessageDigest;

public final class StreamMd5AndLength {
    public long currentOperationByteCount;
    public MessageDigest intermediateMD5;
    public long streamLength;
    public String streamMd5;

    public long getCurrentOperationByteCount() {
        return this.currentOperationByteCount;
    }

    public MessageDigest getDigest() {
        return this.intermediateMD5;
    }

    public long getLength() {
        return this.streamLength;
    }

    public String getMd5() {
        MessageDigest messageDigest;
        if (this.streamMd5 == null && (messageDigest = this.intermediateMD5) != null) {
            this.streamMd5 = Base64.encode(messageDigest.digest());
        }
        return this.streamMd5;
    }

    public void setCurrentOperationByteCount(long j2) {
        this.currentOperationByteCount = j2;
    }

    public void setDigest(MessageDigest messageDigest) {
        this.intermediateMD5 = messageDigest;
    }

    public void setLength(long j2) {
        this.streamLength = j2;
    }

    public void setMd5(String str) {
        this.streamMd5 = str;
    }
}
