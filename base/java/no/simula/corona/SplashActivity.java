package no.simula.corona;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import h.k.b.g;
import j.b.a.a0;
import j.b.a.w;
import j.b.a.x;
import no.simula.corona.ui.onboarding.OnboardingActivity;
import no.simula.corona.ui.register.RegisterActivity;

public final class SplashActivity extends j.b.a.e0.a {

    @SuppressLint({"HandlerLeak"})
    public static final class a extends Handler {
        public final /* synthetic */ SplashActivity a;

        public a(SplashActivity splashActivity) {
            this.a = splashActivity;
        }

        public void handleMessage(Message message) {
            if (message != null) {
                super.handleMessage(message);
                if (!this.a.isFinishing()) {
                    SplashActivity.b(this.a);
                    return;
                }
                return;
            }
            g.a("msg");
            throw null;
        }
    }

    public static final /* synthetic */ void a(SplashActivity splashActivity) {
        if (splashActivity != null) {
            Intent intent = new Intent(splashActivity, RegisterActivity.class);
            intent.setFlags(268468224);
            splashActivity.startActivity(intent);
            splashActivity.overridePendingTransition(0, 0);
            splashActivity.finish();
            return;
        }
        throw null;
    }

    public static final /* synthetic */ void b(SplashActivity splashActivity) {
        if (splashActivity == null) {
            throw null;
        } else if (!a0.g(splashActivity)) {
            splashActivity.startActivity(new Intent(splashActivity, OnboardingActivity.class));
            splashActivity.finish();
        } else if (a0.h(splashActivity)) {
            splashActivity.l();
        } else {
            boolean z = true;
            boolean z2 = a0.f(splashActivity).length() > 0;
            boolean k2 = a0.k(splashActivity);
            boolean z3 = a0.e(splashActivity).length() > 0;
            if (!z2 || !k2 || z3) {
                z = false;
            }
            if (z) {
                AlertDialog.Builder builder = new AlertDialog.Builder(splashActivity);
                builder.setTitle(R$string.app_name);
                builder.setMessage(R$string.provision_failed);
                builder.setPositiveButton(R$string.ok, new w(splashActivity));
                builder.setOnDismissListener(new x(splashActivity));
                builder.create();
                builder.show();
                return;
            }
            Intent intent = new Intent(splashActivity, RegisterActivity.class);
            intent.setFlags(268468224);
            splashActivity.startActivity(intent);
            splashActivity.overridePendingTransition(0, 0);
            splashActivity.finish();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0081, code lost:
        if (h.o.g.a(r7, "generic", false, 2) == false) goto L_0x0083;
     */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00bb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r7) {
        /*
            r6 = this;
            super.onCreate(r7)
            r7 = 2131558433(0x7f0d0021, float:1.8742182E38)
            r6.setContentView((int) r7)
            java.lang.String r7 = android.os.Build.FINGERPRINT
            java.lang.String r0 = "Build.FINGERPRINT"
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            r1 = 0
            java.lang.String r2 = "generic"
            r3 = 2
            boolean r7 = h.o.g.a((java.lang.String) r7, (java.lang.String) r2, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.FINGERPRINT
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            java.lang.String r0 = "unknown"
            boolean r7 = h.o.g.a((java.lang.String) r7, (java.lang.String) r0, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.MODEL
            java.lang.String r0 = "Build.MODEL"
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            java.lang.String r4 = "google_sdk"
            boolean r7 = h.o.g.a((java.lang.CharSequence) r7, (java.lang.CharSequence) r4, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.MODEL
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            java.lang.String r5 = "Emulator"
            boolean r7 = h.o.g.a((java.lang.CharSequence) r7, (java.lang.CharSequence) r5, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.MODEL
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            java.lang.String r0 = "Android SDK built for x86"
            boolean r7 = h.o.g.a((java.lang.CharSequence) r7, (java.lang.CharSequence) r0, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.BOARD
            java.lang.String r0 = "QC_Reference_Phone"
            boolean r7 = h.k.b.g.a((java.lang.Object) r7, (java.lang.Object) r0)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.MANUFACTURER
            java.lang.String r0 = "Build.MANUFACTURER"
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            java.lang.String r0 = "Genymotion"
            boolean r7 = h.o.g.a((java.lang.CharSequence) r7, (java.lang.CharSequence) r0, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
            java.lang.String r7 = android.os.Build.BRAND
            java.lang.String r0 = "Build.BRAND"
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            boolean r7 = h.o.g.a((java.lang.String) r7, (java.lang.String) r2, (boolean) r1, (int) r3)
            if (r7 == 0) goto L_0x0083
            java.lang.String r7 = android.os.Build.DEVICE
            java.lang.String r0 = "Build.DEVICE"
            h.k.b.g.a((java.lang.Object) r7, (java.lang.String) r0)
            boolean r7 = h.o.g.a((java.lang.String) r7, (java.lang.String) r2, (boolean) r1, (int) r3)
            if (r7 != 0) goto L_0x008e
        L_0x0083:
            java.lang.String r7 = android.os.Build.PRODUCT
            boolean r7 = h.k.b.g.a((java.lang.Object) r4, (java.lang.Object) r7)
            if (r7 == 0) goto L_0x008c
            goto L_0x008e
        L_0x008c:
            r7 = 0
            goto L_0x008f
        L_0x008e:
            r7 = 1
        L_0x008f:
            if (r7 == 0) goto L_0x00bb
            android.app.AlertDialog$Builder r7 = new android.app.AlertDialog$Builder
            r7.<init>(r6)
            r0 = 2131886111(0x7f12001f, float:1.9406792E38)
            r7.setTitle(r0)
            java.lang.String r0 = "This app cannot run on this system"
            r7.setMessage(r0)
            j.b.a.y r0 = new j.b.a.y
            r0.<init>(r6)
            r1 = 2131886196(0x7f120074, float:1.9406964E38)
            r7.setPositiveButton(r1, r0)
            j.b.a.z r0 = new j.b.a.z
            r0.<init>(r6)
            r7.setOnDismissListener(r0)
            r7.create()
            r7.show()
            return
        L_0x00bb:
            no.simula.corona.SplashActivity$a r7 = new no.simula.corona.SplashActivity$a
            r7.<init>(r6)
            boolean r0 = j.b.a.a0.i(r6)
            if (r0 == 0) goto L_0x00c9
            r2 = 2000(0x7d0, double:9.88E-321)
            goto L_0x00cb
        L_0x00c9:
            r2 = 1000(0x3e8, double:4.94E-321)
        L_0x00cb:
            r7.sendEmptyMessageDelayed(r1, r2)
            java.lang.String r7 = "notification"
            java.lang.Object r7 = r6.getSystemService(r7)
            if (r7 == 0) goto L_0x00e4
            android.app.NotificationManager r7 = (android.app.NotificationManager) r7
            no.simula.corona.CoronaApp r0 = no.simula.corona.CoronaApp.z
            if (r0 == 0) goto L_0x00de
            r0.y = r1
        L_0x00de:
            r0 = 13
            r7.cancel(r0)
            return
        L_0x00e4:
            h.e r7 = new h.e
            java.lang.String r0 = "null cannot be cast to non-null type android.app.NotificationManager"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: no.simula.corona.SplashActivity.onCreate(android.os.Bundle):void");
    }
}
