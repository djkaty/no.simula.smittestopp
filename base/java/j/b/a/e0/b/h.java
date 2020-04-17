package j.b.a.e0.b;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import h.k.b.g;
import no.simula.corona.ui.main.SettingsFragment;

public final class h implements Response.ErrorListener {
    public final /* synthetic */ SettingsFragment x;

    public h(SettingsFragment settingsFragment) {
        this.x = settingsFragment;
    }

    public final void onErrorResponse(VolleyError volleyError) {
        SettingsFragment settingsFragment = this.x;
        g.a((Object) volleyError, "error");
        SettingsFragment.a(settingsFragment, volleyError);
    }
}
