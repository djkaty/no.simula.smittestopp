package com.android.volley.toolbox;

public interface Authenticator {
    String getAuthToken();

    void invalidateAuthToken(String str);
}
