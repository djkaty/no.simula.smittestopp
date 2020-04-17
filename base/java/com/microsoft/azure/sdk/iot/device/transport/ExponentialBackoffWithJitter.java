package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import java.security.SecureRandom;

public class ExponentialBackoffWithJitter implements RetryPolicy {
    public long deltaBackoff = 100;
    public boolean firstFastRetry = true;
    public long maxBackoff = 10000;
    public long minBackoff = 100;
    public SecureRandom random = new SecureRandom();
    public int retryCount = Integer.MAX_VALUE;

    public ExponentialBackoffWithJitter() {
    }

    public RetryDecision getRetryDecision(int i2, TransportException transportException) {
        if (i2 == 0 && this.firstFastRetry) {
            return new RetryDecision(true, 0);
        }
        if (i2 >= this.retryCount) {
            return new RetryDecision(false, 0);
        }
        long j2 = this.deltaBackoff;
        int i3 = (int) (((double) j2) * 0.8d);
        return new RetryDecision(true, (long) ((int) Math.min(((double) this.minBackoff) + ((double) ((long) ((int) ((Math.pow(2.0d, (double) i2) - 1.0d) * ((double) (((long) this.random.nextInt(((int) (((double) j2) * 1.2d)) - i3)) + ((long) i3))))))), (double) this.maxBackoff)));
    }

    public ExponentialBackoffWithJitter(int i2, long j2, long j3, long j4, boolean z) {
        if (i2 > 0) {
            this.retryCount = i2;
            this.minBackoff = j2;
            this.maxBackoff = j3;
            this.deltaBackoff = j4;
            this.firstFastRetry = z;
            return;
        }
        throw new IllegalArgumentException("retryCount cannot be less than or equal to 0.");
    }
}
