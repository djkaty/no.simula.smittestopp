package d.x;

import android.graphics.Matrix;
import android.view.View;
import androidx.transition.R$id;

public class z {
    public void a(View view) {
        throw null;
    }

    public void a(View view, float f2) {
        throw null;
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        view.setLeft(i2);
        view.setTop(i3);
        view.setRight(i4);
        view.setBottom(i5);
    }

    public void a(View view, Matrix matrix) {
        throw null;
    }

    public float b(View view) {
        Float f2 = (Float) view.getTag(R$id.save_non_transition_alpha);
        if (f2 != null) {
            return view.getAlpha() / f2.floatValue();
        }
        return view.getAlpha();
    }

    public void b(View view, Matrix matrix) {
        throw null;
    }

    public void c(View view) {
        throw null;
    }
}
