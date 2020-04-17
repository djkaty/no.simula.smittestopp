package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;

public final class BlobRequestOptions extends RequestOptions {
    public Boolean absorbConditionalErrorsOnRetry = null;
    public Integer concurrentRequestCount = null;
    public Boolean disableContentMD5Validation = null;
    public BlobEncryptionPolicy encryptionPolicy;
    public Integer singleBlobPutThresholdInBytes = null;
    public boolean skipEtagLocking = false;
    public Boolean storeBlobContentMD5 = null;
    public Boolean useTransactionalContentMD5 = null;
    public boolean validateEncryptionPolicy = true;

    public BlobRequestOptions() {
    }

    public static void applyDefaults(BlobRequestOptions blobRequestOptions, BlobType blobType) {
        Utility.assertNotNull("modifiedOptions", blobRequestOptions);
        RequestOptions.applyBaseDefaultsInternal(blobRequestOptions);
        boolean z = false;
        if (blobRequestOptions.getAbsorbConditionalErrorsOnRetry() == null) {
            blobRequestOptions.setAbsorbConditionalErrorsOnRetry(false);
        }
        if (blobType == BlobType.APPEND_BLOB) {
            blobRequestOptions.setConcurrentRequestCount(1);
        } else if (blobRequestOptions.getConcurrentRequestCount() == null) {
            blobRequestOptions.setConcurrentRequestCount(1);
        }
        if (blobRequestOptions.getSingleBlobPutThresholdInBytes() == null) {
            blobRequestOptions.setSingleBlobPutThresholdInBytes(Integer.valueOf(BlobConstants.DEFAULT_SINGLE_BLOB_PUT_THRESHOLD_IN_BYTES));
        }
        if (blobRequestOptions.getUseTransactionalContentMD5() == null) {
            blobRequestOptions.setUseTransactionalContentMD5(false);
        }
        if (blobRequestOptions.getStoreBlobContentMD5() == null && blobType != BlobType.UNSPECIFIED) {
            if (blobType == BlobType.BLOCK_BLOB) {
                z = true;
            }
            blobRequestOptions.setStoreBlobContentMD5(Boolean.valueOf(z));
        }
        if (blobRequestOptions.getDisableContentMD5Validation() == null) {
            blobRequestOptions.setDisableContentMD5Validation(false);
        }
    }

    public static final BlobRequestOptions populateAndApplyDefaults(BlobRequestOptions blobRequestOptions, BlobType blobType, CloudBlobClient cloudBlobClient) {
        return populateAndApplyDefaults(blobRequestOptions, blobType, cloudBlobClient, true);
    }

    public static void populateRequestOptions(BlobRequestOptions blobRequestOptions, BlobRequestOptions blobRequestOptions2, boolean z) {
        RequestOptions.populateRequestOptions(blobRequestOptions, blobRequestOptions2, z);
        if (blobRequestOptions.getAbsorbConditionalErrorsOnRetry() == null) {
            blobRequestOptions.setAbsorbConditionalErrorsOnRetry(blobRequestOptions2.getAbsorbConditionalErrorsOnRetry());
        }
        if (blobRequestOptions.getConcurrentRequestCount() == null) {
            blobRequestOptions.setConcurrentRequestCount(blobRequestOptions2.getConcurrentRequestCount());
        }
        if (blobRequestOptions.getSingleBlobPutThresholdInBytes() == null) {
            blobRequestOptions.setSingleBlobPutThresholdInBytes(blobRequestOptions2.getSingleBlobPutThresholdInBytes());
        }
        if (blobRequestOptions.getUseTransactionalContentMD5() == null) {
            blobRequestOptions.setUseTransactionalContentMD5(blobRequestOptions2.getUseTransactionalContentMD5());
        }
        if (blobRequestOptions.getStoreBlobContentMD5() == null) {
            blobRequestOptions.setStoreBlobContentMD5(blobRequestOptions2.getStoreBlobContentMD5());
        }
        if (blobRequestOptions.getDisableContentMD5Validation() == null) {
            blobRequestOptions.setDisableContentMD5Validation(blobRequestOptions2.getDisableContentMD5Validation());
        }
        if (blobRequestOptions.getEncryptionPolicy() == null) {
            blobRequestOptions.setEncryptionPolicy(blobRequestOptions2.getEncryptionPolicy());
        }
    }

    public void assertNoEncryptionPolicyOrStrictMode() {
        if (getEncryptionPolicy() == null || !getValidateEncryptionPolicy()) {
            assertPolicyIfRequired();
            return;
        }
        throw new IllegalArgumentException(SR.ENCRYPTION_NOT_SUPPORTED_FOR_OPERATION);
    }

    public void assertPolicyIfRequired() {
        if (requireEncryption() != null && requireEncryption().booleanValue() && getEncryptionPolicy() == null) {
            throw new IllegalArgumentException(SR.ENCRYPTION_POLICY_MISSING_IN_STRICT_MODE);
        }
    }

    public Boolean getAbsorbConditionalErrorsOnRetry() {
        return this.absorbConditionalErrorsOnRetry;
    }

    public Integer getConcurrentRequestCount() {
        return this.concurrentRequestCount;
    }

    public Boolean getDisableContentMD5Validation() {
        return this.disableContentMD5Validation;
    }

    public BlobEncryptionPolicy getEncryptionPolicy() {
        return this.encryptionPolicy;
    }

    public Integer getSingleBlobPutThresholdInBytes() {
        return this.singleBlobPutThresholdInBytes;
    }

    public boolean getSkipEtagLocking() {
        return this.skipEtagLocking;
    }

    public Boolean getStoreBlobContentMD5() {
        return this.storeBlobContentMD5;
    }

    public Boolean getUseTransactionalContentMD5() {
        return this.useTransactionalContentMD5;
    }

    public boolean getValidateEncryptionPolicy() {
        return this.validateEncryptionPolicy;
    }

    public void setAbsorbConditionalErrorsOnRetry(Boolean bool) {
        this.absorbConditionalErrorsOnRetry = bool;
    }

    public void setConcurrentRequestCount(Integer num) {
        this.concurrentRequestCount = num;
    }

    public void setDisableContentMD5Validation(Boolean bool) {
        this.disableContentMD5Validation = bool;
    }

    public void setEncryptionPolicy(BlobEncryptionPolicy blobEncryptionPolicy) {
        this.encryptionPolicy = blobEncryptionPolicy;
    }

    public void setSingleBlobPutThresholdInBytes(Integer num) {
        if (num == null || (num.intValue() <= 268435456 && num.intValue() >= 1048576)) {
            this.singleBlobPutThresholdInBytes = num;
            return;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"singleBlobPutThresholdInBytes", num.toString()}));
    }

    public void setSkipEtagLocking(boolean z) {
        this.skipEtagLocking = z;
    }

    public void setStoreBlobContentMD5(Boolean bool) {
        this.storeBlobContentMD5 = bool;
    }

    public void setUseTransactionalContentMD5(Boolean bool) {
        this.useTransactionalContentMD5 = bool;
    }

    public void setValidateEncryptionPolicy(boolean z) {
        this.validateEncryptionPolicy = z;
    }

    public static final BlobRequestOptions populateAndApplyDefaults(BlobRequestOptions blobRequestOptions, BlobType blobType, CloudBlobClient cloudBlobClient, boolean z) {
        BlobRequestOptions blobRequestOptions2 = new BlobRequestOptions(blobRequestOptions);
        populateRequestOptions(blobRequestOptions2, cloudBlobClient.getDefaultRequestOptions(), z);
        applyDefaults(blobRequestOptions2, blobType);
        return blobRequestOptions2;
    }

    public BlobRequestOptions(BlobRequestOptions blobRequestOptions) {
        super(blobRequestOptions);
        if (blobRequestOptions != null) {
            setAbsorbConditionalErrorsOnRetry(blobRequestOptions.getAbsorbConditionalErrorsOnRetry());
            setConcurrentRequestCount(blobRequestOptions.getConcurrentRequestCount());
            setUseTransactionalContentMD5(blobRequestOptions.getUseTransactionalContentMD5());
            setStoreBlobContentMD5(blobRequestOptions.getStoreBlobContentMD5());
            setDisableContentMD5Validation(blobRequestOptions.getDisableContentMD5Validation());
            setSingleBlobPutThresholdInBytes(blobRequestOptions.getSingleBlobPutThresholdInBytes());
            setEncryptionPolicy(blobRequestOptions.getEncryptionPolicy());
            setValidateEncryptionPolicy(blobRequestOptions.getValidateEncryptionPolicy());
            setSkipEtagLocking(blobRequestOptions.getSkipEtagLocking());
        }
    }
}
