package com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;
import java.net.NoRouteToHostException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import k.c.a.a.a.k;

public class PahoExceptionTranslator {
    public static final int UNDEFINED_MQTT_CONNECT_CODE_LOWER_BOUND = 6;
    public static final int UNDEFINED_MQTT_CONNECT_CODE_UPPER_BOUND = 255;

    public static ProtocolException convertToMqttException(k kVar, String str) {
        int i2 = kVar.x;
        if (i2 == 0) {
            Throwable th = kVar.y;
            if (!(th instanceof UnknownHostException) && !(th instanceof NoRouteToHostException) && !(th instanceof InterruptedException) && !(th instanceof SocketTimeoutException) && !(th instanceof SocketException)) {
                return new ProtocolException(str, kVar);
            }
            ProtocolException protocolException = new ProtocolException(str, kVar);
            protocolException.setRetryable(true);
            return protocolException;
        } else if (i2 == 1) {
            return new MqttRejectedProtocolVersionException(str, kVar);
        } else {
            if (i2 == 2) {
                return new MqttIdentifierRejectedException(str, kVar);
            }
            if (i2 == 3) {
                return new MqttServerUnavailableException(str, kVar);
            }
            if (i2 == 4) {
                return new MqttBadUsernameOrPasswordException(str, kVar);
            }
            if (i2 == 5) {
                return new MqttUnauthorizedException(str, kVar);
            }
            if (i2 == 128 || i2 == 32000 || i2 == 32002 || i2 == 32103 || i2 == 32104 || i2 == 32109 || i2 == 32110 || i2 == 32201 || i2 == 32202) {
                ProtocolException protocolException2 = new ProtocolException(str, kVar);
                protocolException2.setRetryable(true);
                return protocolException2;
            } else if (i2 < 6 || i2 > 255) {
                return new ProtocolException(str, kVar);
            } else {
                return new MqttUnexpectedErrorException(str, kVar);
            }
        }
    }
}
