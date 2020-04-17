package d.b.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import d.b.a.k;
import d.b.d.a;
import d.b.d.f;
import d.b.e.c1;
import d.b.e.j;
import d.i.a.l;
import d.m.a.c;

public class h extends c implements i, l.a {
    public j x;
    public Resources y;

    public a a(a.C0012a aVar) {
        return null;
    }

    public void a(a aVar) {
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j().a(view, layoutParams);
    }

    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        k kVar = (k) j();
        kVar.a(false);
        kVar.f0 = true;
    }

    public void b(a aVar) {
    }

    public Intent c() {
        return r.a((Activity) this);
    }

    public void closeOptionsMenu() {
        a k2 = k();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (k2 == null || !k2.a()) {
            super.closeOptionsMenu();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a k2 = k();
        if (keyCode != 82 || k2 == null || !k2.a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    public <T extends View> T findViewById(int i2) {
        k kVar = (k) j();
        kVar.f();
        return kVar.B.findViewById(i2);
    }

    public MenuInflater getMenuInflater() {
        k kVar = (k) j();
        if (kVar.F == null) {
            kVar.k();
            a aVar = kVar.E;
            kVar.F = new f(aVar != null ? aVar.d() : kVar.A);
        }
        return kVar.F;
    }

    public Resources getResources() {
        if (this.y == null) {
            c1.a();
        }
        Resources resources = this.y;
        return resources == null ? super.getResources() : resources;
    }

    public void invalidateOptionsMenu() {
        j().b();
    }

    public j j() {
        if (this.x == null) {
            this.x = j.a((Activity) this, (i) this);
        }
        return this.x;
    }

    public a k() {
        k kVar = (k) j();
        kVar.k();
        return kVar.E;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.y != null) {
            this.y.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        k kVar = (k) j();
        if (kVar.W && kVar.Q) {
            kVar.k();
            a aVar = kVar.E;
            if (aVar != null) {
                aVar.a(configuration);
            }
        }
        j.a().a(kVar.A);
        kVar.a(false);
    }

    public void onContentChanged() {
    }

    public void onCreate(Bundle bundle) {
        j j2 = j();
        j2.a();
        j2.a(bundle);
        super.onCreate(bundle);
    }

    public void onDestroy() {
        super.onDestroy();
        k kVar = (k) j();
        if (kVar != null) {
            j.b((j) kVar);
            if (kVar.p0) {
                kVar.B.getDecorView().removeCallbacks(kVar.r0);
            }
            kVar.h0 = false;
            kVar.i0 = true;
            a aVar = kVar.E;
            if (aVar != null) {
                aVar.f();
            }
            k.g gVar = kVar.n0;
            if (gVar != null) {
                gVar.a();
            }
            k.g gVar2 = kVar.o0;
            if (gVar2 != null) {
                gVar2.a();
                return;
            }
            return;
        }
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0027, code lost:
        r0 = getWindow();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onKeyDown(int r4, android.view.KeyEvent r5) {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            r2 = 1
            if (r0 >= r1) goto L_0x003f
            boolean r0 = r5.isCtrlPressed()
            if (r0 != 0) goto L_0x003f
            int r0 = r5.getMetaState()
            boolean r0 = android.view.KeyEvent.metaStateHasNoModifiers(r0)
            if (r0 != 0) goto L_0x003f
            int r0 = r5.getRepeatCount()
            if (r0 != 0) goto L_0x003f
            int r0 = r5.getKeyCode()
            boolean r0 = android.view.KeyEvent.isModifierKey(r0)
            if (r0 != 0) goto L_0x003f
            android.view.Window r0 = r3.getWindow()
            if (r0 == 0) goto L_0x003f
            android.view.View r1 = r0.getDecorView()
            if (r1 == 0) goto L_0x003f
            android.view.View r0 = r0.getDecorView()
            boolean r0 = r0.dispatchKeyShortcutEvent(r5)
            if (r0 == 0) goto L_0x003f
            r0 = 1
            goto L_0x0040
        L_0x003f:
            r0 = 0
        L_0x0040:
            if (r0 == 0) goto L_0x0043
            return r2
        L_0x0043:
            boolean r4 = super.onKeyDown(r4, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.h.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        Intent a;
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        a k2 = k();
        if (menuItem.getItemId() != 16908332 || k2 == null || (k2.c() & 4) == 0 || (a = r.a((Activity) this)) == null) {
            return false;
        }
        if (shouldUpRecreateTask(a)) {
            l lVar = new l(this);
            Intent c2 = c();
            if (c2 == null) {
                c2 = r.a((Activity) this);
            }
            if (c2 != null) {
                ComponentName component = c2.getComponent();
                if (component == null) {
                    component = c2.resolveActivity(lVar.y.getPackageManager());
                }
                lVar.a(component);
                lVar.x.add(c2);
            }
            lVar.a();
            try {
                d.i.a.a.a(this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        } else {
            navigateUpTo(a);
            return true;
        }
    }

    public boolean onMenuOpened(int i2, Menu menu) {
        return super.onMenuOpened(i2, menu);
    }

    public void onPanelClosed(int i2, Menu menu) {
        super.onPanelClosed(i2, menu);
    }

    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((k) j()).f();
    }

    public void onPostResume() {
        super.onPostResume();
        k kVar = (k) j();
        kVar.k();
        a aVar = kVar.E;
        if (aVar != null) {
            aVar.d(true);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        k kVar = (k) j();
        if (kVar.j0 != -100) {
            k.w0.put(kVar.z.getClass(), Integer.valueOf(kVar.j0));
        }
    }

    public void onStart() {
        super.onStart();
        k kVar = (k) j();
        kVar.h0 = true;
        kVar.d();
        j.a((j) kVar);
    }

    public void onStop() {
        super.onStop();
        j().c();
    }

    public void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        j().a(charSequence);
    }

    public void openOptionsMenu() {
        a k2 = k();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (k2 == null || !k2.g()) {
            super.openOptionsMenu();
        }
    }

    public void setContentView(int i2) {
        j().b(i2);
    }

    public void setTheme(int i2) {
        super.setTheme(i2);
        ((k) j()).k0 = i2;
    }

    public void supportInvalidateOptionsMenu() {
        j().b();
    }

    public void setContentView(View view) {
        j().a(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j().b(view, layoutParams);
    }
}
