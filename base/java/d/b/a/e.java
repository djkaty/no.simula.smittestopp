package d.b.a;

import android.view.View;
import androidx.appcompat.app.AlertController;

public class e implements Runnable {
    public final /* synthetic */ View x;
    public final /* synthetic */ View y;
    public final /* synthetic */ AlertController z;

    public e(AlertController alertController, View view, View view2) {
        this.z = alertController;
        this.x = view;
        this.y = view2;
    }

    public void run() {
        AlertController.a(this.z.f4g, this.x, this.y);
    }
}
