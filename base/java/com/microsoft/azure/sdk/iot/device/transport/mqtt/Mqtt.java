package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.azure.sdk.iot.device.transport.ReconnectionNotifier;
import com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions.PahoExceptionTranslator;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import k.c.a.a.a.a;
import k.c.a.a.a.e;
import k.c.a.a.a.f;
import k.c.a.a.a.g;
import k.c.a.a.a.k;
import k.c.a.a.a.l;
import k.c.a.a.a.q;
import k.f.b;
import k.f.c;

public abstract class Mqtt implements g {
    public static final String ABSOLUTE_EXPIRY_TIME = "$.exp";
    public static final String CONNECTION_DEVICE_ID = "$.cdid";
    public static final String CONNECTION_MODULE_ID = "$.cmid";
    public static final int CONNECTION_TIMEOUT = 60000;
    public static final String CONTENT_ENCODING = "$.ce";
    public static final String CONTENT_TYPE = "$.ct";
    public static final String CORRELATION_ID = "$.cid";
    public static final String CREATION_TIME_UTC = "$.ctime";
    public static final int DISCONNECTION_TIMEOUT = 60000;
    public static final String INPUTS_PATH_STRING = "inputs";
    public static final String IOTHUB_ACK = "iothub-ack";
    public static final String MESSAGE_ID = "$.mid";
    public static final char MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR = '=';
    public static final char MESSAGE_PROPERTY_SEPARATOR = '&';
    public static final char MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_DECODED = '$';
    public static final String MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_ENCODED = "%24";
    public static final String MODULES_PATH_STRING = "modules";
    public static final String MQTT_SECURITY_INTERFACE_ID = "$.ifid";
    public static final String OUTPUT_NAME = "$.on";
    public static final int PROPERTY_KEY_INDEX = 0;
    public static final int PROPERTY_VALUE_INDEX = 1;
    public static final String TO = "$.to";
    public static final String USER_ID = "$.uid";
    public static final b log = c.a((Class<?>) Mqtt.class);
    public ConcurrentLinkedQueue<k.a.a.b.e.b<String, byte[]>> allReceivedMessages;
    public String connectionId;
    public final Object incomingLock;
    public IotHubListener listener;
    public MqttMessageListener messageListener;
    public MqttConnection mqttConnection;
    public final Object publishLock;
    public final Object stateLock;
    public Map<Integer, Message> unacknowledgedSentMessages;
    public boolean userSpecifiedSASTokenExpiredOnRetry = false;

    public Mqtt(MqttConnection mqttConnection2, IotHubListener iotHubListener, MqttMessageListener mqttMessageListener, String str, Map<Integer, Message> map) {
        if (mqttConnection2 != null) {
            this.mqttConnection = mqttConnection2;
            this.allReceivedMessages = mqttConnection2.getAllReceivedMessages();
            this.stateLock = mqttConnection2.getMqttLock();
            this.incomingLock = new Object();
            this.publishLock = new Object();
            this.userSpecifiedSASTokenExpiredOnRetry = false;
            this.listener = iotHubListener;
            this.messageListener = mqttMessageListener;
            this.connectionId = str;
            this.unacknowledgedSentMessages = map;
            return;
        }
        throw new IllegalArgumentException("Mqtt connection info cannot be null");
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0052, code lost:
        if (r5.equals(MESSAGE_ID) != false) goto L_0x009d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void assignPropertiesToMessage(com.microsoft.azure.sdk.iot.device.Message r8, java.lang.String r9) {
        /*
            r7 = this;
            r0 = 38
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.String[] r9 = r9.split(r0)
            int r0 = r9.length
            r1 = 0
            r2 = 0
        L_0x000d:
            if (r2 >= r0) goto L_0x00ce
            r3 = r9[r2]
            java.lang.String r4 = "="
            boolean r5 = r3.contains(r4)
            if (r5 == 0) goto L_0x00c2
            java.lang.String[] r5 = r3.split(r4)
            r5 = r5[r1]
            java.lang.String[] r3 = r3.split(r4)
            r4 = 1
            r3 = r3[r4]
            java.nio.charset.Charset r6 = java.nio.charset.StandardCharsets.UTF_8     // Catch:{ UnsupportedEncodingException -> 0x00bb }
            java.lang.String r6 = r6.name()     // Catch:{ UnsupportedEncodingException -> 0x00bb }
            java.lang.String r5 = java.net.URLDecoder.decode(r5, r6)     // Catch:{ UnsupportedEncodingException -> 0x00bb }
            java.nio.charset.Charset r6 = java.nio.charset.StandardCharsets.UTF_8     // Catch:{ UnsupportedEncodingException -> 0x00bb }
            java.lang.String r6 = r6.name()     // Catch:{ UnsupportedEncodingException -> 0x00bb }
            java.lang.String r3 = java.net.URLDecoder.decode(r3, r6)     // Catch:{ UnsupportedEncodingException -> 0x00bb }
            int r6 = r5.hashCode()
            switch(r6) {
                case -662840349: goto L_0x0092;
                case 1119852: goto L_0x0088;
                case 1119867: goto L_0x007e;
                case 1120233: goto L_0x0074;
                case 1120389: goto L_0x006a;
                case 34715636: goto L_0x0060;
                case 34718035: goto L_0x0055;
                case 34725246: goto L_0x004c;
                case 34732934: goto L_0x0042;
                default: goto L_0x0041;
            }
        L_0x0041:
            goto L_0x009c
        L_0x0042:
            java.lang.String r4 = "$.uid"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 4
            goto L_0x009d
        L_0x004c:
            java.lang.String r6 = "$.mid"
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto L_0x009c
            goto L_0x009d
        L_0x0055:
            java.lang.String r4 = "$.exp"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 8
            goto L_0x009d
        L_0x0060:
            java.lang.String r4 = "$.cid"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 3
            goto L_0x009d
        L_0x006a:
            java.lang.String r4 = "$.to"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 0
            goto L_0x009d
        L_0x0074:
            java.lang.String r4 = "$.on"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 5
            goto L_0x009d
        L_0x007e:
            java.lang.String r4 = "$.ct"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 7
            goto L_0x009d
        L_0x0088:
            java.lang.String r4 = "$.ce"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 6
            goto L_0x009d
        L_0x0092:
            java.lang.String r4 = "iothub-ack"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x009c
            r4 = 2
            goto L_0x009d
        L_0x009c:
            r4 = -1
        L_0x009d:
            switch(r4) {
                case 0: goto L_0x00b7;
                case 1: goto L_0x00b4;
                case 2: goto L_0x00b7;
                case 3: goto L_0x00b0;
                case 4: goto L_0x00b7;
                case 5: goto L_0x00ac;
                case 6: goto L_0x00a8;
                case 7: goto L_0x00a4;
                case 8: goto L_0x00b7;
                default: goto L_0x00a0;
            }
        L_0x00a0:
            r8.setProperty(r5, r3)
            goto L_0x00b7
        L_0x00a4:
            r8.setContentType(r3)
            goto L_0x00b7
        L_0x00a8:
            r8.setContentEncoding(r3)
            goto L_0x00b7
        L_0x00ac:
            r8.setOutputName(r3)
            goto L_0x00b7
        L_0x00b0:
            r8.setCorrelationId(r3)
            goto L_0x00b7
        L_0x00b4:
            r8.setMessageId(r3)
        L_0x00b7:
            int r2 = r2 + 1
            goto L_0x000d
        L_0x00bb:
            r8 = move-exception
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r8)
            throw r9
        L_0x00c2:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Unexpected property string provided. Expected '=' symbol between key and value of the property in string: "
            java.lang.String r9 = e.a.a.a.a.b(r9, r3)
            r8.<init>(r9)
            throw r8
        L_0x00ce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt.assignPropertiesToMessage(com.microsoft.azure.sdk.iot.device.Message, java.lang.String):void");
    }

    private IotHubTransportMessage constructMessage(byte[] bArr, String str) {
        IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(bArr, MessageType.DEVICE_TELEMETRY);
        int indexOf = str.indexOf(MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_ENCODED);
        if (indexOf != -1) {
            assignPropertiesToMessage(iotHubTransportMessage, str.substring(indexOf));
            String[] split = str.substring(0, indexOf).split("/");
            if (split.length > 2 && split[2].equals(MODULES_PATH_STRING)) {
                iotHubTransportMessage.setConnectionModuleId(split[3]);
            }
            if (split.length > 4 && split[4].equals(INPUTS_PATH_STRING)) {
                iotHubTransportMessage.setInputName(split[5]);
            }
        }
        return iotHubTransportMessage;
    }

    public void connect() {
        synchronized (this.stateLock) {
            try {
                if (!this.mqttConnection.getMqttAsyncClient().b()) {
                    log.b("Sending MQTT CONNECT packet...");
                    ((q) this.mqttConnection.getMqttAsyncClient().a(this.mqttConnection.getConnectionOptions(), (Object) null, (a) null)).a.a(60000);
                    log.b("Sent MQTT CONNECT packet was acknowledged");
                }
            } catch (k e2) {
                log.b("Exception encountered while sending MQTT CONNECT packet", (Throwable) e2);
                disconnect();
                throw PahoExceptionTranslator.convertToMqttException(e2, "Unable to establish MQTT connection");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void connectionLost(Throwable th) {
        log.b("Mqtt connection lost", th);
        try {
            if (this.mqttConnection != null) {
                disconnect();
            }
            e = null;
        } catch (TransportException e2) {
            e = e2;
        }
        if (this.listener != null) {
            if (e == null) {
                if (th instanceof k) {
                    e = PahoExceptionTranslator.convertToMqttException((k) th, "Mqtt connection lost");
                    log.c("Mqtt connection loss interpreted into transport exception", e);
                } else {
                    e = new TransportException(th);
                }
            }
            ReconnectionNotifier.notifyDisconnectAsync(e, this.listener, this.connectionId);
        }
    }

    public void deliveryComplete(k.c.a.a.a.c cVar) {
        Message message;
        DeviceOperations deviceOperationType;
        log.d("Mqtt message with message id {} was acknowledge by service", (Object) Integer.valueOf(((q) cVar).a.n));
        synchronized (this.publishLock) {
            if (this.listener == null || !this.unacknowledgedSentMessages.containsKey(Integer.valueOf(((q) cVar).a.n))) {
                log.c("Mqtt message with message id {} that was acknowledge by service was not sent by this client, will be ignored", (Object) Integer.valueOf(((q) cVar).a.n));
                message = null;
            } else {
                log.d("Mqtt message with message id {} that was acknowledge by service was sent by this client", (Object) Integer.valueOf(((q) cVar).a.n));
                message = this.unacknowledgedSentMessages.remove(Integer.valueOf(((q) cVar).a.n));
            }
        }
        if (!(message instanceof IotHubTransportMessage) || !((deviceOperationType = ((IotHubTransportMessage) message).getDeviceOperationType()) == DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST || deviceOperationType == DeviceOperations.DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST || deviceOperationType == DeviceOperations.DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST)) {
            this.listener.onMessageSent(message, (Throwable) null);
        }
    }

    public void disconnect() {
        try {
            if (this.mqttConnection.isConnected()) {
                log.b("Sending MQTT DISCONNECT packet");
                e disconnect = this.mqttConnection.disconnect();
                if (disconnect != null) {
                    ((q) disconnect).a.a(60000);
                }
                log.b("Sent MQTT DISCONNECT packet was acknowledged");
            }
            this.mqttConnection.close();
            this.mqttConnection.setMqttAsyncClient((f) null);
        } catch (k e2) {
            log.b("Exception encountered while sending MQTT DISCONNECT packet", (Throwable) e2);
            throw PahoExceptionTranslator.convertToMqttException(e2, "Unable to disconnect");
        }
    }

    public void messageArrived(String str, l lVar) {
        log.e("Mqtt message arrived on topic {} with mqtt message id {}", str, Integer.valueOf(lVar.f2196f));
        this.mqttConnection.getAllReceivedMessages().add(new k.a.a.b.e.a(str, lVar.b));
        MqttMessageListener mqttMessageListener = this.messageListener;
        if (mqttMessageListener != null) {
            mqttMessageListener.onMessageArrived(lVar.f2196f);
        }
    }

    public k.a.a.b.e.b<String, byte[]> peekMessage() {
        return this.allReceivedMessages.peek();
    }

    public void publish(String str, Message message) {
        try {
            if (this.mqttConnection.getMqttAsyncClient() == null) {
                TransportException transportException = new TransportException("Need to open first!");
                transportException.setRetryable(true);
                throw transportException;
            } else if (this.userSpecifiedSASTokenExpiredOnRetry) {
                throw new TransportException("Cannot publish when user supplied SAS token has expired");
            } else if (!this.mqttConnection.getMqttAsyncClient().b()) {
                TransportException transportException2 = new TransportException("Cannot publish when mqtt client is disconnected");
                transportException2.setRetryable(true);
                throw transportException2;
            } else if (message == null || str == null || str.length() == 0 || message.getBytes() == null) {
                throw new IllegalArgumentException("Cannot publish on null or empty publish topic");
            } else {
                byte[] bytes = message.getBytes();
                while (this.mqttConnection.getMqttAsyncClient().A.m.c().length >= 10) {
                    Thread.sleep(10);
                    if (this.mqttConnection.getMqttAsyncClient() == null) {
                        TransportException transportException3 = new TransportException("Connection was lost while waiting for mqtt deliveries to finish");
                        transportException3.setRetryable(true);
                        throw transportException3;
                    } else if (!this.mqttConnection.getMqttAsyncClient().b()) {
                        TransportException transportException4 = new TransportException("Cannot publish when mqtt client is holding 10 tokens and is disconnected");
                        transportException4.setRetryable(true);
                        throw transportException4;
                    }
                }
                l lVar = bytes.length == 0 ? new l() : new l(bytes);
                lVar.a(1);
                synchronized (this.publishLock) {
                    log.e("Publishing message ({}) to MQTT topic {}", message, str);
                    k.c.a.a.a.c a = this.mqttConnection.getMqttAsyncClient().a(str, lVar);
                    this.unacknowledgedSentMessages.put(Integer.valueOf(((q) a).a.n), message);
                    log.b("Message published to MQTT topic {}. Mqtt message id {} added to list of messages to wait for acknowledgement ({})", str, Integer.valueOf(((q) a).a.n), message);
                }
            }
        } catch (k e2) {
            log.c("Message could not be published to MQTT topic {} ({})", str, message, e2);
            throw PahoExceptionTranslator.convertToMqttException(e2, "Unable to publish message on topic : " + str);
        } catch (InterruptedException e3) {
            throw new TransportException(e.a.a.a.a.b("Interrupted, Unable to publish message on topic : ", str), e3);
        }
    }

    public IotHubTransportMessage receive() {
        synchronized (this.incomingLock) {
            if (this.mqttConnection != null) {
                k.a.a.b.e.b<String, byte[]> peekMessage = peekMessage();
                if (peekMessage == null) {
                    return null;
                }
                String key = peekMessage.getKey();
                if (key == null) {
                    return null;
                }
                byte[] value = peekMessage.getValue();
                if (value != null) {
                    this.allReceivedMessages.poll();
                    IotHubTransportMessage constructMessage = constructMessage(value, key);
                    return constructMessage;
                }
                throw new TransportException("Data cannot be null when topic is non-null");
            }
            throw new TransportException((Throwable) new IllegalArgumentException("Mqtt client should be initialised at least once before using it"));
        }
    }

    public boolean sendMessageAcknowledgement(int i2) {
        log.d("Sending mqtt ack for received message with mqtt message id {}", (Object) Integer.valueOf(i2));
        return this.mqttConnection.sendMessageAcknowledgement(i2);
    }

    public void subscribe(String str) {
        synchronized (this.stateLock) {
            if (str != null) {
                try {
                    if (this.userSpecifiedSASTokenExpiredOnRetry) {
                        throw new TransportException("Cannot subscribe when user supplied SAS token has expired");
                    } else if (this.mqttConnection.getMqttAsyncClient().b()) {
                        log.e("Sending MQTT SUBSCRIBE packet for topic {}", (Object) str);
                        ((q) this.mqttConnection.getMqttAsyncClient().a(str, 1)).a.a(15000);
                        log.e("Sent MQTT SUBSCRIBE packet for topic {} was acknowledged", (Object) str);
                    } else {
                        TransportException transportException = new TransportException("Cannot subscribe when mqtt client is disconnected");
                        transportException.setRetryable(true);
                        throw transportException;
                    }
                } catch (k e2) {
                    log.b("Encountered exception while sending MQTT SUBSCRIBE packet for topic {}", str, e2);
                    throw PahoExceptionTranslator.convertToMqttException(e2, "Unable to subscribe to topic :" + str);
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                throw new IllegalArgumentException("Topic cannot be null");
            }
        }
    }
}
