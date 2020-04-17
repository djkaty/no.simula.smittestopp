package com.microsoft.identity.common.internal.result;

import android.os.Bundle;
import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.HashMapExtensions;
import com.microsoft.identity.common.adal.internal.util.JsonExtensions;
import com.microsoft.identity.common.exception.ArgumentException;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.exception.UiRequiredException;
import com.microsoft.identity.common.exception.UserCancelException;
import com.microsoft.identity.common.internal.broker.BrokerResult;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.MsalBrokerRequestAdapter;
import com.microsoft.identity.common.internal.request.SdkType;
import com.microsoft.identity.common.internal.util.HeaderSerializationUtil;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;

public class MsalBrokerResultAdapter implements IBrokerResultAdapter {
    public static final String TAG = "com.microsoft.identity.common.internal.result.MsalBrokerResultAdapter";

    private BaseException getBaseExceptionFromErrorCodes(BrokerResult brokerResult) {
        BaseException baseException;
        BaseException baseException2;
        String errorCode = brokerResult.getErrorCode();
        if (AuthenticationConstants.OAuth2ErrorCode.INTERACTION_REQUIRED.equalsIgnoreCase(errorCode) || "invalid_grant".equalsIgnoreCase(errorCode) || ErrorStrings.INVALID_BROKER_REFRESH_TOKEN.equalsIgnoreCase(errorCode) || "no_tokens_found".equalsIgnoreCase(errorCode)) {
            String str = TAG;
            Logger.warn(str, "Received a UIRequired exception from Broker : " + errorCode);
            baseException2 = new UiRequiredException(errorCode, brokerResult.getErrorMessage());
        } else if (!"unauthorized_client".equalsIgnoreCase(errorCode) || !AuthenticationConstants.OAuth2SubErrorCode.PROTECTION_POLICY_REQUIRED.equalsIgnoreCase(brokerResult.getSubErrorCode())) {
            if (ErrorStrings.USER_CANCELLED.equalsIgnoreCase(errorCode)) {
                String str2 = TAG;
                Logger.warn(str2, "Received a User cancelled exception from Broker : " + errorCode);
                baseException = new UserCancelException();
            } else if ("illegal_argument_exception".equalsIgnoreCase(errorCode)) {
                String str3 = TAG;
                Logger.warn(str3, "Received a Argument exception from Broker : " + errorCode);
                baseException2 = new ArgumentException(ArgumentException.BROKER_TOKEN_REQUEST_OPERATION_NAME, errorCode, brokerResult.getErrorMessage());
            } else if (!TextUtils.isEmpty(brokerResult.getHttpResponseHeaders()) || !TextUtils.isEmpty(brokerResult.getHttpResponseBody())) {
                String str4 = TAG;
                Logger.warn(str4, "Received a Service exception from Broker : " + errorCode);
                baseException = getServiceException(brokerResult);
            } else {
                String str5 = TAG;
                Logger.warn(str5, "Received a Client exception from Broker : " + errorCode);
                baseException = new ClientException(brokerResult.getErrorCode(), brokerResult.getErrorMessage());
            }
            baseException.setCliTelemErrorCode(brokerResult.getCliTelemErrorCode());
            baseException.setCliTelemSubErrorCode(brokerResult.getCliTelemSubErrorCode());
            baseException.setCorrelationId(brokerResult.getCorrelationId());
            baseException.setSpeRing(brokerResult.getSpeRing());
            baseException.setRefreshTokenAge(brokerResult.getRefreshTokenAge());
            return baseException;
        } else {
            String str6 = TAG;
            Logger.warn(str6, "Received a IntuneAppProtectionPolicyRequiredException exception from Broker : " + errorCode);
            baseException = getIntuneProtectionRequiredException(brokerResult);
            baseException.setCliTelemErrorCode(brokerResult.getCliTelemErrorCode());
            baseException.setCliTelemSubErrorCode(brokerResult.getCliTelemSubErrorCode());
            baseException.setCorrelationId(brokerResult.getCorrelationId());
            baseException.setSpeRing(brokerResult.getSpeRing());
            baseException.setRefreshTokenAge(brokerResult.getRefreshTokenAge());
            return baseException;
        }
        baseException = baseException2;
        baseException.setCliTelemErrorCode(brokerResult.getCliTelemErrorCode());
        baseException.setCliTelemSubErrorCode(brokerResult.getCliTelemSubErrorCode());
        baseException.setCorrelationId(brokerResult.getCorrelationId());
        baseException.setSpeRing(brokerResult.getSpeRing());
        baseException.setRefreshTokenAge(brokerResult.getRefreshTokenAge());
        return baseException;
    }

    private BaseException getBaseExceptionFromExceptionType(String str, BrokerResult brokerResult) {
        BaseException baseException;
        String str2 = TAG;
        Logger.warn(str2, "Received a " + str + " from Broker : " + brokerResult.getErrorCode());
        if (str.equalsIgnoreCase(UiRequiredException.sName)) {
            baseException = new UiRequiredException(brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        } else if (str.equalsIgnoreCase(ServiceException.sName)) {
            baseException = getServiceException(brokerResult);
        } else if (str.equalsIgnoreCase(IntuneAppProtectionPolicyRequiredException.sName)) {
            baseException = getIntuneProtectionRequiredException(brokerResult);
        } else if (str.equalsIgnoreCase(UserCancelException.sName)) {
            baseException = new UserCancelException();
        } else if (str.equalsIgnoreCase(ClientException.sName)) {
            baseException = new ClientException(brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        } else if (str.equalsIgnoreCase(ArgumentException.sName)) {
            baseException = new ArgumentException(ArgumentException.BROKER_TOKEN_REQUEST_OPERATION_NAME, brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        } else {
            String str3 = TAG;
            StringBuilder a = a.a(" Exception type is unknown : ", str);
            a.append(brokerResult.getErrorCode());
            a.append(", defaulting to Client Exception ");
            Logger.warn(str3, a.toString());
            baseException = new ClientException(brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        }
        baseException.setCliTelemErrorCode(brokerResult.getCliTelemErrorCode());
        baseException.setCliTelemSubErrorCode(brokerResult.getCliTelemSubErrorCode());
        baseException.setCorrelationId(brokerResult.getCorrelationId());
        baseException.setSpeRing(brokerResult.getSpeRing());
        baseException.setRefreshTokenAge(brokerResult.getRefreshTokenAge());
        return baseException;
    }

    private IntuneAppProtectionPolicyRequiredException getIntuneProtectionRequiredException(BrokerResult brokerResult) {
        IntuneAppProtectionPolicyRequiredException intuneAppProtectionPolicyRequiredException = new IntuneAppProtectionPolicyRequiredException(brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        intuneAppProtectionPolicyRequiredException.setTenantId(brokerResult.getTenantId());
        intuneAppProtectionPolicyRequiredException.setAuthorityUrl(brokerResult.getAuthority());
        intuneAppProtectionPolicyRequiredException.setAccountUserId(brokerResult.getLocalAccountId());
        intuneAppProtectionPolicyRequiredException.setAccountUpn(brokerResult.getUserName());
        intuneAppProtectionPolicyRequiredException.setOauthSubErrorCode(brokerResult.getSubErrorCode());
        try {
            intuneAppProtectionPolicyRequiredException.setHttpResponseBody(HashMapExtensions.jsonStringAsMap(brokerResult.getHttpResponseBody()));
            if (brokerResult.getHttpResponseHeaders() != null) {
                intuneAppProtectionPolicyRequiredException.setHttpResponseHeaders(HeaderSerializationUtil.fromJson(brokerResult.getHttpResponseHeaders()));
            }
        } catch (JSONException unused) {
            Logger.warn(TAG, "Unable to parse json");
        }
        return intuneAppProtectionPolicyRequiredException;
    }

    private ServiceException getServiceException(BrokerResult brokerResult) {
        HashMap<String, List<String>> hashMap = null;
        ServiceException serviceException = new ServiceException(brokerResult.getErrorCode(), brokerResult.getErrorMessage(), (Throwable) null);
        serviceException.setOauthSubErrorCode(brokerResult.getSubErrorCode());
        try {
            serviceException.setHttpResponseBody(brokerResult.getHttpResponseBody() != null ? HashMapExtensions.jsonStringAsMap(brokerResult.getHttpResponseBody()) : null);
            if (brokerResult.getHttpResponseHeaders() != null) {
                hashMap = HeaderSerializationUtil.fromJson(brokerResult.getHttpResponseHeaders());
            }
            serviceException.setHttpResponseHeaders(hashMap);
        } catch (JSONException unused) {
            Logger.warn(TAG, "Unable to parse json");
        }
        return serviceException;
    }

    public ILocalAuthenticationResult authenticationResultFromBundle(Bundle bundle) {
        BrokerResult brokerResultFromJsonString = JsonExtensions.getBrokerResultFromJsonString(bundle.getString(AuthenticationConstants.Broker.BROKER_RESULT_V2));
        if (brokerResultFromJsonString == null) {
            Logger.error(TAG, "Broker Result not returned from Broker, ", (Throwable) null);
            return null;
        }
        Logger.info(TAG, "Broker Result returned from Bundle, constructing authentication result");
        List<ICacheRecord> tenantProfileData = brokerResultFromJsonString.getTenantProfileData();
        return new LocalAuthenticationResult(tenantProfileData.get(0), tenantProfileData, SdkType.MSAL);
    }

    public Bundle bundleFromAccounts(List<ICacheRecord> list) {
        Bundle bundle = new Bundle();
        if (list != null) {
            bundle.putString(AuthenticationConstants.Broker.BROKER_ACCOUNTS, JsonExtensions.getJsonStringFromICacheRecordList(list));
        }
        return bundle;
    }

    public Bundle bundleFromAuthenticationResult(ILocalAuthenticationResult iLocalAuthenticationResult) {
        Logger.info(TAG, "Constructing result bundle from ILocalAuthenticationResult");
        IAccountRecord accountRecord = iLocalAuthenticationResult.getAccountRecord();
        AccessTokenRecord accessTokenRecord = iLocalAuthenticationResult.getAccessTokenRecord();
        BrokerResult build = new BrokerResult.Builder().tenantProfileRecords(iLocalAuthenticationResult.getCacheRecordWithTenantProfileData()).accessToken(iLocalAuthenticationResult.getAccessToken()).idToken(iLocalAuthenticationResult.getIdToken()).refreshToken(iLocalAuthenticationResult.getRefreshToken()).homeAccountId(accountRecord.getHomeAccountId()).localAccountId(accountRecord.getLocalAccountId()).userName(accountRecord.getUsername()).tokenType(accessTokenRecord.getAccessTokenType()).clientId(accessTokenRecord.getClientId()).familyId(iLocalAuthenticationResult.getFamilyId()).scope(accessTokenRecord.getTarget()).clientInfo(accountRecord.getClientInfo()).authority(accessTokenRecord.getAuthority()).environment(accessTokenRecord.getEnvironment()).tenantId(iLocalAuthenticationResult.getTenantId()).expiresOn(Long.parseLong(accessTokenRecord.getExpiresOn())).extendedExpiresOn(Long.parseLong(accessTokenRecord.getExtendedExpiresOn())).cachedAt(Long.parseLong(accessTokenRecord.getCachedAt())).speRing(iLocalAuthenticationResult.getSpeRing()).refreshTokenAge(iLocalAuthenticationResult.getRefreshTokenAge()).success(true).build();
        Bundle bundle = new Bundle();
        bundle.putString(AuthenticationConstants.Broker.BROKER_RESULT_V2, MsalBrokerRequestAdapter.sRequestAdapterGsonInstance.a((Object) build, (Type) BrokerResult.class));
        bundle.putBoolean(AuthenticationConstants.Broker.BROKER_REQUEST_V2_SUCCESS, true);
        return bundle;
    }

    public Bundle bundleFromBaseException(BaseException baseException) {
        Logger.info(TAG, "Constructing result bundle from BaseException");
        BrokerResult.Builder refreshTokenAge = new BrokerResult.Builder().success(false).errorCode(baseException.getErrorCode()).errorMessage(baseException.getMessage()).exceptionType(baseException.getExceptionName()).correlationId(baseException.getCorrelationId()).cliTelemErrorCode(baseException.getCliTelemErrorCode()).cliTelemSubErrorCode(baseException.getCliTelemSubErrorCode()).speRing(baseException.getSpeRing()).refreshTokenAge(baseException.getRefreshTokenAge());
        if (baseException instanceof ServiceException) {
            ServiceException serviceException = (ServiceException) baseException;
            refreshTokenAge.oauthSubErrorCode(serviceException.getOAuthSubErrorCode()).httpStatusCode(serviceException.getHttpStatusCode()).httpResponseHeaders(HeaderSerializationUtil.toJson(serviceException.getHttpResponseHeaders())).httpResponseBody(MsalBrokerRequestAdapter.sRequestAdapterGsonInstance.a((Object) serviceException.getHttpResponseBody()));
        }
        if (baseException instanceof IntuneAppProtectionPolicyRequiredException) {
            IntuneAppProtectionPolicyRequiredException intuneAppProtectionPolicyRequiredException = (IntuneAppProtectionPolicyRequiredException) baseException;
            refreshTokenAge.userName(intuneAppProtectionPolicyRequiredException.getAccountUpn()).localAccountId(intuneAppProtectionPolicyRequiredException.getAccountUserId()).authority(intuneAppProtectionPolicyRequiredException.getAuthorityUrl()).tenantId(intuneAppProtectionPolicyRequiredException.getTenantId());
        }
        Bundle bundle = new Bundle();
        bundle.putString(AuthenticationConstants.Broker.BROKER_RESULT_V2, MsalBrokerRequestAdapter.sRequestAdapterGsonInstance.a((Object) refreshTokenAge.build(), (Type) BrokerResult.class));
        bundle.putBoolean(AuthenticationConstants.Broker.BROKER_REQUEST_V2_SUCCESS, false);
        return bundle;
    }

    public Bundle bundleFromDeviceMode(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(AuthenticationConstants.Broker.BROKER_DEVICE_MODE, z);
        return bundle;
    }

    public List<ICacheRecord> getAccountsFromResultBundle(Bundle bundle) {
        String string = bundle.getString(AuthenticationConstants.Broker.BROKER_ACCOUNTS);
        if (string != null) {
            return JsonExtensions.getICacheRecordListFromJsonString(string);
        }
        throw new MsalBrokerResultAdapter().getBaseExceptionFromBundle(bundle);
    }

    public AcquireTokenResult getAcquireTokenResultFromResultBundle(Bundle bundle) {
        MsalBrokerResultAdapter msalBrokerResultAdapter = new MsalBrokerResultAdapter();
        if (bundle.getBoolean(AuthenticationConstants.Broker.BROKER_REQUEST_V2_SUCCESS)) {
            AcquireTokenResult acquireTokenResult = new AcquireTokenResult();
            acquireTokenResult.setLocalAuthenticationResult(msalBrokerResultAdapter.authenticationResultFromBundle(bundle));
            return acquireTokenResult;
        }
        throw msalBrokerResultAdapter.getBaseExceptionFromBundle(bundle);
    }

    public BaseException getBaseExceptionFromBundle(Bundle bundle) {
        Logger.info(TAG, "Constructing exception from result bundle");
        BrokerResult brokerResultFromJsonString = JsonExtensions.getBrokerResultFromJsonString(bundle.getString(AuthenticationConstants.Broker.BROKER_RESULT_V2));
        if (brokerResultFromJsonString == null) {
            Logger.error(TAG, "Broker Result not returned from Broker", (Throwable) null);
            return new BaseException("unknown_error", "Broker Result not returned from Broker");
        }
        String exceptionType = brokerResultFromJsonString.getExceptionType();
        if (!TextUtils.isEmpty(exceptionType)) {
            return getBaseExceptionFromExceptionType(exceptionType, brokerResultFromJsonString);
        }
        Logger.info(TAG, "Exception type is not returned from the broker, using error codes to transform to the right exception");
        return getBaseExceptionFromErrorCodes(brokerResultFromJsonString);
    }

    public boolean getDeviceModeFromResultBundle(Bundle bundle) {
        if (bundle.containsKey(AuthenticationConstants.Broker.BROKER_DEVICE_MODE)) {
            return bundle.getBoolean(AuthenticationConstants.Broker.BROKER_DEVICE_MODE);
        }
        throw new MsalBrokerResultAdapter().getBaseExceptionFromBundle(bundle);
    }

    public void verifyHelloFromResultBundle(Bundle bundle) {
        if (bundle == null) {
            Logger.warn(TAG + ":verifyHelloFromResultBundle", "The hello result bundle is null.");
            throw new ClientException(ErrorStrings.UNSUPPORTED_BROKER_VERSION_ERROR_CODE, ErrorStrings.UNSUPPORTED_BROKER_VERSION_ERROR_MESSAGE);
        } else if (!StringUtil.isEmpty(bundle.getString(AuthenticationConstants.Broker.NEGOTIATED_BP_VERSION_KEY))) {
            String string = bundle.getString(AuthenticationConstants.Broker.NEGOTIATED_BP_VERSION_KEY);
            String a = a.a(new StringBuilder(), TAG, ":verifyHelloFromResultBundle");
            Logger.info(a, "Able to establish the connect, the broker protocol version in common is [" + string + "]");
        } else if (!StringUtil.isEmpty(bundle.getString("error")) && !StringUtil.isEmpty(bundle.getString("error_description"))) {
            throw new ClientException(bundle.getString("error"), bundle.getString("error_description"));
        } else if (bundle.get(AuthenticationConstants.Broker.BROKER_RESULT_V2) == null || !(bundle.get(AuthenticationConstants.Broker.BROKER_RESULT_V2) instanceof BrokerResult)) {
            Logger.warn(TAG + ":verifyHelloFromResultBundle", "The result bundle is not in a recognizable format.");
            throw new ClientException(ErrorStrings.UNSUPPORTED_BROKER_VERSION_ERROR_CODE, ErrorStrings.UNSUPPORTED_BROKER_VERSION_ERROR_MESSAGE);
        } else {
            BrokerResult brokerResult = (BrokerResult) bundle.get(AuthenticationConstants.Broker.BROKER_RESULT_V2);
            throw new ClientException(brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        }
    }

    public void verifyRemoveAccountResultFromBundle(Bundle bundle) {
        if (bundle != null) {
            BrokerResult brokerResultFromJsonString = JsonExtensions.getBrokerResultFromJsonString(bundle.getString(AuthenticationConstants.Broker.BROKER_RESULT_V2));
            if (brokerResultFromJsonString == null || !brokerResultFromJsonString.isSuccess()) {
                Logger.warn(TAG, "Failed to remove account.");
                throw getBaseExceptionFromBundle(bundle);
            }
        }
    }
}
