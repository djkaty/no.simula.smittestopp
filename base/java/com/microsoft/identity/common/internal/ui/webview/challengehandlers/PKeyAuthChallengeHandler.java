package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.content.Intent;
import android.webkit.WebView;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.adal.internal.IDeviceCertificate;
import com.microsoft.identity.common.adal.internal.JWSBuilder;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.lang.reflect.InvocationTargetException;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;

public final class PKeyAuthChallengeHandler implements IChallengeHandler<PKeyAuthChallenge, Void> {
    public static final String TAG = "PKeyAuthChallengeHandler";
    public IAuthorizationCompletionCallback mChallengeCallback;
    public WebView mWebView;

    public enum RequestField {
        Nonce,
        CertAuthorities,
        Version,
        SubmitUrl,
        Context,
        CertThumbprint
    }

    public PKeyAuthChallengeHandler(WebView webView, IAuthorizationCompletionCallback iAuthorizationCompletionCallback) {
        this.mWebView = webView;
        this.mChallengeCallback = iAuthorizationCompletionCallback;
    }

    public static Map<String, String> getChallengeHeader(PKeyAuthChallenge pKeyAuthChallenge) {
        String format = String.format("%s Context=\"%s\",Version=\"%s\"", new Object[]{AuthenticationConstants.Broker.CHALLENGE_RESPONSE_TYPE, pKeyAuthChallenge.getContext(), pKeyAuthChallenge.getVersion()});
        Class<?> deviceCertificateProxy = AuthenticationSettings.INSTANCE.getDeviceCertificateProxy();
        if (deviceCertificateProxy != null) {
            IDeviceCertificate wPJAPIInstance = getWPJAPIInstance(deviceCertificateProxy);
            if (wPJAPIInstance.isValidIssuer(pKeyAuthChallenge.getCertAuthorities()) || (wPJAPIInstance.getThumbPrint() != null && wPJAPIInstance.getThumbPrint().equalsIgnoreCase(pKeyAuthChallenge.getThumbprint()))) {
                RSAPrivateKey rSAPrivateKey = wPJAPIInstance.getRSAPrivateKey();
                if (rSAPrivateKey != null) {
                    format = String.format("%s AuthToken=\"%s\",Context=\"%s\",Version=\"%s\"", new Object[]{AuthenticationConstants.Broker.CHALLENGE_RESPONSE_TYPE, new JWSBuilder().generateSignedJWT(pKeyAuthChallenge.getNonce(), pKeyAuthChallenge.getSubmitUrl(), rSAPrivateKey, wPJAPIInstance.getRSAPublicKey(), wPJAPIInstance.getCertificate()), pKeyAuthChallenge.getContext(), pKeyAuthChallenge.getVersion()});
                    Logger.info(TAG, "Receive challenge response. ");
                } else {
                    throw new ClientException(ErrorStrings.KEY_CHAIN_PRIVATE_KEY_EXCEPTION);
                }
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("Authorization", format);
        return hashMap;
    }

    public static IDeviceCertificate getWPJAPIInstance(Class<IDeviceCertificate> cls) {
        try {
            return cls.getDeclaredConstructor(new Class[0]).newInstance((Object[]) null);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new ClientException(ErrorStrings.DEVICE_CERTIFICATE_API_EXCEPTION, "WPJ Api constructor is not defined", e2);
        }
    }

    public Void processChallenge(final PKeyAuthChallenge pKeyAuthChallenge) {
        this.mWebView.stopLoading();
        this.mChallengeCallback.setPKeyAuthStatus(true);
        try {
            final Map<String, String> challengeHeader = getChallengeHeader(pKeyAuthChallenge);
            this.mWebView.post(new Runnable() {
                public void run() {
                    String submitUrl = pKeyAuthChallenge.getSubmitUrl();
                    Logger.info(PKeyAuthChallengeHandler.TAG, "Respond to pkeyAuth challenge");
                    String access$000 = PKeyAuthChallengeHandler.TAG;
                    StringBuilder a = a.a("Challenge submit url:");
                    a.append(pKeyAuthChallenge.getSubmitUrl());
                    Logger.infoPII(access$000, a.toString());
                    PKeyAuthChallengeHandler.this.mWebView.loadUrl(submitUrl, challengeHeader);
                }
            });
            return null;
        } catch (ClientException e2) {
            Intent intent = new Intent();
            intent.putExtra(AuthenticationConstants.Browser.RESPONSE_AUTHENTICATION_EXCEPTION, e2);
            this.mChallengeCallback.onChallengeResponseReceived(AuthenticationConstants.UIResponse.BROWSER_CODE_AUTHENTICATION_EXCEPTION, intent);
            return null;
        }
    }
}
