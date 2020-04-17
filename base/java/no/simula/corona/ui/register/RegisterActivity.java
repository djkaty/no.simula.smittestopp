package no.simula.corona.ui.register;

import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import d.m.a.p;
import h.k.b.g;
import j.b.a.e0.a;
import j.b.a.h;
import no.simula.corona.R$drawable;
import no.simula.corona.R$layout;
import no.simula.corona.R$string;
import no.simula.corona.ui.onboarding.OnboardingFragment;

public final class RegisterActivity extends a implements j.b.a.e0.c.a {
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 != 102) {
            return;
        }
        if (i3 == -1) {
            String stringExtra = intent != null ? intent.getStringExtra(ResponseType.TOKEN) : null;
            if (stringExtra != null) {
                Application application = getApplication();
                g.a((Object) application, "this.application");
                new h(application).a(stringExtra, new j.b.a.e0.d.a(this));
            }
        } else if (i3 != 0) {
            l();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R$layout.activity_register);
        if (bundle == null) {
            String string = getString(R$string.title4);
            g.a((Object) string, "getString(R.string.title4)");
            String string2 = getString(R$string.register);
            g.a((Object) string2, "getString(R.string.register)");
            OnboardingFragment a = OnboardingFragment.a(3, string, R$string.onboarding4, R$drawable.ic_sms, string2);
            p supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager != null) {
                d.m.a.a aVar = new d.m.a.a(supportFragmentManager);
                g.a((Object) aVar, "supportFragmentManager.beginTransaction()");
                aVar.a(2131361895, a, (String) null, 1);
                aVar.a();
                return;
            }
            throw null;
        }
    }

    public void a(int i2, int i3) {
        startActivityForResult(new Intent(this, PhoneVerificationActivity.class), 102);
    }
}
