package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import e.c.a.b.m.a;
import e.c.a.b.m.d;
import e.c.a.b.m.e;

public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: j  reason: collision with root package name */
    public final a f142j = new a(this);

    public boolean a(View view) {
        if (this.f142j != null) {
            return view instanceof d;
        }
        throw null;
    }

    public boolean a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f142j != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    if (e.f1293c == null) {
                        e.f1293c = new e();
                    }
                    e.f1293c.b((e.b) null);
                }
            } else if (coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                if (e.f1293c == null) {
                    e.f1293c = new e();
                }
                e.f1293c.a((e.b) null);
            }
            return super.a(coordinatorLayout, view, motionEvent);
        }
        throw null;
    }
}
