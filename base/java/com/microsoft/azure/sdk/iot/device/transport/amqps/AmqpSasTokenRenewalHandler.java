package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import k.a.b.a.d.a;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.h;
import k.f.b;
import k.f.c;

public class AmqpSasTokenRenewalHandler extends a {
    public static final b log = c.a((Class<?>) AmqpSasTokenRenewalHandler.class);
    public AmqpsSessionManager amqpsSessionManager;
    public DeviceClientConfig config;
    public int retryPeriodMilliseconds = 5000;

    public AmqpSasTokenRenewalHandler(AmqpsSessionManager amqpsSessionManager2, DeviceClientConfig deviceClientConfig) {
        this.amqpsSessionManager = amqpsSessionManager2;
        this.config = deviceClientConfig;
    }

    public void onTimerTask(h hVar) {
        try {
            log.e("AmqpSasTokenRenewalHandler OnTimerTask called, sending authentication message");
            this.amqpsSessionManager.authenticate();
            ((g) hVar).b().a(this.config.getSasTokenAuthentication().getMillisecondsBeforeProactiveRenewal(), this);
        } catch (TransportException e2) {
            if (e2.isRetryable()) {
                log.b("Failed to send authentication message, trying again in {} milliseconds", Integer.valueOf(this.retryPeriodMilliseconds), e2);
                ((g) hVar).b().a(this.retryPeriodMilliseconds, this);
                return;
            }
            log.e("Failed to send authentication message, unable to try again", (Throwable) e2);
        }
    }
}
