package no.simula.corona;

import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import d.o.g;
import d.o.k;
import d.o.s;
import d.o.t;
import d.r.b;
import h.k.b.g;
import l.a.a;

public final class CoronaApp extends b implements k {
    public static CoronaApp z;
    public boolean x;
    public boolean y;

    public static final class a extends a.b {
        public void a(int i2, String str, String str2, Throwable th) {
            if (str2 == null) {
                g.a("message");
                throw null;
            } else if (i2 != 2 && i2 != 3) {
                try {
                    Crashes.trackError(th);
                } catch (Exception unused) {
                }
            }
        }
    }

    @s(g.a.ON_STOP)
    public final void onAppBackgrounded() {
        this.x = true;
    }

    @s(g.a.ON_START)
    public final void onAppForegrounded() {
        this.x = false;
    }

    public void onCreate() {
        super.onCreate();
        z = this;
        t.F.getLifecycle().a(this);
        AppCenter.start(this, "a236c750-5e31-41e9-b5c4-00cf94decfb0", Analytics.class, Crashes.class);
        l.a.a.a(new a());
        l.a.a.f2455d.a("starting app", new Object[0]);
    }
}
