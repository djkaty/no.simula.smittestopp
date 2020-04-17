package no.simula.corona.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import h.k.b.g;

public final class CoronaConsentDialog extends DialogFragment {
    public Dialog a(Bundle bundle) {
        Bundle arguments = getArguments();
        Integer valueOf = arguments != null ? Integer.valueOf(arguments.getInt("title")) : null;
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            Bundle arguments2 = getArguments();
            Integer valueOf2 = arguments2 != null ? Integer.valueOf(arguments2.getInt("message")) : null;
            if (valueOf2 != null) {
                AlertDialog create = new AlertDialog.Builder(getActivity()).setTitle(intValue).setMessage(valueOf2.intValue()).setCancelable(false).setPositiveButton(17039379, (DialogInterface.OnClickListener) null).setNegativeButton(17039369, (DialogInterface.OnClickListener) null).create();
                g.a((Object) create, "AlertDialog.Builder(getA…er)\n            .create()");
                return create;
            }
            g.a();
            throw null;
        }
        g.a();
        throw null;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
    }
}
