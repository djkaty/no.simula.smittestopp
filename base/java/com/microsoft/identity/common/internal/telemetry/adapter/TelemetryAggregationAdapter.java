package com.microsoft.identity.common.internal.telemetry.adapter;

import com.microsoft.identity.common.internal.eststelemetry.Schema;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.telemetry.observers.ITelemetryAggregatedObserver;
import com.microsoft.identity.common.internal.telemetry.rules.TelemetryAggregationRules;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class TelemetryAggregationAdapter implements ITelemetryAdapter<List<Map<String, String>>> {
    public final String END = "end";
    public final String START = "start";
    public ITelemetryAggregatedObserver mObserver;

    public TelemetryAggregationAdapter(ITelemetryAggregatedObserver iTelemetryAggregatedObserver) {
        this.mObserver = iTelemetryAggregatedObserver;
    }

    private Map<String, String> applyAggregationRule(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            if (!StringUtil.isEmpty((String) next.getValue()) && !TelemetryAggregationRules.getInstance().isRedundant((String) next.getKey())) {
                hashMap.put(next.getKey(), next.getValue());
            }
        }
        return hashMap;
    }

    private void calculateEventResponseTime(Map<String, String> map, Map<String, String> map2) {
        String str;
        for (Map.Entry next : map.entrySet()) {
            String str2 = (String) next.getKey();
            if (str2.contains("start") && (str = map.get(str2.replace("start", "end"))) != null) {
                map2.put(str2.replace("start", "response"), String.valueOf(Long.parseLong(str) - Long.parseLong((String) next.getValue())));
            }
        }
    }

    private void trackEventResponseTime(Map<String, String> map, Map<String, String> map2) {
        String str = map2.get(TelemetryEventStrings.Key.EVENT_NAME);
        String str2 = map2.get(TelemetryEventStrings.Key.EVENT_TYPE);
        if (str != null && str.contains("start")) {
            map.put(a.b(str2, "_start_time"), map2.get(TelemetryEventStrings.Key.OCCUR_TIME));
        }
        if (str != null && str.contains("end")) {
            map.put(a.b(str2, "_end_time"), map2.get(TelemetryEventStrings.Key.OCCUR_TIME));
        }
    }

    public ITelemetryAggregatedObserver getObserver() {
        return this.mObserver;
    }

    public void process(List<Map<String, String>> list) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Map next : list) {
            String str = (String) next.get(TelemetryEventStrings.Key.EVENT_NAME);
            String str2 = (String) next.get(TelemetryEventStrings.Key.EVENT_TYPE);
            if (StringUtil.isEmpty(str)) {
                hashMap.putAll(applyAggregationRule(next));
            } else {
                if (str.contains("start")) {
                    String b = a.b(str2, "_count");
                    String str3 = (String) hashMap.get(b);
                    if (str3 == null) {
                        str3 = Schema.Value.FALSE;
                    }
                    hashMap.put(b, String.valueOf(Integer.parseInt(str3) + 1));
                }
                if (!StringUtil.isEmpty((String) next.get(TelemetryEventStrings.Key.IS_SUCCESSFUL))) {
                    hashMap.put(a.b(str2, TelemetryEventStrings.Key.IS_SUCCESSFUL), next.get(TelemetryEventStrings.Key.IS_SUCCESSFUL));
                }
                trackEventResponseTime(hashMap2, next);
                hashMap.putAll(applyAggregationRule(next));
            }
        }
        calculateEventResponseTime(hashMap2, hashMap);
        this.mObserver.onReceived(hashMap);
    }
}
