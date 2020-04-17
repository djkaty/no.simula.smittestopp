package com.microsoft.appcenter.crashes.model;

public class TestCrashException extends RuntimeException {
    public static final String CRASH_MESSAGE = "Test crash exception generated by SDK";

    public TestCrashException() {
        super(CRASH_MESSAGE);
    }
}
