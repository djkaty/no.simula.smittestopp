package d.i.a;

import android.app.PendingIntent;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.InvocationTargetException;

public class e {
    public final Bundle a;
    public IconCompat b;

    /* renamed from: c  reason: collision with root package name */
    public final j[] f537c;

    /* renamed from: d  reason: collision with root package name */
    public final j[] f538d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f539e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f540f;

    /* renamed from: g  reason: collision with root package name */
    public final int f541g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f542h;
    @Deprecated

    /* renamed from: i  reason: collision with root package name */
    public int f543i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f544j;

    /* renamed from: k  reason: collision with root package name */
    public PendingIntent f545k;

    public e(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        int i3;
        IconCompat a2 = i2 == 0 ? null : IconCompat.a((Resources) null, "", i2);
        Bundle bundle = new Bundle();
        this.f540f = true;
        this.b = a2;
        if (a2 != null) {
            int i4 = -1;
            if (a2.a != -1 || (i3 = Build.VERSION.SDK_INT) < 23) {
                i4 = a2.a;
            } else {
                Icon icon = (Icon) a2.b;
                if (i3 >= 28) {
                    i4 = icon.getType();
                } else {
                    try {
                        i4 = ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
                    } catch (IllegalAccessException e2) {
                        Log.e("IconCompat", "Unable to get icon type " + icon, e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("IconCompat", "Unable to get icon type " + icon, e3);
                    } catch (NoSuchMethodException e4) {
                        Log.e("IconCompat", "Unable to get icon type " + icon, e4);
                    }
                }
            }
            if (i4 == 2) {
                this.f543i = a2.a();
            }
        }
        this.f544j = g.c(charSequence);
        this.f545k = pendingIntent;
        this.a = bundle;
        this.f537c = null;
        this.f538d = null;
        this.f539e = true;
        this.f541g = 0;
        this.f540f = true;
        this.f542h = false;
    }
}
