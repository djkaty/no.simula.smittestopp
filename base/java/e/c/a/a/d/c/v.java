package e.c.a.a.d.c;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import e.c.a.a.b.i.d;
import e.c.a.a.b.j.h;

public class v extends h<g> {
    public final String x;
    public final w<g> y = new w(this);

    public v(Context context, Looper looper, d.a aVar, d.b bVar, String str, e.c.a.a.b.j.d dVar) {
        super(context, looper, 23, dVar, aVar, bVar);
        this.x = str;
    }

    public /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof g ? (g) queryLocalInterface : new h(iBinder);
    }

    public int i() {
        return 11925000;
    }

    public Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.x);
        return bundle;
    }

    public String l() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    public String m() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}
