package j.b.a;

import com.microsoft.appcenter.ingestion.models.AbstractLog;
import d.u.h;
import d.u.m.d;
import d.w.a.b;
import d.w.a.f.a;
import java.util.HashMap;
import java.util.HashSet;
import no.simula.corona.MeasurementDatabase_Impl;

public class u extends h.a {
    public final /* synthetic */ MeasurementDatabase_Impl b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public u(MeasurementDatabase_Impl measurementDatabase_Impl, int i2) {
        super(i2);
        this.b = measurementDatabase_Impl;
    }

    public void a(b bVar) {
        ((a) bVar).x.execSQL("CREATE TABLE IF NOT EXISTS `Measurement` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `timestamp` INTEGER NOT NULL, `latitude` REAL, `longitude` REAL, `latLongAccuracy` REAL, `altitude` REAL, `altitudeAccuracy` REAL, `speed` REAL, `speedAccuracy` REAL, `isUploaded` INTEGER NOT NULL)");
        a aVar = (a) bVar;
        aVar.x.execSQL("CREATE TABLE IF NOT EXISTS `BluetoothContact` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `timestamp` INTEGER NOT NULL, `deviceId` TEXT NOT NULL, `rssi` INTEGER NOT NULL, `txPower` INTEGER NOT NULL, `isUploaded` INTEGER NOT NULL)");
        aVar.x.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        aVar.x.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8260d2f713a01361d6ce911d0c7159cc')");
    }

    public h.b b(b bVar) {
        b bVar2 = bVar;
        HashMap hashMap = new HashMap(10);
        hashMap.put("id", new d.a("id", "INTEGER", false, 1, (String) null, 1));
        hashMap.put(AbstractLog.TIMESTAMP, new d.a(AbstractLog.TIMESTAMP, "INTEGER", true, 0, (String) null, 1));
        hashMap.put("latitude", new d.a("latitude", "REAL", false, 0, (String) null, 1));
        hashMap.put("longitude", new d.a("longitude", "REAL", false, 0, (String) null, 1));
        hashMap.put("latLongAccuracy", new d.a("latLongAccuracy", "REAL", false, 0, (String) null, 1));
        hashMap.put("altitude", new d.a("altitude", "REAL", false, 0, (String) null, 1));
        hashMap.put("altitudeAccuracy", new d.a("altitudeAccuracy", "REAL", false, 0, (String) null, 1));
        hashMap.put("speed", new d.a("speed", "REAL", false, 0, (String) null, 1));
        hashMap.put("speedAccuracy", new d.a("speedAccuracy", "REAL", false, 0, (String) null, 1));
        hashMap.put("isUploaded", new d.a("isUploaded", "INTEGER", true, 0, (String) null, 1));
        d dVar = new d("Measurement", hashMap, new HashSet(0), new HashSet(0));
        d a = d.a(bVar2, "Measurement");
        if (!dVar.equals(a)) {
            return new h.b(false, "Measurement(no.simula.corona.Measurement).\n Expected:\n" + dVar + "\n Found:\n" + a);
        }
        HashMap hashMap2 = new HashMap(6);
        hashMap2.put("id", new d.a("id", "INTEGER", false, 1, (String) null, 1));
        hashMap2.put(AbstractLog.TIMESTAMP, new d.a(AbstractLog.TIMESTAMP, "INTEGER", true, 0, (String) null, 1));
        hashMap2.put("deviceId", new d.a("deviceId", "TEXT", true, 0, (String) null, 1));
        hashMap2.put("rssi", new d.a("rssi", "INTEGER", true, 0, (String) null, 1));
        hashMap2.put("txPower", new d.a("txPower", "INTEGER", true, 0, (String) null, 1));
        hashMap2.put("isUploaded", new d.a("isUploaded", "INTEGER", true, 0, (String) null, 1));
        d dVar2 = new d("BluetoothContact", hashMap2, new HashSet(0), new HashSet(0));
        d a2 = d.a(bVar2, "BluetoothContact");
        if (dVar2.equals(a2)) {
            return new h.b(true, (String) null);
        }
        return new h.b(false, "BluetoothContact(no.simula.corona.BluetoothContact).\n Expected:\n" + dVar2 + "\n Found:\n" + a2);
    }
}
