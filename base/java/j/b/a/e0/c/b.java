package j.b.a.e0.c;

import android.view.View;
import h.k.b.g;
import no.simula.corona.ui.onboarding.OnboardingFragment;

public final class b implements View.OnClickListener {
    public final /* synthetic */ OnboardingFragment x;

    public b(OnboardingFragment onboardingFragment) {
        this.x = onboardingFragment;
    }

    public final void onClick(View view) {
        OnboardingFragment onboardingFragment = this.x;
        a aVar = onboardingFragment.y;
        if (aVar != null) {
            Integer num = onboardingFragment.x;
            if (num != null) {
                aVar.a(num.intValue(), 0);
            } else {
                g.a();
                throw null;
            }
        }
    }
}
