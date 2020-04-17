package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.ProxySettings;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportConnection;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.azure.sdk.iot.device.transport.TransportUtils;
import e.a.a.a.a;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLContext;
import k.f.b;
import k.f.c;

public class MqttIotHubConnection implements IotHubTransportConnection, MqttMessageListener {
    public static final String API_VERSION;
    public static final String SSL_PORT_SUFFIX = ":8883";
    public static final String SSL_PREFIX = "ssl://";
    public static final String WEBSOCKET_QUERY = "?iothub-no-client-cert=true";
    public static final String WEBSOCKET_RAW_PATH = "/$iothub/websocket";
    public static final String WS_SSL_PREFIX = "wss://";
    public static final b log = c.a((Class<?>) MqttIotHubConnection.class);
    public final Object MQTT_CONNECTION_LOCK = new Object();
    public final DeviceClientConfig config;
    public String connectionId;
    public MqttMessaging deviceMessaging;
    public MqttDeviceMethod deviceMethod;
    public MqttDeviceTwin deviceTwin;
    public String iotHubUserName;
    public String iotHubUserPassword;
    public IotHubListener listener;
    public MqttConnection mqttConnection;
    public Map<IotHubTransportMessage, Integer> receivedMessagesToAcknowledge = new ConcurrentHashMap();
    public IotHubConnectionStatus state = IotHubConnectionStatus.DISCONNECTED;
    public Map<Integer, Message> unacknowledgedSentMessages = new ConcurrentHashMap();

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttIotHubConnection$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|(2:1|2)|3|5|6|7|8|9|10|11|12|14) */
        /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0024 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0017 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001d */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.MessageType[] r0 = com.microsoft.azure.sdk.iot.device.MessageType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType = r0
                r1 = 1
                r2 = 4
                com.microsoft.azure.sdk.iot.device.MessageType r3 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_TWIN     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                r3 = 3
                int[] r4 = $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType     // Catch:{ NoSuchFieldError -> 0x0017 }
                com.microsoft.azure.sdk.iot.device.MessageType r5 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_METHODS     // Catch:{ NoSuchFieldError -> 0x0017 }
                r4[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0017 }
            L_0x0017:
                int[] r4 = $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.sdk.iot.device.MessageType r5 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_TELEMETRY     // Catch:{ NoSuchFieldError -> 0x001d }
                r4[r0] = r3     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.sdk.iot.device.MessageType r3 = com.microsoft.azure.sdk.iot.device.MessageType.UNKNOWN     // Catch:{ NoSuchFieldError -> 0x0024 }
                r3 = 0
                r0[r3] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.sdk.iot.device.MessageType r2 = com.microsoft.azure.sdk.iot.device.MessageType.CBS_AUTHENTICATION     // Catch:{ NoSuchFieldError -> 0x002b }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttIotHubConnection.AnonymousClass1.<clinit>():void");
        }
    }

    static {
        StringBuilder a = a.a("?api-version=");
        a.append(TransportUtils.IOTHUB_API_VERSION);
        API_VERSION = a.toString();
    }

    public MqttIotHubConnection(DeviceClientConfig deviceClientConfig) {
        synchronized (this.MQTT_CONNECTION_LOCK) {
            if (deviceClientConfig != null) {
                try {
                    if (deviceClientConfig.getIotHubHostname() == null || deviceClientConfig.getIotHubHostname().length() == 0) {
                        throw new IllegalArgumentException("hostName cannot be null or empty.");
                    } else if (deviceClientConfig.getDeviceId() == null || deviceClientConfig.getDeviceId().length() == 0) {
                        throw new IllegalArgumentException("deviceID cannot be null or empty.");
                    } else if (deviceClientConfig.getIotHubName() == null || deviceClientConfig.getIotHubName().length() == 0) {
                        throw new IllegalArgumentException("hubName cannot be null or empty.");
                    } else {
                        this.config = deviceClientConfig;
                        this.deviceMessaging = null;
                        this.deviceMethod = null;
                        this.deviceTwin = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                throw new IllegalArgumentException("The DeviceClientConfig cannot be null.");
            }
        }
    }

    private IotHubTransportMessage receiveMessage() {
        IotHubTransportMessage receive = this.deviceMethod.receive();
        if (receive != null) {
            log.d("Received MQTT device method message ({})", (Object) receive);
            return receive;
        }
        IotHubTransportMessage receive2 = this.deviceTwin.receive();
        if (receive2 != null) {
            log.d("Received MQTT device twin message ({})", (Object) receive2);
            return receive2;
        }
        IotHubTransportMessage receive3 = this.deviceMessaging.receive();
        if (receive3 == null) {
            return null;
        }
        log.d("Received MQTT device messaging message ({})", (Object) receive3);
        return receive3;
    }

    public void close() {
        if (this.state != IotHubConnectionStatus.DISCONNECTED) {
            log.b("Closing MQTT connection");
            try {
                if (this.deviceMethod != null) {
                    this.deviceMethod.stop();
                    this.deviceMethod = null;
                }
                if (this.deviceTwin != null) {
                    this.deviceTwin.stop();
                    this.deviceTwin = null;
                }
                if (this.deviceMessaging != null) {
                    this.deviceMessaging.stop();
                    this.deviceMessaging = null;
                }
                this.state = IotHubConnectionStatus.DISCONNECTED;
                log.b("Successfully closed MQTT connection");
            } catch (TransportException e2) {
                this.state = IotHubConnectionStatus.DISCONNECTED;
                log.e("Exception encountered while closing MQTT connection, connection state is unknown", (Throwable) e2);
                throw e2;
            }
        }
    }

    public String getConnectionId() {
        return this.connectionId;
    }

    public void onMessageArrived(int i2) {
        IotHubTransportMessage iotHubTransportMessage;
        try {
            iotHubTransportMessage = receiveMessage();
        } catch (TransportException e2) {
            this.listener.onMessageReceived((IotHubTransportMessage) null, new TransportException("Failed to receive message from service", e2));
            log.e("Encountered exception while receiving message over MQTT", (Throwable) e2);
            iotHubTransportMessage = null;
        }
        if (iotHubTransportMessage == null) {
            this.listener.onMessageReceived((IotHubTransportMessage) null, new TransportException("Message sent from service could not be parsed"));
            log.d("Received message that could not be parsed. That message has been ignored.");
            return;
        }
        log.d("MQTT received message so it has been added to the messages to acknowledge list ({})", (Object) iotHubTransportMessage);
        this.receivedMessagesToAcknowledge.put(iotHubTransportMessage, Integer.valueOf(i2));
        int ordinal = iotHubTransportMessage.getMessageType().ordinal();
        if (ordinal == 2) {
            iotHubTransportMessage.setMessageCallback(this.config.getDeviceTelemetryMessageCallback(iotHubTransportMessage.getInputName()));
            iotHubTransportMessage.setMessageCallbackContext(this.config.getDeviceTelemetryMessageContext(iotHubTransportMessage.getInputName()));
        } else if (ordinal == 3) {
            iotHubTransportMessage.setMessageCallback(this.config.getDeviceMethodsMessageCallback());
            iotHubTransportMessage.setMessageCallbackContext(this.config.getDeviceMethodsMessageContext());
        } else if (ordinal == 4) {
            iotHubTransportMessage.setMessageCallback(this.config.getDeviceTwinMessageCallback());
            iotHubTransportMessage.setMessageCallbackContext(this.config.getDeviceTwinMessageContext());
        }
        this.listener.onMessageReceived(iotHubTransportMessage, (Throwable) null);
    }

    public void open(Queue<DeviceClientConfig> queue, ScheduledExecutorService scheduledExecutorService) {
        this.connectionId = UUID.randomUUID().toString();
        if (queue.size() <= 1) {
            synchronized (this.MQTT_CONNECTION_LOCK) {
                if (this.state != IotHubConnectionStatus.CONNECTED) {
                    log.b("Opening MQTT connection...");
                    try {
                        SSLContext sSLContext = this.config.getAuthenticationProvider().getSSLContext();
                        if (this.config.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN) {
                            log.e("MQTT connection will use sas token based auth");
                            this.iotHubUserPassword = this.config.getSasTokenAuthentication().getRenewedSasToken(false, false);
                        } else if (this.config.getAuthenticationType() == DeviceClientConfig.AuthType.X509_CERTIFICATE) {
                            if (!this.config.isUseWebsocket()) {
                                log.e("MQTT connection will use X509 certificate based auth");
                                this.iotHubUserPassword = null;
                            } else {
                                throw new UnsupportedOperationException("X509 authentication is not supported over MQTT_WS");
                            }
                        }
                        String userAgentString = this.config.getProductInfo().getUserAgentString();
                        String str = "DeviceClientType=" + URLEncoder.encode(userAgentString, "UTF-8").replaceAll("\\+", "%20");
                        String deviceId = this.config.getDeviceId();
                        String moduleId = this.config.getModuleId();
                        if (moduleId != null && !moduleId.isEmpty()) {
                            deviceId = deviceId + "/" + moduleId;
                        }
                        String str2 = deviceId;
                        this.iotHubUserName = this.config.getIotHubHostname() + "/" + str2 + "/" + API_VERSION + "&" + str;
                        String gatewayHostname = this.config.getGatewayHostname();
                        if (gatewayHostname == null || gatewayHostname.isEmpty()) {
                            gatewayHostname = this.config.getIotHubHostname();
                        }
                        if (this.config.isUseWebsocket()) {
                            this.mqttConnection = new MqttConnection(WS_SSL_PREFIX + gatewayHostname + "/$iothub/websocket" + WEBSOCKET_QUERY, str2, this.iotHubUserName, this.iotHubUserPassword, sSLContext, this.config.getProxySettings());
                        } else {
                            this.mqttConnection = new MqttConnection(SSL_PREFIX + gatewayHostname + SSL_PORT_SUFFIX, str2, this.iotHubUserName, this.iotHubUserPassword, sSLContext, (ProxySettings) null);
                        }
                        MqttMessaging mqttMessaging = new MqttMessaging(this.mqttConnection, this.config.getDeviceId(), this.listener, this, this.connectionId, this.config.getModuleId(), this.config.getGatewayHostname() != null && !this.config.getGatewayHostname().isEmpty(), this.unacknowledgedSentMessages);
                        this.deviceMessaging = mqttMessaging;
                        this.mqttConnection.setMqttCallback(mqttMessaging);
                        this.deviceMethod = new MqttDeviceMethod(this.mqttConnection, this.connectionId, this.unacknowledgedSentMessages);
                        this.deviceTwin = new MqttDeviceTwin(this.mqttConnection, this.connectionId, this.unacknowledgedSentMessages);
                        this.deviceMessaging.start();
                        this.state = IotHubConnectionStatus.CONNECTED;
                        log.b("MQTT connection opened successfully");
                        this.listener.onConnectionEstablished(this.connectionId);
                    } catch (IOException e2) {
                        log.e("Exception encountered while opening MQTT connection; closing connection", (Throwable) e2);
                        this.state = IotHubConnectionStatus.DISCONNECTED;
                        if (this.deviceMethod != null) {
                            this.deviceMethod.stop();
                        }
                        if (this.deviceTwin != null) {
                            this.deviceTwin.stop();
                        }
                        if (this.deviceMessaging != null) {
                            this.deviceMessaging.stop();
                        }
                        throw new TransportException((Throwable) e2);
                    }
                }
            }
        } else {
            throw new UnsupportedOperationException("Mqtt does not support Multiplexing");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0070, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.microsoft.azure.sdk.iot.device.IotHubStatusCode sendMessage(com.microsoft.azure.sdk.iot.device.Message r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.MQTT_CONNECTION_LOCK
            monitor-enter(r0)
            if (r5 == 0) goto L_0x0079
            byte[] r1 = r5.getBytes()     // Catch:{ all -> 0x007d }
            if (r1 == 0) goto L_0x0079
            com.microsoft.azure.sdk.iot.device.MessageType r1 = r5.getMessageType()     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.MessageType r2 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_TWIN     // Catch:{ all -> 0x007d }
            if (r1 == r2) goto L_0x0023
            com.microsoft.azure.sdk.iot.device.MessageType r1 = r5.getMessageType()     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.MessageType r2 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_METHODS     // Catch:{ all -> 0x007d }
            if (r1 == r2) goto L_0x0023
            byte[] r1 = r5.getBytes()     // Catch:{ all -> 0x007d }
            int r1 = r1.length     // Catch:{ all -> 0x007d }
            if (r1 != 0) goto L_0x0023
            goto L_0x0079
        L_0x0023:
            com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus r1 = r4.state     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus r2 = com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus.DISCONNECTED     // Catch:{ all -> 0x007d }
            if (r1 == r2) goto L_0x0071
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r1 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK_EMPTY     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.MessageType r2 = r5.getMessageType()     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.MessageType r3 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_METHODS     // Catch:{ all -> 0x007d }
            if (r2 != r3) goto L_0x0047
            com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceMethod r2 = r4.deviceMethod     // Catch:{ all -> 0x007d }
            r2.start()     // Catch:{ all -> 0x007d }
            k.f.b r2 = log     // Catch:{ all -> 0x007d }
            java.lang.String r3 = "Sending MQTT device method message ({})"
            r2.d((java.lang.String) r3, (java.lang.Object) r5)     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceMethod r2 = r4.deviceMethod     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage r5 = (com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage) r5     // Catch:{ all -> 0x007d }
            r2.send(r5)     // Catch:{ all -> 0x007d }
            goto L_0x006f
        L_0x0047:
            com.microsoft.azure.sdk.iot.device.MessageType r2 = r5.getMessageType()     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.MessageType r3 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_TWIN     // Catch:{ all -> 0x007d }
            if (r2 != r3) goto L_0x0063
            com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceTwin r2 = r4.deviceTwin     // Catch:{ all -> 0x007d }
            r2.start()     // Catch:{ all -> 0x007d }
            k.f.b r2 = log     // Catch:{ all -> 0x007d }
            java.lang.String r3 = "Sending MQTT device twin message ({})"
            r2.d((java.lang.String) r3, (java.lang.Object) r5)     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttDeviceTwin r2 = r4.deviceTwin     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage r5 = (com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage) r5     // Catch:{ all -> 0x007d }
            r2.send(r5)     // Catch:{ all -> 0x007d }
            goto L_0x006f
        L_0x0063:
            k.f.b r2 = log     // Catch:{ all -> 0x007d }
            java.lang.String r3 = "Sending MQTT device telemetry message ({})"
            r2.d((java.lang.String) r3, (java.lang.Object) r5)     // Catch:{ all -> 0x007d }
            com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttMessaging r2 = r4.deviceMessaging     // Catch:{ all -> 0x007d }
            r2.send(r5)     // Catch:{ all -> 0x007d }
        L_0x006f:
            monitor-exit(r0)     // Catch:{ all -> 0x007d }
            return r1
        L_0x0071:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch:{ all -> 0x007d }
            java.lang.String r1 = "Cannot send event using a closed MQTT connection"
            r5.<init>(r1)     // Catch:{ all -> 0x007d }
            throw r5     // Catch:{ all -> 0x007d }
        L_0x0079:
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r5 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.BAD_FORMAT     // Catch:{ all -> 0x007d }
            monitor-exit(r0)     // Catch:{ all -> 0x007d }
            return r5
        L_0x007d:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x007d }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttIotHubConnection.sendMessage(com.microsoft.azure.sdk.iot.device.Message):com.microsoft.azure.sdk.iot.device.IotHubStatusCode");
    }

    public boolean sendMessageResult(Message message, IotHubMessageResult iotHubMessageResult) {
        boolean z;
        if (message == null || iotHubMessageResult == null) {
            throw new TransportException((Throwable) new IllegalArgumentException("message and result must be non-null"));
        }
        log.d("Checking if MQTT layer can acknowledge the received message ({})", (Object) message);
        if (this.receivedMessagesToAcknowledge.containsKey(message)) {
            int intValue = this.receivedMessagesToAcknowledge.get(message).intValue();
            log.d("Sending MQTT ACK for a received message ({})", (Object) message);
            if (message.getMessageType() == MessageType.DEVICE_METHODS) {
                this.deviceMethod.start();
                z = this.deviceMethod.sendMessageAcknowledgement(intValue);
            } else if (message.getMessageType() == MessageType.DEVICE_TWIN) {
                this.deviceTwin.start();
                z = this.deviceTwin.sendMessageAcknowledgement(intValue);
            } else {
                z = this.deviceMessaging.sendMessageAcknowledgement(intValue);
            }
            if (z) {
                log.d("MQTT ACK was sent for a received message so it has been removed from the messages to acknowledge list ({})", (Object) message);
                this.receivedMessagesToAcknowledge.remove(message);
            }
            return z;
        }
        TransportException transportException = new TransportException((Throwable) new IllegalArgumentException("Provided message cannot be acknowledged because it was already acknowledged or was never received from service"));
        log.d("Mqtt layer could not acknowledge received message because it has no mapping to an outstanding mqtt message id ({})", message, transportException);
        throw transportException;
    }

    public void setListener(IotHubListener iotHubListener) {
        if (iotHubListener != null) {
            this.listener = iotHubListener;
            return;
        }
        throw new IllegalArgumentException("listener cannot be null");
    }
}
