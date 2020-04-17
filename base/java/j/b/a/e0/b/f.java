package j.b.a.e0.b;

import com.android.volley.Response;
import com.android.volley.toolbox.JsonObjectRequest;
import e.a.a.a.a;
import java.util.LinkedHashMap;
import java.util.Map;
import no.simula.corona.ui.main.SettingsFragment;
import org.json.JSONObject;

public final class f extends JsonObjectRequest {
    public final /* synthetic */ String x;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(SettingsFragment settingsFragment, String str, int i2, String str2, JSONObject jSONObject, Response.Listener listener, Response.ErrorListener errorListener) {
        super(i2, str2, jSONObject, listener, errorListener);
        this.x = str;
    }

    public Map<String, String> getHeaders() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        StringBuilder a = a.a("Bearer ");
        a.append(this.x);
        linkedHashMap.put("Authorization", a.toString());
        return linkedHashMap;
    }
}
