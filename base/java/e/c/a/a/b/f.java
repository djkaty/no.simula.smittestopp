package e.c.a.a.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;

public final class f extends g {
    public static Resources a(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
