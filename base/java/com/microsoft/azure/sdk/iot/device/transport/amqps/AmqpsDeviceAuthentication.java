package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import java.util.UUID;
import javax.net.ssl.SSLContext;
import k.a.b.a.d.a0;
import k.a.b.a.d.c0;
import k.a.b.a.d.g0.m0.e;
import k.a.b.a.d.g0.m0.f;
import k.f.b;
import k.f.c;

public abstract class AmqpsDeviceAuthentication extends AmqpsDeviceOperations {
    public static final b log = c.a((Class<?>) AmqpsDeviceAuthentication.class);

    public AmqpsDeviceAuthentication(DeviceClientConfig deviceClientConfig) {
        super(deviceClientConfig, "", "", "", "", "", "");
    }

    public abstract void authenticate(DeviceClientConfig deviceClientConfig, UUID uuid);

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig) {
        throw new TransportException("Should not be called");
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        throw new TransportException("Should not be called");
    }

    public abstract boolean handleAuthenticationMessage(AmqpsMessage amqpsMessage, UUID uuid);

    public a0 makeDomain(SSLContext sSLContext) {
        e eVar = new e();
        eVar.f1893c = sSLContext;
        eVar.b = a0.b.VERIFY_PEER;
        f fVar = eVar.f1894d;
        fVar.a = null;
        a0.a aVar = a0.a.CLIENT;
        fVar.a = null;
        eVar.a = aVar;
        return eVar;
    }

    public abstract void setSslDomain(c0 c0Var);
}
