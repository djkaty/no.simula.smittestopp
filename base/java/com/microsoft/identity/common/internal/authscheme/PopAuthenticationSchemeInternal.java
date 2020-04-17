package com.microsoft.identity.common.internal.authscheme;

import com.microsoft.identity.common.internal.platform.Device;
import e.c.c.v.c;
import java.net.URL;

public class PopAuthenticationSchemeInternal extends TokenAuthenticationScheme implements IPoPAuthenticationSchemeParams {
    public static final String SCHEME_POP = "PoP";
    @c("http_method")
    public String mHttpMethod;
    @c("nonce")
    public String mNonce;
    @c("url")
    public URL mUrl;

    public static final class SerializedNames {
        public static final String HTTP_METHOD = "http_method";
        public static final String NONCE = "nonce";
        public static final String URL = "url";
    }

    public PopAuthenticationSchemeInternal() {
        super(SCHEME_POP);
    }

    public String getAccessTokenForScheme(String str) {
        return Device.getDevicePoPManagerInstance().mintSignedAccessToken(getHttpMethod(), getUrl(), str, getNonce());
    }

    public String getHttpMethod() {
        return this.mHttpMethod;
    }

    public String getNonce() {
        return this.mNonce;
    }

    public URL getUrl() {
        return this.mUrl;
    }

    public PopAuthenticationSchemeInternal(String str, URL url, String str2) {
        super(SCHEME_POP);
        this.mHttpMethod = str;
        this.mUrl = url;
        this.mNonce = str2;
    }
}
