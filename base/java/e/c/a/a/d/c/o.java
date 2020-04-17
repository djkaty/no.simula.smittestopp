package e.c.a.a.d.c;

import android.app.PendingIntent;
import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import e.c.a.a.b.i.d;
import e.c.a.a.b.i.k.f;
import e.c.a.a.e.b;
import javax.annotation.Nullable;

public final class o extends v {
    public final i z;

    public o(Context context, Looper looper, d.a aVar, d.b bVar, String str, @Nullable e.c.a.a.b.j.d dVar) {
        super(context, looper, aVar, bVar, str, dVar);
        this.z = new i(context, this.y);
    }

    public final void a(q qVar, f<b> fVar, d dVar) {
        synchronized (this.z) {
            i iVar = this.z;
            iVar.a.a();
            ((g) iVar.a.b()).a(new s(1, qVar, (IBinder) null, (PendingIntent) null, iVar.a(fVar).asBinder(), dVar != null ? dVar.asBinder() : null));
        }
    }

    public final void e() {
        synchronized (this.z) {
            if (c()) {
                try {
                    this.z.a();
                    this.z.b();
                } catch (Exception e2) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e2);
                }
            }
            super.e();
        }
    }
}
