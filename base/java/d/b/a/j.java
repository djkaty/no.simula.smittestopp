package d.b.a;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import d.f.c;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public abstract class j {
    public static final c<WeakReference<j>> x = new c<>();
    public static final Object y = new Object();

    public static j a(Activity activity, i iVar) {
        return new k(activity, (Window) null, iVar, activity);
    }

    public static void b(j jVar) {
        synchronized (y) {
            c(jVar);
        }
    }

    public static void c(j jVar) {
        synchronized (y) {
            Iterator<WeakReference<j>> it = x.iterator();
            while (it.hasNext()) {
                j jVar2 = (j) it.next().get();
                if (jVar2 == jVar || jVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract void a();

    public abstract void a(Bundle bundle);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(CharSequence charSequence);

    public abstract boolean a(int i2);

    public abstract void b();

    public abstract void b(int i2);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void c();

    public static j a(Dialog dialog, i iVar) {
        return new k(dialog.getContext(), dialog.getWindow(), iVar, dialog);
    }

    public static void a(j jVar) {
        synchronized (y) {
            c(jVar);
            x.add(new WeakReference(jVar));
        }
    }
}
