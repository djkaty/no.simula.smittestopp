package e.c.a.a.b.i.k;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import e.c.a.a.b.i.k.c;
import e.c.a.a.g.b;

public abstract class e0<T> extends w {
    public final b<T> a;

    public e0(int i2, b<T> bVar) {
        super(i2);
        this.a = bVar;
    }

    public void a(Status status) {
        b<T> bVar = this.a;
        bVar.a.b((Exception) new e.c.a.a.b.i.b(status));
    }

    public abstract void d(c.a<?> aVar);

    public final void a(c.a<?> aVar) {
        try {
            d(aVar);
        } catch (DeadObjectException e2) {
            Status a2 = m.a((RemoteException) e2);
            b<T> bVar = this.a;
            bVar.a.b((Exception) new e.c.a.a.b.i.b(a2));
            throw e2;
        } catch (RemoteException e3) {
            Status a3 = m.a(e3);
            b<T> bVar2 = this.a;
            bVar2.a.b((Exception) new e.c.a.a.b.i.b(a3));
        } catch (RuntimeException e4) {
            this.a.a.b((Exception) e4);
        }
    }
}
