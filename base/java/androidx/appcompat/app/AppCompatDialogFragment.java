package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import d.b.a.q;

public class AppCompatDialogFragment extends DialogFragment {
    public Dialog a(Bundle bundle) {
        return new q(getContext(), this.C);
    }

    public void a(Dialog dialog, int i2) {
        if (dialog instanceof q) {
            q qVar = (q) dialog;
            if (!(i2 == 1 || i2 == 2)) {
                if (i2 == 3) {
                    dialog.getWindow().addFlags(24);
                } else {
                    return;
                }
            }
            qVar.a(1);
            return;
        }
        super.a(dialog, i2);
    }
}
