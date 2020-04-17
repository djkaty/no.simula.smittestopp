package com.microsoft.identity.common.internal.controllers;

public class CommandResult {
    public Object mResult;
    public ResultStatus mStatus;

    public enum ResultStatus {
        CANCEL,
        COMPLETED,
        ERROR
    }

    public CommandResult(ResultStatus resultStatus, Object obj) {
        this.mStatus = resultStatus;
        this.mResult = obj;
    }

    public Object getResult() {
        return this.mResult;
    }

    public ResultStatus getStatus() {
        return this.mStatus;
    }
}
