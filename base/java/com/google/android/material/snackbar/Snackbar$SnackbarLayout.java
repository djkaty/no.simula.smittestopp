package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.microsoft.azure.storage.Constants;
import e.c.a.b.m.d;

public final class Snackbar$SnackbarLayout extends d {
    public Snackbar$SnackbarLayout(Context context) {
        super(context);
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int childCount = getChildCount();
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getLayoutParams().width == -1) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Constants.GB), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), Constants.GB));
            }
        }
    }

    public Snackbar$SnackbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
