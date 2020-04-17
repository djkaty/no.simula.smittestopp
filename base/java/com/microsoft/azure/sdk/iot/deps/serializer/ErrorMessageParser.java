package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.v.c;

public class ErrorMessageParser {

    public static class ErrorMessage {
        @c("ExceptionMessage")
        public String exception;
        @c("Message")
        public String message;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v11, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser$ErrorMessage} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String bestErrorMessage(java.lang.String r5) {
        /*
            java.lang.Class<com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser$ErrorMessage> r0 = com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser.ErrorMessage.class
            if (r5 == 0) goto L_0x0051
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto L_0x000b
            goto L_0x0051
        L_0x000b:
            e.c.c.e r1 = new e.c.c.e
            r1.<init>()
            com.google.gson.Gson r1 = r1.a()
            r2 = 0
            java.lang.Object r3 = r1.a((java.lang.String) r5, (java.lang.reflect.Type) r0)     // Catch:{ s -> 0x0024 }
            java.lang.Class r4 = e.c.c.w.t.a(r0)     // Catch:{ s -> 0x0024 }
            java.lang.Object r3 = r4.cast(r3)     // Catch:{ s -> 0x0024 }
            com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser$ErrorMessage r3 = (com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser.ErrorMessage) r3     // Catch:{ s -> 0x0024 }
            goto L_0x0029
        L_0x0024:
            com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser$ErrorMessage r3 = new com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser$ErrorMessage
            r3.<init>()
        L_0x0029:
            if (r3 == 0) goto L_0x0048
            java.lang.String r4 = r3.message
            if (r4 == 0) goto L_0x0048
            java.lang.String r5 = r3.exception
            if (r5 == 0) goto L_0x0034
            r2 = r5
        L_0x0034:
            r5 = 123(0x7b, float:1.72E-43)
            int r5 = r4.indexOf(r5)     // Catch:{ s | StringIndexOutOfBoundsException -> 0x0047 }
            java.lang.String r5 = r4.substring(r5)     // Catch:{ s | StringIndexOutOfBoundsException -> 0x0047 }
            java.lang.Object r5 = r1.a((java.lang.String) r5, r0)     // Catch:{ s | StringIndexOutOfBoundsException -> 0x0047 }
            r3 = r5
            com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser$ErrorMessage r3 = (com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser.ErrorMessage) r3     // Catch:{ s | StringIndexOutOfBoundsException -> 0x0047 }
            r5 = r4
            goto L_0x0029
        L_0x0047:
            r5 = r4
        L_0x0048:
            if (r2 == 0) goto L_0x0050
            java.lang.String r0 = " "
            java.lang.String r5 = e.a.a.a.a.a((java.lang.String) r5, (java.lang.String) r0, (java.lang.String) r2)
        L_0x0050:
            return r5
        L_0x0051:
            java.lang.String r5 = ""
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.serializer.ErrorMessageParser.bestErrorMessage(java.lang.String):java.lang.String");
    }
}
