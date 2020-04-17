package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.content.Intent;

public interface IAuthorizationCompletionCallback {
    void onChallengeResponseReceived(int i2, Intent intent);

    void setPKeyAuthStatus(boolean z);
}
