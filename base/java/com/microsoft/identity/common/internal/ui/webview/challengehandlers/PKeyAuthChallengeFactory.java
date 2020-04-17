package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import com.microsoft.azure.storage.Constants;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallenge;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeHandler;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public class PKeyAuthChallengeFactory {
    public static final String CHALLENGE_REQUEST_CERT_AUTH_DELIMITER = ";";
    public static final String TAG = "PKeyAuthChallengeFactory";

    private Map<String, String> getPKeyAuthHeader(String str) {
        String substring = str.substring(8);
        ArrayList<String> splitWithQuotes = StringExtensions.splitWithQuotes(substring, WWWAuthenticateHeader.COMMA);
        HashMap hashMap = new HashMap();
        Iterator<String> it = splitWithQuotes.iterator();
        while (it.hasNext()) {
            ArrayList<String> splitWithQuotes2 = StringExtensions.splitWithQuotes(it.next(), Mqtt.MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR);
            if (splitWithQuotes2.size() == 2 && !StringExtensions.isNullOrBlank(splitWithQuotes2.get(0)) && !StringExtensions.isNullOrBlank(splitWithQuotes2.get(1))) {
                hashMap.put(StringExtensions.urlFormDecode(splitWithQuotes2.get(0)).trim(), StringExtensions.removeQuoteInHeaderValue(StringExtensions.urlFormDecode(splitWithQuotes2.get(1)).trim()));
            } else if (splitWithQuotes2.size() != 1 || StringExtensions.isNullOrBlank(splitWithQuotes2.get(0))) {
                throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, substring);
            } else {
                hashMap.put(StringExtensions.urlFormDecode(splitWithQuotes2.get(0)).trim(), StringExtensions.urlFormDecode(""));
            }
        }
        return hashMap;
    }

    private boolean isWorkplaceJoined() {
        return AuthenticationSettings.INSTANCE.getDeviceCertificateProxy() != null;
    }

    private void validateHeaderForPkeyAuthChallenge(String str) {
        if (StringUtil.isEmpty(str)) {
            throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "header value is empty.");
        } else if (!StringExtensions.hasPrefixInHeader(str, AuthenticationConstants.Broker.CHALLENGE_RESPONSE_TYPE)) {
            throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "challenge response type is wrong.");
        }
    }

    private void validatePKeyAuthChallenge(Map<String, String> map) {
        PKeyAuthChallengeHandler.RequestField requestField = PKeyAuthChallengeHandler.RequestField.Nonce;
        if (!map.containsKey("Nonce")) {
            PKeyAuthChallengeHandler.RequestField requestField2 = PKeyAuthChallengeHandler.RequestField.Nonce;
            if (!map.containsKey("Nonce".toLowerCase(Locale.US))) {
                throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "Nonce is empty.");
            }
        }
        PKeyAuthChallengeHandler.RequestField requestField3 = PKeyAuthChallengeHandler.RequestField.Version;
        if (map.containsKey(Constants.AnalyticsConstants.VERSION_ELEMENT)) {
            PKeyAuthChallengeHandler.RequestField requestField4 = PKeyAuthChallengeHandler.RequestField.SubmitUrl;
            if (map.containsKey("SubmitUrl")) {
                PKeyAuthChallengeHandler.RequestField requestField5 = PKeyAuthChallengeHandler.RequestField.Context;
                if (map.containsKey(AuthenticationConstants.Broker.CHALLENGE_RESPONSE_CONTEXT)) {
                    PKeyAuthChallengeHandler.RequestField requestField6 = PKeyAuthChallengeHandler.RequestField.CertAuthorities;
                    if (!map.containsKey("CertAuthorities")) {
                        throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "CertAuthorities is empty");
                    }
                    return;
                }
                throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "Context is empty");
            }
            throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "SubmitUrl is empty");
        }
        throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "Version name is empty");
    }

    public PKeyAuthChallenge getPKeyAuthChallenge(String str) {
        HashMap<String, String> urlParameters = StringExtensions.getUrlParameters(str);
        validatePKeyAuthChallenge(urlParameters);
        PKeyAuthChallenge.Builder builder = new PKeyAuthChallenge.Builder();
        PKeyAuthChallengeHandler.RequestField requestField = PKeyAuthChallengeHandler.RequestField.Nonce;
        PKeyAuthChallenge.Builder nonce = builder.setNonce(urlParameters.get("Nonce".toLowerCase(Locale.US)));
        PKeyAuthChallengeHandler.RequestField requestField2 = PKeyAuthChallengeHandler.RequestField.Context;
        PKeyAuthChallenge.Builder context = nonce.setContext(urlParameters.get(AuthenticationConstants.Broker.CHALLENGE_RESPONSE_CONTEXT));
        PKeyAuthChallengeHandler.RequestField requestField3 = PKeyAuthChallengeHandler.RequestField.CertAuthorities;
        PKeyAuthChallenge.Builder certAuthorities = context.setCertAuthorities(StringExtensions.getStringTokens(urlParameters.get("CertAuthorities"), ";"));
        PKeyAuthChallengeHandler.RequestField requestField4 = PKeyAuthChallengeHandler.RequestField.Version;
        PKeyAuthChallenge.Builder version = certAuthorities.setVersion(urlParameters.get(Constants.AnalyticsConstants.VERSION_ELEMENT));
        PKeyAuthChallengeHandler.RequestField requestField5 = PKeyAuthChallengeHandler.RequestField.SubmitUrl;
        version.setSubmitUrl(urlParameters.get("SubmitUrl"));
        return builder.build();
    }

    public PKeyAuthChallenge getPKeyAuthChallenge(String str, String str2) {
        validateHeaderForPkeyAuthChallenge(str);
        Map<String, String> pKeyAuthHeader = getPKeyAuthHeader(str);
        validatePKeyAuthChallenge(pKeyAuthHeader);
        PKeyAuthChallenge.Builder builder = new PKeyAuthChallenge.Builder();
        PKeyAuthChallenge.Builder submitUrl = builder.setSubmitUrl(str2);
        PKeyAuthChallengeHandler.RequestField requestField = PKeyAuthChallengeHandler.RequestField.Nonce;
        PKeyAuthChallenge.Builder nonce = submitUrl.setNonce(pKeyAuthHeader.get("Nonce".toLowerCase(Locale.US)));
        PKeyAuthChallengeHandler.RequestField requestField2 = PKeyAuthChallengeHandler.RequestField.Version;
        PKeyAuthChallenge.Builder version = nonce.setVersion(pKeyAuthHeader.get(Constants.AnalyticsConstants.VERSION_ELEMENT));
        PKeyAuthChallengeHandler.RequestField requestField3 = PKeyAuthChallengeHandler.RequestField.Context;
        version.setContext(pKeyAuthHeader.get(AuthenticationConstants.Broker.CHALLENGE_RESPONSE_CONTEXT));
        if (!isWorkplaceJoined()) {
            Logger.info(TAG, "Device is not workplace joined. ");
        } else {
            PKeyAuthChallengeHandler.RequestField requestField4 = PKeyAuthChallengeHandler.RequestField.CertThumbprint;
            if (!StringExtensions.isNullOrBlank(pKeyAuthHeader.get("CertThumbprint"))) {
                Logger.info(TAG, "CertThumbprint exists in the device auth challenge.");
                PKeyAuthChallengeHandler.RequestField requestField5 = PKeyAuthChallengeHandler.RequestField.CertThumbprint;
                builder.setThumbprint(pKeyAuthHeader.get("CertThumbprint"));
            } else {
                PKeyAuthChallengeHandler.RequestField requestField6 = PKeyAuthChallengeHandler.RequestField.CertAuthorities;
                if (pKeyAuthHeader.containsKey("CertAuthorities")) {
                    Logger.info(TAG, "CertAuthorities exists in the device auth challenge.");
                    PKeyAuthChallengeHandler.RequestField requestField7 = PKeyAuthChallengeHandler.RequestField.CertAuthorities;
                    builder.setCertAuthorities(StringExtensions.getStringTokens(pKeyAuthHeader.get("CertAuthorities"), ";"));
                } else {
                    throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_REQUEST_INVALID, "Both certThumbprint and cert authorities are not present");
                }
            }
        }
        return builder.build();
    }
}
