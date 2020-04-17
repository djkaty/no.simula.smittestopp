package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.annotation.TargetApi;
import android.app.Activity;
import android.security.KeyChain;
import android.security.KeyChainAliasCallback;
import android.security.KeyChainException;
import android.webkit.ClientCertRequest;
import com.microsoft.identity.common.internal.logging.Logger;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

public final class ClientCertAuthChallengeHandler implements IChallengeHandler<ClientCertRequest, Void> {
    public static final String ACCEPTABLE_ISSUER = "CN=MS-Organization-Access";
    public static final String TAG = "ClientCertAuthChallengeHandler";
    public Activity mActivity;

    public ClientCertAuthChallengeHandler(Activity activity) {
        this.mActivity = activity;
    }

    @TargetApi(21)
    public Void processChallenge(final ClientCertRequest clientCertRequest) {
        Principal[] principals = clientCertRequest.getPrincipals();
        if (principals != null) {
            for (Principal name : principals) {
                if (name.getName().contains(ACCEPTABLE_ISSUER)) {
                    Logger.info(TAG, "Cancelling the TLS request, not respond to TLS challenge triggered by device authentication.");
                    clientCertRequest.cancel();
                    return null;
                }
            }
        }
        KeyChain.choosePrivateKeyAlias(this.mActivity, new KeyChainAliasCallback() {
            public void alias(String str) {
                if (str == null) {
                    Logger.info(ClientCertAuthChallengeHandler.TAG, "No certificate chosen by user, cancelling the TLS request.");
                    clientCertRequest.cancel();
                    return;
                }
                try {
                    X509Certificate[] certificateChain = KeyChain.getCertificateChain(ClientCertAuthChallengeHandler.this.mActivity.getApplicationContext(), str);
                    PrivateKey privateKey = KeyChain.getPrivateKey(ClientCertAuthChallengeHandler.this.mActivity, str);
                    Logger.info(ClientCertAuthChallengeHandler.TAG, "Certificate is chosen by user, proceed with TLS request.");
                    clientCertRequest.proceed(privateKey, certificateChain);
                } catch (KeyChainException e2) {
                    Logger.errorPII(ClientCertAuthChallengeHandler.TAG, "KeyChain exception", e2);
                    clientCertRequest.cancel();
                } catch (InterruptedException e3) {
                    Logger.errorPII(ClientCertAuthChallengeHandler.TAG, "InterruptedException exception", e3);
                    clientCertRequest.cancel();
                }
            }
        }, clientCertRequest.getKeyTypes(), clientCertRequest.getPrincipals(), clientCertRequest.getHost(), clientCertRequest.getPort(), (String) null);
        return null;
    }
}
