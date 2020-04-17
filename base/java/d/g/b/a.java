package d.g.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.R$styleable;

public class a extends b {
    public int D;
    public int E;
    public d.g.a.h.a F;

    public a(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.F = new d.g.a.h.a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R$styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.F.o0 = obtainStyledAttributes.getBoolean(index, true);
                }
            }
        }
        this.A = this.F;
        a();
    }

    public int getType() {
        return this.D;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.F.o0 = z;
    }

    public void setType(int i2) {
        this.D = i2;
        this.E = i2;
        if (1 == getResources().getConfiguration().getLayoutDirection()) {
            int i3 = this.D;
            if (i3 == 5) {
                this.E = 1;
            } else if (i3 == 6) {
                this.E = 0;
            }
        } else {
            int i4 = this.D;
            if (i4 == 5) {
                this.E = 0;
            } else if (i4 == 6) {
                this.E = 1;
            }
        }
        this.F.m0 = this.E;
    }
}
