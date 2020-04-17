package org.greenrobot.eventbus.util;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import d.m.a.c;

public class ErrorDialogFragments$Support extends DialogFragment implements DialogInterface.OnClickListener {
    public Dialog a(Bundle bundle) {
        c activity = getActivity();
        Bundle arguments = getArguments();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(arguments.getString("de.greenrobot.eventbus.errordialog.title"));
        builder.setMessage(arguments.getString("de.greenrobot.eventbus.errordialog.message"));
        builder.setPositiveButton(17039370, this);
        return builder.create();
    }

    public void onClick(DialogInterface dialogInterface, int i2) {
        c activity = getActivity();
        if (getArguments().getBoolean("de.greenrobot.eventbus.errordialog.finish_after_dialog", false) && activity != null) {
            activity.finish();
        }
    }
}
