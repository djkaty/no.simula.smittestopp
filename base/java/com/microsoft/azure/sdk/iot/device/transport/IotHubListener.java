package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.Message;

public interface IotHubListener {
    void onConnectionEstablished(String str);

    void onConnectionLost(Throwable th, String str);

    void onMessageReceived(IotHubTransportMessage iotHubTransportMessage, Throwable th);

    void onMessageSent(Message message, Throwable th);
}
