package j.b.a.e0;

import android.content.Intent;
import d.b.a.h;
import no.simula.corona.MainActivity;

public class a extends h {
    public final void l() {
        if (!isFinishing()) {
            l.a.a.f2455d.a(getClass().getName() + "gotoMainScreen", new Object[0]);
            Intent intent = new Intent(this, MainActivity.class);
            intent.setFlags(268468224);
            startActivity(intent);
            overridePendingTransition(0, 0);
            finish();
        }
    }
}
