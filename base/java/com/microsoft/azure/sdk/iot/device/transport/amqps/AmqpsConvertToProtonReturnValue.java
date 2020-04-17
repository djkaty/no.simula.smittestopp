package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.MessageType;
import k.a.b.a.f.d.a;

public class AmqpsConvertToProtonReturnValue {
    public a messageImpl;
    public MessageType messageType;

    public AmqpsConvertToProtonReturnValue(a aVar, MessageType messageType2) {
        this.messageImpl = aVar;
        this.messageType = messageType2;
    }

    public a getMessageImpl() {
        return this.messageImpl;
    }

    public MessageType getMessageType() {
        return this.messageType;
    }
}
