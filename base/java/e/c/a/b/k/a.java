package e.c.a.b.k;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.StateSet;

public class a {
    public static final int[] a = {16842919};
    public static final int[] b = {16843623, 16842908};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f1286c = {16842908};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f1287d = {16843623};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f1288e = {16842913, 16842919};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f1289f = {16842913, 16843623, 16842908};

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f1290g = {16842913, 16842908};

    /* renamed from: h  reason: collision with root package name */
    public static final int[] f1291h = {16842913, 16843623};

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f1292i = {16842913};

    public static ColorStateList a(ColorStateList colorStateList) {
        return new ColorStateList(new int[][]{f1292i, StateSet.NOTHING}, new int[]{a(colorStateList, f1288e), a(colorStateList, a)});
    }

    public static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return d.i.c.a.b(colorForState, Math.min(Color.alpha(colorForState) * 2, 255));
    }
}
