package com.microsoft.azure.storage.table;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.storage.core.SR;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

public final class MimePart {
    public HashMap<String, String> headers = new HashMap<>();
    public int httpStatusCode = -1;
    public String httpStatusMessage;
    public TableOperationType op;
    public String payload;
    public URI requestIdentity;

    public static void appendHeader(StringBuilder sb) {
        sb.append("Content-Type: application/http\r\n");
        sb.append("Content-Transfer-Encoding: binary\r\n\r\n");
    }

    public static String getHttpVerbForOperation(TableOperationType tableOperationType) {
        if (tableOperationType == TableOperationType.INSERT) {
            return "POST";
        }
        if (tableOperationType == TableOperationType.DELETE) {
            return "DELETE";
        }
        if (tableOperationType == TableOperationType.MERGE || tableOperationType == TableOperationType.INSERT_OR_MERGE) {
            return "MERGE";
        }
        if (tableOperationType == TableOperationType.REPLACE || tableOperationType == TableOperationType.INSERT_OR_REPLACE) {
            return "PUT";
        }
        if (tableOperationType == TableOperationType.RETRIEVE) {
            return "GET";
        }
        throw new IllegalArgumentException(SR.UNKNOWN_TABLE_OPERATION);
    }

    public String toRequestString() {
        StringBuilder sb = new StringBuilder();
        appendHeader(sb);
        sb.append(String.format("%s %s HTTP/1.1\r\n", new Object[]{getHttpVerbForOperation(this.op), this.requestIdentity.toString()}));
        for (Map.Entry next : this.headers.entrySet()) {
            sb.append(String.format("%s: %s\r\n", new Object[]{next.getKey(), next.getValue()}));
        }
        sb.append(ProxyHandlerImpl.NEW_LINE);
        String str = this.payload;
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }
}
