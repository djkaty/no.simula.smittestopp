package com.microsoft.identity.common.internal.broker;

import com.microsoft.aad.adal.IBrokerAccountService;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class BrokerAccountServiceFuture implements Future<IBrokerAccountService> {
    public IBrokerAccountService mBrokerAccountService;
    public final CountDownLatch mCountDownLatch = new CountDownLatch(1);

    public boolean cancel(boolean z) {
        return false;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return this.mCountDownLatch.getCount() == 0;
    }

    public void setBrokerAccountService(IBrokerAccountService iBrokerAccountService) {
        this.mBrokerAccountService = iBrokerAccountService;
        this.mCountDownLatch.countDown();
    }

    public IBrokerAccountService get() {
        this.mCountDownLatch.await();
        return this.mBrokerAccountService;
    }

    public IBrokerAccountService get(long j2, TimeUnit timeUnit) {
        if (this.mCountDownLatch.await(j2, timeUnit)) {
            return this.mBrokerAccountService;
        }
        throw new TimeoutException();
    }
}
