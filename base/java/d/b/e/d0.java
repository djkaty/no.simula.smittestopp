package d.b.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import d.b.d.i.g;
import d.b.d.i.m;
import d.i.i.s;

public interface d0 {
    s a(int i2, long j2);

    void a(int i2);

    void a(Drawable drawable);

    void a(Menu menu, m.a aVar);

    void a(m.a aVar, g.a aVar2);

    void a(q0 q0Var);

    void a(boolean z);

    boolean a();

    void b(int i2);

    void b(boolean z);

    boolean b();

    void c(int i2);

    boolean c();

    void collapseActionView();

    void d(int i2);

    boolean d();

    void e();

    boolean f();

    void g();

    CharSequence getTitle();

    int h();

    Menu i();

    ViewGroup j();

    Context k();

    int l();

    void m();

    boolean n();

    void o();

    void setIcon(int i2);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
