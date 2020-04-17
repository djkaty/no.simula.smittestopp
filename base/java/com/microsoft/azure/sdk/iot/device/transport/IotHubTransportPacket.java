package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;

public final class IotHubTransportPacket {
    public Object callbackContext;
    public int currentRetryAttempt;
    public IotHubEventCallback eventCallback;
    public Message message;
    public final long startTimeMillis;
    public IotHubStatusCode status;

    public IotHubTransportPacket(Message message2, IotHubEventCallback iotHubEventCallback, Object obj, IotHubStatusCode iotHubStatusCode, long j2) {
        if (j2 < 1) {
            throw new IllegalArgumentException("start time cannot be 0 or negative");
        } else if (message2 != null) {
            this.message = message2;
            this.eventCallback = iotHubEventCallback;
            this.callbackContext = obj;
            this.status = iotHubStatusCode;
            this.startTimeMillis = j2;
        } else {
            throw new IllegalArgumentException("Message cannot be null");
        }
    }

    public IotHubEventCallback getCallback() {
        return this.eventCallback;
    }

    public Object getContext() {
        return this.callbackContext;
    }

    public int getCurrentRetryAttempt() {
        return this.currentRetryAttempt;
    }

    public Message getMessage() {
        return this.message;
    }

    public long getStartTimeMillis() {
        return this.startTimeMillis;
    }

    public IotHubStatusCode getStatus() {
        return this.status;
    }

    public void incrementRetryAttempt() {
        this.currentRetryAttempt++;
    }

    public void setStatus(IotHubStatusCode iotHubStatusCode) {
        this.status = iotHubStatusCode;
    }
}
