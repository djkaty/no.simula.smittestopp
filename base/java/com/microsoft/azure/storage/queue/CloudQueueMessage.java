package com.microsoft.azure.storage.queue;

import com.microsoft.azure.sdk.iot.deps.serializer.ConfigurationParser;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.io.UnsupportedEncodingException;
import java.util.Date;

public class CloudQueueMessage {
    public int dequeueCount;
    public Date expirationTime;
    public String id;
    public Date insertionTime;
    public String messageContent;
    public QueueMessageType messageType;
    public Date nextVisibleTime;
    public String popReceipt;

    public CloudQueueMessage() {
    }

    public final int getDequeueCount() {
        return this.dequeueCount;
    }

    public final Date getExpirationTime() {
        return this.expirationTime;
    }

    public final String getId() {
        return this.id;
    }

    public final Date getInsertionTime() {
        return this.insertionTime;
    }

    public final byte[] getMessageContentAsByte() {
        if (Utility.isNullOrEmpty(this.messageContent)) {
            return new byte[0];
        }
        if (this.messageType != QueueMessageType.RAW_STRING) {
            return Base64.decode(this.messageContent);
        }
        try {
            return this.messageContent.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public final String getMessageContentAsString() {
        if (this.messageType == QueueMessageType.RAW_STRING) {
            return this.messageContent;
        }
        if (Utility.isNullOrEmpty(this.messageContent)) {
            return null;
        }
        try {
            return new String(Base64.decode(this.messageContent), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public final String getMessageContentForTransfer(boolean z, QueueRequestOptions queueRequestOptions) {
        String str;
        QueueEncryptionPolicy encryptionPolicy = queueRequestOptions.getEncryptionPolicy();
        Long valueOf = Long.valueOf(QueueConstants.MAX_MESSAGE_SIZE);
        if (encryptionPolicy != null) {
            String encryptMessage = queueRequestOptions.getEncryptionPolicy().encryptMessage(getMessageContentAsByte());
            if (((long) encryptMessage.length()) <= QueueConstants.MAX_MESSAGE_SIZE) {
                return encryptMessage;
            }
            throw new IllegalArgumentException(String.format(SR.ENCRYPTED_MESSAGE_TOO_LARGE, new Object[]{valueOf}));
        }
        if (this.messageType != QueueMessageType.RAW_STRING || !z) {
            str = this.messageContent;
        } else {
            str = Base64.encode(getMessageContentAsByte());
        }
        if (str == null || ((long) str.length()) <= QueueConstants.MAX_MESSAGE_SIZE) {
            return str;
        }
        throw new IllegalArgumentException(String.format(SR.INVALID_MESSAGE_LENGTH, new Object[]{valueOf}));
    }

    public final String getMessageId() {
        return this.id;
    }

    public final QueueMessageType getMessageType() {
        return this.messageType;
    }

    public final Date getNextVisibleTime() {
        return this.nextVisibleTime;
    }

    public final String getPopReceipt() {
        return this.popReceipt;
    }

    public final void setDequeueCount(int i2) {
        this.dequeueCount = i2;
    }

    public final void setExpirationTime(Date date) {
        this.expirationTime = date;
    }

    public final void setInsertionTime(Date date) {
        this.insertionTime = date;
    }

    public final void setMessageContent(byte[] bArr) {
        Utility.assertNotNull(ConfigurationParser.CONTENT_NAME, bArr);
        this.messageContent = Base64.encode(bArr);
        this.messageType = QueueMessageType.BASE_64_ENCODED;
    }

    public final void setMessageId(String str) {
        this.id = str;
    }

    public final void setMessageType(QueueMessageType queueMessageType) {
        this.messageType = queueMessageType;
    }

    public final void setNextVisibleTime(Date date) {
        this.nextVisibleTime = date;
    }

    public final void setPopReceipt(String str) {
        this.popReceipt = str;
    }

    public CloudQueueMessage(byte[] bArr) {
        setMessageContent(bArr);
    }

    public CloudQueueMessage(String str) {
        setMessageContent(str);
    }

    public final void setMessageContent(String str) {
        this.messageContent = str;
        this.messageType = QueueMessageType.RAW_STRING;
    }
}
