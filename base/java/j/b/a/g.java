package j.b.a;

import com.android.volley.VolleyError;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.analytics.EventProperties;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import j.b.a.h;
import java.util.LinkedHashMap;
import org.json.JSONObject;

public final class g implements h.b {
    public void a(JSONObject jSONObject, boolean z) {
        EventProperties eventProperties = new EventProperties();
        eventProperties.set("where", "DataCollector retryProvisioning");
        Analytics.trackEvent("Provisioned", eventProperties);
    }

    public void a(VolleyError volleyError) {
        if (volleyError != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("where", "DataCollector retryProvisioning");
            Crashes.trackError(volleyError, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
            return;
        }
        h.k.b.g.a("error");
        throw null;
    }
}
