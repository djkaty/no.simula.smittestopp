package com.microsoft.identity.client.configuration;

import e.c.c.v.c;

public class HttpConfiguration {
    @c("connect_timeout")
    public int mConnectTimeout;
    @c("read_timeout")
    public int mReadTimeout;

    public int getConnectTimeout() {
        return this.mConnectTimeout;
    }

    public int getReadTimeout() {
        return this.mReadTimeout;
    }

    public void setConnectTimeout(int i2) {
        this.mConnectTimeout = i2;
    }

    public void setReadTimeout(int i2) {
        this.mReadTimeout = i2;
    }
}
