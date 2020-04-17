package com.microsoft.azure.sdk.iot.device.transport.amqps;

public class AmqpsExceptionTranslator {
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.microsoft.azure.sdk.iot.device.exceptions.TransportException convertToAmqpException(java.lang.String r1, java.lang.String r2) {
        /*
            int r0 = r1.hashCode()
            switch(r0) {
                case -1563519384: goto L_0x0131;
                case -1530489431: goto L_0x0126;
                case -1500796161: goto L_0x011b;
                case -1310037224: goto L_0x0111;
                case -1012255159: goto L_0x0107;
                case -945297093: goto L_0x00fc;
                case -889166443: goto L_0x00f1;
                case -879196315: goto L_0x00e6;
                case -844084853: goto L_0x00db;
                case -599032422: goto L_0x00cf;
                case -582630695: goto L_0x00c3;
                case -252086493: goto L_0x00b7;
                case 266840729: goto L_0x00ab;
                case 339991958: goto L_0x009f;
                case 460572806: goto L_0x0094;
                case 524967687: goto L_0x0088;
                case 647239021: goto L_0x007c;
                case 1297013626: goto L_0x0070;
                case 1409597282: goto L_0x0065;
                case 1454115665: goto L_0x005a;
                case 1498308533: goto L_0x004e;
                case 1715227378: goto L_0x0043;
                case 1729493304: goto L_0x0038;
                case 1757170094: goto L_0x002c;
                case 1866947320: goto L_0x0020;
                case 1909122192: goto L_0x0014;
                case 1997396401: goto L_0x0009;
                default: goto L_0x0007;
            }
        L_0x0007:
            goto L_0x013c
        L_0x0009:
            java.lang.String r0 = "amqp:frame-size-too-small"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 5
            goto L_0x013d
        L_0x0014:
            java.lang.String r0 = "com.microsoft:device-container-throttled"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 25
            goto L_0x013d
        L_0x0020:
            java.lang.String r0 = "amqp:link:stolen"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 12
            goto L_0x013d
        L_0x002c:
            java.lang.String r0 = "amqp:unauthorized-access"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 23
            goto L_0x013d
        L_0x0038:
            java.lang.String r0 = "amqp:decode-error"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 2
            goto L_0x013d
        L_0x0043:
            java.lang.String r0 = "amqp:session:errant-link"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 4
            goto L_0x013d
        L_0x004e:
            java.lang.String r0 = "amqp:invalid-field"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 10
            goto L_0x013d
        L_0x005a:
            java.lang.String r0 = "amqp:session:handle-in-use"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 7
            goto L_0x013d
        L_0x0065:
            java.lang.String r0 = "amqp:link:detach-forced"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 3
            goto L_0x013d
        L_0x0070:
            java.lang.String r0 = "amqp:resource-locked"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 20
            goto L_0x013d
        L_0x007c:
            java.lang.String r0 = "amqp:link:redirect"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 11
            goto L_0x013d
        L_0x0088:
            java.lang.String r0 = "amqp:internal-error"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 9
            goto L_0x013d
        L_0x0094:
            java.lang.String r0 = "amqp:connection:forced"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 0
            goto L_0x013d
        L_0x009f:
            java.lang.String r0 = "amqp:link:transfer-limit-exceeded"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 21
            goto L_0x013d
        L_0x00ab:
            java.lang.String r0 = "amqp:not-found"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 15
            goto L_0x013d
        L_0x00b7:
            java.lang.String r0 = "amqp:precondition-failed"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 17
            goto L_0x013d
        L_0x00c3:
            java.lang.String r0 = "amqp:not-implemented"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 16
            goto L_0x013d
        L_0x00cf:
            java.lang.String r0 = "proton:io"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 26
            goto L_0x013d
        L_0x00db:
            java.lang.String r0 = "amqp:illegal-state"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 8
            goto L_0x013d
        L_0x00e6:
            java.lang.String r0 = "amqp:session:unattached-handle"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 22
            goto L_0x013d
        L_0x00f1:
            java.lang.String r0 = "amqp:resource-limit-exceeded"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 19
            goto L_0x013d
        L_0x00fc:
            java.lang.String r0 = "amqp:session:window-violation"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 24
            goto L_0x013d
        L_0x0107:
            java.lang.String r0 = "amqp:connection:redirect"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 1
            goto L_0x013d
        L_0x0111:
            java.lang.String r0 = "amqp:connection:framing-error"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 6
            goto L_0x013d
        L_0x011b:
            java.lang.String r0 = "amqp:not-allowed"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 14
            goto L_0x013d
        L_0x0126:
            java.lang.String r0 = "amqp:resource-deleted"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 18
            goto L_0x013d
        L_0x0131:
            java.lang.String r0 = "amqp:link:message-size-exceeded"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x013c
            r1 = 13
            goto L_0x013d
        L_0x013c:
            r1 = -1
        L_0x013d:
            switch(r1) {
                case 0: goto L_0x01e2;
                case 1: goto L_0x01dc;
                case 2: goto L_0x01d6;
                case 3: goto L_0x01d0;
                case 4: goto L_0x01ca;
                case 5: goto L_0x01c4;
                case 6: goto L_0x01be;
                case 7: goto L_0x01b8;
                case 8: goto L_0x01b2;
                case 9: goto L_0x01ac;
                case 10: goto L_0x01a6;
                case 11: goto L_0x01a0;
                case 12: goto L_0x019a;
                case 13: goto L_0x0194;
                case 14: goto L_0x018e;
                case 15: goto L_0x0188;
                case 16: goto L_0x0182;
                case 17: goto L_0x017c;
                case 18: goto L_0x0176;
                case 19: goto L_0x0170;
                case 20: goto L_0x016a;
                case 21: goto L_0x0164;
                case 22: goto L_0x015e;
                case 23: goto L_0x0158;
                case 24: goto L_0x0152;
                case 25: goto L_0x014c;
                case 26: goto L_0x0146;
                default: goto L_0x0140;
            }
        L_0x0140:
            com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException r1 = new com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0146:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.ProtonIOException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.ProtonIOException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x014c:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionThrottledException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionThrottledException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0152:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionWindowViolationException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionWindowViolationException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0158:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpUnauthorizedAccessException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpUnauthorizedAccessException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x015e:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionUnattachedHandleException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionUnattachedHandleException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0164:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkTransferLimitExceededException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkTransferLimitExceededException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x016a:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceLockedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceLockedException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0170:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceLimitExceededException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceLimitExceededException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0176:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceDeletedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceDeletedException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x017c:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpPreconditionFailedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpPreconditionFailedException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0182:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpNotImplementedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpNotImplementedException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0188:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpNotFoundException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpNotFoundException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x018e:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpNotAllowedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpNotAllowedException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x0194:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkMessageSizeExceededException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkMessageSizeExceededException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x019a:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkStolenException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkStolenException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01a0:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkRedirectException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkRedirectException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01a6:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpInvalidFieldException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpInvalidFieldException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01ac:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpInternalErrorException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpInternalErrorException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01b2:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpIllegalStateException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpIllegalStateException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01b8:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionHandleInUseException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionHandleInUseException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01be:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionFramingErrorException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionFramingErrorException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01c4:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpFrameSizeTooSmallException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpFrameSizeTooSmallException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01ca:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionErrantLinkException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpSessionErrantLinkException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01d0:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkDetachForcedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpLinkDetachForcedException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01d6:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpDecodeErrorException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpDecodeErrorException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01dc:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionRedirectException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionRedirectException
            r1.<init>((java.lang.String) r2)
            return r1
        L_0x01e2:
            com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionForcedException r1 = new com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionForcedException
            r1.<init>((java.lang.String) r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsExceptionTranslator.convertToAmqpException(java.lang.String, java.lang.String):com.microsoft.azure.sdk.iot.device.exceptions.TransportException");
    }
}
