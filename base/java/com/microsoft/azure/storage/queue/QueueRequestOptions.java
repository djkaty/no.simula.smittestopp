package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;

public final class QueueRequestOptions extends RequestOptions {
    public QueueEncryptionPolicy encryptionPolicy;

    public QueueRequestOptions() {
    }

    public static void applyDefaults(QueueRequestOptions queueRequestOptions) {
        Utility.assertNotNull("modifiedOptions", queueRequestOptions);
        RequestOptions.applyBaseDefaultsInternal(queueRequestOptions);
    }

    public static final QueueRequestOptions populateAndApplyDefaults(QueueRequestOptions queueRequestOptions, CloudQueueClient cloudQueueClient) {
        QueueRequestOptions queueRequestOptions2 = new QueueRequestOptions(queueRequestOptions);
        populateRequestOptions(queueRequestOptions2, cloudQueueClient.getDefaultRequestOptions());
        applyDefaults(queueRequestOptions2);
        return queueRequestOptions2;
    }

    public static void populateRequestOptions(QueueRequestOptions queueRequestOptions, QueueRequestOptions queueRequestOptions2) {
        RequestOptions.populateRequestOptions(queueRequestOptions, queueRequestOptions2, true);
        if (queueRequestOptions.getEncryptionPolicy() == null) {
            queueRequestOptions.setEncryptionPolicy(queueRequestOptions2.getEncryptionPolicy());
        }
    }

    public void assertPolicyIfRequired() {
        if (requireEncryption() != null && requireEncryption().booleanValue() && getEncryptionPolicy() == null) {
            throw new IllegalArgumentException(SR.ENCRYPTION_POLICY_MISSING_IN_STRICT_MODE);
        }
    }

    public QueueEncryptionPolicy getEncryptionPolicy() {
        return this.encryptionPolicy;
    }

    public void setEncryptionPolicy(QueueEncryptionPolicy queueEncryptionPolicy) {
        this.encryptionPolicy = queueEncryptionPolicy;
    }

    public QueueRequestOptions(QueueRequestOptions queueRequestOptions) {
        super(queueRequestOptions);
        if (queueRequestOptions != null) {
            setEncryptionPolicy(queueRequestOptions.getEncryptionPolicy());
        }
    }
}
