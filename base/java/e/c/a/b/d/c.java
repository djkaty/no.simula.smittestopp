package e.c.a.b.d;

import android.view.MenuItem;
import android.view.View;
import d.b.d.i.i;
import d.b.d.i.m;

public class c implements View.OnClickListener {
    public final /* synthetic */ d x;

    public c(d dVar) {
        this.x = dVar;
    }

    public void onClick(View view) {
        i itemData = ((a) view).getItemData();
        d dVar = this.x;
        if (!dVar.U.a((MenuItem) itemData, (m) dVar.T, 0)) {
            itemData.setChecked(true);
        }
    }
}
