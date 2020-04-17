package no.simula.corona;

import android.content.Context;
import com.microsoft.identity.client.PublicClientApplication;
import d.u.g;
import h.k.b.f;
import j.b.a.b;
import j.b.a.s;

public abstract class MeasurementDatabase extends g {

    /* renamed from: j  reason: collision with root package name */
    public static volatile MeasurementDatabase f2457j;

    /* renamed from: k  reason: collision with root package name */
    public static final a f2458k = new a((f) null);

    public static final class a {
        public /* synthetic */ a(f fVar) {
        }

        public final MeasurementDatabase a(Context context) {
            MeasurementDatabase measurementDatabase;
            if (context != null) {
                MeasurementDatabase measurementDatabase2 = MeasurementDatabase.f2457j;
                if (measurementDatabase2 != null) {
                    return measurementDatabase2;
                }
                synchronized (this) {
                    Context applicationContext = context.getApplicationContext();
                    Class<MeasurementDatabase> cls = MeasurementDatabase.class;
                    if ("measurement_database".trim().length() != 0) {
                        g.a aVar = new g.a(applicationContext, cls, "measurement_database");
                        aVar.f912g = true;
                        aVar.f914i = false;
                        aVar.f915j = true;
                        g a = aVar.a();
                        h.k.b.g.a((Object) a, "Room.databaseBuilder(\n  …                 .build()");
                        measurementDatabase = (MeasurementDatabase) a;
                        MeasurementDatabase.f2457j = measurementDatabase;
                    } else {
                        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
                    }
                }
                return measurementDatabase;
            }
            h.k.b.g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        }
    }

    public abstract b h();

    public abstract s i();
}
