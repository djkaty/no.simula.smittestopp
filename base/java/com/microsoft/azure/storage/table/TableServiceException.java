package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.RequestResult;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public final class TableServiceException extends StorageException {
    public static final long serialVersionUID = 6037366449663934891L;
    public TableOperation operation;

    public TableServiceException(String str, String str2, int i2, StorageExtendedErrorInformation storageExtendedErrorInformation, Exception exc) {
        super(str, str2, i2, storageExtendedErrorInformation, exc);
    }

    public static TableServiceException generateTableServiceException(RequestResult requestResult, TableOperation tableOperation, InputStream inputStream, TablePayloadFormat tablePayloadFormat) {
        return new TableServiceException(requestResult.getStatusCode(), requestResult.getStatusMessage(), tableOperation, (Reader) new InputStreamReader(inputStream), tablePayloadFormat);
    }

    public TableOperation getOperation() {
        return this.operation;
    }

    public void setOperation(TableOperation tableOperation) {
        this.operation = tableOperation;
    }

    public TableServiceException(int i2, String str, TableOperation tableOperation, Reader reader, TablePayloadFormat tablePayloadFormat) {
        super((String) null, str, i2, (StorageExtendedErrorInformation) null, (Exception) null);
        this.operation = tableOperation;
        if (reader != null) {
            try {
                StorageExtendedErrorInformation extendedErrorInformation = TableStorageErrorDeserializer.getExtendedErrorInformation(reader, tablePayloadFormat);
                this.extendedErrorInformation = extendedErrorInformation;
                this.errorCode = extendedErrorInformation.getErrorCode();
            } catch (Exception unused) {
            }
        }
    }
}
