package com.microsoft.identity.common.internal.ui;

import android.content.Context;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.ui.browser.BrowserAuthorizationStrategy;
import com.microsoft.identity.common.internal.ui.browser.BrowserSelector;
import com.microsoft.identity.common.internal.ui.webview.EmbeddedWebViewAuthorizationStrategy;

public class AuthorizationStrategyFactory<GenericAuthorizationStrategy extends AuthorizationStrategy> {
    public static final String TAG = "AuthorizationStrategyFactory";
    public static AuthorizationStrategyFactory sInstance;

    public static AuthorizationStrategyFactory getInstance() {
        if (sInstance == null) {
            sInstance = new AuthorizationStrategyFactory();
        }
        return sInstance;
    }

    private AuthorizationAgent validAuthorizationAgent(AuthorizationAgent authorizationAgent, Context context) {
        if (authorizationAgent == AuthorizationAgent.WEBVIEW || !BrowserSelector.getAllBrowsers(context).isEmpty()) {
            return authorizationAgent;
        }
        Logger.verbose(TAG, "Unable to use browser to do the authorization because No available browser installed on the device. Use embedded webView instead.");
        return AuthorizationAgent.WEBVIEW;
    }

    public GenericAuthorizationStrategy getAuthorizationStrategy(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        AuthorizationAgent validAuthorizationAgent = validAuthorizationAgent(acquireTokenOperationParameters.getAuthorizationAgent(), acquireTokenOperationParameters.getAppContext());
        boolean z = acquireTokenOperationParameters instanceof BrokerAcquireTokenOperationParameters;
        if (validAuthorizationAgent == AuthorizationAgent.WEBVIEW) {
            Logger.info(TAG, "Use webView for authorization.");
            return new EmbeddedWebViewAuthorizationStrategy(acquireTokenOperationParameters.getAppContext(), acquireTokenOperationParameters.getActivity(), acquireTokenOperationParameters.getFragment());
        } else if (validAuthorizationAgent == AuthorizationAgent.DEFAULT) {
            try {
                BrowserSelector.select(acquireTokenOperationParameters.getAppContext(), acquireTokenOperationParameters.getBrowserSafeList());
            } catch (ClientException e2) {
                Logger.info(TAG, "No supported browser available found. Fallback to the webView authorization agent.");
                if (e2.getErrorCode().equalsIgnoreCase(ErrorStrings.NO_AVAILABLE_BROWSER_FOUND)) {
                    return new EmbeddedWebViewAuthorizationStrategy(acquireTokenOperationParameters.getAppContext(), acquireTokenOperationParameters.getActivity(), acquireTokenOperationParameters.getFragment());
                }
            }
            Logger.info(TAG, "Use browser for authorization.");
            GenericAuthorizationStrategy browserAuthorizationStrategy = new BrowserAuthorizationStrategy(acquireTokenOperationParameters.getAppContext(), acquireTokenOperationParameters.getActivity(), acquireTokenOperationParameters.getFragment(), z);
            browserAuthorizationStrategy.setBrowserSafeList(acquireTokenOperationParameters.getBrowserSafeList());
            return browserAuthorizationStrategy;
        } else {
            Logger.info(TAG, "Use browser for authorization.");
            GenericAuthorizationStrategy browserAuthorizationStrategy2 = new BrowserAuthorizationStrategy(acquireTokenOperationParameters.getAppContext(), acquireTokenOperationParameters.getActivity(), acquireTokenOperationParameters.getFragment(), z);
            browserAuthorizationStrategy2.setBrowserSafeList(acquireTokenOperationParameters.getBrowserSafeList());
            return browserAuthorizationStrategy2;
        }
    }
}
