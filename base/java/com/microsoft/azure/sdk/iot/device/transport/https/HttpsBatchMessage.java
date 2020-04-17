package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.sdk.iot.deps.util.Base64;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.exceptions.IotHubSizeExceededException;
import com.microsoft.identity.common.internal.cache.SharedPreferencesSimpleCacheImpl;
import e.a.a.a.a;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

public final class HttpsBatchMessage implements HttpsMessage {
    public static final Charset BATCH_CHARSET = StandardCharsets.UTF_8;
    public static final String HTTPS_BATCH_CONTENT_TYPE = "application/vnd.microsoft.iothub.json";
    public static final int SERVICEBOUND_MESSAGE_MAX_SIZE_BYTES = 261119;
    public String batchBody = SharedPreferencesSimpleCacheImpl.EMPTY_ARRAY;
    public int numMsgs = 0;

    public static String addJsonObjToArray(String str, String str2) {
        if (str2.equals(SharedPreferencesSimpleCacheImpl.EMPTY_ARRAY)) {
            return a.a("[", str, "]");
        }
        String substring = str2.substring(0, str2.length() - 1);
        return substring + "," + str + "]";
    }

    public static String msgToJson(HttpsSingleMessage httpsSingleMessage) {
        StringBuilder sb = new StringBuilder("{");
        sb.append("\"body\":");
        sb.append("\"");
        sb.append(Base64.encodeBase64StringLocal(httpsSingleMessage.getBody()));
        sb.append("\",");
        sb.append("\"base64Encoded\":");
        sb.append(true);
        MessageProperty[] properties = httpsSingleMessage.getProperties();
        HashMap hashMap = new HashMap(httpsSingleMessage.getSystemProperties());
        for (MessageProperty messageProperty : properties) {
            hashMap.put(messageProperty.getName(), messageProperty.getValue());
        }
        if (hashMap.size() > 0) {
            sb.append(",");
            sb.append("\"properties\":");
            sb.append("{");
            for (String str : hashMap.keySet()) {
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                sb.append("\"");
                sb.append((String) hashMap.get(str));
                sb.append("\",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append("}");
        }
        sb.append("}");
        return sb.toString();
    }

    public void addMessage(HttpsSingleMessage httpsSingleMessage) {
        String addJsonObjToArray = addJsonObjToArray(msgToJson(httpsSingleMessage), this.batchBody);
        byte[] bytes = addJsonObjToArray.getBytes(BATCH_CHARSET);
        if (bytes.length <= 261119) {
            this.batchBody = addJsonObjToArray;
            this.numMsgs++;
            return;
        }
        throw new IotHubSizeExceededException(String.format("Service-bound message size (%d bytes) cannot exceed %d bytes.", new Object[]{Integer.valueOf(bytes.length), Integer.valueOf(SERVICEBOUND_MESSAGE_MAX_SIZE_BYTES)}));
    }

    public byte[] getBody() {
        return this.batchBody.getBytes(BATCH_CHARSET);
    }

    public String getContentType() {
        return HTTPS_BATCH_CONTENT_TYPE;
    }

    public MessageProperty[] getProperties() {
        return new MessageProperty[0];
    }

    public Map<String, String> getSystemProperties() {
        return new HashMap();
    }

    public int numMessages() {
        return this.numMsgs;
    }
}
