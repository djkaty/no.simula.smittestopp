package com.microsoft.azure.sdk.iot.device;

public class ObjectLock {
    public void notifyLock() {
        notify();
    }

    public void waitLock(long j2) {
        wait(j2);
    }
}
