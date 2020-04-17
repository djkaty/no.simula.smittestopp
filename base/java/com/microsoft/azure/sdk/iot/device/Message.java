package com.microsoft.azure.sdk.iot.device;

import com.microsoft.appcenter.AbstractAppCenterService;
import e.a.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import k.f.b;
import k.f.c;

public class Message {
    public static final String DATE_TIME_FORMAT = "yyyy-MM-dd_HH:mm:ss.SSSSSSS";
    public static final Charset DEFAULT_IOTHUB_MESSAGE_CHARSET = StandardCharsets.UTF_8;
    public static final String SECURITY_CLIENT_JSON_ENCODING = "application/json";
    public static final b log = c.a((Class<?>) Message.class);
    public FeedbackStatusCodeEnum ack;
    public byte[] body;
    public ByteArrayInputStream bodyStream;
    public String connectionAuthenticationMethod;
    public String connectionDeviceGenerationId;
    public String connectionDeviceId;
    public String connectionModuleId;
    public String contentEncoding;
    public String contentType;
    public String correlationId;
    public Date creationTimeUTC;
    public String deliveryAcknowledgement;
    public long expiryTime;
    public String feedbackDescription;
    public String feedbackDeviceGenerationId;
    public String feedbackDeviceId;
    public FeedbackStatusCodeEnum feedbackStatusCode;
    public StandardCharsets httpBatchEncoding;
    public Boolean httpBatchSerializeAsString;
    public String inputName;
    public IotHubConnectionString iotHubConnectionString;
    public boolean isSecurityClient;
    public String lockToken;
    public String messageId;
    public MessageType messageType;
    public String outputName;
    public ArrayList<MessageProperty> properties;
    public String to;
    public String userId;

    public Message() {
        initialize();
    }

    private void initialize() {
        this.lockToken = UUID.randomUUID().toString();
        this.messageId = UUID.randomUUID().toString();
        this.correlationId = UUID.randomUUID().toString();
        FeedbackStatusCodeEnum feedbackStatusCodeEnum = FeedbackStatusCodeEnum.none;
        this.feedbackStatusCode = feedbackStatusCodeEnum;
        this.ack = feedbackStatusCodeEnum;
        this.properties = new ArrayList<>();
        this.isSecurityClient = false;
    }

    public ByteArrayOutputStream getBodyStream() {
        return null;
    }

    public byte[] getBytes() {
        byte[] bArr = this.body;
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    public String getConnectionDeviceId() {
        return this.connectionDeviceId;
    }

    public String getConnectionModuleId() {
        return this.connectionModuleId;
    }

    public String getContentEncoding() {
        return this.contentEncoding;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getCorrelationId() {
        String str = this.correlationId;
        return str == null ? "" : str;
    }

    public Date getCreationTimeUTC() {
        return this.creationTimeUTC;
    }

    public String getCreationTimeUTCString() {
        if (this.creationTimeUTC == null) {
            return null;
        }
        return new SimpleDateFormat(DATE_TIME_FORMAT).format(this.creationTimeUTC).replace(AbstractAppCenterService.PREFERENCE_KEY_SEPARATOR, "T");
    }

    public String getDeliveryAcknowledgement() {
        return this.deliveryAcknowledgement;
    }

    public String getInputName() {
        return this.inputName;
    }

    public IotHubConnectionString getIotHubConnectionString() {
        return this.iotHubConnectionString;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public MessageType getMessageType() {
        return this.messageType;
    }

    public String getOutputName() {
        return this.outputName;
    }

    public MessageProperty[] getProperties() {
        ArrayList<MessageProperty> arrayList = this.properties;
        return (MessageProperty[]) arrayList.toArray(new MessageProperty[arrayList.size()]);
    }

    public String getProperty(String str) {
        MessageProperty messageProperty;
        Iterator<MessageProperty> it = this.properties.iterator();
        while (true) {
            if (!it.hasNext()) {
                messageProperty = null;
                break;
            }
            messageProperty = it.next();
            if (messageProperty.hasSameName(str)) {
                break;
            }
        }
        if (messageProperty == null) {
            return null;
        }
        return messageProperty.getValue();
    }

    public String getTo() {
        return this.to;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isExpired() {
        if (this.expiryTime == 0 || System.currentTimeMillis() <= this.expiryTime) {
            return false;
        }
        log.c("The message with correlation id {} expired", (Object) getCorrelationId());
        return true;
    }

    public boolean isSecurityMessage() {
        return this.isSecurityClient;
    }

    public void setAbsoluteExpiryTime(long j2) {
        if (j2 >= 0) {
            this.expiryTime = j2;
            return;
        }
        throw new IllegalArgumentException("ExpiryTime may not be negative");
    }

    public void setAsSecurityMessage() {
        this.contentEncoding = "application/json";
        this.isSecurityClient = true;
    }

    public void setConnectionDeviceId(String str) {
        this.connectionDeviceId = str;
    }

    public void setConnectionModuleId(String str) {
        this.connectionModuleId = str;
    }

    public void setContentEncoding(String str) {
        this.contentEncoding = str;
    }

    @Deprecated
    public void setContentType(String str) {
        this.contentType = str;
    }

    public final void setContentTypeFinal(String str) {
        this.contentType = str;
    }

    public void setCorrelationId(String str) {
        this.correlationId = str;
    }

    public final void setCreationTimeUTC(Date date) {
        this.creationTimeUTC = date;
    }

    public void setExpiryTime(long j2) {
        this.expiryTime = System.currentTimeMillis() + j2;
        log.b("The message with messageid {} has expiry time in {} milliseconds and the message will expire on {}", getMessageId(), Long.valueOf(j2), new Date(this.expiryTime));
    }

    public void setInputName(String str) {
        this.inputName = str;
    }

    public void setIotHubConnectionString(IotHubConnectionString iotHubConnectionString2) {
        this.iotHubConnectionString = iotHubConnectionString2;
    }

    public void setMessageId(String str) {
        this.messageId = str;
    }

    public void setMessageType(MessageType messageType2) {
        this.messageType = messageType2;
    }

    public void setOutputName(String str) {
        this.outputName = str;
    }

    public void setProperty(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Property name cannot be 'null'.");
        } else if (str2 != null) {
            MessageProperty messageProperty = null;
            Iterator<MessageProperty> it = this.properties.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MessageProperty next = it.next();
                if (next.hasSameName(str)) {
                    messageProperty = next;
                    break;
                }
            }
            if (messageProperty != null) {
                this.properties.remove(messageProperty);
            }
            log.e("Setting message property");
            this.properties.add(new MessageProperty(str, str2));
        } else {
            throw new IllegalArgumentException("Property value cannot be 'null'.");
        }
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String toString() {
        StringBuilder a = a.a(" Message details: ");
        String str = this.correlationId;
        if (str != null && !str.isEmpty()) {
            a.append("Correlation Id [");
            a.append(this.correlationId);
            a.append("] ");
        }
        String str2 = this.messageId;
        if (str2 != null && !str2.isEmpty()) {
            a.append("Message Id [");
            a.append(this.messageId);
            a.append("] ");
        }
        return a.toString();
    }

    public Message(ByteArrayInputStream byteArrayInputStream) {
        initialize();
    }

    public Message(byte[] bArr) {
        if (bArr != null) {
            initialize();
            this.body = bArr;
            return;
        }
        throw new IllegalArgumentException("Message body cannot be 'null'.");
    }

    public Message(String str) {
        if (str != null) {
            initialize();
            this.body = str.getBytes(DEFAULT_IOTHUB_MESSAGE_CHARSET);
            setContentType(DEFAULT_IOTHUB_MESSAGE_CHARSET.name());
            return;
        }
        throw new IllegalArgumentException("Message body cannot be 'null'.");
    }
}
