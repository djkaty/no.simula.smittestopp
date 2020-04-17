package com.microsoft.azure.sdk.iot.device.transport.amqps;

public class AmqpsSendReturnValue {
    public int deliveryHash;
    public boolean deliverySuccessful;
    public byte[] deliveryTag;
    public byte[] failedDeliveryTag;

    public AmqpsSendReturnValue(boolean z, int i2) {
        byte[] bytes = "-1".getBytes();
        this.failedDeliveryTag = bytes;
        this.deliverySuccessful = z;
        this.deliveryHash = i2;
        this.deliveryTag = bytes;
    }

    public int getDeliveryHash() {
        return this.deliveryHash;
    }

    public byte[] getDeliveryTag() {
        return this.deliveryTag;
    }

    public boolean isDeliverySuccessful() {
        return this.deliverySuccessful;
    }

    public AmqpsSendReturnValue(boolean z, int i2, byte[] bArr) {
        this.failedDeliveryTag = "-1".getBytes();
        this.deliverySuccessful = z;
        this.deliveryHash = i2;
        this.deliveryTag = bArr;
    }
}
