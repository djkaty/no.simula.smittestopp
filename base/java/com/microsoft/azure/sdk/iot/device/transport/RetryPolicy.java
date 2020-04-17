package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;

public interface RetryPolicy {
    RetryDecision getRetryDecision(int i2, TransportException transportException);
}
