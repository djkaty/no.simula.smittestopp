package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.sdk.iot.device.MessageProperty;
import java.util.Map;

public interface HttpsMessage {
    public static final String HTTPS_APP_PROPERTY_PREFIX = "iothub-app-";
    public static final String HTTPS_SYSTEM_PROPERTY_PREFIX = "iothub-";

    byte[] getBody();

    String getContentType();

    MessageProperty[] getProperties();

    Map<String, String> getSystemProperties();
}
