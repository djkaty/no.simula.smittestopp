package d.v;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.savedstate.Recreator;

@SuppressLint({"RestrictedApi"})
public final class a {
    public d.c.a.b.b<String, b> a = new d.c.a.b.b<>();
    public Bundle b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f940c;

    /* renamed from: d  reason: collision with root package name */
    public Recreator.a f941d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f942e = true;

    /* renamed from: d.v.a$a  reason: collision with other inner class name */
    public interface C0048a {
        void a(c cVar);
    }

    public interface b {
        Bundle a();
    }

    public Bundle a(String str) {
        if (this.f940c) {
            Bundle bundle = this.b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.b.remove(str);
            if (this.b.isEmpty()) {
                this.b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    public void a(Class<? extends C0048a> cls) {
        if (this.f942e) {
            if (this.f941d == null) {
                this.f941d = new Recreator.a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                Recreator.a aVar = this.f941d;
                aVar.a.add(cls.getName());
            } catch (NoSuchMethodException e2) {
                StringBuilder a2 = e.a.a.a.a.a("Class");
                a2.append(cls.getSimpleName());
                a2.append(" must have default constructor in order to be automatically recreated");
                throw new IllegalArgumentException(a2.toString(), e2);
            }
        } else {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }
}
