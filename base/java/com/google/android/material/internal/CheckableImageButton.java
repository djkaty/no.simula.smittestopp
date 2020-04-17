package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.R$attr;
import d.b.e.l;
import d.i.i.n;
import d.i.i.x.d;

public class CheckableImageButton extends l implements Checkable {
    public static final int[] A = {16842912};
    public boolean z;

    public CheckableImageButton(Context context) {
        this(context, (AttributeSet) null);
    }

    public boolean isChecked() {
        return this.z;
    }

    public int[] onCreateDrawableState(int i2) {
        if (this.z) {
            return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i2 + A.length), A);
        }
        return super.onCreateDrawableState(i2);
    }

    public void setChecked(boolean z2) {
        if (this.z != z2) {
            this.z = z2;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void toggle() {
        setChecked(!this.z);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        n.a((View) this, (d.i.i.a) new a());
    }

    public class a extends d.i.i.a {
        public a() {
        }

        public void a(View view, AccessibilityEvent accessibilityEvent) {
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.z);
        }

        public void a(View view, d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            dVar.a.setCheckable(true);
            dVar.a.setChecked(CheckableImageButton.this.z);
        }
    }
}
