package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import d.i.i.n;
import e.c.a.b.h.b;
import java.util.List;

public abstract class ExpandableBehavior extends CoordinatorLayout.c<View> {
    public int a = 0;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public final /* synthetic */ View x;
        public final /* synthetic */ int y;
        public final /* synthetic */ b z;

        public a(View view, int i2, b bVar) {
            this.x = view;
            this.y = i2;
            this.z = bVar;
        }

        public boolean onPreDraw() {
            this.x.getViewTreeObserver().removeOnPreDrawListener(this);
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            if (expandableBehavior.a == this.y) {
                b bVar = this.z;
                expandableBehavior.a((View) bVar, this.x, bVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
    }

    public abstract boolean a(View view, View view2, boolean z, boolean z2);

    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2) {
        b bVar;
        if (!n.t(view)) {
            List<View> a2 = coordinatorLayout.a(view);
            int size = a2.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    bVar = null;
                    break;
                }
                View view2 = a2.get(i3);
                if (a(coordinatorLayout, view, view2)) {
                    bVar = (b) view2;
                    break;
                }
                i3++;
            }
            if (bVar != null && a(bVar.a())) {
                int i4 = bVar.a() ? 1 : 2;
                this.a = i4;
                view.getViewTreeObserver().addOnPreDrawListener(new a(view, i4, bVar));
            }
        }
        return false;
    }

    public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (!a(bVar.a())) {
            return false;
        }
        this.a = bVar.a() ? 1 : 2;
        return a((View) bVar, view, bVar.a(), true);
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final boolean a(boolean z) {
        if (z) {
            int i2 = this.a;
            return i2 == 0 || i2 == 2;
        } else if (this.a == 1) {
            return true;
        } else {
            return false;
        }
    }
}
