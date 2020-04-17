package com.microsoft.azure.storage;

public enum StorageErrorCode {
    ACCESS_DENIED(12),
    ACCOUNT_NOT_FOUND(8),
    AUTHENTICATION_FAILURE(11),
    BAD_GATEWAY(18),
    BAD_REQUEST(16),
    BLOB_ALREADY_EXISTS(15),
    BLOB_NOT_FOUND(10),
    CONDITION_FAILED(17),
    CONTAINER_ALREADY_EXISTS(14),
    CONTAINER_NOT_FOUND(9),
    HTTP_VERSION_NOT_SUPPORTED(20),
    NONE(0),
    NOT_IMPLEMENTED(19),
    RESOURCE_ALREADY_EXISTS(13),
    RESOURCE_NOT_FOUND(7),
    SERVICE_BAD_REQUEST(6),
    SERVICE_INTEGRITY_CHECK_FAILED(4),
    SERVICE_INTERNAL_ERROR(1),
    SERVICE_TIMEOUT(3),
    TRANSPORT_ERROR(5),
    LEASE_ID_MISSING(21),
    LEASE_ID_MISMATCH(22),
    LEASE_NOT_PRESENT(23),
    SERVER_BUSY(24);
    
    public int value;

    /* access modifiers changed from: public */
    StorageErrorCode(int i2) {
        this.value = i2;
    }
}
