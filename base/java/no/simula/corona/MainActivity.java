package no.simula.corona;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.navigation.NavController;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAuthorizationRequest;
import d.b.a.h;
import d.b.a.k;
import d.b.a.r;
import d.b.a.s;
import d.s.j;
import d.s.m;
import d.s.n;
import d.s.s.c;
import h.k.b.g;
import j.b.a.a0;
import j.b.a.q;
import j.b.a.v;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import no.simula.corona.ui.register.RegisterActivity;

public final class MainActivity extends h implements j.b.a.e0.b.b, v {
    public final c A = new c(this);
    public HashMap B;
    public DataCollectorService z;

    /* compiled from: java-style lambda group */
    public static final class a implements DialogInterface.OnClickListener {
        public final /* synthetic */ int x;
        public final /* synthetic */ Object y;

        public a(int i2, Object obj) {
            this.x = i2;
            this.y = obj;
        }

        public final void onClick(DialogInterface dialogInterface, int i2) {
            int i3 = this.x;
            if (i3 == 0) {
                ((h.k.a.a) this.y).invoke();
            } else if (i3 == 1) {
                a0.c((MainActivity) this.y, true);
            } else {
                throw null;
            }
        }
    }

    /* compiled from: com.android.tools.r8.jetbrains.kotlin-style lambda group */
    public static final class b extends h.k.b.h implements h.k.a.a<h.h> {
        public final /* synthetic */ int x;
        public final /* synthetic */ Object y;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public b(int i2, Object obj) {
            super(0);
            this.x = i2;
            this.y = obj;
        }

        public final Object invoke() {
            int i2 = this.x;
            if (i2 == 0) {
                a0.c((MainActivity) this.y, false);
                ((MainActivity) this.y).n();
                return h.h.a;
            } else if (i2 == 1) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", ((MainActivity) this.y).getPackageName(), (String) null));
                ((MainActivity) this.y).startActivity(intent);
                return h.h.a;
            } else {
                throw null;
            }
        }
    }

    public static final class c implements ServiceConnection {
        public final /* synthetic */ MainActivity a;

        public c(MainActivity mainActivity) {
            this.a = mainActivity;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                MainActivity mainActivity = this.a;
                DataCollectorService dataCollectorService = ((j.b.a.d) iBinder).a;
                mainActivity.z = dataCollectorService;
                if (dataCollectorService != null) {
                    dataCollectorService.x = mainActivity;
                }
                if (!this.a.isFinishing()) {
                    this.a.l();
                }
            }
            MainActivity.c(this.a);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            DataCollectorService dataCollectorService = this.a.z;
            if (dataCollectorService != null) {
                dataCollectorService.x = null;
            }
            MainActivity mainActivity = this.a;
            mainActivity.z = null;
            MainActivity.c(mainActivity);
        }
    }

    public static final class d extends h.k.b.h implements h.k.a.a<Boolean> {
        public static final d x = new d();

        public d() {
            super(0);
        }

        public Object invoke() {
            return false;
        }
    }

    public static final class e implements Runnable {
        public final /* synthetic */ MainActivity x;

        public static final class a implements DialogInterface.OnClickListener {
            public final /* synthetic */ e x;

            public a(e eVar) {
                this.x = eVar;
            }

            public final void onClick(DialogInterface dialogInterface, int i2) {
                MainActivity.a(this.x.x);
            }
        }

        public static final class b implements DialogInterface.OnDismissListener {
            public final /* synthetic */ e x;

            public b(e eVar) {
                this.x = eVar;
            }

            public final void onDismiss(DialogInterface dialogInterface) {
                MainActivity.a(this.x.x);
            }
        }

        public e(MainActivity mainActivity) {
            this.x = mainActivity;
        }

        public final void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.x);
            builder.setTitle(R$string.app_name);
            builder.setMessage(R$string.data_deleted_request);
            builder.setPositiveButton(17039370, new a(this));
            builder.setOnDismissListener(new b(this));
            builder.create();
            builder.show();
        }
    }

    public static final /* synthetic */ void c(MainActivity mainActivity) {
        if (mainActivity.z != null) {
            k.d.a.c b2 = k.d.a.c.b();
            DataCollectorService dataCollectorService = mainActivity.z;
            if (dataCollectorService != null) {
                b2.a((Object) new j.b.a.c0.c(dataCollectorService.y));
                k.d.a.c b3 = k.d.a.c.b();
                DataCollectorService dataCollectorService2 = mainActivity.z;
                if (dataCollectorService2 != null) {
                    b3.a((Object) new j.b.a.c0.b(dataCollectorService2.O));
                } else {
                    g.a();
                    throw null;
                }
            } else {
                g.a();
                throw null;
            }
        }
    }

    public void a() {
    }

    public void a(j.b.a.e0.b.a aVar) {
    }

    public final void a(boolean z2, h.k.a.a<h.h> aVar) {
        l.a.a.f2455d.c("Show rationale", new Object[0]);
        new AlertDialog.Builder(this).setTitle(R$string.need_location_permission).setMessage(z2 ? R$string.need_location_message : R$string.need_location_message_settings).setPositiveButton(z2 ? R$string.ask_permission : R$string.open_settings, new a(0, aVar)).setNegativeButton(R$string.dont_ask_permission, new a(1, this)).create().show();
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
        runOnUiThread(new e(this));
    }

    public void g() {
    }

    public void h() {
        r.a((Activity) this, (int) R$id.nav_host_fragment).a(R$id.navigation_settings, (Bundle) null, (n) null);
    }

    public Boolean i() {
        DataCollectorService dataCollectorService = this.z;
        if (dataCollectorService != null) {
            return Boolean.valueOf(dataCollectorService.y);
        }
        return null;
    }

    public final void l() {
        DataCollectorService dataCollectorService;
        if (a0.i(this)) {
            SharedPreferences.Editor edit = getSharedPreferences("settings", 0).edit();
            edit.putBoolean("firstland", false);
            edit.apply();
            n();
        } else if (a0.g(this) && (dataCollectorService = this.z) != null && !dataCollectorService.b() && a0.a((Context) this, "android.permission.ACCESS_FINE_LOCATION")) {
            if (a0.c(this)) {
                DataCollectorService.a((Context) this);
            }
            if (a0.d(this)) {
                DataCollectorService.b(this);
            }
        }
    }

    public final boolean m() {
        DataCollectorService dataCollectorService;
        if (this.z == null) {
            l.a.a.f2455d.b("Service is null, cannot toggle state", new Object[0]);
            return false;
        } else if (!a0.g(this) && (dataCollectorService = this.z) != null && !dataCollectorService.b()) {
            Toast.makeText(this, "Cannot start location monitoring before consenting", 1).show();
            return false;
        } else if (!a0.h(this)) {
            startActivity(new Intent(this, RegisterActivity.class));
            return false;
        } else {
            DataCollectorService dataCollectorService2 = this.z;
            if (dataCollectorService2 == null || dataCollectorService2.b() || a0.a((Context) this, "android.permission.ACCESS_FINE_LOCATION")) {
                return true;
            }
            n();
            return false;
        }
    }

    public final void n() {
        if (getSharedPreferences("settings", 0).getBoolean("dont-ask-again", false)) {
            if (Build.VERSION.SDK_INT < 23 || !shouldShowRequestPermissionRationale("android.permission.ACCESS_FINE_LOCATION")) {
                a(false, new b(1, this));
            } else {
                a(true, new b(0, this));
            }
        } else if (Build.VERSION.SDK_INT >= 29) {
            d.i.a.a.a(this, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_BACKGROUND_LOCATION"}, a0.f1487c);
        } else {
            d.i.a.a.a(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, a0.f1487c);
        }
    }

    public void onCreate(Bundle bundle) {
        CharSequence charSequence;
        super.onCreate(bundle);
        setContentView((int) R$layout.activity_main);
        int i2 = R$id.toolbar;
        if (this.B == null) {
            this.B = new HashMap();
        }
        View view = (View) this.B.get(Integer.valueOf(i2));
        if (view == null) {
            view = findViewById(i2);
            this.B.put(Integer.valueOf(i2), view);
        }
        Toolbar toolbar = (Toolbar) view;
        k kVar = (k) j();
        if (kVar.z instanceof Activity) {
            kVar.k();
            d.b.a.a aVar = kVar.E;
            if (!(aVar instanceof d.b.a.v)) {
                kVar.F = null;
                if (aVar != null) {
                    aVar.f();
                }
                if (toolbar != null) {
                    Object obj = kVar.z;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = kVar.G;
                    }
                    s sVar = new s(toolbar, charSequence, kVar.C);
                    kVar.E = sVar;
                    kVar.B.setCallback(sVar.f216c);
                } else {
                    kVar.E = null;
                    kVar.B.setCallback(kVar.C);
                }
                kVar.b();
            } else {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
        }
        View findViewById = findViewById(R$id.nav_view);
        g.a((Object) findViewById, "findViewById(R.id.nav_view)");
        BottomNavigationView bottomNavigationView = (BottomNavigationView) findViewById;
        NavController a2 = r.a((Activity) this, (int) R$id.nav_host_fragment);
        Integer[] numArr = {Integer.valueOf(R$id.navigation_settings), Integer.valueOf(R$id.navigation_home), Integer.valueOf(R$id.navigation_info)};
        LinkedHashSet linkedHashSet = new LinkedHashSet(e.c.a.a.b.l.c.b(3));
        for (int i3 = 0; i3 < 3; i3++) {
            linkedHashSet.add(numArr[i3]);
        }
        d dVar = d.x;
        HashSet hashSet = new HashSet();
        hashSet.addAll(linkedHashSet);
        d.s.s.c cVar = new d.s.s.c(hashSet, (d.l.a.a) null, new q(dVar), (c.a) null);
        g.a((Object) cVar, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        if (a2 != null) {
            a2.a((NavController.b) new d.s.s.b(this, cVar));
            bottomNavigationView.setOnNavigationItemSelectedListener(new d.s.s.d(a2));
            a2.a((NavController.b) new d.s.s.e(new WeakReference(bottomNavigationView), a2));
            if (a2.f80c == null) {
                a2.f80c = new m(a2.a, a2.f88k);
            }
            j a3 = a2.f80c.a(R$navigation.main_nav);
            g.a((Object) a3, "navController.navInflate…te(R.navigation.main_nav)");
            a3.G = R$id.navigation_home;
            a3.H = null;
            l.a.a.f2455d.b("My device id is: %s", a0.e(this));
            return;
        }
        g.a("navController");
        throw null;
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (strArr == null) {
            g.a("permissions");
            throw null;
        } else if (iArr == null) {
            g.a("grantResults");
            throw null;
        } else if (i2 == a0.f1487c) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int length = strArr.length;
            if (length == 1) {
                linkedHashMap.put("permissions", strArr[0]);
                StringBuilder sb = new StringBuilder();
                sb.append(iArr[0]);
                sb.append('}');
                linkedHashMap.put("granted", sb.toString());
            } else if (length != 2) {
                linkedHashMap.put("permissions", AzureActiveDirectoryAuthorizationRequest.Prompt.AUTO);
            } else {
                linkedHashMap.put("permissions", strArr[0] + ", " + strArr[1]);
                linkedHashMap.put("granted", iArr[0] + ", " + iArr[1]);
            }
            if (!linkedHashMap.isEmpty()) {
                Analytics.trackEvent("Permission Response", (Map<String, String>) linkedHashMap);
            }
            int a2 = e.c.a.a.b.l.c.a((T[]) strArr, "android.permission.ACCESS_FINE_LOCATION");
            if (a2 < 0 || iArr[a2] != 0) {
                a0.c(this, true);
            } else {
                l();
            }
        }
    }

    public void onStart() {
        super.onStart();
        bindService(new Intent(this, DataCollectorService.class), this.A, 1);
    }

    public void onStop() {
        if (this.z != null) {
            unbindService(this.A);
        }
        super.onStop();
    }

    public void b(boolean z2) {
        a0.b(this, z2);
        if (!m()) {
            return;
        }
        if (z2) {
            DataCollectorService.b(this);
            return;
        }
        Intent intent = new Intent(this, DataCollectorService.class);
        intent.putExtra("service-command", 0);
        startService(intent);
    }

    public Boolean b() {
        DataCollectorService dataCollectorService = this.z;
        if (dataCollectorService != null) {
            return Boolean.valueOf(dataCollectorService.O);
        }
        return null;
    }

    public void a(boolean z2) {
        a0.a((Context) this, z2);
        if (!m()) {
            return;
        }
        if (z2) {
            DataCollectorService.a((Context) this);
            return;
        }
        Intent intent = new Intent(this, DataCollectorService.class);
        intent.putExtra("service-command", 3);
        startService(intent);
    }

    public static final /* synthetic */ void a(MainActivity mainActivity) {
        if (!mainActivity.isFinishing()) {
            Intent intent = new Intent(mainActivity, SplashActivity.class);
            intent.setFlags(268468224);
            mainActivity.startActivity(intent);
            mainActivity.overridePendingTransition(0, 0);
            mainActivity.finish();
        }
    }
}
