package j.b.a.b0;

import android.app.Application;
import android.os.ParcelUuid;
import h.i.b;
import j.a.a.a.a.a.a;
import j.a.a.a.a.a.h;
import j.a.a.a.a.a.k;
import j.b.a.a0;
import java.util.List;

public final class g {
    public final h a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final List<h> f1495c;

    /* renamed from: d  reason: collision with root package name */
    public final k f1496d;

    /* renamed from: e  reason: collision with root package name */
    public final j f1497e;

    /* renamed from: f  reason: collision with root package name */
    public final a f1498f;

    public g(Application application, h hVar, a aVar) {
        Application application2 = application;
        h hVar2 = hVar;
        a aVar2 = aVar;
        if (application2 == null) {
            h.k.b.g.a("application");
            throw null;
        } else if (hVar2 == null) {
            h.k.b.g.a("scanListener");
            throw null;
        } else if (aVar2 != null) {
            this.f1498f = aVar2;
            this.a = new h((String) null, (String) null, new ParcelUuid(a0.a), (ParcelUuid) null, (ParcelUuid) null, (byte[]) null, (byte[]) null, -1, (byte[]) null, (byte[]) null, (h.a) null);
            h hVar3 = new h((String) null, (String) null, (ParcelUuid) null, (ParcelUuid) null, (ParcelUuid) null, (byte[]) null, (byte[]) null, 76, new byte[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0}, new byte[]{(byte) 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0}, (h.a) null);
            this.b = hVar3;
            this.f1495c = b.a((T[]) new h[]{this.a, hVar3});
            k.b bVar = new k.b();
            bVar.f1473c = 0;
            bVar.a(0);
            k a2 = bVar.a();
            h.k.b.g.a((Object) a2, "ScanSettings.Builder()\n …W_POWER)\n        .build()");
            this.f1496d = a2;
            this.f1497e = new j(application2, hVar2);
        } else {
            h.k.b.g.a("bluetoothLeScanner");
            throw null;
        }
    }

    public final void a(boolean z) {
        try {
            this.f1498f.a(this.f1495c, this.f1496d, this.f1497e);
        } catch (IllegalArgumentException unused) {
            this.f1498f.b(this.f1497e);
            if (!z) {
                a(true);
            }
        } catch (Exception e2) {
            l.a.a.f2455d.a(e2);
        }
    }
}
