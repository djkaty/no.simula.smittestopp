package d.b.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import d.b.a.r;
import d.i.c.c;
import d.i.g.a;
import d.i.j.b;
import d.i.j.e;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class z extends TextView implements e, b {
    public Future<a> A;
    public final e x;
    public final y y;
    public final x z;

    public z(Context context) {
        this(context, (AttributeSet) null);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.x;
        if (eVar != null) {
            eVar.a();
        }
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public int getAutoSizeMaxTextSize() {
        if (b.a) {
            return super.getAutoSizeMaxTextSize();
        }
        y yVar = this.y;
        if (yVar != null) {
            return Math.round(yVar.f398i.f335e);
        }
        return -1;
    }

    public int getAutoSizeMinTextSize() {
        if (b.a) {
            return super.getAutoSizeMinTextSize();
        }
        y yVar = this.y;
        if (yVar != null) {
            return Math.round(yVar.f398i.f334d);
        }
        return -1;
    }

    public int getAutoSizeStepGranularity() {
        if (b.a) {
            return super.getAutoSizeStepGranularity();
        }
        y yVar = this.y;
        if (yVar != null) {
            return Math.round(yVar.f398i.f333c);
        }
        return -1;
    }

    public int[] getAutoSizeTextAvailableSizes() {
        if (b.a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        y yVar = this.y;
        return yVar != null ? yVar.f398i.f336f : new int[0];
    }

    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (!b.a) {
            y yVar = this.y;
            if (yVar != null) {
                return yVar.f398i.a;
            }
            return 0;
        } else if (super.getAutoSizeTextType() == 1) {
            return 1;
        } else {
            return 0;
        }
    }

    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.x;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.x;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        v0 v0Var = this.y.f397h;
        if (v0Var != null) {
            return v0Var.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        v0 v0Var = this.y.f397h;
        if (v0Var != null) {
            return v0Var.b;
        }
        return null;
    }

    public CharSequence getText() {
        Future<a> future = this.A;
        if (future != null) {
            try {
                this.A = null;
                r.a((TextView) this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    public TextClassifier getTextClassifier() {
        x xVar;
        if (Build.VERSION.SDK_INT >= 28 || (xVar = this.z) == null) {
            return super.getTextClassifier();
        }
        return xVar.a();
    }

    public a.C0026a getTextMetricsParamsCompat() {
        return r.a((TextView) this);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        r.a(onCreateInputConnection, editorInfo, (View) this);
        return onCreateInputConnection;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        y yVar = this.y;
        if (yVar != null && !b.a) {
            yVar.f398i.a();
        }
    }

    public void onMeasure(int i2, int i3) {
        Future<a> future = this.A;
        if (future != null) {
            try {
                this.A = null;
                r.a((TextView) this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i2, i3);
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        y yVar = this.y;
        if (yVar != null && !b.a && yVar.b()) {
            this.y.f398i.a();
        }
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (b.a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        y yVar = this.y;
        if (yVar != null) {
            yVar.a(i2, i3, i4, i5);
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) {
        if (b.a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        y yVar = this.y;
        if (yVar != null) {
            yVar.a(iArr, i2);
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (b.a) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        y yVar = this.y;
        if (yVar != null) {
            yVar.a(i2);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.x;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.x;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(r.a((TextView) this, callback));
    }

    public void setFirstBaselineToTopHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i2);
        } else {
            r.a((TextView) this, i2);
        }
    }

    public void setLastBaselineToBottomHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i2);
        } else {
            r.b((TextView) this, i2);
        }
    }

    public void setLineHeight(int i2) {
        r.c((TextView) this, i2);
    }

    public void setPrecomputedText(a aVar) {
        r.a((TextView) this, aVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.x;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.x;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y yVar = this.y;
        if (yVar.f397h == null) {
            yVar.f397h = new v0();
        }
        v0 v0Var = yVar.f397h;
        v0Var.a = colorStateList;
        v0Var.f390d = colorStateList != null;
        v0 v0Var2 = yVar.f397h;
        yVar.b = v0Var2;
        yVar.f392c = v0Var2;
        yVar.f393d = v0Var2;
        yVar.f394e = v0Var2;
        yVar.f395f = v0Var2;
        yVar.f396g = v0Var2;
        this.y.a();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y yVar = this.y;
        if (yVar.f397h == null) {
            yVar.f397h = new v0();
        }
        v0 v0Var = yVar.f397h;
        v0Var.b = mode;
        v0Var.f389c = mode != null;
        v0 v0Var2 = yVar.f397h;
        yVar.b = v0Var2;
        yVar.f392c = v0Var2;
        yVar.f393d = v0Var2;
        yVar.f394e = v0Var2;
        yVar.f395f = v0Var2;
        yVar.f396g = v0Var2;
        this.y.a();
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a(context, i2);
        }
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        x xVar;
        if (Build.VERSION.SDK_INT >= 28 || (xVar = this.z) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            xVar.b = textClassifier;
        }
    }

    public void setTextFuture(Future<a> future) {
        this.A = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(a.C0026a aVar) {
        TextDirectionHeuristic textDirectionHeuristic = aVar.b;
        int i2 = 1;
        if (!(textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                i2 = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                i2 = 3;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i2 = 4;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                i2 = 5;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i2 = 6;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i2 = 7;
            }
        }
        setTextDirection(i2);
        if (Build.VERSION.SDK_INT < 23) {
            float textScaleX = aVar.a.getTextScaleX();
            getPaint().set(aVar.a);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
            return;
        }
        getPaint().set(aVar.a);
        setBreakStrategy(aVar.f597c);
        setHyphenationFrequency(aVar.f598d);
    }

    public void setTextSize(int i2, float f2) {
        boolean z2 = b.a;
        if (z2) {
            super.setTextSize(i2, f2);
            return;
        }
        y yVar = this.y;
        if (yVar != null && !z2 && !yVar.b()) {
            yVar.f398i.a(i2, f2);
        }
    }

    public void setTypeface(Typeface typeface, int i2) {
        Typeface a = (typeface == null || i2 <= 0) ? null : c.a(getContext(), typeface, i2);
        if (a != null) {
            typeface = a;
        }
        super.setTypeface(typeface, i2);
    }

    public z(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public z(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        u0.a(context);
        e eVar = new e(this);
        this.x = eVar;
        eVar.a(attributeSet, i2);
        y yVar = new y(this);
        this.y = yVar;
        yVar.a(attributeSet, i2);
        this.y.a();
        this.z = new x(this);
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable c2 = i2 != 0 ? d.b.b.a.a.c(context, i2) : null;
        Drawable c3 = i3 != 0 ? d.b.b.a.a.c(context, i3) : null;
        Drawable c4 = i4 != 0 ? d.b.b.a.a.c(context, i4) : null;
        if (i5 != 0) {
            drawable = d.b.b.a.a.c(context, i5);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(c2, c3, c4, drawable);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable c2 = i2 != 0 ? d.b.b.a.a.c(context, i2) : null;
        Drawable c3 = i3 != 0 ? d.b.b.a.a.c(context, i3) : null;
        Drawable c4 = i4 != 0 ? d.b.b.a.a.c(context, i4) : null;
        if (i5 != 0) {
            drawable = d.b.b.a.a.c(context, i5);
        }
        setCompoundDrawablesWithIntrinsicBounds(c2, c3, c4, drawable);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }
}
