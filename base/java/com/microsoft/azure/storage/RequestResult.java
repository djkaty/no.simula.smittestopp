package com.microsoft.azure.storage;

import java.util.Date;

public final class RequestResult {
    public String contentMD5;
    public String errorCode;
    public String etag;
    public Exception exception;
    public String requestDate;
    public boolean requestServiceEncrypted;
    public String serviceRequestID;
    public Date startDate;
    public int statusCode = -1;
    public String statusMessage;
    public Date stopDate;
    public StorageLocation targetLocation;

    public String getContentMD5() {
        return this.contentMD5;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getEtag() {
        return this.etag;
    }

    public Exception getException() {
        return this.exception;
    }

    public String getRequestDate() {
        return this.requestDate;
    }

    public String getServiceRequestID() {
        return this.serviceRequestID;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public Date getStopDate() {
        if (this.stopDate == null) {
            this.stopDate = new Date();
        }
        return this.stopDate;
    }

    public StorageLocation getTargetLocation() {
        return this.targetLocation;
    }

    public boolean isRequestServiceEncrypted() {
        return this.requestServiceEncrypted;
    }

    public void setContentMD5(String str) {
        this.contentMD5 = str;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }

    public void setRequestDate(String str) {
        this.requestDate = str;
    }

    public void setRequestServiceEncrypted(boolean z) {
        this.requestServiceEncrypted = z;
    }

    public void setServiceRequestID(String str) {
        this.serviceRequestID = str;
    }

    public void setStartDate(Date date) {
        this.startDate = date;
    }

    public void setStatusCode(int i2) {
        this.statusCode = i2;
    }

    public void setStatusMessage(String str) {
        this.statusMessage = str;
    }

    public void setStopDate(Date date) {
        this.stopDate = date;
    }

    public void setTargetLocation(StorageLocation storageLocation) {
        this.targetLocation = storageLocation;
    }
}
