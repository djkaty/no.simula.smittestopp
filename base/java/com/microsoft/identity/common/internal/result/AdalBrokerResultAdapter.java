package com.microsoft.identity.common.internal.result;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.ADALError;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.ArgumentException;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.exception.UserCancelException;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.logging.Logger;

public class AdalBrokerResultAdapter implements IBrokerResultAdapter {
    public static final String TAG = "com.microsoft.identity.common.internal.result.AdalBrokerResultAdapter";

    private String getAuthority(ILocalAuthenticationResult iLocalAuthenticationResult) {
        Uri.Builder scheme = new Uri.Builder().scheme("https");
        scheme.authority(iLocalAuthenticationResult.getAccessTokenRecord().getEnvironment());
        if (!TextUtils.isEmpty(iLocalAuthenticationResult.getTenantId())) {
            scheme.appendPath(iLocalAuthenticationResult.getTenantId());
        } else {
            scheme.appendPath("common");
        }
        return scheme.build().toString();
    }

    private void mapExceptionToBundle(Bundle bundle, BaseException baseException) {
        if (baseException instanceof UserCancelException) {
            Logger.info(TAG, "Setting Bundle result from UserCancelException.");
            setErrorToResultBundle(bundle, 4, baseException.getMessage());
        } else if (baseException instanceof ArgumentException) {
            Logger.info(TAG, "Setting Bundle result from ArgumentException.");
            setErrorToResultBundle(bundle, 7, baseException.getMessage());
        } else if (baseException instanceof ClientException) {
            setClientExceptionPropertiesToBundle(bundle, (ClientException) baseException);
        } else if (baseException instanceof ServiceException) {
            setServiceExceptionPropertiesToBundle(bundle, (ServiceException) baseException);
        } else {
            Logger.info(TAG, "Setting Bundle result for Unknown Exception/Bad result.");
            setErrorToResultBundle(bundle, 8, baseException.getMessage());
        }
    }

    private void setClientExceptionPropertiesToBundle(Bundle bundle, ClientException clientException) {
        Logger.info(TAG, "Setting properties from ClientException.");
        if (clientException.getErrorCode().equalsIgnoreCase("device_network_not_available")) {
            setErrorToResultBundle(bundle, 3, ADALError.DEVICE_CONNECTION_IS_NOT_AVAILABLE.getDescription());
        } else if (clientException.getErrorCode().equalsIgnoreCase(ErrorStrings.NO_NETWORK_CONNECTION_POWER_OPTIMIZATION)) {
            setErrorToResultBundle(bundle, 3, ADALError.NO_NETWORK_CONNECTION_POWER_OPTIMIZATION.getDescription());
        } else if (clientException.getErrorCode().equalsIgnoreCase("io_error")) {
            setErrorToResultBundle(bundle, 3, ADALError.IO_EXCEPTION.getDescription());
        }
    }

    private void setErrorToResultBundle(Bundle bundle, int i2, String str) {
        bundle.putInt("errorCode", i2);
        bundle.putString("errorMessage", str);
    }

    private void setIntuneAppProtectionPropertiesToBundle(Bundle bundle, IntuneAppProtectionPolicyRequiredException intuneAppProtectionPolicyRequiredException) {
        Logger.info(TAG, "Setting properties from IntuneAppProtectionPolicyRequiredException.");
        ADALError aDALError = ADALError.AUTH_FAILED_INTUNE_POLICY_REQUIRED;
        bundle.putString(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, "AUTH_FAILED_INTUNE_POLICY_REQUIRED");
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_TENANTID, intuneAppProtectionPolicyRequiredException.getTenantId());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_AUTHORITY, intuneAppProtectionPolicyRequiredException.getAuthorityUrl());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_USERID, intuneAppProtectionPolicyRequiredException.getAccountUserId());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_NAME, intuneAppProtectionPolicyRequiredException.getAccountUpn());
    }

    private void setServiceExceptionPropertiesToBundle(Bundle bundle, ServiceException serviceException) {
        Logger.info(TAG, "Setting properties from ServiceException.");
        bundle.putString("error", serviceException.getErrorCode());
        bundle.putString("error_description", serviceException.getMessage());
        bundle.putString(AuthenticationConstants.OAuth2.SUBERROR, serviceException.getOAuthSubErrorCode());
        if (serviceException.getHttpResponseBody() != null) {
            bundle.putSerializable(AuthenticationConstants.OAuth2.HTTP_RESPONSE_BODY, serviceException.getHttpResponseBody());
        }
        if (serviceException.getHttpResponseHeaders() != null) {
            bundle.putSerializable(AuthenticationConstants.OAuth2.HTTP_RESPONSE_HEADER, serviceException.getHttpResponseHeaders());
        }
        bundle.putInt(AuthenticationConstants.OAuth2.HTTP_STATUS_CODE, serviceException.getHttpStatusCode());
        if (serviceException instanceof IntuneAppProtectionPolicyRequiredException) {
            setIntuneAppProtectionPropertiesToBundle(bundle, (IntuneAppProtectionPolicyRequiredException) serviceException);
        }
        if (serviceException.getErrorCode().equalsIgnoreCase("invalid_grant") || serviceException.getErrorCode().equalsIgnoreCase(AuthenticationConstants.OAuth2ErrorCode.INTERACTION_REQUIRED)) {
            bundle.putString("error", ADALError.AUTH_REFRESH_FAILED_PROMPT_NOT_ALLOWED.getDescription());
            bundle.putString("error_description", serviceException.getMessage());
        }
    }

    public ILocalAuthenticationResult authenticationResultFromBundle(Bundle bundle) {
        throw new UnsupportedOperationException();
    }

    public Bundle bundleFromAuthenticationResult(ILocalAuthenticationResult iLocalAuthenticationResult) {
        Logger.verbose(TAG, "Constructing success bundle from Authentication Result.");
        Bundle bundle = new Bundle();
        IAccountRecord accountRecord = iLocalAuthenticationResult.getAccountRecord();
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_LOGIN_HINT, accountRecord.getUsername());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_USERID, accountRecord.getLocalAccountId());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_USERID_DISPLAYABLE, accountRecord.getUsername());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_GIVEN_NAME, accountRecord.getFirstName());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_FAMILY_NAME, accountRecord.getFamilyName());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_IDENTITY_PROVIDER, SchemaUtil.getIdentityProvider(iLocalAuthenticationResult.getIdToken()));
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_TENANTID, iLocalAuthenticationResult.getTenantId());
        bundle.putLong(AuthenticationConstants.Broker.ACCOUNT_EXPIREDATE, iLocalAuthenticationResult.getExpiresOn().getTime());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_AUTHORITY, getAuthority(iLocalAuthenticationResult));
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_ACCESS_TOKEN, iLocalAuthenticationResult.getAccessToken());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_IDTOKEN, iLocalAuthenticationResult.getIdToken());
        bundle.putString(AuthenticationConstants.Broker.CliTelemInfo.SPE_RING, iLocalAuthenticationResult.getSpeRing());
        bundle.putString(AuthenticationConstants.Broker.CliTelemInfo.RT_AGE, iLocalAuthenticationResult.getRefreshTokenAge());
        return bundle;
    }

    public Bundle bundleFromBaseException(BaseException baseException) {
        Logger.verbose(TAG, "Constructing error bundle from exception.");
        Bundle bundle = new Bundle();
        bundle.putString(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, baseException.getErrorCode());
        bundle.putString(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, baseException.getMessage());
        bundle.putString(AuthenticationConstants.Broker.CliTelemInfo.SPE_RING, baseException.getSpeRing());
        bundle.putString(AuthenticationConstants.Broker.CliTelemInfo.RT_AGE, baseException.getRefreshTokenAge());
        bundle.putString(AuthenticationConstants.Broker.CliTelemInfo.SERVER_ERROR, baseException.getCliTelemErrorCode());
        bundle.putString(AuthenticationConstants.Broker.CliTelemInfo.SERVER_SUBERROR, baseException.getCliTelemSubErrorCode());
        mapExceptionToBundle(bundle, baseException);
        return bundle;
    }

    public BaseException getBaseExceptionFromBundle(Bundle bundle) {
        throw new UnsupportedOperationException();
    }
}
