package d.i.i;

import android.view.View;
import android.view.ViewTreeObserver;

public final class l implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public final View x;
    public ViewTreeObserver y;
    public final Runnable z;

    public l(View view, Runnable runnable) {
        this.x = view;
        this.y = view.getViewTreeObserver();
        this.z = runnable;
    }

    public static l a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        } else if (runnable != null) {
            l lVar = new l(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(lVar);
            view.addOnAttachStateChangeListener(lVar);
            return lVar;
        } else {
            throw new NullPointerException("runnable == null");
        }
    }

    public boolean onPreDraw() {
        a();
        this.z.run();
        return true;
    }

    public void onViewAttachedToWindow(View view) {
        this.y = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view) {
        a();
    }

    public void a() {
        if (this.y.isAlive()) {
            this.y.removeOnPreDrawListener(this);
        } else {
            this.x.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.x.removeOnAttachStateChangeListener(this);
    }
}
