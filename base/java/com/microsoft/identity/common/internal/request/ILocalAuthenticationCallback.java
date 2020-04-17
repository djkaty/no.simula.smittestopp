package com.microsoft.identity.common.internal.request;

import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.internal.result.ILocalAuthenticationResult;

public interface ILocalAuthenticationCallback {
    void onCancel();

    void onError(BaseException baseException);

    void onSuccess(ILocalAuthenticationResult iLocalAuthenticationResult);
}
