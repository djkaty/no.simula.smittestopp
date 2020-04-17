package d.y.a.a;

import android.animation.TypeEvaluator;
import d.b.a.r;
import d.i.c.b;

public class d implements TypeEvaluator<b[]> {
    public b[] a;

    public Object evaluate(float f2, Object obj, Object obj2) {
        b[] bVarArr = (b[]) obj;
        b[] bVarArr2 = (b[]) obj2;
        if (r.a(bVarArr, bVarArr2)) {
            if (!r.a(this.a, bVarArr)) {
                this.a = r.a(bVarArr);
            }
            int i2 = 0;
            while (i2 < bVarArr.length) {
                b bVar = this.a[i2];
                b bVar2 = bVarArr[i2];
                b bVar3 = bVarArr2[i2];
                if (bVar != null) {
                    bVar.a = bVar2.a;
                    int i3 = 0;
                    while (true) {
                        float[] fArr = bVar2.b;
                        if (i3 >= fArr.length) {
                            break;
                        }
                        bVar.b[i3] = (bVar3.b[i3] * f2) + ((1.0f - f2) * fArr[i3]);
                        i3++;
                    }
                    i2++;
                } else {
                    throw null;
                }
            }
            return this.a;
        }
        throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
    }
}
