package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import e.a.a.a.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Map;

public class MqttMessaging extends Mqtt {
    public String eventsSubscribeTopic;
    public String inputsSubscribeTopic;
    public boolean isEdgeHub;
    public String moduleId;
    public String publishTopic;

    public MqttMessaging(MqttConnection mqttConnection, String str, IotHubListener iotHubListener, MqttMessageListener mqttMessageListener, String str2, String str3, boolean z, Map<Integer, Message> map) {
        super(mqttConnection, iotHubListener, mqttMessageListener, str2, map);
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Device id cannot be null or empty");
        }
        if (str3 == null || str3.isEmpty()) {
            this.publishTopic = a.a("devices/", str, "/messages/events/");
            this.eventsSubscribeTopic = a.a("devices/", str, "/messages/devicebound/#");
            this.inputsSubscribeTopic = null;
        } else {
            this.publishTopic = "devices/" + str + "/modules/" + str3 + "/messages/events/";
            this.eventsSubscribeTopic = "devices/" + str + "/modules/" + str3 + "/messages/devicebound/#";
            this.inputsSubscribeTopic = "devices/" + str + "/modules/" + str3 + "/inputs/#";
        }
        this.moduleId = str3;
        this.isEdgeHub = z;
    }

    private boolean appendPropertyIfPresent(StringBuilder sb, boolean z, String str, String str2) {
        if (str2 != null) {
            try {
                if (!str2.isEmpty()) {
                    if (z) {
                        sb.append(Mqtt.MESSAGE_PROPERTY_SEPARATOR);
                    }
                    sb.append(str);
                    sb.append(Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR);
                    sb.append(URLEncoder.encode(str2, StandardCharsets.UTF_8.name()));
                    return true;
                }
            } catch (UnsupportedEncodingException e2) {
                throw new TransportException("Could not utf-8 encode the mqtt property", e2);
            }
        }
        return z;
    }

    public void send(Message message) {
        if (message == null || message.getBytes() == null) {
            throw new IllegalArgumentException("Message cannot be null");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.publishTopic);
        boolean appendPropertyIfPresent = appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, appendPropertyIfPresent(sb, false, Mqtt.MESSAGE_ID, message.getMessageId()), Mqtt.CORRELATION_ID, message.getCorrelationId()), Mqtt.USER_ID, message.getUserId()), Mqtt.TO, message.getTo()), Mqtt.OUTPUT_NAME, message.getOutputName()), Mqtt.CONNECTION_DEVICE_ID, message.getConnectionDeviceId()), Mqtt.CONNECTION_MODULE_ID, message.getConnectionModuleId()), Mqtt.CONTENT_ENCODING, message.getContentEncoding()), Mqtt.CONTENT_TYPE, message.getContentType()), Mqtt.CREATION_TIME_UTC, message.getCreationTimeUTCString());
        if (message.isSecurityMessage()) {
            appendPropertyIfPresent = appendPropertyIfPresent(sb, appendPropertyIfPresent, Mqtt.MQTT_SECURITY_INTERFACE_ID, MessageProperty.IOTHUB_SECURITY_INTERFACE_ID_VALUE);
        }
        for (MessageProperty messageProperty : message.getProperties()) {
            appendPropertyIfPresent = appendPropertyIfPresent(sb, appendPropertyIfPresent, messageProperty.getName(), messageProperty.getValue());
        }
        String str = this.moduleId;
        if (str != null && !str.isEmpty()) {
            sb.append("/");
        }
        publish(sb.toString(), message);
    }

    public void start() {
        connect();
        if (!this.isEdgeHub) {
            subscribe(this.eventsSubscribeTopic);
            return;
        }
        String str = this.moduleId;
        if (str != null && !str.isEmpty()) {
            subscribe(this.inputsSubscribeTopic);
        }
    }

    public void stop() {
        disconnect();
    }
}
