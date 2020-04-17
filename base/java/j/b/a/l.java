package j.b.a;

import com.android.volley.Response;
import j.b.a.h;
import org.json.JSONObject;

public final class l<T> implements Response.Listener<JSONObject> {
    public final /* synthetic */ h.b x;

    public l(h.b bVar) {
        this.x = bVar;
    }

    public void onResponse(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        h.b bVar = this.x;
        if (bVar != null) {
            bVar.a(jSONObject, false);
        }
    }
}
