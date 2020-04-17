package com.microsoft.identity.common.internal.telemetry.rules;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class TelemetryAggregationRules {
    public static TelemetryAggregationRules sInstance;
    public final String[] aggregatedArray = {TelemetryEventStrings.Key.EVENT_NAME, TelemetryEventStrings.Key.OCCUR_TIME, TelemetryEventStrings.Key.EVENT_TYPE, TelemetryEventStrings.Key.IS_SUCCESSFUL};
    public Set<String> aggregatedPropertiesSet = new HashSet(Arrays.asList(this.aggregatedArray));

    public static synchronized TelemetryAggregationRules getInstance() {
        TelemetryAggregationRules telemetryAggregationRules;
        synchronized (TelemetryAggregationRules.class) {
            if (sInstance == null) {
                sInstance = new TelemetryAggregationRules();
            }
            telemetryAggregationRules = sInstance;
        }
        return telemetryAggregationRules;
    }

    public boolean isRedundant(String str) {
        if (StringUtil.isEmpty(str)) {
            return false;
        }
        return this.aggregatedPropertiesSet.contains(str);
    }
}
