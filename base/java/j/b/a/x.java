package j.b.a;

import android.content.DialogInterface;
import no.simula.corona.SplashActivity;

public final class x implements DialogInterface.OnDismissListener {
    public final /* synthetic */ SplashActivity x;

    public x(SplashActivity splashActivity) {
        this.x = splashActivity;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        SplashActivity.a(this.x);
    }
}
