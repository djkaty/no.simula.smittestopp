package com.microsoft.azure.sdk.iot.device;

public interface MessageCallback {
    IotHubMessageResult execute(Message message, Object obj);
}
