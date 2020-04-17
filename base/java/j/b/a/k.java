package j.b.a;

import com.android.volley.Response;
import com.android.volley.toolbox.JsonObjectRequest;
import e.a.a.a.a;
import j.b.a.h;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

public final class k extends JsonObjectRequest {
    public final /* synthetic */ String x;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public k(String str, h.b bVar, int i2, String str2, JSONObject jSONObject, Response.Listener listener, Response.ErrorListener errorListener) {
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
