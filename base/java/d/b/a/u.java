package d.b.a;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;

public class u {

    /* renamed from: d  reason: collision with root package name */
    public static u f224d;
    public final Context a;
    public final LocationManager b;

    /* renamed from: c  reason: collision with root package name */
    public final a f225c = new a();

    public static class a {
        public boolean a;
        public long b;
    }

    public u(Context context, LocationManager locationManager) {
        this.a = context;
        this.b = locationManager;
    }

    public final Location a(String str) {
        try {
            if (this.b.isProviderEnabled(str)) {
                return this.b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e2) {
            Log.d("TwilightManager", "Failed to get last known location", e2);
            return null;
        }
    }
}
