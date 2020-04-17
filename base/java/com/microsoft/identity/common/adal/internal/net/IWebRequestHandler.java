package com.microsoft.identity.common.adal.internal.net;

import java.net.URL;
import java.util.Map;
import java.util.UUID;

public interface IWebRequestHandler {
    HttpWebResponse sendGet(URL url, Map<String, String> map);

    HttpWebResponse sendPost(URL url, Map<String, String> map, byte[] bArr, String str);

    void setClientVersion(String str);

    void setRequestCorrelationId(UUID uuid);
}
