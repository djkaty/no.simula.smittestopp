package d.b.a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import d.b.d.a;
import d.i.i.c;

public class q extends Dialog implements i {
    public j x;
    public final c.a y;

    public class a implements c.a {
        public a() {
        }

        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return q.this.a(keyEvent);
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public q(android.content.Context r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            if (r6 != 0) goto L_0x0014
            android.util.TypedValue r1 = new android.util.TypedValue
            r1.<init>()
            android.content.res.Resources$Theme r2 = r5.getTheme()
            int r3 = androidx.appcompat.R$attr.dialogTheme
            r2.resolveAttribute(r3, r1, r0)
            int r1 = r1.resourceId
            goto L_0x0015
        L_0x0014:
            r1 = r6
        L_0x0015:
            r4.<init>(r5, r1)
            d.b.a.q$a r1 = new d.b.a.q$a
            r1.<init>()
            r4.y = r1
            d.b.a.j r1 = r4.a()
            if (r6 != 0) goto L_0x0035
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            int r2 = androidx.appcompat.R$attr.dialogTheme
            r5.resolveAttribute(r2, r6, r0)
            int r6 = r6.resourceId
        L_0x0035:
            r5 = r1
            d.b.a.k r5 = (d.b.a.k) r5
            r5.k0 = r6
            r5 = 0
            r1.a((android.os.Bundle) r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.q.<init>(android.content.Context, int):void");
    }

    public d.b.d.a a(a.C0012a aVar) {
        return null;
    }

    public void a(d.b.d.a aVar) {
    }

    public boolean a(int i2) {
        return a().a(i2);
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().a(view, layoutParams);
    }

    public void b(d.b.d.a aVar) {
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return c.a(this.y, getWindow().getDecorView(), this, keyEvent);
    }

    public <T extends View> T findViewById(int i2) {
        k kVar = (k) a();
        kVar.f();
        return kVar.B.findViewById(i2);
    }

    public void invalidateOptionsMenu() {
        a().b();
    }

    public void onCreate(Bundle bundle) {
        a().a();
        super.onCreate(bundle);
        a().a(bundle);
    }

    public void onStop() {
        super.onStop();
        a().c();
    }

    public void setContentView(int i2) {
        a().b(i2);
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().a(charSequence);
    }

    public j a() {
        if (this.x == null) {
            this.x = j.a((Dialog) this, (i) this);
        }
        return this.x;
    }

    public void setContentView(View view) {
        a().a(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().b(view, layoutParams);
    }

    public void setTitle(int i2) {
        super.setTitle(i2);
        a().a((CharSequence) getContext().getString(i2));
    }

    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
