package com.microsoft.identity.client.exception;

import com.microsoft.identity.common.exception.BaseException;

public class BrokerCommunicationException extends BaseException {
    public BrokerCommunicationException(String str, Throwable th) {
        super("io_error", str, th);
    }
}
