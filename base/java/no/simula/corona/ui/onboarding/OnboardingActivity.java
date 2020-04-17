package no.simula.corona.ui.onboarding;

import android.app.Application;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.android.volley.VolleyError;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import d.a0.a.b;
import d.m.a.p;
import d.m.a.w;
import h.e;
import h.k.b.g;
import j.b.a.h;
import java.util.ArrayList;
import java.util.HashMap;
import no.simula.corona.ConsentActivity;
import no.simula.corona.R$id;
import no.simula.corona.R$layout;
import no.simula.corona.R$string;
import no.simula.corona.ui.dialogs.CoronaDialogInfo;
import no.simula.corona.ui.register.PhoneVerificationActivity;
import no.simula.corona.ui.widgets.DotPageIndicator;
import no.simula.corona.ui.widgets.NonSlidingViewPager;
import org.json.JSONObject;

public final class OnboardingActivity extends j.b.a.e0.a implements j.b.a.e0.c.a {
    public HashMap z;

    public static final class b extends w {

        /* renamed from: h  reason: collision with root package name */
        public final /* synthetic */ OnboardingActivity f2460h;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public b(OnboardingActivity onboardingActivity, p pVar) {
            super(pVar);
            this.f2460h = onboardingActivity;
        }
    }

    public static final class c implements b.i {
        public final /* synthetic */ OnboardingActivity a;

        public c(OnboardingActivity onboardingActivity) {
            this.a = onboardingActivity;
        }

        public void a(int i2) {
        }

        public void a(int i2, float f2, int i3) {
        }

        public void b(int i2) {
            ((DotPageIndicator) this.a.a(R$id.pageIndicator)).setSelected(i2);
        }
    }

    public View a(int i2) {
        if (this.z == null) {
            this.z = new HashMap();
        }
        View view = (View) this.z.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i2);
        this.z.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 101) {
            if (i3 == -1) {
                l.a.a.f2455d.c("Confirmed consent", new Object[0]);
                Analytics.trackEvent("Confirmed consent");
                SharedPreferences.Editor edit = getSharedPreferences("settings", 0).edit();
                edit.putBoolean("consented", true);
                edit.apply();
                ((NonSlidingViewPager) a(R$id.viewPager)).a(3, true);
                return;
            }
            Analytics.trackEvent("Denied consent");
        } else if (i2 != 102) {
        } else {
            if (i3 == -1) {
                NonSlidingViewPager nonSlidingViewPager = (NonSlidingViewPager) a(R$id.viewPager);
                g.a((Object) nonSlidingViewPager, "viewPager");
                nonSlidingViewPager.setVisibility(8);
                DotPageIndicator dotPageIndicator = (DotPageIndicator) a(R$id.pageIndicator);
                g.a((Object) dotPageIndicator, "pageIndicator");
                dotPageIndicator.setVisibility(8);
                ProgressBar progressBar = (ProgressBar) a(R$id.spinner);
                g.a((Object) progressBar, "spinner");
                progressBar.setVisibility(0);
                String stringExtra = intent != null ? intent.getStringExtra(ResponseType.TOKEN) : null;
                Application application = getApplication();
                g.a((Object) application, "this.application");
                h hVar = new h(application);
                if (stringExtra != null) {
                    hVar.a(stringExtra, new a(this));
                } else {
                    g.a();
                    throw null;
                }
            } else if (i3 != 0) {
                l();
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R$layout.activity_onboarding);
        ((NonSlidingViewPager) a(R$id.viewPager)).setAdapter(new b(this, getSupportFragmentManager()));
        ((DotPageIndicator) a(R$id.pageIndicator)).setTotalDots(4);
        NonSlidingViewPager nonSlidingViewPager = (NonSlidingViewPager) a(R$id.viewPager);
        c cVar = new c(this);
        if (nonSlidingViewPager.r0 == null) {
            nonSlidingViewPager.r0 = new ArrayList();
        }
        nonSlidingViewPager.r0.add(cVar);
    }

    public void a(int i2, int i3) {
        if (i2 < 2) {
            ((NonSlidingViewPager) a(R$id.viewPager)).a(i2 + 1, true);
        }
        if (i2 == 2) {
            startActivityForResult(new Intent(this, ConsentActivity.class), 101);
        }
        if (i2 == 3) {
            boolean z2 = false;
            Object systemService = getSystemService("connectivity");
            if (systemService != null) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    z2 = activeNetworkInfo.isConnected();
                }
                if (z2) {
                    startActivityForResult(new Intent(this, PhoneVerificationActivity.class), 102);
                } else {
                    Toast.makeText(this, getString(R$string.internet_error), 1).show();
                }
            } else {
                throw new e("null cannot be cast to non-null type android.net.ConnectivityManager");
            }
        }
    }

    public static final class a implements h.b {
        public final /* synthetic */ OnboardingActivity a;

        /* renamed from: no.simula.corona.ui.onboarding.OnboardingActivity$a$a  reason: collision with other inner class name */
        public static final class C0108a implements DialogInterface.OnClickListener {
            public final /* synthetic */ a x;

            public C0108a(a aVar) {
                this.x = aVar;
            }

            public void onClick(DialogInterface dialogInterface, int i2) {
                this.x.a.l();
            }
        }

        public a(OnboardingActivity onboardingActivity) {
            this.a = onboardingActivity;
        }

        public void a(JSONObject jSONObject, boolean z) {
            Analytics.trackEvent("User provisioned");
            if (!this.a.isFinishing()) {
                this.a.l();
            }
        }

        public void a(VolleyError volleyError) {
            if (volleyError != null) {
                Analytics.trackEvent("User failed provisioning");
                if (!this.a.isFinishing()) {
                    CoronaDialogInfo coronaDialogInfo = new CoronaDialogInfo();
                    Bundle bundle = new Bundle();
                    bundle.putInt("title", R$string.app_name);
                    bundle.putInt("message", R$string.some_thing_went_wrong);
                    coronaDialogInfo.setArguments(bundle);
                    coronaDialogInfo.K = new C0108a(this);
                    Crashes.trackError(volleyError);
                    this.a.l();
                    return;
                }
                return;
            }
            g.a("error");
            throw null;
        }
    }
}
