package j.b.a.e0.b;

import android.content.DialogInterface;
import no.simula.corona.ui.main.SettingsFragment;

public final class e implements DialogInterface.OnClickListener {
    public final /* synthetic */ SettingsFragment x;

    public e(SettingsFragment settingsFragment) {
        this.x = settingsFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i2) {
        if (i2 == -1) {
            SettingsFragment.c(this.x);
        }
    }
}
