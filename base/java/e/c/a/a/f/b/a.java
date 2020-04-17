package e.c.a.a.f.b;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import d.b.a.r;
import e.c.a.a.b.g;
import e.c.a.a.b.i.d;
import e.c.a.a.b.j.b;
import e.c.a.a.b.j.d;
import e.c.a.a.b.j.h;
import e.c.a.a.b.j.p;
import e.c.a.a.f.f;

public class a extends h<g> implements f {
    public Integer A;
    public final boolean x;
    public final d y;
    public final Bundle z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(Context context, Looper looper, d dVar, d.a aVar, d.b bVar) {
        super(context, looper, 44, dVar, aVar, bVar);
        e.c.a.a.b.j.d dVar2 = dVar;
        e.c.a.a.f.a aVar2 = dVar2.f1192g;
        Integer num = dVar2.f1193h;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", dVar2.a);
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        if (aVar2 != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", aVar2.a);
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", aVar2.b);
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", aVar2.f1216c);
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", aVar2.f1217d);
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", aVar2.f1218e);
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", aVar2.f1219f);
            Long l2 = aVar2.f1220g;
            if (l2 != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", l2.longValue());
            }
            Long l3 = aVar2.f1221h;
            if (l3 != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", l3.longValue());
            }
        }
        this.x = true;
        this.y = dVar2;
        this.z = bundle;
        this.A = dVar2.f1193h;
    }

    public final void a(e eVar) {
        r.b(eVar, (Object) "Expecting a valid ISignInCallbacks");
        try {
            Account account = this.y.a;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(account.name)) {
                googleSignInAccount = e.c.a.a.a.a.a.a.a.a(this.b).a();
            }
            ((g) k()).a(new i(new p(account, this.A.intValue(), googleSignInAccount)), eVar);
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                eVar.a(new k());
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e2);
            }
        }
    }

    public final void f() {
        b.d dVar = new b.d();
        r.b(dVar, (Object) "Connection progress callbacks cannot be null.");
        this.f1170h = dVar;
        b(2, null);
    }

    public boolean g() {
        return this.x;
    }

    public int i() {
        return g.a;
    }

    public Bundle j() {
        if (!this.b.getPackageName().equals(this.y.f1190e)) {
            this.z.putString("com.google.android.gms.signin.internal.realClientPackageName", this.y.f1190e);
        }
        return this.z;
    }

    public String l() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    public String m() {
        return "com.google.android.gms.signin.service.START";
    }

    public /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface instanceof g) {
            return (g) queryLocalInterface;
        }
        return new h(iBinder);
    }
}
