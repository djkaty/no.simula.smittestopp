package e.c.a.b.a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

public class e extends Property<ImageView, Matrix> {
    public final Matrix a = new Matrix();

    public e() {
        super(Matrix.class, "imageMatrixProperty");
    }

    public Object get(Object obj) {
        this.a.set(((ImageView) obj).getImageMatrix());
        return this.a;
    }

    public void set(Object obj, Object obj2) {
        ((ImageView) obj).setImageMatrix((Matrix) obj2);
    }
}
