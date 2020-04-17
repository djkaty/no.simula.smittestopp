package com.microsoft.azure.sdk.iot.device;

public interface IotHubResponseCallback {
    void execute(ResponseMessage responseMessage, Object obj);
}
