package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.identity.client.internal.MsalUtils;

public class TopicParser {
    public final String QUESTION = MsalUtils.QUERY_STRING_SYMBOL;
    public final String REQ_ID = "$rid=";
    public final String VERSION = "$version=";
    public String[] topicTokens = null;

    public TopicParser(String str) {
        if (str == null || str.length() == 0) {
            throw new TransportException((Throwable) new IllegalArgumentException("topic cannot be null or empty"));
        }
        this.topicTokens = str.split("/");
    }

    public String getMethodName(int i2) {
        if (i2 > 0) {
            String[] strArr = this.topicTokens;
            if (i2 < strArr.length) {
                if (strArr.length <= i2) {
                    return null;
                }
                String str = strArr[i2];
                if (str != null) {
                    return str;
                }
                throw new TransportException((Throwable) new IllegalArgumentException("method name could not be parsed"));
            }
        }
        throw new TransportException((Throwable) new IllegalArgumentException("Invalid token Index for Method Name"));
    }

    public String getRequestId(int i2) {
        if (i2 > 0) {
            String[] strArr = this.topicTokens;
            if (i2 < strArr.length) {
                if (strArr.length > i2) {
                    String str = strArr[i2];
                    if (str.contains("$rid=") && str.contains(MsalUtils.QUERY_STRING_SYMBOL)) {
                        int indexOf = str.indexOf("$rid=") + 5;
                        int length = str.length();
                        if (str.contains("$version=") && !str.contains("?$version=")) {
                            length = str.indexOf("$version=") - 1;
                        }
                        return str.substring(indexOf, length);
                    }
                }
                return null;
            }
        }
        throw new TransportException((Throwable) new IllegalArgumentException("Invalid token Index for request id"));
    }

    public String getStatus(int i2) {
        if (i2 > 0) {
            String[] strArr = this.topicTokens;
            if (i2 < strArr.length) {
                if (strArr.length <= i2) {
                    return null;
                }
                String str = strArr[i2];
                if (str != null) {
                    return str;
                }
                throw new TransportException("Status could not be parsed");
            }
        }
        throw new TransportException((Throwable) new IllegalArgumentException("Invalid token Index for status"));
    }

    public String getVersion(int i2) {
        if (i2 > 0) {
            String[] strArr = this.topicTokens;
            if (i2 < strArr.length) {
                if (strArr.length > i2) {
                    String str = strArr[i2];
                    if (str.contains("$version=") && str.contains(MsalUtils.QUERY_STRING_SYMBOL)) {
                        int indexOf = str.indexOf("$version=") + 9;
                        int length = str.length();
                        if (!str.contains("?$rid=") && str.contains("$rid=")) {
                            length = str.indexOf("$rid=") - 1;
                        }
                        return str.substring(indexOf, length);
                    }
                }
                return null;
            }
        }
        throw new TransportException((Throwable) new IllegalArgumentException("Invalid token Index for Version"));
    }
}
