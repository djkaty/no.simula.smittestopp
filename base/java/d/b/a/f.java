package d.b.a;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

public class f implements AdapterView.OnItemClickListener {
    public final /* synthetic */ AlertController x;
    public final /* synthetic */ AlertController.b y;

    public f(AlertController.b bVar, AlertController alertController) {
        this.y = bVar;
        this.x = alertController;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.y.m.onClick(this.x.b, i2);
        if (!this.y.o) {
            this.x.b.dismiss();
        }
    }
}
