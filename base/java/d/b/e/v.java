package d.b.e;

import android.annotation.SuppressLint;
import android.view.View;
import d.b.d.i.p;
import d.b.e.w;

public class v extends h0 {
    public final /* synthetic */ w.d G;
    public final /* synthetic */ w H;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public v(w wVar, View view, w.d dVar) {
        super(view);
        this.H = wVar;
        this.G = dVar;
    }

    public p b() {
        return this.G;
    }

    @SuppressLint({"SyntheticAccessor"})
    public boolean c() {
        if (this.H.getInternalPopup().a()) {
            return true;
        }
        this.H.a();
        return true;
    }
}
