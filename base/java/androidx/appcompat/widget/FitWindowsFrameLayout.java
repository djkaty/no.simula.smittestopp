package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import d.b.a.m;
import d.b.e.g0;

public class FitWindowsFrameLayout extends FrameLayout {
    public g0 x;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public boolean fitSystemWindows(Rect rect) {
        g0 g0Var = this.x;
        if (g0Var != null) {
            rect.top = ((m) g0Var).a.f(rect.top);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(g0 g0Var) {
        this.x = g0Var;
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
