package d.g.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import d.g.a.h.d;
import d.g.a.h.h;
import java.util.Arrays;

public abstract class b extends View {
    public h A;
    public boolean B = false;
    public String C;
    public int[] x = new int[32];
    public int y;
    public Context z;

    public b(Context context) {
        super(context);
        this.z = context;
        a((AttributeSet) null);
    }

    private void setIds(String str) {
        if (str != null) {
            int i2 = 0;
            while (true) {
                int indexOf = str.indexOf(44, i2);
                if (indexOf == -1) {
                    a(str.substring(i2));
                    return;
                } else {
                    a(str.substring(i2, indexOf));
                    i2 = indexOf + 1;
                }
            }
        }
    }

    public void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.C = string;
                    setIds(string);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.x, this.y);
    }

    public void onDraw(Canvas canvas) {
    }

    public void onMeasure(int i2, int i3) {
        if (this.B) {
            super.onMeasure(i2, i3);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.y = 0;
        for (int tag : iArr) {
            setTag(tag, (Object) null);
        }
    }

    public void setTag(int i2, Object obj) {
        int i3 = this.y + 1;
        int[] iArr = this.x;
        if (i3 > iArr.length) {
            this.x = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.x;
        int i4 = this.y;
        iArr2[i4] = i2;
        this.y = i4 + 1;
    }

    public void a() {
        if (this.A != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.a) {
                ((ConstraintLayout.a) layoutParams).k0 = this.A;
            }
        }
    }

    public final void a(String str) {
        int i2;
        Object a;
        if (str != null && this.z != null) {
            String trim = str.trim();
            try {
                i2 = R$id.class.getField(trim).getInt((Object) null);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 == 0) {
                i2 = this.z.getResources().getIdentifier(trim, "id", this.z.getPackageName());
            }
            if (i2 == 0 && isInEditMode() && (getParent() instanceof ConstraintLayout) && (a = ((ConstraintLayout) getParent()).a(0, (Object) trim)) != null && (a instanceof Integer)) {
                i2 = ((Integer) a).intValue();
            }
            if (i2 != 0) {
                setTag(i2, (Object) null);
                return;
            }
            Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
        }
    }

    public void a(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.C);
        }
        h hVar = this.A;
        if (hVar != null) {
            hVar.l0 = 0;
            for (int i2 = 0; i2 < this.y; i2++) {
                View view = constraintLayout.x.get(this.x[i2]);
                if (view != null) {
                    h hVar2 = this.A;
                    d a = constraintLayout.a(view);
                    int i3 = hVar2.l0 + 1;
                    d[] dVarArr = hVar2.k0;
                    if (i3 > dVarArr.length) {
                        hVar2.k0 = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                    }
                    d[] dVarArr2 = hVar2.k0;
                    int i4 = hVar2.l0;
                    dVarArr2[i4] = a;
                    hVar2.l0 = i4 + 1;
                }
            }
        }
    }
}
