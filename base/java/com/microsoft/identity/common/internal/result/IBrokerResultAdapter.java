package com.microsoft.identity.common.internal.result;

import android.os.Bundle;
import com.microsoft.identity.common.exception.BaseException;

public interface IBrokerResultAdapter {
    ILocalAuthenticationResult authenticationResultFromBundle(Bundle bundle);

    Bundle bundleFromAuthenticationResult(ILocalAuthenticationResult iLocalAuthenticationResult);

    Bundle bundleFromBaseException(BaseException baseException);

    BaseException getBaseExceptionFromBundle(Bundle bundle);
}
