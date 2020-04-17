package com.microsoft.identity.client.internal.controllers;

import com.microsoft.identity.client.exception.MsalArgumentException;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.client.exception.MsalIntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.client.exception.MsalServiceException;
import com.microsoft.identity.client.exception.MsalUiRequiredException;
import com.microsoft.identity.client.exception.MsalUserCancelException;
import com.microsoft.identity.common.exception.ArgumentException;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.exception.UiRequiredException;
import com.microsoft.identity.common.exception.UserCancelException;

public class MsalExceptionAdapter {
    public static MsalException msalExceptionFromBaseException(BaseException baseException) {
        MsalException msalException;
        MsalException msalServiceException;
        if (baseException instanceof MsalException) {
            msalException = (MsalException) baseException;
        } else {
            if (baseException instanceof ClientException) {
                ClientException clientException = (ClientException) baseException;
                msalServiceException = new MsalClientException(clientException.getErrorCode(), clientException.getMessage(), clientException);
            } else if (baseException instanceof ArgumentException) {
                ArgumentException argumentException = (ArgumentException) baseException;
                msalServiceException = new MsalArgumentException(argumentException.getArgumentName(), argumentException.getOperationName(), argumentException.getMessage(), argumentException);
            } else if (baseException instanceof UiRequiredException) {
                UiRequiredException uiRequiredException = (UiRequiredException) baseException;
                msalServiceException = new MsalUiRequiredException(uiRequiredException.getErrorCode(), uiRequiredException.getMessage());
            } else if (baseException instanceof IntuneAppProtectionPolicyRequiredException) {
                msalException = new MsalIntuneAppProtectionPolicyRequiredException((IntuneAppProtectionPolicyRequiredException) baseException);
            } else if (baseException instanceof ServiceException) {
                ServiceException serviceException = (ServiceException) baseException;
                msalServiceException = new MsalServiceException(serviceException.getErrorCode(), serviceException.getMessage(), serviceException.getHttpStatusCode(), serviceException);
            } else {
                msalException = baseException instanceof UserCancelException ? new MsalUserCancelException() : null;
            }
            msalException = msalServiceException;
        }
        return msalException == null ? new MsalClientException("unknown_error", baseException.getMessage(), baseException) : msalException;
    }
}
