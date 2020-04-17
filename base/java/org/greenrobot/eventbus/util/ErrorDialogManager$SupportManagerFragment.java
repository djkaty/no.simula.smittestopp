package org.greenrobot.eventbus.util;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import k.d.a.c;
import k.d.a.t.a;

public class ErrorDialogManager$SupportManagerFragment extends Fragment {
    public c x;
    public boolean y;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        throw null;
    }

    public void onEventMainThread(a aVar) {
        throw null;
    }

    public void onPause() {
        this.x.c(this);
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        if (this.y) {
            this.y = false;
            return;
        }
        throw null;
    }
}
