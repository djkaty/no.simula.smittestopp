package d.x;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import d.i.i.n;
import java.lang.reflect.Field;

public class v {
    public static final z a;
    public static Field b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f976c;

    /* renamed from: d  reason: collision with root package name */
    public static final Property<View, Float> f977d = new a(Float.class, "translationAlpha");

    public static class a extends Property<View, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            return Float.valueOf(v.b((View) obj));
        }

        public void set(Object obj, Object obj2) {
            float floatValue = ((Float) obj2).floatValue();
            v.a.a((View) obj, floatValue);
        }
    }

    public static class b extends Property<View, Rect> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            return n.d((View) obj);
        }

        public void set(Object obj, Object obj2) {
            n.a((View) obj, (Rect) obj2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            a = new y();
        } else {
            a = new x();
        }
        new b(Rect.class, "clipBounds");
    }

    public static u a(View view) {
        return new t(view);
    }

    public static float b(View view) {
        return a.b(view);
    }

    public static d0 c(View view) {
        return new c0(view);
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        a.a(view, i2, i3, i4, i5);
    }

    public static void a(View view, int i2) {
        if (!f976c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f976c = true;
        }
        Field field = b;
        if (field != null) {
            try {
                b.setInt(view, i2 | (field.getInt(view) & -13));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
