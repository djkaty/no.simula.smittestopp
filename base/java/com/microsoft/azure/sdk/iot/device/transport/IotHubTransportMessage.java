package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.IotHubClientProtocol;
import com.microsoft.azure.sdk.iot.device.IotHubMethod;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageCallback;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.MessageType;

public class IotHubTransportMessage extends Message {
    public IotHubMethod iotHubMethod;
    public MessageCallback messageCallback;
    public Object messageCallbackContext;
    public String methodName;
    public DeviceOperations operationType;
    public String requestId;
    public String status;
    public String uriPath;
    public String version;

    public IotHubTransportMessage(byte[] bArr, MessageType messageType) {
        super(bArr);
        super.setMessageType(messageType);
        this.methodName = null;
        this.version = null;
        this.requestId = null;
        this.status = null;
        this.operationType = DeviceOperations.DEVICE_OPERATION_UNKNOWN;
    }

    public DeviceOperations getDeviceOperationType() {
        return this.operationType;
    }

    public IotHubMethod getIotHubMethod() {
        return this.iotHubMethod;
    }

    public MessageCallback getMessageCallback() {
        return this.messageCallback;
    }

    public Object getMessageCallbackContext() {
        return this.messageCallbackContext;
    }

    public String getMethodName() {
        return this.methodName;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getStatus() {
        return this.status;
    }

    public String getUriPath() {
        return this.uriPath;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isMessageAckNeeded(IotHubClientProtocol iotHubClientProtocol) {
        if (iotHubClientProtocol != IotHubClientProtocol.MQTT && iotHubClientProtocol != IotHubClientProtocol.MQTT_WS) {
            return true;
        }
        DeviceOperations deviceOperations = this.operationType;
        return (deviceOperations == DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST || deviceOperations == DeviceOperations.DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST || deviceOperations == DeviceOperations.DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST) ? false : true;
    }

    public void setDeviceOperationType(DeviceOperations deviceOperations) {
        this.operationType = deviceOperations;
    }

    public void setIotHubMethod(IotHubMethod iotHubMethod2) {
        this.iotHubMethod = iotHubMethod2;
    }

    public void setMessageCallback(MessageCallback messageCallback2) {
        this.messageCallback = messageCallback2;
    }

    public void setMessageCallbackContext(Object obj) {
        this.messageCallbackContext = obj;
    }

    public void setMethodName(String str) {
        if (str != null) {
            this.methodName = str;
            return;
        }
        throw new IllegalArgumentException("Method name cannot be null");
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setUriPath(String str) {
        this.uriPath = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        String str = this.requestId;
        if (str != null && !str.isEmpty()) {
            sb.append("Request Id [");
            sb.append(this.requestId);
            sb.append("] ");
        }
        return sb.toString();
    }

    public IotHubTransportMessage(String str) {
        super(str);
        super.setMessageType(MessageType.UNKNOWN);
        this.methodName = null;
        this.version = null;
        this.requestId = null;
        this.status = null;
        this.operationType = DeviceOperations.DEVICE_OPERATION_UNKNOWN;
    }

    public IotHubTransportMessage(byte[] bArr, MessageType messageType, String str, String str2, MessageProperty[] messagePropertyArr) {
        super(bArr);
        super.setMessageType(messageType);
        setMessageId(str);
        setCorrelationId(str2);
        for (MessageProperty messageProperty : messagePropertyArr) {
            setProperty(messageProperty.getName(), messageProperty.getValue());
        }
    }
}
