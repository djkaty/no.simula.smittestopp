package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.LocationMode;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;

public final class FileRequestOptions extends RequestOptions {
    public Integer concurrentRequestCount = null;
    public Boolean disableContentMD5Validation = null;
    public Boolean storeFileContentMD5 = null;
    public Boolean useTransactionalContentMD5 = null;

    public FileRequestOptions() {
    }

    public static void applyDefaults(FileRequestOptions fileRequestOptions) {
        Utility.assertNotNull("modifiedOptions", fileRequestOptions);
        RequestOptions.applyBaseDefaultsInternal(fileRequestOptions);
        if (fileRequestOptions.getConcurrentRequestCount() == null) {
            fileRequestOptions.setConcurrentRequestCount(1);
        }
        if (fileRequestOptions.getUseTransactionalContentMD5() == null) {
            fileRequestOptions.setUseTransactionalContentMD5(false);
        }
        if (fileRequestOptions.getStoreFileContentMD5() == null) {
            fileRequestOptions.setStoreFileContentMD5(false);
        }
        if (fileRequestOptions.getDisableContentMD5Validation() == null) {
            fileRequestOptions.setDisableContentMD5Validation(false);
        }
    }

    public static final FileRequestOptions populateAndApplyDefaults(FileRequestOptions fileRequestOptions, CloudFileClient cloudFileClient) {
        return populateAndApplyDefaults(fileRequestOptions, cloudFileClient, true);
    }

    public static void populateRequestOptions(FileRequestOptions fileRequestOptions, FileRequestOptions fileRequestOptions2, boolean z) {
        RequestOptions.populateRequestOptions(fileRequestOptions, fileRequestOptions2, z);
        if (fileRequestOptions.getConcurrentRequestCount() == null) {
            fileRequestOptions.setConcurrentRequestCount(fileRequestOptions2.getConcurrentRequestCount());
        }
    }

    public Integer getConcurrentRequestCount() {
        return this.concurrentRequestCount;
    }

    public Boolean getDisableContentMD5Validation() {
        return this.disableContentMD5Validation;
    }

    public Boolean getStoreFileContentMD5() {
        return this.storeFileContentMD5;
    }

    public Boolean getUseTransactionalContentMD5() {
        return this.useTransactionalContentMD5;
    }

    public void setConcurrentRequestCount(Integer num) {
        this.concurrentRequestCount = num;
    }

    public void setDisableContentMD5Validation(Boolean bool) {
        this.disableContentMD5Validation = bool;
    }

    public final void setLocationMode(LocationMode locationMode) {
        if (locationMode == null || locationMode.equals(LocationMode.PRIMARY_ONLY)) {
            super.setLocationMode(locationMode);
            return;
        }
        throw new UnsupportedOperationException(SR.PRIMARY_ONLY_COMMAND);
    }

    public void setRequireEncryption(Boolean bool) {
        if (bool != null && bool.booleanValue()) {
            throw new UnsupportedOperationException(SR.ENCRYPTION_NOT_SUPPORTED_FOR_FILES);
        }
    }

    public void setStoreFileContentMD5(Boolean bool) {
        this.storeFileContentMD5 = bool;
    }

    public void setUseTransactionalContentMD5(Boolean bool) {
        this.useTransactionalContentMD5 = bool;
    }

    public static final FileRequestOptions populateAndApplyDefaults(FileRequestOptions fileRequestOptions, CloudFileClient cloudFileClient, boolean z) {
        FileRequestOptions fileRequestOptions2 = new FileRequestOptions(fileRequestOptions);
        populateRequestOptions(fileRequestOptions2, cloudFileClient.getDefaultRequestOptions(), z);
        applyDefaults(fileRequestOptions2);
        return fileRequestOptions2;
    }

    public FileRequestOptions(FileRequestOptions fileRequestOptions) {
        super(fileRequestOptions);
        if (fileRequestOptions != null) {
            setConcurrentRequestCount(fileRequestOptions.getConcurrentRequestCount());
            setDisableContentMD5Validation(fileRequestOptions.getDisableContentMD5Validation());
            setStoreFileContentMD5(fileRequestOptions.getStoreFileContentMD5());
            setUseTransactionalContentMD5(fileRequestOptions.getUseTransactionalContentMD5());
        }
    }
}
