package j.b.a;

import android.content.DialogInterface;
import no.simula.corona.SplashActivity;

public final class z implements DialogInterface.OnDismissListener {
    public final /* synthetic */ SplashActivity x;

    public z(SplashActivity splashActivity) {
        this.x = splashActivity;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.x.finishAffinity();
    }
}
