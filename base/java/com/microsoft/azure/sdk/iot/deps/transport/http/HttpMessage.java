package com.microsoft.azure.sdk.iot.deps.transport.http;

public interface HttpMessage {
    byte[] getBody();

    String getContentType();
}
