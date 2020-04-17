package com.microsoft.azure.sdk.iot.device;

public final class ResponseMessage extends Message {
    public IotHubStatusCode status;

    public ResponseMessage(byte[] bArr, IotHubStatusCode iotHubStatusCode) {
        super(bArr);
        if (iotHubStatusCode != null) {
            this.status = iotHubStatusCode;
            return;
        }
        throw new IllegalArgumentException("Null status");
    }

    public IotHubStatusCode getStatus() {
        return this.status;
    }
}
