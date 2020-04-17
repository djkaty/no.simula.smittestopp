package d.b.a;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import d.b.a.a;
import d.b.d.h;
import d.b.d.i.g;
import d.b.d.i.m;
import d.b.e.d0;
import d.b.e.z0;
import d.i.i.n;
import java.util.ArrayList;

public class s extends a {
    public d0 a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public Window.Callback f216c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f217d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f218e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<a.b> f219f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    public final Runnable f220g = new a();

    /* renamed from: h  reason: collision with root package name */
    public final Toolbar.f f221h = new b();

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            s sVar = s.this;
            Menu h2 = sVar.h();
            g gVar = h2 instanceof g ? (g) h2 : null;
            if (gVar != null) {
                gVar.j();
            }
            try {
                h2.clear();
                if (!sVar.f216c.onCreatePanelMenu(0, h2) || !sVar.f216c.onPreparePanel(0, (View) null, h2)) {
                    h2.clear();
                }
            } finally {
                if (gVar != null) {
                    gVar.i();
                }
            }
        }
    }

    public class b implements Toolbar.f {
        public b() {
        }
    }

    public final class d implements g.a {
        public d() {
        }

        public void a(g gVar) {
            s sVar = s.this;
            if (sVar.f216c == null) {
                return;
            }
            if (sVar.a.b()) {
                s.this.f216c.onPanelClosed(108, gVar);
            } else if (s.this.f216c.onPreparePanel(0, (View) null, gVar)) {
                s.this.f216c.onMenuOpened(108, gVar);
            }
        }

        public boolean a(g gVar, MenuItem menuItem) {
            return false;
        }
    }

    public class e extends h {
        public e(Window.Callback callback) {
            super(callback);
        }

        public View onCreatePanelView(int i2) {
            if (i2 == 0) {
                return new View(s.this.a.k());
            }
            return this.x.onCreatePanelView(i2);
        }

        public boolean onPreparePanel(int i2, View view, Menu menu) {
            boolean onPreparePanel = this.x.onPreparePanel(i2, view, menu);
            if (onPreparePanel) {
                s sVar = s.this;
                if (!sVar.b) {
                    sVar.a.e();
                    s.this.b = true;
                }
            }
            return onPreparePanel;
        }
    }

    public s(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.a = new z0(toolbar, false);
        e eVar = new e(callback);
        this.f216c = eVar;
        this.a.setWindowCallback(eVar);
        toolbar.setOnMenuItemClickListener(this.f221h);
        this.a.setWindowTitle(charSequence);
    }

    public void a(Configuration configuration) {
    }

    public void a(Drawable drawable) {
        this.a.a(drawable);
    }

    public void b(CharSequence charSequence) {
        this.a.setWindowTitle(charSequence);
    }

    public void b(boolean z) {
    }

    public void c(boolean z) {
        this.a.d(((z ? 4 : 0) & 4) | (-5 & this.a.h()));
    }

    public Context d() {
        return this.a.k();
    }

    public void d(boolean z) {
    }

    public boolean e() {
        this.a.j().removeCallbacks(this.f220g);
        n.a((View) this.a.j(), this.f220g);
        return true;
    }

    public void f() {
        this.a.j().removeCallbacks(this.f220g);
    }

    public boolean g() {
        return this.a.d();
    }

    public final Menu h() {
        if (!this.f217d) {
            this.a.a((m.a) new c(), (g.a) new d());
            this.f217d = true;
        }
        return this.a.i();
    }

    public final class c implements m.a {
        public boolean x;

        public c() {
        }

        public boolean a(g gVar) {
            Window.Callback callback = s.this.f216c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, gVar);
            return true;
        }

        public void a(g gVar, boolean z) {
            if (!this.x) {
                this.x = true;
                s.this.a.g();
                Window.Callback callback = s.this.f216c;
                if (callback != null) {
                    callback.onPanelClosed(108, gVar);
                }
                this.x = false;
            }
        }
    }

    public void a(int i2) {
        this.a.c(i2);
    }

    public boolean b() {
        if (!this.a.n()) {
            return false;
        }
        this.a.collapseActionView();
        return true;
    }

    public void a(CharSequence charSequence) {
        this.a.setTitle(charSequence);
    }

    public int c() {
        return this.a.h();
    }

    public boolean a() {
        return this.a.c();
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.a.d();
        }
        return true;
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        Menu h2 = h();
        if (h2 == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        h2.setQwertyMode(z);
        return h2.performShortcut(i2, keyEvent, 0);
    }

    public void a(boolean z) {
        if (z != this.f218e) {
            this.f218e = z;
            int size = this.f219f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f219f.get(i2).a(z);
            }
        }
    }
}
