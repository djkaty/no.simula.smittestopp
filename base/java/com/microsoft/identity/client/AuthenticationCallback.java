package com.microsoft.identity.client;

public interface AuthenticationCallback extends SilentAuthenticationCallback {
    void onCancel();
}
