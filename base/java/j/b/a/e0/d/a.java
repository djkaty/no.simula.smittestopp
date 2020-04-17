package j.b.a.e0.d;

import com.android.volley.VolleyError;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import h.k.b.g;
import j.b.a.h;
import java.util.LinkedHashMap;
import no.simula.corona.ui.register.RegisterActivity;
import org.json.JSONObject;

public final class a implements h.b {
    public final /* synthetic */ RegisterActivity a;

    public a(RegisterActivity registerActivity) {
        this.a = registerActivity;
    }

    public void a(JSONObject jSONObject, boolean z) {
        Analytics.trackEvent("User provisioned");
        this.a.l();
    }

    public void a(VolleyError volleyError) {
        if (volleyError != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("where", "PostPhoneVerProvision");
            Crashes.trackError(volleyError, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
            this.a.l();
            return;
        }
        g.a("error");
        throw null;
    }
}
