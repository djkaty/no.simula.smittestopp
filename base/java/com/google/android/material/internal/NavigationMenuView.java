package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import d.b.d.i.g;
import d.b.d.i.n;
import d.t.a.s;

public class NavigationMenuView extends s implements n {
    public NavigationMenuView(Context context) {
        this(context, (AttributeSet) null);
    }

    public void a(g gVar) {
    }

    public int getWindowAnimations() {
        return 0;
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        setLayoutManager(new LinearLayoutManager(1, false));
    }
}
