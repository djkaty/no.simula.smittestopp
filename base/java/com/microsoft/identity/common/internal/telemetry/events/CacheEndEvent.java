package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.internal.cache.CacheRecord;
import com.microsoft.identity.common.internal.eststelemetry.EstsTelemetry;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.util.StringUtil;

public class CacheEndEvent extends BaseEvent {
    public CacheEndEvent() {
        names(TelemetryEventStrings.Event.CACHE_END_EVENT);
        types(TelemetryEventStrings.EventType.CACHE_EVENT);
    }

    public CacheEndEvent putAtStatus(String str) {
        put("Microsoft.MSAL.at_status", str);
        return this;
    }

    public CacheEndEvent putCacheRecordStatus(CacheRecord cacheRecord) {
        String str;
        String str2;
        String str3;
        if (cacheRecord == null) {
            return this;
        }
        String str4 = "false";
        put("Microsoft.MSAL.at_status", cacheRecord.getAccessToken() == null ? str4 : "true");
        if (cacheRecord.getRefreshToken() != null) {
            put("Microsoft.MSAL.mrrt_status", "true");
            put("Microsoft.MSAL.rt_status", "true");
            if (StringUtil.isEmpty(cacheRecord.getRefreshToken().getFamilyId())) {
                str3 = str4;
            } else {
                str3 = "true";
            }
            put("Microsoft.MSAL.frt_status", str3);
        } else {
            put("Microsoft.MSAL.rt_status", str4);
        }
        if (cacheRecord.getIdToken() == null) {
            str = str4;
        } else {
            str = "true";
        }
        put("Microsoft.MSAL.id_token_status", str);
        if (cacheRecord.getV1IdToken() == null) {
            str2 = str4;
        } else {
            str2 = "true";
        }
        put(TelemetryEventStrings.Key.V1_ID_TOKEN_STATUS, str2);
        if (cacheRecord.getAccount() != null) {
            str4 = "true";
        }
        put("Microsoft.MSAL.account_status", str4);
        EstsTelemetry.getInstance().emit(getProperties());
        return this;
    }

    public CacheEndEvent putFrtStatus(String str) {
        put("Microsoft.MSAL.frt_status", str);
        return this;
    }

    public CacheEndEvent putRtStatus(String str) {
        put("Microsoft.MSAL.rt_status", str);
        return this;
    }

    public CacheEndEvent putSpeInfo(String str) {
        put(TelemetryEventStrings.Key.SPE_INFO, str);
        return this;
    }
}
