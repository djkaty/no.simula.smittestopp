package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;

public interface IotHubTransportConnection {
    void close();

    String getConnectionId();

    void open(Queue<DeviceClientConfig> queue, ScheduledExecutorService scheduledExecutorService);

    IotHubStatusCode sendMessage(Message message);

    boolean sendMessageResult(Message message, IotHubMessageResult iotHubMessageResult);

    void setListener(IotHubListener iotHubListener);
}
