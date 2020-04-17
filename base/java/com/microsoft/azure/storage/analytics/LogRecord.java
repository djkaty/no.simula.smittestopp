package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.UUID;

public class LogRecord {
    public static final SimpleDateFormat LAST_MODIFIED_TIME_FORMAT = new SimpleDateFormat("E, dd-MMM-yy HH:mm:ss 'GMT'");
    public static final SimpleDateFormat REQUEST_START_TIME_FORMAT = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'Z'");
    public String authenticationType;
    public String clientRequestId;
    public String conditionsUsed;
    public String eTagIdentifier;
    public Integer endToEndLatencyInMS;
    public String httpStatusCode;
    public Date lastModifiedTime;
    public Integer operationCount;
    public String operationType;
    public String ownerAccountName;
    public String referrerHeader;
    public Long requestContentLength;
    public Long requestHeaderSize;
    public UUID requestIdHeader;
    public String requestMD5;
    public Long requestPacketSize;
    public Date requestStartTime;
    public String requestStatus;
    public URI requestUrl;
    public String requestVersionHeader;
    public String requestedObjectKey;
    public String requesterAccountName;
    public String requesterIPAddress;
    public Long responseHeaderSize;
    public Long responsePacketSize;
    public Integer serverLatencyInMS;
    public String serverMD5;
    public String serviceType;
    public String userAgentHeader;
    public String versionNumber;

    public LogRecord() {
    }

    private void populateVersion1Log(LogRecordStreamReader logRecordStreamReader) {
        this.requestStartTime = logRecordStreamReader.readDate(REQUEST_START_TIME_FORMAT);
        this.operationType = logRecordStreamReader.readString();
        this.requestStatus = logRecordStreamReader.readString();
        this.httpStatusCode = logRecordStreamReader.readString();
        this.endToEndLatencyInMS = logRecordStreamReader.readInteger();
        this.serverLatencyInMS = logRecordStreamReader.readInteger();
        this.authenticationType = logRecordStreamReader.readString();
        this.requesterAccountName = logRecordStreamReader.readString();
        this.ownerAccountName = logRecordStreamReader.readString();
        this.serviceType = logRecordStreamReader.readString();
        this.requestUrl = logRecordStreamReader.readUri();
        this.requestedObjectKey = logRecordStreamReader.readQuotedString();
        this.requestIdHeader = logRecordStreamReader.readUuid();
        this.operationCount = logRecordStreamReader.readInteger();
        this.requesterIPAddress = logRecordStreamReader.readString();
        this.requestVersionHeader = logRecordStreamReader.readString();
        this.requestHeaderSize = logRecordStreamReader.readLong();
        this.requestPacketSize = logRecordStreamReader.readLong();
        this.responseHeaderSize = logRecordStreamReader.readLong();
        this.responsePacketSize = logRecordStreamReader.readLong();
        this.requestContentLength = logRecordStreamReader.readLong();
        this.requestMD5 = logRecordStreamReader.readQuotedString();
        this.serverMD5 = logRecordStreamReader.readQuotedString();
        this.eTagIdentifier = logRecordStreamReader.readQuotedString();
        this.lastModifiedTime = logRecordStreamReader.readDate(LAST_MODIFIED_TIME_FORMAT);
        this.conditionsUsed = logRecordStreamReader.readQuotedString();
        this.userAgentHeader = logRecordStreamReader.readQuotedString();
        this.referrerHeader = logRecordStreamReader.readQuotedString();
        this.clientRequestId = logRecordStreamReader.readQuotedString();
        logRecordStreamReader.endCurrentRecord();
    }

    public String getAuthenticationType() {
        return this.authenticationType;
    }

    public String getClientRequestId() {
        return this.clientRequestId;
    }

    public String getConditionsUsed() {
        return this.conditionsUsed;
    }

    public String getETagIdentifier() {
        return this.eTagIdentifier;
    }

    public Integer getEndToEndLatencyInMS() {
        return this.endToEndLatencyInMS;
    }

    public String getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public Date getLastModifiedTime() {
        return this.lastModifiedTime;
    }

    public Integer getOperationCount() {
        return this.operationCount;
    }

    public String getOperationType() {
        return this.operationType;
    }

    public String getOwnerAccountName() {
        return this.ownerAccountName;
    }

    public String getReferrerHeader() {
        return this.referrerHeader;
    }

    public Long getRequestContentLength() {
        return this.requestContentLength;
    }

    public Long getRequestHeaderSize() {
        return this.requestHeaderSize;
    }

    public UUID getRequestIdHeader() {
        return this.requestIdHeader;
    }

    public String getRequestMD5() {
        return this.requestMD5;
    }

    public Long getRequestPacketSize() {
        return this.requestPacketSize;
    }

    public Date getRequestStartTime() {
        return this.requestStartTime;
    }

    public String getRequestStatus() {
        return this.requestStatus;
    }

    public URI getRequestUrl() {
        return this.requestUrl;
    }

    public String getRequestVersionHeader() {
        return this.requestVersionHeader;
    }

    public String getRequestedObjectKey() {
        return this.requestedObjectKey;
    }

    public String getRequesterAccountName() {
        return this.requesterAccountName;
    }

    public String getRequesterIPAddress() {
        return this.requesterIPAddress;
    }

    public Long getResponseHeaderSize() {
        return this.responseHeaderSize;
    }

    public Long getResponsePacketSize() {
        return this.responsePacketSize;
    }

    public Integer getServerLatencyInMS() {
        return this.serverLatencyInMS;
    }

    public String getServerMD5() {
        return this.serverMD5;
    }

    public String getServiceType() {
        return this.serviceType;
    }

    public String getUserAgentHeader() {
        return this.userAgentHeader;
    }

    public String getVersionNumber() {
        return this.versionNumber;
    }

    public void setAuthenticationType(String str) {
        this.authenticationType = str;
    }

    public void setClientRequestId(String str) {
        this.clientRequestId = str;
    }

    public void setConditionsUsed(String str) {
        this.conditionsUsed = str;
    }

    public void setETagIdentifier(String str) {
        this.eTagIdentifier = str;
    }

    public void setEndToEndLatencyInMS(Integer num) {
        this.endToEndLatencyInMS = num;
    }

    public void setHttpStatusCode(String str) {
        this.httpStatusCode = str;
    }

    public void setLastModifiedTime(Date date) {
        this.lastModifiedTime = date;
    }

    public void setOperationCount(Integer num) {
        this.operationCount = num;
    }

    public void setOperationType(String str) {
        this.operationType = str;
    }

    public void setOwnerAccountName(String str) {
        this.ownerAccountName = str;
    }

    public void setReferrerHeader(String str) {
        this.referrerHeader = str;
    }

    public void setRequestContentLength(Long l2) {
        this.requestContentLength = l2;
    }

    public void setRequestHeaderSize(Long l2) {
        this.requestHeaderSize = l2;
    }

    public void setRequestIdHeader(UUID uuid) {
        this.requestIdHeader = uuid;
    }

    public void setRequestMD5(String str) {
        this.requestMD5 = str;
    }

    public void setRequestPacketSize(Long l2) {
        this.requestPacketSize = l2;
    }

    public void setRequestStartTime(Date date) {
        this.requestStartTime = date;
    }

    public void setRequestStatus(String str) {
        this.requestStatus = str;
    }

    public void setRequestUrl(URI uri) {
        this.requestUrl = uri;
    }

    public void setRequestVersionHeader(String str) {
        this.requestVersionHeader = str;
    }

    public void setRequestedObjectKey(String str) {
        this.requestedObjectKey = str;
    }

    public void setRequesterAccountName(String str) {
        this.requesterAccountName = str;
    }

    public void setRequesterIPAddress(String str) {
        this.requesterIPAddress = str;
    }

    public void setResponseHeaderSize(Long l2) {
        this.responseHeaderSize = l2;
    }

    public void setResponsePacketSize(Long l2) {
        this.responsePacketSize = l2;
    }

    public void setServerLatencyInMS(Integer num) {
        this.serverLatencyInMS = num;
    }

    public void setServerMD5(String str) {
        this.serverMD5 = str;
    }

    public void setServiceType(String str) {
        this.serviceType = str;
    }

    public void setUserAgentHeader(String str) {
        this.userAgentHeader = str;
    }

    public void setVersionNumber(String str) {
        this.versionNumber = str;
    }

    public LogRecord(LogRecordStreamReader logRecordStreamReader) {
        LAST_MODIFIED_TIME_FORMAT.setTimeZone(TimeZone.getTimeZone("GMT"));
        REQUEST_START_TIME_FORMAT.setTimeZone(TimeZone.getTimeZone("GMT"));
        Utility.assertNotNull("reader", logRecordStreamReader);
        String readString = logRecordStreamReader.readString();
        this.versionNumber = readString;
        Utility.assertNotNullOrEmpty("versionNumber", readString);
        if (this.versionNumber.equals("1.0")) {
            populateVersion1Log(logRecordStreamReader);
        } else {
            throw new IllegalArgumentException(String.format(SR.LOG_VERSION_UNSUPPORTED, new Object[]{this.versionNumber}));
        }
    }
}
