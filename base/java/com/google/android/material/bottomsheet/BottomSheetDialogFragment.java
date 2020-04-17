package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDialogFragment;
import e.c.a.b.e.b;

public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    public Dialog a(Bundle bundle) {
        return new b(getContext(), this.C);
    }
}
