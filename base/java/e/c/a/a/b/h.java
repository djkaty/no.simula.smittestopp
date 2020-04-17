package e.c.a.a.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Log;
import d.b.a.r;
import javax.annotation.CheckReturnValue;

@CheckReturnValue
public class h {
    public static h a;

    public h(Context context) {
        context.getApplicationContext();
    }

    public static h a(Context context) {
        r.a(context);
        synchronized (h.class) {
            if (a == null) {
                p.a(context);
                a = new h(context);
            }
        }
        return a;
    }

    public static boolean a(PackageInfo packageInfo, boolean z) {
        q qVar;
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if (z) {
                qVar = a(packageInfo, t.a);
            } else {
                qVar = a(packageInfo, t.a[0]);
            }
            if (qVar != null) {
                return true;
            }
        }
        return false;
    }

    public static q a(PackageInfo packageInfo, q... qVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        r rVar = new r(packageInfo.signatures[0].toByteArray());
        for (int i2 = 0; i2 < qVarArr.length; i2++) {
            if (qVarArr[i2].equals(rVar)) {
                return qVarArr[i2];
            }
        }
        return null;
    }
}
