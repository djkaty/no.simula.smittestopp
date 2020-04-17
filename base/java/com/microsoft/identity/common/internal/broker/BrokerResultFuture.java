package com.microsoft.identity.common.internal.broker;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class BrokerResultFuture implements Future<Bundle> {
    public final CountDownLatch mCountDownLatch = new CountDownLatch(1);
    public Bundle mResultBundle;

    public boolean cancel(boolean z) {
        return false;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return this.mCountDownLatch.getCount() == 0;
    }

    public void setResultBundle(Bundle bundle) {
        this.mResultBundle = bundle;
        this.mCountDownLatch.countDown();
    }

    public Bundle get() {
        this.mCountDownLatch.await();
        return this.mResultBundle;
    }

    public Bundle get(long j2, TimeUnit timeUnit) {
        if (this.mCountDownLatch.await(j2, timeUnit)) {
            return this.mResultBundle;
        }
        throw new TimeoutException();
    }
}
