package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import d.m.a.p;

public class SupportErrorDialogFragment extends DialogFragment {
    public Dialog K = null;
    public DialogInterface.OnCancelListener L = null;

    public Dialog a(Bundle bundle) {
        if (this.K == null) {
            this.E = false;
        }
        return this.K;
    }

    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.L;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public void a(p pVar, String str) {
        super.a(pVar, str);
    }
}
