package j.b.a.e0.b;

import com.android.volley.Response;
import no.simula.corona.ui.main.SettingsFragment;
import org.json.JSONObject;

public final class g<T> implements Response.Listener<JSONObject> {
    public final /* synthetic */ SettingsFragment x;

    public g(SettingsFragment settingsFragment) {
        this.x = settingsFragment;
    }

    public void onResponse(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        SettingsFragment settingsFragment = this.x;
        h.k.b.g.a((Object) jSONObject, "response");
        SettingsFragment.a(settingsFragment, jSONObject);
    }
}
