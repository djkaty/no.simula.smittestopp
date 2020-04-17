package e.c.a.a.b.i.k;

import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;
import e.c.a.a.b.i.k.c;

public abstract class m {
    public m(int i2) {
    }

    public static /* synthetic */ Status a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (remoteException instanceof TransactionTooLargeException) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void a(Status status);

    public abstract void a(c.a<?> aVar);

    public abstract void a(i iVar, boolean z);
}
