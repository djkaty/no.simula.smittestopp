package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import androidx.appcompat.app.AppCompatViewInflater;
import d.b.e.f;
import e.c.a.b.f.a;

@Keep
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    public f createButton(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }
}
