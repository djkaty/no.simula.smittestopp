package d.b.d;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.appcompat.R$style;

public class c extends ContextWrapper {
    public int a;
    public Resources.Theme b;

    /* renamed from: c  reason: collision with root package name */
    public LayoutInflater f258c;

    /* renamed from: d  reason: collision with root package name */
    public Resources f259d;

    public c() {
        super((Context) null);
    }

    public final void a() {
        if (this.b == null) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        this.b.applyStyle(this.a, true);
    }

    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    public Resources getResources() {
        if (this.f259d == null) {
            this.f259d = super.getResources();
        }
        return this.f259d;
    }

    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f258c == null) {
            this.f258c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f258c;
    }

    public Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        if (theme != null) {
            return theme;
        }
        if (this.a == 0) {
            this.a = R$style.Theme_AppCompat_Light;
        }
        a();
        return this.b;
    }

    public void setTheme(int i2) {
        if (this.a != i2) {
            this.a = i2;
            a();
        }
    }

    public c(Context context, int i2) {
        super(context);
        this.a = i2;
    }
}
