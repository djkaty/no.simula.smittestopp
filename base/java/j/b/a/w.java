package j.b.a;

import android.content.DialogInterface;
import no.simula.corona.SplashActivity;

public final class w implements DialogInterface.OnClickListener {
    public final /* synthetic */ SplashActivity x;

    public w(SplashActivity splashActivity) {
        this.x = splashActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i2) {
        SplashActivity.a(this.x);
    }
}
