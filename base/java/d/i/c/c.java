package d.i.c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import d.f.f;
import d.i.b.b.b;
import d.i.b.b.e;
import d.i.b.b.g;

@SuppressLint({"NewApi"})
public class c {
    public static final i a;
    public static final f<String, Typeface> b = new f<>(16);

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            a = new h();
        } else if (i2 >= 28) {
            a = new g();
        } else if (i2 >= 26) {
            a = new f();
        } else {
            if (i2 >= 24) {
                if (e.f568d == null) {
                    Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
                }
                if (e.f568d != null) {
                    a = new e();
                }
            }
            a = new d();
        }
    }

    public static String a(Resources resources, int i2, int i3) {
        return resources.getResourcePackageName(i2) + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i2 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + i3;
    }

    public static Typeface a(Context context, b bVar, Resources resources, int i2, int i3, g gVar, Handler handler, boolean z) {
        Typeface typeface;
        if (bVar instanceof e) {
            e eVar = (e) bVar;
            boolean z2 = false;
            if (!z ? gVar == null : eVar.f562c == 0) {
                z2 = true;
            }
            typeface = d.i.f.b.a(context, eVar.a, gVar, handler, z2, z ? eVar.b : -1, i3);
        } else {
            typeface = a.a(context, (d.i.b.b.c) bVar, resources, i3);
            if (gVar != null) {
                if (typeface != null) {
                    gVar.a(typeface, handler);
                } else {
                    gVar.a(-3, handler);
                }
            }
        }
        if (typeface != null) {
            b.a(a(resources, i2, i3), typeface);
        }
        return typeface;
    }

    public static Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        Typeface a2 = a.a(context, resources, i2, str, i3);
        if (a2 != null) {
            b.a(a(resources, i2, i3), a2);
        }
        return a2;
    }

    public static Typeface a(Context context, Typeface typeface, int i2) {
        if (context != null) {
            return Typeface.create(typeface, i2);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }
}
