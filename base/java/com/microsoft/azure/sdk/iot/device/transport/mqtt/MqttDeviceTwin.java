package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.IotHubServiceException;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.identity.client.internal.MsalUtils;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import k.f.b;
import k.f.c;

public class MqttDeviceTwin extends Mqtt {
    public static final b log = c.a((Class<?>) MqttDeviceTwin.class);
    public final String AND = "&";
    public final String BACKSLASH = "/";
    public final String DESIRED = "desired";
    public final int DESIRED_TOKEN = 4;
    public final String GET = "$iothub/twin/GET";
    public final String PATCH = "$iothub/twin/PATCH";
    public final int PATCH_TOKEN = 2;
    public final int PATCH_VERSION_TOKEN = 5;
    public final String POUND = "#";
    public final String PROPERTIES = "properties";
    public final int PROPERTIES_TOKEN = 3;
    public final String QUESTION = MsalUtils.QUERY_STRING_SYMBOL;
    public final String REPORTED = "reported";
    public final int REQID_TOKEN = 4;
    public final String REQ_ID = "?$rid=";
    public final String RES = "$iothub/twin/res";
    public final int RES_TOKEN = 2;
    public final int STATUS_TOKEN = 3;
    public final String TWIN = "$iothub/twin";
    public final String VERSION = "$version=";
    public final int VERSION_TOKEN = 4;
    public boolean isStarted = false;
    public final Map<String, DeviceOperations> requestMap = new HashMap();
    public String subscribeTopic = "$iothub/twin/res/#";

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceTwin$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0016 */
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
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x001e }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST     // Catch:{ NoSuchFieldError -> 0x001e }
                r1 = 4
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001e }
            L_0x001e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceTwin.AnonymousClass1.<clinit>():void");
        }
    }

    public MqttDeviceTwin(MqttConnection mqttConnection, String str, Map<Integer, Message> map) {
        super(mqttConnection, (IotHubListener) null, (MqttMessageListener) null, str, map);
    }

    private String buildTopic(IotHubTransportMessage iotHubTransportMessage) {
        StringBuilder sb = new StringBuilder();
        int ordinal = iotHubTransportMessage.getDeviceOperationType().ordinal();
        if (ordinal == 0) {
            sb.append("$iothub/twin/GET");
            String requestId = iotHubTransportMessage.getRequestId();
            if (requestId == null || requestId.length() <= 0) {
                throw new IllegalArgumentException("Request Id is Mandatory");
            }
            sb.append("/");
            sb.append("?$rid=");
            sb.append(requestId);
        } else if (ordinal == 2) {
            sb.append("$iothub/twin/PATCH");
            sb.append("/");
            sb.append("properties");
            sb.append("/");
            sb.append("reported");
            String requestId2 = iotHubTransportMessage.getRequestId();
            if (requestId2 == null || requestId2.length() <= 0) {
                throw new IllegalArgumentException("Request Id is Mandatory");
            }
            sb.append("/");
            sb.append("?$rid=");
            sb.append(iotHubTransportMessage.getRequestId());
            String version = iotHubTransportMessage.getVersion();
            if (version != null) {
                sb.append("&");
                sb.append("$version=");
                sb.append(version);
            }
        } else if (ordinal == 4) {
            sb.append("$iothub/twin/PATCH");
            sb.append("/");
            sb.append("properties");
            sb.append("/");
            sb.append("desired");
            String version2 = iotHubTransportMessage.getVersion();
            if (version2 != null) {
                sb.append("/");
                sb.append(MsalUtils.QUERY_STRING_SYMBOL);
                sb.append("$version=");
                sb.append(version2);
            }
        } else {
            StringBuilder a = a.a("Device Twin Operation is not supported - ");
            a.append(iotHubTransportMessage.getDeviceOperationType());
            throw new UnsupportedOperationException(a.toString());
        }
        return sb.toString();
    }

    private String getRequestId(String str) {
        if (!str.contains("?$rid=")) {
            return null;
        }
        int indexOf = str.indexOf("?$rid=") + 6;
        int length = str.length();
        if (str.contains("$version=")) {
            length = str.indexOf("$version=") - 1;
        }
        return str.substring(indexOf, length);
    }

    private String getStatus(String str) {
        if (str != null && str.matches("\\d{3}")) {
            return str;
        }
        throwDeviceTwinTransportException("Status could not be parsed");
        return null;
    }

    private String getVersion(String str) {
        if (str.contains("$version=")) {
            return str.substring(str.indexOf("$version=") + 9, str.length());
        }
        return null;
    }

    private void throwDeviceTwinTransportException(String str) {
        TransportException transportException = new TransportException(str);
        transportException.setIotHubService(TransportException.IotHubService.TWIN);
        throw transportException;
    }

    public IotHubTransportMessage receive() {
        IotHubTransportMessage iotHubTransportMessage;
        String key;
        IotHubTransportMessage iotHubTransportMessage2;
        synchronized (this.incomingLock) {
            iotHubTransportMessage = null;
            k.a.a.b.e.b<String, byte[]> peekMessage = peekMessage();
            if (peekMessage != null && (key = peekMessage.getKey()) != null && key.length() > 0 && key.length() > 12 && key.startsWith("$iothub/twin")) {
                byte[] value = peekMessage.getValue();
                this.allReceivedMessages.poll();
                if (key.length() > 16 && key.startsWith("$iothub/twin/res")) {
                    String[] split = key.split(Pattern.quote("/"));
                    if (value == null || value.length <= 0) {
                        iotHubTransportMessage2 = new IotHubTransportMessage(new byte[0], MessageType.DEVICE_TWIN);
                        iotHubTransportMessage2.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_UNKNOWN);
                    } else {
                        IotHubTransportMessage iotHubTransportMessage3 = new IotHubTransportMessage(value, MessageType.DEVICE_TWIN);
                        iotHubTransportMessage3.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_UNKNOWN);
                        iotHubTransportMessage2 = iotHubTransportMessage3;
                    }
                    if (split.length > 3) {
                        iotHubTransportMessage2.setStatus(getStatus(split[3]));
                    } else {
                        throwDeviceTwinTransportException((Exception) new IotHubServiceException("Message received without status"));
                    }
                    if (split.length > 4) {
                        String requestId = getRequestId(split[4]);
                        iotHubTransportMessage2.setRequestId(requestId);
                        if (this.requestMap.containsKey(requestId)) {
                            int ordinal = this.requestMap.remove(requestId).ordinal();
                            if (ordinal == 0) {
                                iotHubTransportMessage2.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_GET_RESPONSE);
                            } else if (ordinal != 2) {
                                iotHubTransportMessage2.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_UNKNOWN);
                            } else {
                                iotHubTransportMessage2.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_RESPONSE);
                            }
                        } else {
                            throwDeviceTwinTransportException((Exception) new UnsupportedOperationException("Request Id is mandatory"));
                        }
                    }
                    if (split.length > 4) {
                        iotHubTransportMessage2.setVersion(getVersion(split[4]));
                    }
                    iotHubTransportMessage = iotHubTransportMessage2;
                } else if (key.length() <= 18 || !key.startsWith("$iothub/twin/PATCH")) {
                    throwDeviceTwinTransportException((Exception) new UnsupportedOperationException());
                } else if (key.startsWith("$iothub/twin/PATCH/properties/desired")) {
                    if (value != null) {
                        iotHubTransportMessage = new IotHubTransportMessage(value, MessageType.DEVICE_TWIN);
                        iotHubTransportMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE);
                    } else {
                        throwDeviceTwinTransportException((Exception) new UnsupportedOperationException());
                    }
                    String[] split2 = key.split(Pattern.quote("/"));
                    if (split2.length > 5 && iotHubTransportMessage != null) {
                        iotHubTransportMessage.setVersion(getVersion(split2[5]));
                    }
                } else {
                    throwDeviceTwinTransportException((Exception) new UnsupportedOperationException());
                }
            }
        }
        return iotHubTransportMessage;
    }

    public void send(IotHubTransportMessage iotHubTransportMessage) {
        if (iotHubTransportMessage == null || iotHubTransportMessage.getBytes() == null) {
            throw new IllegalArgumentException("Message cannot be null");
        } else if (!this.isStarted) {
            throw new IllegalStateException("Start device twin before using it");
        } else if (iotHubTransportMessage.getMessageType() == MessageType.DEVICE_TWIN) {
            String buildTopic = buildTopic(iotHubTransportMessage);
            this.requestMap.put(iotHubTransportMessage.getRequestId(), iotHubTransportMessage.getDeviceOperationType());
            if (iotHubTransportMessage.getDeviceOperationType() == DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST) {
                subscribe("$iothub/twin/PATCH/properties/desired/#");
            } else {
                publish(buildTopic, iotHubTransportMessage);
            }
        }
    }

    public void start() {
        if (!this.isStarted) {
            subscribe(this.subscribeTopic);
            this.isStarted = true;
        }
    }

    public void stop() {
        this.isStarted = false;
        if (!this.requestMap.isEmpty()) {
            log.d("Pending {} responses from IotHub yet unsubscribed", (Object) Integer.valueOf(this.requestMap.size()));
        }
    }

    private void throwDeviceTwinTransportException(Exception exc) {
        TransportException transportException = new TransportException((Throwable) exc);
        transportException.setIotHubService(TransportException.IotHubService.TWIN);
        throw transportException;
    }
}
