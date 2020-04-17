package com.android.volley;

public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;
    public final float mBackoffMultiplier;
    public int mCurrentRetryCount;
    public int mCurrentTimeoutMs;
    public final int mMaxNumRetries;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public float getBackoffMultiplier() {
        return this.mBackoffMultiplier;
    }

    public int getCurrentRetryCount() {
        return this.mCurrentRetryCount;
    }

    public int getCurrentTimeout() {
        return this.mCurrentTimeoutMs;
    }

    public boolean hasAttemptRemaining() {
        return this.mCurrentRetryCount <= this.mMaxNumRetries;
    }

    public void retry(VolleyError volleyError) {
        this.mCurrentRetryCount++;
        int i2 = this.mCurrentTimeoutMs;
        this.mCurrentTimeoutMs = i2 + ((int) (((float) i2) * this.mBackoffMultiplier));
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
    }

    public DefaultRetryPolicy(int i2, int i3, float f2) {
        this.mCurrentTimeoutMs = i2;
        this.mMaxNumRetries = i3;
        this.mBackoffMultiplier = f2;
    }
}
