package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import java.io.IOException;
import java.util.UUID;
import k.a.b.a.d.c0;
import k.f.b;
import k.f.c;

public class AmqpsDeviceAuthenticationX509 extends AmqpsDeviceAuthentication {
    public static final b log = c.a((Class<?>) AmqpsDeviceAuthenticationX509.class);
    public final DeviceClientConfig deviceClientConfig;

    public AmqpsDeviceAuthenticationX509(DeviceClientConfig deviceClientConfig2) {
        super(deviceClientConfig2);
        this.deviceClientConfig = deviceClientConfig2;
        AmqpsDeviceOperationLinkState amqpsDeviceOperationLinkState = AmqpsDeviceOperationLinkState.OPENED;
        this.amqpsSendLinkState = amqpsDeviceOperationLinkState;
        this.amqpsRecvLinkState = amqpsDeviceOperationLinkState;
    }

    public void authenticate(DeviceClientConfig deviceClientConfig2, UUID uuid) {
        throw new TransportException("Cannot authenticate on demand with x509 auth");
    }

    public String getLinkInstanceType() {
        return "x509";
    }

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        return null;
    }

    public boolean handleAuthenticationMessage(AmqpsMessage amqpsMessage, UUID uuid) {
        return false;
    }

    public boolean onLinkRemoteOpen(String str) {
        return false;
    }

    public boolean operationLinksOpened() {
        return true;
    }

    public AmqpsSendReturnValue sendMessageAndGetDeliveryTag(MessageType messageType, byte[] bArr, int i2, int i3, byte[] bArr2) {
        return null;
    }

    public void setSslDomain(c0 c0Var) {
        if (c0Var != null) {
            try {
                c0Var.a(makeDomain(this.deviceClientConfig.getAuthenticationProvider().getSSLContext()));
            } catch (IOException e2) {
                log.b("setSslDomain has thrown exception", (Throwable) e2);
                throw new TransportException((Throwable) e2);
            }
        } else {
            throw new IllegalArgumentException("Input parameter transport cannot be null.");
        }
    }
}
