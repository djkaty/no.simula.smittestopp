package d.i.b.b;

import java.util.List;

public final class f {
    public final int[] a;
    public final float[] b;

    public f(List<Integer> list, List<Float> list2) {
        int size = list.size();
        this.a = new int[size];
        this.b = new float[size];
        for (int i2 = 0; i2 < size; i2++) {
            this.a[i2] = list.get(i2).intValue();
            this.b[i2] = list2.get(i2).floatValue();
        }
    }

    public f(int i2, int i3) {
        this.a = new int[]{i2, i3};
        this.b = new float[]{0.0f, 1.0f};
    }

    public f(int i2, int i3, int i4) {
        this.a = new int[]{i2, i3, i4};
        this.b = new float[]{0.0f, 0.5f, 1.0f};
    }
}
