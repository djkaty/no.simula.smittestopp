package j.b.a;

import android.content.DialogInterface;
import no.simula.corona.SplashActivity;

public final class y implements DialogInterface.OnClickListener {
    public final /* synthetic */ SplashActivity x;

    public y(SplashActivity splashActivity) {
        this.x = splashActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.x.finishAffinity();
    }
}
