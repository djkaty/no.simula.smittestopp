package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.azure.sdk.iot.device.transport.TransportUtils;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import k.a.b.a.b.f;
import k.a.b.a.b.k.d;
import k.a.b.a.b.k.p;

public final class AmqpsDeviceMethods extends AmqpsDeviceOperations {
    public static final String APPLICATION_PROPERTY_KEY_IOTHUB_METHOD_NAME = "IoThub-methodname";
    public static final String APPLICATION_PROPERTY_KEY_IOTHUB_STATUS = "IoThub-status";
    public static final String CORRELATION_ID_KEY = "com.microsoft:channel-correlation-id";
    public static final String CORRELATION_ID_KEY_PREFIX = "methods:";
    public static final String RECEIVER_LINK_ENDPOINT_PATH = "/devices/%s/methods/devicebound";
    public static final String RECEIVER_LINK_ENDPOINT_PATH_MODULES = "/devices/%s/modules/%s/methods/devicebound";
    public static final String RECEIVER_LINK_TAG_PREFIX = "receiver_link_devicemethods-";
    public static final String SENDER_LINK_ENDPOINT_PATH = "/devices/%s/methods/devicebound";
    public static final String SENDER_LINK_ENDPOINT_PATH_MODULES = "/devices/%s/modules/%s/methods/devicebound";
    public static final String SENDER_LINK_TAG_PREFIX = "sender_link_devicemethods-";
    public DeviceClientConfig deviceClientConfig;

    public AmqpsDeviceMethods(DeviceClientConfig deviceClientConfig2) {
        super(deviceClientConfig2, "/devices/%s/methods/devicebound", "/devices/%s/methods/devicebound", "/devices/%s/modules/%s/methods/devicebound", "/devices/%s/modules/%s/methods/devicebound", SENDER_LINK_TAG_PREFIX, RECEIVER_LINK_TAG_PREFIX);
        this.deviceClientConfig = deviceClientConfig2;
        String moduleId = deviceClientConfig2.getModuleId();
        if (moduleId == null || moduleId.isEmpty()) {
            Map<f, Object> map = this.amqpProperties;
            f a = f.a("com.microsoft:channel-correlation-id");
            StringBuilder a2 = a.a(CORRELATION_ID_KEY_PREFIX);
            a2.append(UUID.randomUUID().toString());
            map.put(a, f.a(a2.toString()));
        } else {
            Map<f, Object> map2 = this.amqpProperties;
            f a3 = f.a("com.microsoft:channel-correlation-id");
            StringBuilder a4 = a.a(CORRELATION_ID_KEY_PREFIX);
            a4.append(UUID.randomUUID().toString());
            map2.put(a3, f.a(a4.toString()));
        }
        this.amqpProperties.put(f.a(AmqpsDeviceOperations.API_VERSION_KEY), TransportUtils.IOTHUB_API_VERSION);
    }

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig2) {
        if (amqpsMessage.getAmqpsMessageType() != MessageType.DEVICE_METHODS || !this.deviceClientConfig.getDeviceId().equals(deviceClientConfig2.getDeviceId())) {
            return null;
        }
        return new AmqpsConvertFromProtonReturnValue(protonMessageToIoTHubMessage(amqpsMessage), deviceClientConfig2.getDeviceMethodsMessageCallback(), deviceClientConfig2.getDeviceMethodsMessageContext());
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        if (message.getMessageType() == MessageType.DEVICE_METHODS) {
            return new AmqpsConvertToProtonReturnValue(iotHubMessageToProtonMessage(message), MessageType.DEVICE_METHODS);
        }
        return null;
    }

    public String getLinkInstanceType() {
        return "methods";
    }

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        AmqpsMessage messageFromReceiverLink = super.getMessageFromReceiverLink(str);
        if (messageFromReceiverLink != null) {
            messageFromReceiverLink.setAmqpsMessageType(MessageType.DEVICE_METHODS);
            messageFromReceiverLink.setDeviceClientConfig(this.deviceClientConfig);
        }
        return messageFromReceiverLink;
    }

    public k.a.b.a.f.d.a iotHubMessageToProtonMessage(Message message) {
        p pVar;
        k.a.b.a.f.d.a iotHubMessageToProtonMessage = super.iotHubMessageToProtonMessage(message);
        IotHubTransportMessage iotHubTransportMessage = (IotHubTransportMessage) message;
        if (iotHubMessageToProtonMessage.getProperties() != null) {
            pVar = iotHubMessageToProtonMessage.getProperties();
        } else {
            pVar = new p();
        }
        if (iotHubTransportMessage.getRequestId() != null) {
            pVar.f1578f = UUID.fromString(iotHubTransportMessage.getRequestId());
        }
        iotHubMessageToProtonMessage.setProperties(pVar);
        HashMap hashMap = new HashMap();
        if (iotHubTransportMessage.getStatus() != null) {
            hashMap.put(APPLICATION_PROPERTY_KEY_IOTHUB_STATUS, Integer.valueOf(Integer.parseInt(iotHubTransportMessage.getStatus())));
        }
        new HashMap();
        if (!(iotHubMessageToProtonMessage.getApplicationProperties() == null || iotHubMessageToProtonMessage.getApplicationProperties().a == null)) {
            hashMap.putAll(iotHubMessageToProtonMessage.getApplicationProperties().a);
        }
        iotHubMessageToProtonMessage.setApplicationProperties(new d(hashMap));
        return iotHubMessageToProtonMessage;
    }

    public IotHubTransportMessage protonMessageToIoTHubMessage(k.a.b.a.f.d.a aVar) {
        IotHubTransportMessage protonMessageToIoTHubMessage = super.protonMessageToIoTHubMessage(aVar);
        protonMessageToIoTHubMessage.setMessageType(MessageType.DEVICE_METHODS);
        protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_METHOD_RECEIVE_REQUEST);
        if (!(aVar.getApplicationProperties() == null || aVar.getApplicationProperties().a == null)) {
            Map<String, Object> map = aVar.getApplicationProperties().a;
            if (map.containsKey(APPLICATION_PROPERTY_KEY_IOTHUB_METHOD_NAME)) {
                protonMessageToIoTHubMessage.setMethodName(map.get(APPLICATION_PROPERTY_KEY_IOTHUB_METHOD_NAME).toString());
            }
        }
        if (!(aVar.getProperties() == null || aVar.getProperties().f1578f == null)) {
            protonMessageToIoTHubMessage.setRequestId(aVar.getProperties().f1578f.toString());
        }
        return protonMessageToIoTHubMessage;
    }

    public synchronized AmqpsSendReturnValue sendMessageAndGetDeliveryTag(MessageType messageType, byte[] bArr, int i2, int i3, byte[] bArr2) {
        if (messageType == MessageType.DEVICE_METHODS) {
            return super.sendMessageAndGetDeliveryTag(messageType, bArr, i2, i3, bArr2);
        }
        return new AmqpsSendReturnValue(false, -1);
    }
}
