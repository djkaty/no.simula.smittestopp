package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.authscheme.IPoPAuthenticationSchemeParams;
import com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal;
import e.a.a.a.a;
import java.net.URL;

public class PoPAuthenticationScheme extends AuthenticationScheme implements IPoPAuthenticationSchemeParams {
    public final HttpMethod mHttpMethod;
    public final String mNonce;
    public final URL mUrl;

    public static class Builder {
        public HttpMethod mHttpMethod;
        public String mNonce;
        public URL mUrl;

        public PoPAuthenticationScheme build() {
            URL url = this.mUrl;
            if (url != null) {
                HttpMethod httpMethod = this.mHttpMethod;
                if (httpMethod != null) {
                    return new PoPAuthenticationScheme(httpMethod, url, this.mNonce);
                }
                throw new IllegalArgumentException(a.b("PoP authentication scheme param must not be null: ", "HTTP Method"));
            }
            throw new IllegalArgumentException(a.b("PoP authentication scheme param must not be null: ", "URL"));
        }

        public Builder withHttpMethod(HttpMethod httpMethod) {
            this.mHttpMethod = httpMethod;
            return this;
        }

        public Builder withNonce(String str) {
            this.mNonce = str;
            return this;
        }

        public Builder withUrl(URL url) {
            this.mUrl = url;
            return this;
        }

        public Builder() {
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public String getHttpMethod() {
        return this.mHttpMethod.name();
    }

    public String getNonce() {
        return this.mNonce;
    }

    public URL getUrl() {
        return this.mUrl;
    }

    public PoPAuthenticationScheme(HttpMethod httpMethod, URL url, String str) {
        super(PopAuthenticationSchemeInternal.SCHEME_POP);
        this.mHttpMethod = httpMethod;
        this.mUrl = url;
        this.mNonce = str;
    }
}
