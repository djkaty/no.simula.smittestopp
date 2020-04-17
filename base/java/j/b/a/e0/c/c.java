package j.b.a.e0.c;

import android.view.View;
import h.k.b.g;
import no.simula.corona.ui.onboarding.PrivavcyOnboardingFragment;

public final class c implements View.OnClickListener {
    public final /* synthetic */ PrivavcyOnboardingFragment x;

    public c(PrivavcyOnboardingFragment privavcyOnboardingFragment) {
        this.x = privavcyOnboardingFragment;
    }

    public final void onClick(View view) {
        PrivavcyOnboardingFragment privavcyOnboardingFragment = this.x;
        a aVar = privavcyOnboardingFragment.y;
        if (aVar != null) {
            Integer num = privavcyOnboardingFragment.x;
            if (num != null) {
                aVar.a(num.intValue(), 0);
            } else {
                g.a();
                throw null;
            }
        }
    }
}
