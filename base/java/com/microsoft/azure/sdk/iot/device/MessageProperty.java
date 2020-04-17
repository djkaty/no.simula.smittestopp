package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceMethods;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsSingleMessage;
import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import k.f.b;
import k.f.c;

public final class MessageProperty {
    public static final String CONNECTION_DEVICE_ID = "iothub-connection-device-id";
    public static final String CONNECTION_MODULE_ID = "iothub-connection-module-id";
    public static final String IOTHUB_CONTENT_ENCODING = "iothub-contentencoding";
    public static final String IOTHUB_CONTENT_TYPE = "iothub-contenttype";
    public static final String IOTHUB_CREATION_TIME_UTC = "iothub-creation-time-utc";
    public static final String IOTHUB_SECURITY_INTERFACE_ID = "iothub-interface-id";
    public static final String IOTHUB_SECURITY_INTERFACE_ID_VALUE = "urn:azureiot:Security:SecurityAgent:1";
    public static final String OUTPUT_NAME_PROPERTY = "iothub-outputname";
    public static final Set<String> RESERVED_PROPERTY_NAMES;
    public static final b log = c.a((Class<?>) MessageProperty.class);
    public String name;
    public String value;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("iothub-enqueuedtime");
        hashSet.add("iothub-messagelocktoken");
        hashSet.add("iothub-sequencenumber");
        hashSet.add("iothub-operation");
        hashSet.add("iothub-partition-key");
        hashSet.add(Mqtt.IOTHUB_ACK);
        hashSet.add(CONNECTION_DEVICE_ID);
        hashSet.add("iothub-connection-auth-method");
        hashSet.add("iothub-connection-auth-generation-id");
        hashSet.add(HttpsSingleMessage.MESSAGE_ID_KEY);
        hashSet.add(HttpsSingleMessage.CORRELATION_ID_KEY);
        hashSet.add(HttpsSingleMessage.USER_ID_KEY);
        hashSet.add("iothub-to");
        hashSet.add("iothub-content-type");
        hashSet.add("iothub-contenttype");
        hashSet.add("iothub-content-encoding");
        hashSet.add("iothub-contentencoding");
        hashSet.add("iothub-absolute-expiry-time");
        hashSet.add(AmqpsDeviceMethods.APPLICATION_PROPERTY_KEY_IOTHUB_METHOD_NAME);
        hashSet.add("connectionDeviceId");
        hashSet.add("connectionModuleId");
        hashSet.add(OUTPUT_NAME_PROPERTY);
        hashSet.add("iothub-inputname");
        hashSet.add(CONNECTION_DEVICE_ID);
        hashSet.add(CONNECTION_MODULE_ID);
        RESERVED_PROPERTY_NAMES = Collections.unmodifiableSet(hashSet);
    }

    public MessageProperty(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Property argument 'name' cannot be null.");
        } else if (str2 == null) {
            throw new IllegalArgumentException("Property argument 'value' cannot be null.");
        } else if (!usesValidChars(str)) {
            throw new IllegalArgumentException(String.format("%s is not a valid IoT Hub message property name. %n", new Object[]{str}));
        } else if (RESERVED_PROPERTY_NAMES.contains(str)) {
            throw new IllegalArgumentException(String.format("%s is a reserved IoT Hub message property name.%n", new Object[]{str}));
        } else if (usesValidChars(str2)) {
            this.name = str;
            this.value = str2;
        } else {
            throw new IllegalArgumentException(String.format("%s is not a valid IoT Hub message property value.%n", new Object[]{str2}));
        }
    }

    public static boolean isValidAppProperty(String str, String str2) {
        return !RESERVED_PROPERTY_NAMES.contains(str) && usesValidChars(str) && usesValidChars(str2);
    }

    public static boolean isValidSystemProperty(String str, String str2) {
        return RESERVED_PROPERTY_NAMES.contains(str) && usesValidChars(str) && usesValidChars(str2);
    }

    public static boolean usesValidChars(String str) {
        return str.matches("\\p{ASCII}*");
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public boolean hasSameName(String str) {
        return getName().equalsIgnoreCase(str);
    }

    public MessageProperty() {
        this.name = null;
        this.value = null;
    }
}
