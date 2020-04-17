package com.microsoft.azure.sdk.iot.device.transport;

public class RetryDecision {
    public final long duration;
    public final boolean shouldRetry;

    public RetryDecision(boolean z, long j2) {
        this.duration = j2;
        this.shouldRetry = z;
    }

    public long getDuration() {
        return this.duration;
    }

    public boolean shouldRetry() {
        return this.shouldRetry;
    }
}
