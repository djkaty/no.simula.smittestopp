package j.b.a;

import android.os.Build;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import h.c;
import h.i.b;
import h.k.b.g;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class n {
    public final int a = 500;
    public final List<JSONArray> b = b.b(new JSONArray());

    /* renamed from: c  reason: collision with root package name */
    public final List<List<Integer>> f1516c = b.b(new ArrayList());

    public final void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            List<JSONArray> list = this.b;
            if (list.get(b.a(list)).length() >= this.a) {
                this.b.add(new JSONArray());
                this.f1516c.add(new ArrayList());
            }
            list.get(b.a(this.b)).put(jSONObject);
            return;
        }
        g.a("measurement");
        throw null;
    }

    public final void a(Integer num) {
        if (b.a(this.f1516c) >= 0 && num != null) {
            List<List<Integer>> list = this.f1516c;
            list.get(b.a(list)).add(num);
        }
    }

    public final o a() {
        ArrayList arrayList = new ArrayList();
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Device.APP_VERSION, "1.0.2");
            jSONObject.put("platform", TelemetryEventStrings.Os.OS_NAME);
            jSONObject.put(Device.OS_VERSION, Build.VERSION.RELEASE);
            jSONObject.put(Device.MODEL, Build.MANUFACTURER + WWWAuthenticateHeader.SPACE + Build.MODEL);
            jSONObject.put("events", this.b.get(i2));
            arrayList.add(new c(this.f1516c.get(i2), jSONObject));
        }
        return new o(arrayList);
    }
}
