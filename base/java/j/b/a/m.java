package j.b.a;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import h.k.b.g;
import j.b.a.h;

public final class m implements Response.ErrorListener {
    public final /* synthetic */ h.b x;

    public m(h.b bVar) {
        this.x = bVar;
    }

    public final void onErrorResponse(VolleyError volleyError) {
        h.b bVar = this.x;
        if (bVar != null) {
            g.a((Object) volleyError, "error");
            bVar.a(volleyError);
        }
    }
}
