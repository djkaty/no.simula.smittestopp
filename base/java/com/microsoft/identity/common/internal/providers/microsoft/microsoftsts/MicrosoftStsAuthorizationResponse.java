package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationResponse;
import java.util.HashMap;

public class MicrosoftStsAuthorizationResponse extends MicrosoftAuthorizationResponse {
    public MicrosoftStsAuthorizationResponse(String str, String str2, HashMap<String, String> hashMap) {
        super(str, str2);
        this.mCloudGraphHostName = hashMap.get("cloud_graph_host_name");
        this.mCloudInstanceHostName = hashMap.get("cloud_instance_host_name");
        this.mCloudInstanceName = hashMap.get("cloud_instance_name");
        this.mSessionState = hashMap.get(MicrosoftAuthorizationResponse.SESSION_STATE);
    }
}
