package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.ResponseMessage;
import java.util.Map;

public interface IotHubTransportManager {
    void close();

    void open();

    void open(String[] strArr);

    Message receive();

    ResponseMessage send(IotHubTransportMessage iotHubTransportMessage, Map<String, String> map);
}
