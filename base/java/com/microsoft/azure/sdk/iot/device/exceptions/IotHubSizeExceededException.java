package com.microsoft.azure.sdk.iot.device.exceptions;

public class IotHubSizeExceededException extends IotHubException {
    public IotHubSizeExceededException() {
        this((String) null);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public IotHubSizeExceededException(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r0 = "IotHub size exceeded!"
            java.lang.StringBuilder r0 = e.a.a.a.a.a(r0)
            if (r3 == 0) goto L_0x0016
            boolean r1 = r3.isEmpty()
            if (r1 == 0) goto L_0x000f
            goto L_0x0016
        L_0x000f:
            java.lang.String r1 = " "
            java.lang.String r3 = e.a.a.a.a.b(r1, r3)
            goto L_0x0018
        L_0x0016:
            java.lang.String r3 = ""
        L_0x0018:
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r2.<init>((java.lang.String) r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.exceptions.IotHubSizeExceededException.<init>(java.lang.String):void");
    }
}
