package e.c.a.a.b.j;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import e.c.a.a.b.j.k;

public class a extends k.a {
    public static Account a(k kVar) {
        if (kVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return kVar.getAccount();
            } catch (RemoteException unused) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return null;
    }
}
