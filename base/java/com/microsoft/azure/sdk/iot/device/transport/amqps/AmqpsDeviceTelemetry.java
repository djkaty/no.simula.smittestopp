package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.identity.client.PublicClientApplicationConfiguration;
import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.k.d;
import k.a.b.a.f.d.a;

public final class AmqpsDeviceTelemetry extends AmqpsDeviceOperations {
    public static final String CORRELATION_ID_KEY = "com.microsoft:channel-correlation-id";
    public static final String RECEIVER_LINK_ENDPOINT_PATH_DEVICES = "/devices/%s/messages/devicebound";
    public static final String RECEIVER_LINK_ENDPOINT_PATH_MODULES = "/devices/%s/modules/%s/messages/devicebound";
    public static final String RECEIVER_LINK_ENDPOINT_PATH_MODULES_EDGEHUB = "/devices/%s/modules/%s/messages/events";
    public static final String RECEIVER_LINK_TAG_PREFIX = "receiver_link_telemetry-";
    public static final String SENDER_LINK_ENDPOINT_PATH_DEVICES = "/devices/%s/messages/events";
    public static final String SENDER_LINK_ENDPOINT_PATH_MODULES = "/devices/%s/modules/%s/messages/events";
    public static final String SENDER_LINK_TAG_PREFIX = "sender_link_telemetry-";
    public DeviceClientConfig deviceClientConfig;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AmqpsDeviceTelemetry(DeviceClientConfig deviceClientConfig2) {
        super(deviceClientConfig2, SENDER_LINK_ENDPOINT_PATH_DEVICES, RECEIVER_LINK_ENDPOINT_PATH_DEVICES, "/devices/%s/modules/%s/messages/events", deviceClientConfig2.getGatewayHostname() != null ? "/devices/%s/modules/%s/messages/events" : RECEIVER_LINK_ENDPOINT_PATH_MODULES, SENDER_LINK_TAG_PREFIX, RECEIVER_LINK_TAG_PREFIX);
        this.deviceClientConfig = deviceClientConfig2;
        String moduleId = deviceClientConfig2.getModuleId();
        if (moduleId == null || moduleId.isEmpty()) {
            this.amqpProperties.put(f.a("com.microsoft:channel-correlation-id"), f.a(this.deviceClientConfig.getDeviceId()));
            return;
        }
        Map<f, Object> map = this.amqpProperties;
        f a = f.a("com.microsoft:channel-correlation-id");
        map.put(a, f.a(this.deviceClientConfig.getDeviceId() + "/" + moduleId));
    }

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig2) {
        if ((amqpsMessage.getAmqpsMessageType() != null && amqpsMessage.getAmqpsMessageType() != MessageType.DEVICE_TELEMETRY) || !this.deviceClientConfig.getDeviceId().equals(deviceClientConfig2.getDeviceId())) {
            return null;
        }
        IotHubTransportMessage protonMessageToIoTHubMessage = protonMessageToIoTHubMessage(amqpsMessage);
        return new AmqpsConvertFromProtonReturnValue(protonMessageToIoTHubMessage, deviceClientConfig2.getDeviceTelemetryMessageCallback(protonMessageToIoTHubMessage.getInputName()), deviceClientConfig2.getDeviceTelemetryMessageContext(protonMessageToIoTHubMessage.getInputName()));
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        if (message.getMessageType() == null || message.getMessageType() == MessageType.DEVICE_TELEMETRY) {
            return new AmqpsConvertToProtonReturnValue(iotHubMessageToProtonMessage(message), MessageType.DEVICE_TELEMETRY);
        }
        return null;
    }

    public String getLinkInstanceType() {
        return PublicClientApplicationConfiguration.SerializedNames.TELEMETRY;
    }

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        AmqpsMessage messageFromReceiverLink = super.getMessageFromReceiverLink(str);
        if (messageFromReceiverLink != null) {
            messageFromReceiverLink.setAmqpsMessageType(MessageType.DEVICE_TELEMETRY);
            messageFromReceiverLink.setDeviceClientConfig(this.deviceClientConfig);
        }
        return messageFromReceiverLink;
    }

    public a iotHubMessageToProtonMessage(Message message) {
        a iotHubMessageToProtonMessage = super.iotHubMessageToProtonMessage(message);
        if (!(message.getOutputName() == null || iotHubMessageToProtonMessage.getApplicationProperties() == null || iotHubMessageToProtonMessage.getApplicationProperties().a == null)) {
            HashMap hashMap = new HashMap();
            hashMap.put(MessageProperty.OUTPUT_NAME_PROPERTY, message.getOutputName());
            hashMap.putAll(iotHubMessageToProtonMessage.getApplicationProperties().a);
            iotHubMessageToProtonMessage.setApplicationProperties(new d(hashMap));
        }
        return iotHubMessageToProtonMessage;
    }

    public IotHubTransportMessage protonMessageToIoTHubMessage(a aVar) {
        IotHubTransportMessage protonMessageToIoTHubMessage = super.protonMessageToIoTHubMessage(aVar);
        protonMessageToIoTHubMessage.setMessageType(MessageType.DEVICE_TELEMETRY);
        protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_UNKNOWN);
        if (!(aVar.getMessageAnnotations() == null || aVar.getMessageAnnotations().a == null)) {
            for (Map.Entry next : aVar.getMessageAnnotations().a.entrySet()) {
                if (((f) next.getKey()).x.equals(AmqpsDeviceOperations.INPUT_NAME_PROPERTY_KEY)) {
                    protonMessageToIoTHubMessage.setInputName(next.getValue().toString());
                }
            }
        }
        return protonMessageToIoTHubMessage;
    }

    public synchronized AmqpsSendReturnValue sendMessageAndGetDeliveryTag(MessageType messageType, byte[] bArr, int i2, int i3, byte[] bArr2) {
        if (messageType == MessageType.DEVICE_TELEMETRY) {
            return super.sendMessageAndGetDeliveryTag(messageType, bArr, i2, i3, bArr2);
        }
        return new AmqpsSendReturnValue(false, -1);
    }
}
