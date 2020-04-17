package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.MessageCallback;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;

public class AmqpsConvertFromProtonReturnValue {
    public IotHubTransportMessage message;
    public MessageCallback messageCallback;
    public Object messageContext;

    public AmqpsConvertFromProtonReturnValue(IotHubTransportMessage iotHubTransportMessage, MessageCallback messageCallback2, Object obj) {
        this.message = iotHubTransportMessage;
        this.messageCallback = messageCallback2;
        this.messageContext = obj;
    }

    public IotHubTransportMessage getMessage() {
        return this.message;
    }

    public MessageCallback getMessageCallback() {
        return this.messageCallback;
    }

    public Object getMessageContext() {
        return this.messageContext;
    }
}
