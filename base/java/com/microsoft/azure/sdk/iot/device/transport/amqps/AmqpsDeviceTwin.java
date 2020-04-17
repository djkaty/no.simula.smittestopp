package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.azure.sdk.iot.device.transport.TransportUtils;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import k.a.b.a.b.f;
import k.a.b.a.b.k.m;
import k.a.b.a.b.k.p;

public final class AmqpsDeviceTwin extends AmqpsDeviceOperations {
    public static final String CORRELATION_ID_KEY = "com.microsoft:channel-correlation-id";
    public static final String CORRELATION_ID_KEY_PREFIX = "twin:";
    public static final String DEFAULT_STATUS_CODE = "200";
    public static final String MESSAGE_ANNOTATION_FIELD_KEY_OPERATION = "operation";
    public static final String MESSAGE_ANNOTATION_FIELD_KEY_RESOURCE = "resource";
    public static final String MESSAGE_ANNOTATION_FIELD_KEY_STATUS = "status";
    public static final String MESSAGE_ANNOTATION_FIELD_KEY_VERSION = "version";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_DELETE = "DELETE";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_GET = "GET";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_NOTIFICATIONS_TWIN_PROPERTIES_DESIRED = "/notifications/twin/properties/desired";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_PATCH = "PATCH";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_PROPERTIES_DESIRED = "/properties/desired";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_PROPERTIES_REPORTED = "/properties/reported";
    public static final String MESSAGE_ANNOTATION_FIELD_VALUE_PUT = "PUT";
    public static final String RECEIVER_LINK_ENDPOINT_PATH = "/devices/%s/twin";
    public static final String RECEIVER_LINK_ENDPOINT_PATH_MODULES = "/devices/%s/modules/%s/twin";
    public static final String RECEIVER_LINK_TAG_PREFIX = "receiver_link_devicetwin-";
    public static final String SENDER_LINK_ENDPOINT_PATH = "/devices/%s/twin";
    public static final String SENDER_LINK_ENDPOINT_PATH_MODULES = "/devices/%s/modules/%s/twin";
    public static final String SENDER_LINK_TAG_PREFIX = "sender_link_devicetwin-";
    public Map<String, DeviceOperations> correlationIdList = new HashMap();
    public DeviceClientConfig deviceClientConfig;

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceTwin$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001e */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations[] r0 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations = r0
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_GET_REQUEST     // Catch:{ NoSuchFieldError -> 0x000f }
                r1 = 0
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_REQUEST     // Catch:{ NoSuchFieldError -> 0x0016 }
                r1 = 2
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r0 = 4
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x001e }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST     // Catch:{ NoSuchFieldError -> 0x001e }
                r2 = 3
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x001e }
            L_0x001e:
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x0025 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST     // Catch:{ NoSuchFieldError -> 0x0025 }
                r2 = 6
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0025 }
            L_0x0025:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceTwin.AnonymousClass1.<clinit>():void");
        }
    }

    public AmqpsDeviceTwin(DeviceClientConfig deviceClientConfig2) {
        super(deviceClientConfig2, "/devices/%s/twin", "/devices/%s/twin", "/devices/%s/modules/%s/twin", "/devices/%s/modules/%s/twin", SENDER_LINK_TAG_PREFIX, RECEIVER_LINK_TAG_PREFIX);
        this.deviceClientConfig = deviceClientConfig2;
        this.amqpProperties.put(f.a(AmqpsDeviceOperations.API_VERSION_KEY), TransportUtils.IOTHUB_API_VERSION);
        Map<f, Object> map = this.amqpProperties;
        f a = f.a("com.microsoft:channel-correlation-id");
        StringBuilder a2 = a.a(CORRELATION_ID_KEY_PREFIX);
        a2.append(UUID.randomUUID().toString());
        map.put(a, f.a(a2.toString()));
    }

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig2) {
        if (amqpsMessage.getAmqpsMessageType() != MessageType.DEVICE_TWIN || !this.deviceClientConfig.getDeviceId().equals(deviceClientConfig2.getDeviceId())) {
            return null;
        }
        return new AmqpsConvertFromProtonReturnValue(protonMessageToIoTHubMessage(amqpsMessage), deviceClientConfig2.getDeviceTwinMessageCallback(), deviceClientConfig2.getDeviceTwinMessageContext());
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        if (message.getMessageType() == MessageType.DEVICE_TWIN) {
            return new AmqpsConvertToProtonReturnValue(iotHubMessageToProtonMessage(message), MessageType.DEVICE_TWIN);
        }
        return null;
    }

    public String getLinkInstanceType() {
        return "twin";
    }

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        AmqpsMessage messageFromReceiverLink = super.getMessageFromReceiverLink(str);
        if (messageFromReceiverLink != null) {
            messageFromReceiverLink.setAmqpsMessageType(MessageType.DEVICE_TWIN);
            messageFromReceiverLink.setDeviceClientConfig(this.deviceClientConfig);
        }
        return messageFromReceiverLink;
    }

    public k.a.b.a.f.d.a iotHubMessageToProtonMessage(Message message) {
        k.a.b.a.f.d.a iotHubMessageToProtonMessage = super.iotHubMessageToProtonMessage(message);
        IotHubTransportMessage iotHubTransportMessage = (IotHubTransportMessage) message;
        if (iotHubTransportMessage.getCorrelationId() != null) {
            iotHubMessageToProtonMessage.getProperties().f1578f = UUID.fromString(iotHubTransportMessage.getCorrelationId());
            this.correlationIdList.put(iotHubTransportMessage.getCorrelationId(), iotHubTransportMessage.getDeviceOperationType());
        }
        HashMap hashMap = new HashMap();
        int ordinal = iotHubTransportMessage.getDeviceOperationType().ordinal();
        if (ordinal == 0) {
            hashMap.put(f.a("operation"), "GET");
        } else if (ordinal == 2) {
            hashMap.put(f.a("operation"), "PATCH");
            hashMap.put(f.a("resource"), MESSAGE_ANNOTATION_FIELD_VALUE_PROPERTIES_REPORTED);
            if (iotHubTransportMessage.getVersion() != null) {
                try {
                    hashMap.put(f.a("version"), Long.valueOf(Long.parseLong(iotHubTransportMessage.getVersion())));
                } catch (NumberFormatException e2) {
                    TransportUtils.throwTransportExceptionWithIotHubServiceType((Exception) e2, TransportException.IotHubService.TWIN);
                }
            }
        } else if (ordinal == 4) {
            hashMap.put(f.a("operation"), "PUT");
            hashMap.put(f.a("resource"), MESSAGE_ANNOTATION_FIELD_VALUE_NOTIFICATIONS_TWIN_PROPERTIES_DESIRED);
        } else if (ordinal != 6) {
            TransportUtils.throwTransportExceptionWithIotHubServiceType("Invalid device operation type in iotHubMessageToProtonMessage!", TransportException.IotHubService.TWIN);
        } else {
            hashMap.put(f.a("operation"), "DELETE");
            hashMap.put(f.a("resource"), MESSAGE_ANNOTATION_FIELD_VALUE_NOTIFICATIONS_TWIN_PROPERTIES_DESIRED);
        }
        if (!(iotHubMessageToProtonMessage.getMessageAnnotations() == null || iotHubMessageToProtonMessage.getMessageAnnotations().a == null)) {
            hashMap.putAll(iotHubMessageToProtonMessage.getMessageAnnotations().a);
        }
        iotHubMessageToProtonMessage.setMessageAnnotations(new m(hashMap));
        return iotHubMessageToProtonMessage;
    }

    public IotHubTransportMessage protonMessageToIoTHubMessage(k.a.b.a.f.d.a aVar) {
        Object obj;
        IotHubTransportMessage protonMessageToIoTHubMessage = super.protonMessageToIoTHubMessage(aVar);
        protonMessageToIoTHubMessage.setMessageType(MessageType.DEVICE_TWIN);
        protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_UNKNOWN);
        m messageAnnotations = aVar.getMessageAnnotations();
        if (messageAnnotations != null) {
            for (Map.Entry next : messageAnnotations.a.entrySet()) {
                f fVar = (f) next.getKey();
                Object value = next.getValue();
                if (fVar.x.equals("status")) {
                    protonMessageToIoTHubMessage.setStatus(value.toString());
                } else if (fVar.x.equals("version")) {
                    protonMessageToIoTHubMessage.setVersion(value.toString());
                } else if (fVar.x.equals("resource") && value.toString().equals(MESSAGE_ANNOTATION_FIELD_VALUE_PROPERTIES_DESIRED)) {
                    protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE);
                }
            }
        }
        p properties = aVar.getProperties();
        if (properties != null && (obj = properties.f1578f) != null) {
            protonMessageToIoTHubMessage.setCorrelationId(obj.toString());
            if (this.correlationIdList.containsKey(properties.f1578f.toString())) {
                int ordinal = this.correlationIdList.get(properties.f1578f.toString()).ordinal();
                if (ordinal == 0) {
                    protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_GET_RESPONSE);
                } else if (ordinal == 2) {
                    protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_RESPONSE);
                } else if (ordinal == 4) {
                    protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE);
                } else if (ordinal != 6) {
                    TransportUtils.throwTransportExceptionWithIotHubServiceType("Invalid device operation type in protonMessageToIoTHubMessage!", TransportException.IotHubService.TWIN);
                } else {
                    protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_RESPONSE);
                }
                this.correlationIdList.remove(properties.f1578f.toString());
            }
        } else if (protonMessageToIoTHubMessage.getDeviceOperationType() == DeviceOperations.DEVICE_OPERATION_UNKNOWN) {
            protonMessageToIoTHubMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE);
            if (protonMessageToIoTHubMessage.getStatus() == null || protonMessageToIoTHubMessage.getStatus().isEmpty()) {
                protonMessageToIoTHubMessage.setStatus(DEFAULT_STATUS_CODE);
            }
        }
        return protonMessageToIoTHubMessage;
    }

    public synchronized AmqpsSendReturnValue sendMessageAndGetDeliveryTag(MessageType messageType, byte[] bArr, int i2, int i3, byte[] bArr2) {
        if (messageType == MessageType.DEVICE_TWIN) {
            return super.sendMessageAndGetDeliveryTag(messageType, bArr, i2, i3, bArr2);
        }
        return new AmqpsSendReturnValue(false, -1);
    }
}
