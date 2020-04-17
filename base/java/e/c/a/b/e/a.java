package e.c.a.b.e;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

public class a implements Runnable {
    public final /* synthetic */ View x;
    public final /* synthetic */ int y;
    public final /* synthetic */ BottomSheetBehavior z;

    public a(BottomSheetBehavior bottomSheetBehavior, View view, int i2) {
        this.z = bottomSheetBehavior;
        this.x = view;
        this.y = i2;
    }

    public void run() {
        this.z.a(this.x, this.y);
    }
}
