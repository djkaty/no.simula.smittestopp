package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class HttpsSingleMessage implements HttpsMessage {
    public static final String CONTENT_ENCODING_KEY = "iothub-contentencoding";
    public static final String CONTENT_TYPE_KEY = "iothub-contenttype";
    public static final String CORRELATION_ID_KEY = "iothub-correlationid";
    public static final String HTTPS_SINGLE_JSON_MESSAGE_CONTENT_TYPE = "application/json;charset=utf-8";
    public static final String HTTPS_SINGLE_MESSAGE_CONTENT_TYPE = "binary/octet-stream";
    public static final String MESSAGE_ID_KEY = "iothub-messageid";
    public static final String TO_KEY = "iothub-to";
    public static final String USER_ID_KEY = "iothub-userid";
    public boolean base64Encoded;
    public byte[] body;
    public String contentType;
    public MessageProperty[] properties;
    public Map<String, String> systemProperties;

    public static String httpsAppPropertyToAppProperty(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.startsWith("iothub-app-") ? lowerCase.substring(11) : lowerCase;
    }

    public static boolean isValidHttpsAppProperty(String str, String str2) {
        return MessageProperty.isValidAppProperty(str.toLowerCase(), str2) && str.toLowerCase().startsWith("iothub-app-");
    }

    public static boolean isValidHttpsSystemProperty(String str, String str2) {
        String lowerCase = str.toLowerCase();
        return MessageProperty.isValidSystemProperty(str.toLowerCase(), str2) && lowerCase.startsWith(HttpsMessage.HTTPS_SYSTEM_PROPERTY_PREFIX) && !lowerCase.startsWith("iothub-app-");
    }

    public static HttpsSingleMessage parseHttpsJsonMessage(Message message) {
        HttpsSingleMessage httpsSingleMessage = new HttpsSingleMessage();
        httpsSingleMessage.contentType = HTTPS_SINGLE_JSON_MESSAGE_CONTENT_TYPE;
        parser(httpsSingleMessage, message);
        return httpsSingleMessage;
    }

    public static HttpsSingleMessage parseHttpsMessage(Message message) {
        HttpsSingleMessage httpsSingleMessage = new HttpsSingleMessage();
        httpsSingleMessage.contentType = HTTPS_SINGLE_MESSAGE_CONTENT_TYPE;
        parser(httpsSingleMessage, message);
        return httpsSingleMessage;
    }

    public static void parser(HttpsSingleMessage httpsSingleMessage, Message message) {
        byte[] bytes = message.getBytes();
        httpsSingleMessage.body = Arrays.copyOf(bytes, bytes.length);
        MessageProperty[] properties2 = message.getProperties();
        httpsSingleMessage.properties = new MessageProperty[properties2.length];
        for (int i2 = 0; i2 < properties2.length; i2++) {
            MessageProperty messageProperty = properties2[i2];
            MessageProperty[] messagePropertyArr = httpsSingleMessage.properties;
            StringBuilder a = a.a("iothub-app-");
            a.append(messageProperty.getName());
            messagePropertyArr[i2] = new MessageProperty(a.toString(), messageProperty.getValue());
        }
        HashMap hashMap = new HashMap();
        if (message.getUserId() != null) {
            hashMap.put(USER_ID_KEY, message.getUserId());
        }
        if (message.getMessageId() != null) {
            hashMap.put(MESSAGE_ID_KEY, message.getMessageId());
        }
        if (message.getCorrelationId() != null) {
            hashMap.put(CORRELATION_ID_KEY, message.getCorrelationId());
        }
        if (message.getTo() != null) {
            hashMap.put("iothub-to", message.getTo());
        }
        if (message.getContentEncoding() != null) {
            hashMap.put("iothub-contentencoding", message.getContentEncoding());
        }
        if (message.getContentType() != null) {
            hashMap.put("iothub-contenttype", message.getContentType());
        }
        httpsSingleMessage.systemProperties = new HashMap(hashMap);
    }

    public byte[] getBody() {
        byte[] bArr = this.body;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public String getBodyAsString() {
        return new String(this.body, Message.DEFAULT_IOTHUB_MESSAGE_CHARSET);
    }

    public String getContentType() {
        return this.contentType;
    }

    public MessageProperty[] getProperties() {
        int length = this.properties.length;
        MessageProperty[] messagePropertyArr = new MessageProperty[length];
        for (int i2 = 0; i2 < length; i2++) {
            MessageProperty messageProperty = this.properties[i2];
            messagePropertyArr[i2] = new MessageProperty(messageProperty.getName(), messageProperty.getValue());
        }
        return messagePropertyArr;
    }

    public Map<String, String> getSystemProperties() {
        return new HashMap(this.systemProperties);
    }

    public boolean isBase64Encoded() {
        return this.base64Encoded;
    }

    public Message toMessage() {
        Message message = new Message(getBody());
        for (MessageProperty messageProperty : this.properties) {
            message.setProperty(httpsAppPropertyToAppProperty(messageProperty.getName()), messageProperty.getValue());
        }
        if (this.systemProperties.containsKey(MESSAGE_ID_KEY)) {
            message.setMessageId(this.systemProperties.get(MESSAGE_ID_KEY));
        }
        if (this.systemProperties.containsKey(USER_ID_KEY)) {
            message.setProperty("iothub-app-iothub-userid", this.systemProperties.get(USER_ID_KEY));
        }
        if (this.systemProperties.containsKey(CORRELATION_ID_KEY)) {
            message.setCorrelationId(this.systemProperties.get(CORRELATION_ID_KEY));
        }
        if (this.systemProperties.containsKey("iothub-contenttype")) {
            message.setContentType(this.systemProperties.get("iothub-contenttype"));
        }
        if (this.systemProperties.containsKey("iothub-contentencoding")) {
            message.setContentEncoding(this.systemProperties.get("iothub-contentencoding"));
        }
        if (this.systemProperties.containsKey("iothub-to")) {
            message.setProperty("iothub-app-iothub-to", this.systemProperties.get("iothub-to"));
        }
        return message;
    }

    public static HttpsSingleMessage parseHttpsMessage(HttpsResponse httpsResponse) {
        HttpsSingleMessage httpsSingleMessage = new HttpsSingleMessage();
        byte[] body2 = httpsResponse.getBody();
        httpsSingleMessage.body = Arrays.copyOf(body2, body2.length);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry next : httpsResponse.getHeaderFields().entrySet()) {
            String str = (String) next.getKey();
            String str2 = (String) next.getValue();
            if (isValidHttpsAppProperty(str, str2)) {
                arrayList.add(new MessageProperty(str, str2));
            } else if (isValidHttpsSystemProperty(str, str2)) {
                String substring = str.substring(7);
                StringBuilder a = a.a(HttpsMessage.HTTPS_SYSTEM_PROPERTY_PREFIX);
                a.append(substring.toLowerCase());
                hashMap.put(a.toString(), str2);
            }
        }
        MessageProperty[] messagePropertyArr = new MessageProperty[arrayList.size()];
        httpsSingleMessage.properties = messagePropertyArr;
        httpsSingleMessage.properties = (MessageProperty[]) arrayList.toArray(messagePropertyArr);
        httpsSingleMessage.systemProperties = hashMap;
        return httpsSingleMessage;
    }
}
