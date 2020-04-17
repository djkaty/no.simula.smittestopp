package d.e.a;

import android.content.res.ColorStateList;
import android.graphics.Rect;

public class b implements d {
    public void a(c cVar, float f2) {
        e a = a(cVar);
        boolean a2 = cVar.a();
        boolean c2 = cVar.c();
        if (f2 != a.b || a.f419c != a2 || a.f420d != c2) {
            a.b = f2;
            a.f419c = a2;
            a.f420d = c2;
            a.a((Rect) null);
            throw null;
        } else if (!cVar.a()) {
            cVar.a(0, 0, 0, 0);
        } else {
            float f3 = a(cVar).b;
            float f4 = a(cVar).a;
            int ceil = (int) Math.ceil((double) f.a(f3, f4, cVar.c()));
            int ceil2 = (int) Math.ceil((double) f.b(f3, f4, cVar.c()));
            cVar.a(ceil, ceil2, ceil, ceil2);
        }
    }

    public float b(c cVar) {
        return a(cVar).b;
    }

    public float c(c cVar) {
        return a(cVar).a;
    }

    public void a(c cVar, ColorStateList colorStateList) {
        e a = a(cVar);
        if (a != null) {
            if (colorStateList == null) {
                colorStateList = ColorStateList.valueOf(0);
            }
            a.f421e = colorStateList;
            colorStateList.getColorForState(a.getState(), a.f421e.getDefaultColor());
            throw null;
        }
        throw null;
    }

    public final e a(c cVar) {
        return (e) cVar.b();
    }
}
