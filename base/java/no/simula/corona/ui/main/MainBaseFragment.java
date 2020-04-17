package no.simula.corona.ui.main;

import android.content.Context;
import com.microsoft.identity.client.PublicClientApplication;
import h.k.b.g;
import j.b.a.e0.b.b;
import no.simula.corona.ui.BaseFragment;

public class MainBaseFragment extends BaseFragment {
    public b x;

    public void a() {
    }

    public void onAttach(Context context) {
        if (context != null) {
            super.onAttach(context);
            if (context instanceof b) {
                this.x = (b) context;
                return;
            }
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        a();
    }
}
