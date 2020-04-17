package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;

public class NoRetry implements RetryPolicy {
    public RetryDecision getRetryDecision(int i2, TransportException transportException) {
        return new RetryDecision(false, 0);
    }
}
