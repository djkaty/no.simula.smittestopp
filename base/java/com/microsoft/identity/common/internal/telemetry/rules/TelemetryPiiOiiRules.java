package com.microsoft.identity.common.internal.telemetry.rules;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public final class TelemetryPiiOiiRules {
    public static TelemetryPiiOiiRules sInstance;
    public final String[] oiiArray = {TelemetryEventStrings.Key.TENANT_ID, TelemetryEventStrings.Key.CLIENT_ID, TelemetryEventStrings.Key.REDIRECT_URI, TelemetryEventStrings.Key.HTTP_PATH, TelemetryEventStrings.Key.AUTHORITY, TelemetryEventStrings.Key.IDP_NAME};
    public Set<String> oiiPropertiesSet = new HashSet(Arrays.asList(this.oiiArray));
    public final String[] piiArray = {TelemetryEventStrings.Key.USER_ID, TelemetryEventStrings.Device.ID, TelemetryEventStrings.Key.LOGIN_HINT, TelemetryEventStrings.Key.ERROR_DESCRIPTION, TelemetryEventStrings.Key.REQUEST_QUERY_PARAMS, TelemetryEventStrings.Key.REDIRECT_URI, TelemetryEventStrings.Key.SCOPE, TelemetryEventStrings.Key.CLAIM_REQUEST};
    public Set<String> piiPropertiesSet = new HashSet(Arrays.asList(this.piiArray));

    public static synchronized TelemetryPiiOiiRules getInstance() {
        TelemetryPiiOiiRules telemetryPiiOiiRules;
        synchronized (TelemetryPiiOiiRules.class) {
            if (sInstance == null) {
                sInstance = new TelemetryPiiOiiRules();
            }
            telemetryPiiOiiRules = sInstance;
        }
        return telemetryPiiOiiRules;
    }

    public boolean isOii(String str) {
        if (StringUtil.isEmpty(str)) {
            return false;
        }
        return this.oiiPropertiesSet.contains(str);
    }

    public boolean isPii(String str) {
        if (StringUtil.isEmpty(str)) {
            return false;
        }
        return this.piiPropertiesSet.contains(str);
    }

    public boolean isPiiOrOii(String str) {
        return isPii(str) || isOii(str);
    }
}
