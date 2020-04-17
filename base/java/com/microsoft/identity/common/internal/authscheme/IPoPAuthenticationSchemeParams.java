package com.microsoft.identity.common.internal.authscheme;

import java.net.URL;

public interface IPoPAuthenticationSchemeParams extends INonced {
    String getHttpMethod();

    URL getUrl();
}
