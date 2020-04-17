package e.c.a.b.a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

public class f implements TypeEvaluator<Matrix> {
    public final float[] a = new float[9];
    public final float[] b = new float[9];

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f1232c = new Matrix();

    public Object evaluate(float f2, Object obj, Object obj2) {
        ((Matrix) obj).getValues(this.a);
        ((Matrix) obj2).getValues(this.b);
        for (int i2 = 0; i2 < 9; i2++) {
            float[] fArr = this.b;
            float f3 = fArr[i2];
            float[] fArr2 = this.a;
            fArr[i2] = ((f3 - fArr2[i2]) * f2) + fArr2[i2];
        }
        this.f1232c.setValues(this.b);
        return this.f1232c;
    }
}
