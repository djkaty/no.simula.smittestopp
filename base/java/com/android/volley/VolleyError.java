package com.android.volley;

public class VolleyError extends Exception {
    public final NetworkResponse networkResponse;
    public long networkTimeMs;

    public VolleyError() {
        this.networkResponse = null;
    }

    public long getNetworkTimeMs() {
        return this.networkTimeMs;
    }

    public void setNetworkTimeMs(long j2) {
        this.networkTimeMs = j2;
    }

    public VolleyError(NetworkResponse networkResponse2) {
        this.networkResponse = networkResponse2;
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th) {
        super(str, th);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.networkResponse = null;
    }
}
