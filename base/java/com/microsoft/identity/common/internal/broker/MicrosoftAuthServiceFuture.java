package com.microsoft.identity.common.internal.broker;

import com.microsoft.identity.client.IMicrosoftAuthService;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class MicrosoftAuthServiceFuture implements Future<IMicrosoftAuthService> {
    public final CountDownLatch mCountDownLatch = new CountDownLatch(1);
    public IMicrosoftAuthService mMicrosoftAuthService;

    public boolean cancel(boolean z) {
        return false;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return this.mCountDownLatch.getCount() == 0;
    }

    public void setMicrosoftAuthService(IMicrosoftAuthService iMicrosoftAuthService) {
        this.mMicrosoftAuthService = iMicrosoftAuthService;
        this.mCountDownLatch.countDown();
    }

    public IMicrosoftAuthService get() {
        this.mCountDownLatch.await();
        return this.mMicrosoftAuthService;
    }

    public IMicrosoftAuthService get(long j2, TimeUnit timeUnit) {
        if (this.mCountDownLatch.await(j2, timeUnit)) {
            return this.mMicrosoftAuthService;
        }
        throw new TimeoutException();
    }
}
