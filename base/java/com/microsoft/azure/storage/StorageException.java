package com.microsoft.azure.storage;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.io.IOException;
import java.net.SocketException;

public class StorageException extends Exception {
    public static final long serialVersionUID = 7972747254288274928L;
    public String errorCode;
    public StorageExtendedErrorInformation extendedErrorInformation;
    public final int httpStatusCode;

    public StorageException(String str, String str2, Exception exc) {
        this(str, str2, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, exc);
    }

    public static StorageException translateClientException(Exception exc) {
        return new StorageException("Client error", "A Client side exception occurred, please check the inner exception for details", Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, exc);
    }

    public static StorageException translateException(StorageRequest<?, ?, ?> storageRequest, Exception exc, OperationContext operationContext) {
        if (storageRequest == null || storageRequest.getConnection() == null) {
            return translateClientException(exc);
        }
        String str = "";
        if (exc instanceof SocketException) {
            if (exc != null) {
                str = exc.getMessage();
            }
            StorageErrorCode storageErrorCode = StorageErrorCode.SERVICE_INTERNAL_ERROR;
            return new StorageException("SERVICE_INTERNAL_ERROR", "An unknown failure occurred : ".concat(str), 500, (StorageExtendedErrorInformation) null, exc);
        }
        String str2 = null;
        int i2 = 0;
        try {
            i2 = storageRequest.getConnection().getResponseCode();
            str2 = storageRequest.getConnection().getResponseMessage();
        } catch (IOException unused) {
        }
        int i3 = i2;
        StorageException storageException = new StorageException(storageRequest.getResult().getErrorCode(), str2 == null ? str : str2, i3, storageRequest.parseErrorDetails(), exc);
        Utility.logHttpError(storageException, operationContext);
        return storageException;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public StorageExtendedErrorInformation getExtendedErrorInformation() {
        return this.extendedErrorInformation;
    }

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public StorageException(String str, String str2, int i2, StorageExtendedErrorInformation storageExtendedErrorInformation, Exception exc) {
        super(str2, exc);
        this.errorCode = str;
        this.httpStatusCode = i2;
        this.extendedErrorInformation = storageExtendedErrorInformation;
    }
}
