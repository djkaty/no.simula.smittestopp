package com.microsoft.identity.common.internal.providers.microsoft;

import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResponse;
import e.c.c.v.a;

public class MicrosoftAuthorizationResponse extends AuthorizationResponse {
    public static final String CLOUD_GRAPH_HOST_NAME = "cloud_graph_host_name";
    public static final String CLOUD_INSTANCE_HOST_NAME = "cloud_instance_host_name";
    public static final String CLOUD_INSTANCE_NAME = "cloud_instance_name";
    public static final String SESSION_STATE = "session_state";
    @a
    public String mCloudGraphHostName;
    @a
    public String mCloudInstanceHostName;
    @a
    public String mCloudInstanceName;
    @a
    public String mCorrelationId;
    @a
    public String mSessionState;

    public MicrosoftAuthorizationResponse(String str, String str2) {
        super(str, str2);
    }

    public String getCloudGraphHostName() {
        return this.mCloudGraphHostName;
    }

    public String getCloudInstanceHostName() {
        return this.mCloudInstanceHostName;
    }

    public String getCloudInstanceName() {
        return this.mCloudInstanceName;
    }

    public String getCorrelationId() {
        return this.mCorrelationId;
    }

    public String getSessionState() {
        return this.mSessionState;
    }

    public void setCorrelationId(String str) {
        this.mCorrelationId = str;
    }
}
