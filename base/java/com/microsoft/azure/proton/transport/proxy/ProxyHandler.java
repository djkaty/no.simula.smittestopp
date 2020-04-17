package com.microsoft.azure.proton.transport.proxy;

import java.nio.ByteBuffer;
import java.util.Map;

public interface ProxyHandler {

    public static class ProxyResponseResult {
        public String error;
        public Boolean isSuccess;

        public ProxyResponseResult(Boolean bool, String str) {
            this.isSuccess = bool;
            this.error = str;
        }

        public String getError() {
            return this.error;
        }

        public Boolean getIsSuccess() {
            return this.isSuccess;
        }
    }

    String createProxyRequest(String str, Map<String, String> map);

    ProxyResponseResult validateProxyResponse(ByteBuffer byteBuffer);
}
