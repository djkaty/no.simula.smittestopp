package com.microsoft.identity.common.internal.providers.oauth2;

public interface IResult {
    IErrorResponse getErrorResponse();

    boolean getSuccess();

    ISuccessResponse getSuccessResponse();
}
