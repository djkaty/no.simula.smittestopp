package e.c.a.b.b;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.microsoft.azure.storage.Constants;
import d.b.a.r;
import d.i.i.n;
import d.i.i.w;

public abstract class c extends d<View> {

    /* renamed from: d  reason: collision with root package name */
    public final Rect f1245d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    public final Rect f1246e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    public int f1247f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f1248g;

    public c() {
    }

    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int i5) {
        AppBarLayout a;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (a = ((AppBarLayout.ScrollingViewBehavior) this).a(coordinatorLayout.a(view))) == null) {
            return false;
        }
        if (!n.g(a) || view.getFitsSystemWindows()) {
            View view2 = view;
        } else {
            View view3 = view;
            view.setFitsSystemWindows(true);
            if (view.getFitsSystemWindows()) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i4);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.a(view, i2, i3, View.MeasureSpec.makeMeasureSpec((size - a.getMeasuredHeight()) + a.getTotalScrollRange(), i6 == -1 ? Constants.GB : Integer.MIN_VALUE), i5);
        return true;
    }

    public void b(CoordinatorLayout coordinatorLayout, View view, int i2) {
        AppBarLayout a = ((AppBarLayout.ScrollingViewBehavior) this).a(coordinatorLayout.a(view));
        if (a != null) {
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
            Rect rect = this.f1245d;
            rect.set(coordinatorLayout.getPaddingLeft() + fVar.leftMargin, a.getBottom() + fVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - fVar.rightMargin, ((a.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - fVar.bottomMargin);
            w lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && n.g(coordinatorLayout) && !view.getFitsSystemWindows()) {
                rect.left = lastWindowInsets.b() + rect.left;
                rect.right -= lastWindowInsets.c();
            }
            Rect rect2 = this.f1246e;
            int i3 = fVar.f41c;
            Gravity.apply(i3 == 0 ? 8388659 : i3, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
            int a2 = a(a);
            view.layout(rect2.left, rect2.top - a2, rect2.right, rect2.bottom - a2);
            this.f1247f = rect2.top - a.getBottom();
            return;
        }
        coordinatorLayout.b(view, i2);
        this.f1247f = 0;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final int a(View view) {
        int i2;
        if (this.f1248g == 0) {
            return 0;
        }
        float f2 = 0.0f;
        if (view instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            CoordinatorLayout.c cVar = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).a;
            int b = cVar instanceof AppBarLayout.BaseBehavior ? ((AppBarLayout.BaseBehavior) cVar).b() : 0;
            if ((downNestedPreScrollRange == 0 || totalScrollRange + b > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                f2 = 1.0f + (((float) b) / ((float) i2));
            }
        }
        int i3 = this.f1248g;
        return r.a((int) (f2 * ((float) i3)), 0, i3);
    }
}
