package j.b.a.e0.b;

import android.content.DialogInterface;
import no.simula.corona.ui.main.SettingsFragment;

public final class c implements DialogInterface.OnClickListener {
    public final /* synthetic */ SettingsFragment x;

    public c(SettingsFragment settingsFragment) {
        this.x = settingsFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i2) {
        if (i2 == -2) {
            SettingsFragment.f(this.x);
        } else if (i2 == -1) {
            SettingsFragment.d(this.x);
        }
    }
}
