package com.microsoft.identity.common.internal.result;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class ResultFuture<T> implements Future<T> {
    public final CountDownLatch mCountDownLatch = new CountDownLatch(1);
    public T mResult;

    public boolean cancel(boolean z) {
        return false;
    }

    public T get() {
        this.mCountDownLatch.await();
        return this.mResult;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return this.mCountDownLatch.getCount() == 0;
    }

    public void setResult(T t) {
        this.mResult = t;
        this.mCountDownLatch.countDown();
    }

    public T get(long j2, TimeUnit timeUnit) {
        if (this.mCountDownLatch.await(j2, timeUnit)) {
            return this.mResult;
        }
        throw new TimeoutException();
    }
}
