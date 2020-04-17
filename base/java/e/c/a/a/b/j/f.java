package e.c.a.a.b.j;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;

public abstract class f implements DialogInterface.OnClickListener {
    public void onClick(DialogInterface dialogInterface, int i2) {
        try {
            u uVar = (u) this;
            Intent intent = uVar.x;
            if (intent != null) {
                uVar.y.startActivityForResult(intent, uVar.z);
            }
        } catch (ActivityNotFoundException e2) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e2);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
