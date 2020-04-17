package e.c.a.a.b.i.k;

import android.util.Log;
import com.google.android.gms.common.api.Scope;
import e.c.a.a.b.a;
import e.c.a.a.b.i.k.c;
import e.c.a.a.b.j.q;
import e.c.a.a.f.b.k;
import java.util.Set;

public final class z implements Runnable {
    public final /* synthetic */ k x;
    public final /* synthetic */ x y;

    public z(x xVar, k kVar) {
        this.y = xVar;
        this.x = kVar;
    }

    public final void run() {
        x xVar = this.y;
        k kVar = this.x;
        if (xVar != null) {
            a aVar = kVar.y;
            if (aVar.b()) {
                q qVar = kVar.z;
                a aVar2 = qVar.z;
                if (!aVar2.b()) {
                    String valueOf = String.valueOf(aVar2);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 48);
                    sb.append("Sign-in succeeded with resolve account failure: ");
                    sb.append(valueOf);
                    Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                    ((c.C0063c) xVar.f1164g).b(aVar2);
                    xVar.f1163f.e();
                    return;
                }
                a0 a0Var = xVar.f1164g;
                e.c.a.a.b.j.k b = qVar.b();
                Set<Scope> set = xVar.f1161d;
                c.C0063c cVar = (c.C0063c) a0Var;
                if (cVar == null) {
                    throw null;
                } else if (b == null || set == null) {
                    Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                    cVar.b(new a(4));
                } else {
                    cVar.f1149c = b;
                    cVar.f1150d = set;
                    if (cVar.f1151e) {
                        cVar.a.a(b, set);
                    }
                }
            } else {
                ((c.C0063c) xVar.f1164g).b(aVar);
            }
            xVar.f1163f.e();
            return;
        }
        throw null;
    }
}
