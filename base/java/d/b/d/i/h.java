package d.b.d.i;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import d.b.a.g;
import d.b.d.i.m;

public class h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {
    public g x;
    public g y;
    public e z;

    public h(g gVar) {
        this.x = gVar;
    }

    public void a(g gVar, boolean z2) {
        g gVar2;
        if ((z2 || gVar == this.x) && (gVar2 = this.y) != null) {
            gVar2.dismiss();
        }
    }

    public boolean a(g gVar) {
        return false;
    }

    public void onClick(DialogInterface dialogInterface, int i2) {
        this.x.a((MenuItem) (i) this.z.a().getItem(i2), 0);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        e eVar = this.z;
        g gVar = this.x;
        m.a aVar = eVar.E;
        if (aVar != null) {
            aVar.a(gVar, true);
        }
    }

    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.y.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.y.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.x.a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.x.performShortcut(i2, keyEvent, 0);
    }
}
