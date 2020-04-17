package e.c.a.b.m;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import com.google.android.material.R$styleable;
import d.i.i.n;
import d.i.i.x.b;
import d.i.i.x.c;

public class d extends FrameLayout {
    public b A;
    public final AccessibilityManager x;
    public final b y;
    public c z;

    public class a implements b {
        public a() {
        }
    }

    public d(Context context) {
        this(context, (AttributeSet) null);
    }

    /* access modifiers changed from: private */
    public void setClickableOrFocusableBasedOnAccessibility(boolean z2) {
        setClickable(!z2);
        setFocusable(z2);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.A;
        if (bVar != null) {
            bVar.onViewAttachedToWindow(this);
        }
        n.y(this);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.A;
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(this);
        }
        AccessibilityManager accessibilityManager = this.x;
        b bVar2 = this.y;
        if (bVar2 != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new c(bVar2));
        }
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        c cVar = this.z;
        if (cVar != null) {
            cVar.a(this, i2, i3, i4, i5);
        }
    }

    public void setOnAttachStateChangeListener(b bVar) {
        this.A = bVar;
    }

    public void setOnLayoutChangeListener(c cVar) {
        this.z = cVar;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
        if (obtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_elevation)) {
            n.a((View) this, (float) obtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_elevation, 0));
        }
        obtainStyledAttributes.recycle();
        this.x = (AccessibilityManager) context.getSystemService("accessibility");
        a aVar = new a();
        this.y = aVar;
        this.x.addTouchExplorationStateChangeListener(new c(aVar));
        setClickableOrFocusableBasedOnAccessibility(this.x.isTouchExplorationEnabled());
    }
}
