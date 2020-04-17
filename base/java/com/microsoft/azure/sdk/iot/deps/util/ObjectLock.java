package com.microsoft.azure.sdk.iot.deps.util;

public class ObjectLock {
    public void notifyLock() {
        notify();
    }

    public void waitLock(long j2) {
        wait(j2);
    }
}
