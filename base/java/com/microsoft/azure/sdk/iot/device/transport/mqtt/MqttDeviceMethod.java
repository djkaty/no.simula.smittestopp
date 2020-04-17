package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.identity.client.internal.MsalUtils;
import java.util.HashMap;
import java.util.Map;
import k.f.b;
import k.f.c;

public class MqttDeviceMethod extends Mqtt {
    public static final b log = c.a((Class<?>) MqttDeviceMethod.class);
    public final String BACKSLASH = "/";
    public final String METHOD = "$iothub/methods/";
    public final int METHOD_TOKEN = 3;
    public final String POST = "$iothub/methods/POST";
    public final int POST_TOKEN = 2;
    public final String POUND = "#";
    public final String QUESTION = MsalUtils.QUERY_STRING_SYMBOL;
    public final int REQID_TOKEN = 4;
    public final String REQ_ID = "?$rid=";
    public final String RES = "$iothub/methods/res";
    public boolean isStarted = false;
    public final Map<String, DeviceOperations> requestMap = new HashMap();
    public String responseTopic = "$iothub/methods/res";
    public String subscribeTopic = "$iothub/methods/POST/#";

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceMethod$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0010 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations[] r0 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations = r0
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_METHOD_RECEIVE_REQUEST     // Catch:{ NoSuchFieldError -> 0x0010 }
                r1 = 10
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0010 }
            L_0x0010:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x0019 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST     // Catch:{ NoSuchFieldError -> 0x0019 }
                r1 = 8
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0019 }
            L_0x0019:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x0022 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_METHOD_SEND_RESPONSE     // Catch:{ NoSuchFieldError -> 0x0022 }
                r1 = 11
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0022 }
            L_0x0022:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceMethod.AnonymousClass1.<clinit>():void");
        }
    }

    public MqttDeviceMethod(MqttConnection mqttConnection, String str, Map<Integer, Message> map) {
        super(mqttConnection, (IotHubListener) null, (MqttMessageListener) null, str, map);
    }

    private void throwMethodsTransportException(String str) {
        TransportException transportException = new TransportException(str);
        transportException.setIotHubService(TransportException.IotHubService.METHODS);
        throw transportException;
    }

    public IotHubTransportMessage receive() {
        IotHubTransportMessage iotHubTransportMessage;
        String key;
        IotHubTransportMessage iotHubTransportMessage2;
        synchronized (this.incomingLock) {
            iotHubTransportMessage = null;
            k.a.a.b.e.b<String, byte[]> peekMessage = peekMessage();
            if (!(peekMessage == null || (key = peekMessage.getKey()) == null || key.length() <= 0)) {
                byte[] value = peekMessage.getValue();
                if (key.length() > 16 && key.startsWith("$iothub/methods/") && key.length() > 20 && key.startsWith("$iothub/methods/POST")) {
                    this.allReceivedMessages.poll();
                    TopicParser topicParser = new TopicParser(key);
                    if (value == null || value.length <= 0) {
                        iotHubTransportMessage2 = new IotHubTransportMessage(new byte[0], MessageType.DEVICE_METHODS);
                    } else {
                        iotHubTransportMessage2 = new IotHubTransportMessage(value, MessageType.DEVICE_METHODS);
                    }
                    iotHubTransportMessage2.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_UNKNOWN);
                    iotHubTransportMessage2.setMethodName(topicParser.getMethodName(3));
                    String requestId = topicParser.getRequestId(4);
                    if (requestId != null) {
                        iotHubTransportMessage2.setRequestId(requestId);
                        iotHubTransportMessage2.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_METHOD_RECEIVE_REQUEST);
                        this.requestMap.put(requestId, DeviceOperations.DEVICE_OPERATION_METHOD_RECEIVE_REQUEST);
                    } else {
                        throwMethodsTransportException("Request ID cannot be null");
                    }
                    iotHubTransportMessage = iotHubTransportMessage2;
                }
            }
        }
        return iotHubTransportMessage;
    }

    public void send(IotHubTransportMessage iotHubTransportMessage) {
        if (iotHubTransportMessage == null || iotHubTransportMessage.getBytes() == null) {
            throw new IllegalArgumentException("Message cannot be null");
        }
        if (!this.isStarted) {
            throwMethodsTransportException("Start device method before using send");
        }
        if (iotHubTransportMessage.getMessageType() == MessageType.DEVICE_METHODS) {
            int ordinal = iotHubTransportMessage.getDeviceOperationType().ordinal();
            if (ordinal == 8) {
                subscribe(this.subscribeTopic);
            } else if (ordinal != 11) {
                throwMethodsTransportException("Mismatched device method operation");
            } else if (iotHubTransportMessage.getRequestId() == null || iotHubTransportMessage.getRequestId().isEmpty()) {
                throw new IllegalArgumentException("Request id cannot be null or empty");
            } else {
                if (!this.requestMap.containsKey(iotHubTransportMessage.getRequestId())) {
                    throwMethodsTransportException("Sending a response for the method that was never invoked");
                } else if (this.requestMap.remove(iotHubTransportMessage.getRequestId()).ordinal() != 10) {
                    throwMethodsTransportException("Mismatched request and response operation");
                }
                publish(this.responseTopic + "/" + iotHubTransportMessage.getStatus() + "/" + "?$rid=" + iotHubTransportMessage.getRequestId(), iotHubTransportMessage);
            }
        }
    }

    public void start() {
        if (!this.isStarted) {
            this.isStarted = true;
        }
    }

    public void stop() {
        this.isStarted = false;
        if (!this.requestMap.isEmpty()) {
            log.d("Pending {} responses to be sent to IotHub yet unsubscribed", (Object) Integer.valueOf(this.requestMap.size()));
        }
    }

    private void throwMethodsTransportException(Exception exc) {
        TransportException transportException = new TransportException((Throwable) exc);
        transportException.setIotHubService(TransportException.IotHubService.METHODS);
        throw transportException;
    }
}
