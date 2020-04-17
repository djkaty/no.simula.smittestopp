package d.b.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Property;
import android.util.TypedValue;
import android.util.Xml;
import android.view.ActionMode;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CompoundButton;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.R$styleable;
import androidx.fragment.R$anim;
import androidx.fragment.R$id;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import com.microsoft.azure.storage.queue.QueueConstants;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import d.b.e.a1;
import d.b.e.e1;
import d.g.a.h.c;
import d.g.a.h.d;
import d.g.a.h.f;
import d.g.a.h.h;
import d.g.a.h.j;
import d.g.a.h.l;
import d.i.c.j.d;
import d.i.g.a;
import d.m.a.g;
import d.m.a.i;
import d.r.e;
import d.t.a.s;
import e.a.a.a.a;
import e.c.a.a.b.j.i0;
import e.c.a.a.b.j.o;
import e.c.a.a.b.j.s.b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class r {
    public static Field a;
    public static boolean b;

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f206c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f207d;

    /* renamed from: e  reason: collision with root package name */
    public static Field f208e;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f209f;

    /* renamed from: g  reason: collision with root package name */
    public static Field f210g;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f211h;

    /* renamed from: i  reason: collision with root package name */
    public static Method f212i;

    /* renamed from: j  reason: collision with root package name */
    public static boolean f213j;

    /* renamed from: k  reason: collision with root package name */
    public static Method f214k;

    /* renamed from: l  reason: collision with root package name */
    public static boolean f215l;
    public static Field m;
    public static boolean n;
    public static Method o;
    public static boolean p;
    public static Field q;
    public static boolean r;
    public static Method s;
    public static boolean t;

    public static int a(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    public static <T> T a(T t2) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException("null reference");
    }

    public static int b(Parcel parcel) {
        int readInt = parcel.readInt();
        int h2 = h(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if ((65535 & readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new b(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i2 = h2 + dataPosition;
        if (i2 >= dataPosition && i2 <= parcel.dataSize()) {
            return i2;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i2);
        throw new b(sb.toString(), parcel);
    }

    public static boolean b(int i2) {
        return i2 >= 28 && i2 <= 31;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean d(Parcel parcel, int i2) {
        b(parcel, i2, 4);
        return parcel.readInt() != 0;
    }

    public static IBinder e(Parcel parcel, int i2) {
        int h2 = h(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (h2 == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + h2);
        return readStrongBinder;
    }

    public static int f(Parcel parcel, int i2) {
        b(parcel, i2, 4);
        return parcel.readInt();
    }

    public static long g(Parcel parcel, int i2) {
        b(parcel, i2, 8);
        return parcel.readLong();
    }

    public static int h(Parcel parcel, int i2) {
        return (i2 & -65536) != -65536 ? (i2 >> 16) & 65535 : parcel.readInt();
    }

    public static void i(Parcel parcel, int i2) {
        parcel.setDataPosition(parcel.dataPosition() + h(parcel, i2));
    }

    public static int j(Parcel parcel, int i2) {
        parcel.writeInt(i2 | -65536);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void k(Parcel parcel, int i2) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i2 - 4);
        parcel.writeInt(dataPosition - i2);
        parcel.setDataPosition(dataPosition);
    }

    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    public static o c(Object obj) {
        return new o(obj, (i0) null);
    }

    public static void c(Parcel parcel, int i2, int i3) {
        if (i3 >= 65535) {
            parcel.writeInt(i2 | -65536);
            parcel.writeInt(i3);
            return;
        }
        parcel.writeInt(i2 | (i3 << 16));
    }

    public static void d(TextView textView, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i2);
        } else {
            textView.setTextAppearance(textView.getContext(), i2);
        }
    }

    public static int a(Parcel parcel) {
        return j(parcel, 20293);
    }

    public static void a(Parcel parcel, int i2, boolean z) {
        c(parcel, i2, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static Path c(String str) {
        Path path = new Path();
        d.i.c.b[] b2 = b(str);
        if (b2 == null) {
            return null;
        }
        try {
            d.i.c.b.a(b2, path);
            return path;
        } catch (RuntimeException e2) {
            throw new RuntimeException(a.b("Error in parsing ", str), e2);
        }
    }

    public static InputConnection a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                } else if (parent instanceof e1) {
                    editorInfo.hintText = ((e1) parent).a();
                    break;
                } else {
                    parent = parent.getParent();
                }
            }
        }
        return inputConnection;
    }

    public static <T> T b(T t2, Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void b(Parcel parcel, int i2, int i3) {
        int h2 = h(parcel, i2);
        if (h2 != i3) {
            String hexString = Integer.toHexString(h2);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i3);
            sb.append(" got ");
            sb.append(h2);
            throw new b(a.a(sb, " (0x", hexString, ")"), parcel);
        }
    }

    public static Drawable c(Drawable drawable) {
        return (Build.VERSION.SDK_INT < 23 && !(drawable instanceof d.i.c.j.a)) ? new d(drawable) : drawable;
    }

    public static int b(s.u uVar, d.t.a.r rVar, View view, View view2, s.k kVar, boolean z) {
        if (kVar.d() == 0 || uVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return uVar.a();
        }
        return (int) ((((float) (rVar.a(view2) - rVar.b(view))) / ((float) (Math.abs(kVar.a(view) - kVar.a(view2)) + 1))) * ((float) uVar.a()));
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static <T> ArrayList<T> c(Parcel parcel, int i2, Parcelable.Creator<T> creator) {
        int h2 = h(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (h2 == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + h2);
        return createTypedArrayList;
    }

    public static <T> ObjectAnimator a(T t2, Property<T, PointF> property, Path path) {
        return ObjectAnimator.ofObject(t2, property, (TypeConverter) null, path);
    }

    public static int a(s.u uVar, d.t.a.r rVar, View view, View view2, s.k kVar, boolean z, boolean z2) {
        int i2;
        if (kVar.d() == 0 || uVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(kVar.a(view), kVar.a(view2));
        int max = Math.max(kVar.a(view), kVar.a(view2));
        if (z2) {
            i2 = Math.max(0, (uVar.a() - max) - 1);
        } else {
            i2 = Math.max(0, min);
        }
        if (!z) {
            return i2;
        }
        return Math.round((((float) i2) * (((float) Math.abs(rVar.a(view2) - rVar.b(view))) / ((float) (Math.abs(kVar.a(view) - kVar.a(view2)) + 1)))) + ((float) (rVar.b() - rVar.b(view))));
    }

    public static void c(Parcel parcel, int i2) {
        if (parcel.dataPosition() != i2) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Overread allowed size end=");
            sb.append(i2);
            throw new b(sb.toString(), parcel);
        }
    }

    public static String b(Parcel parcel, int i2) {
        int h2 = h(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (h2 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + h2);
        return readString;
    }

    public static void c(TextView textView, int i2) {
        a(i2);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt((Paint.FontMetricsInt) null);
        if (i2 != fontMetricsInt) {
            textView.setLineSpacing((float) (i2 - fontMetricsInt), 1.0f);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x008b, code lost:
        if (r13 == false) goto L_0x008d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x008d, code lost:
        r11 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0098 A[Catch:{ NumberFormatException -> 0x00ba }, LOOP:3: B:25:0x006d->B:45:0x0098, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00d7 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0097 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static d.i.c.b[] b(java.lang.String r16) {
        /*
            r0 = r16
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            r3 = 1
            r4 = 0
        L_0x000e:
            int r5 = r16.length()
            if (r3 >= r5) goto L_0x00df
        L_0x0014:
            int r5 = r16.length()
            r6 = 69
            r7 = 101(0x65, float:1.42E-43)
            if (r3 >= r5) goto L_0x003a
            char r5 = r0.charAt(r3)
            int r8 = r5 + -65
            int r9 = r5 + -90
            int r9 = r9 * r8
            if (r9 <= 0) goto L_0x0032
            int r8 = r5 + -97
            int r9 = r5 + -122
            int r9 = r9 * r8
            if (r9 > 0) goto L_0x0037
        L_0x0032:
            if (r5 == r7) goto L_0x0037
            if (r5 == r6) goto L_0x0037
            goto L_0x003a
        L_0x0037:
            int r3 = r3 + 1
            goto L_0x0014
        L_0x003a:
            java.lang.String r4 = r0.substring(r4, r3)
            java.lang.String r4 = r4.trim()
            int r5 = r4.length()
            if (r5 <= 0) goto L_0x00d7
            char r5 = r4.charAt(r2)
            r8 = 122(0x7a, float:1.71E-43)
            if (r5 == r8) goto L_0x00c9
            char r5 = r4.charAt(r2)
            r8 = 90
            if (r5 != r8) goto L_0x005a
            goto L_0x00c9
        L_0x005a:
            int r5 = r4.length()     // Catch:{ NumberFormatException -> 0x00ba }
            float[] r5 = new float[r5]     // Catch:{ NumberFormatException -> 0x00ba }
            int r8 = r4.length()     // Catch:{ NumberFormatException -> 0x00ba }
            r9 = 1
            r10 = 0
        L_0x0066:
            if (r9 >= r8) goto L_0x00b2
            r2 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = r9
        L_0x006d:
            int r15 = r4.length()     // Catch:{ NumberFormatException -> 0x00ba }
            if (r14 >= r15) goto L_0x009b
            char r15 = r4.charAt(r14)     // Catch:{ NumberFormatException -> 0x00ba }
            r7 = 32
            if (r15 == r7) goto L_0x0091
            r7 = 101(0x65, float:1.42E-43)
            if (r15 == r6) goto L_0x008f
            if (r15 == r7) goto L_0x008f
            switch(r15) {
                case 44: goto L_0x0093;
                case 45: goto L_0x0089;
                case 46: goto L_0x0085;
                default: goto L_0x0084;
            }     // Catch:{ NumberFormatException -> 0x00ba }
        L_0x0084:
            goto L_0x0094
        L_0x0085:
            if (r12 != 0) goto L_0x008d
            r12 = 1
            goto L_0x0094
        L_0x0089:
            if (r14 == r9) goto L_0x0094
            if (r13 != 0) goto L_0x0094
        L_0x008d:
            r11 = 1
            goto L_0x0093
        L_0x008f:
            r13 = 1
            goto L_0x0095
        L_0x0091:
            r7 = 101(0x65, float:1.42E-43)
        L_0x0093:
            r2 = 1
        L_0x0094:
            r13 = 0
        L_0x0095:
            if (r2 == 0) goto L_0x0098
            goto L_0x009b
        L_0x0098:
            int r14 = r14 + 1
            goto L_0x006d
        L_0x009b:
            if (r9 >= r14) goto L_0x00aa
            int r2 = r10 + 1
            java.lang.String r9 = r4.substring(r9, r14)     // Catch:{ NumberFormatException -> 0x00ba }
            float r9 = java.lang.Float.parseFloat(r9)     // Catch:{ NumberFormatException -> 0x00ba }
            r5[r10] = r9     // Catch:{ NumberFormatException -> 0x00ba }
            r10 = r2
        L_0x00aa:
            if (r11 == 0) goto L_0x00ad
            goto L_0x00af
        L_0x00ad:
            int r14 = r14 + 1
        L_0x00af:
            r9 = r14
            r2 = 0
            goto L_0x0066
        L_0x00b2:
            float[] r2 = a((float[]) r5, (int) r2, (int) r10)     // Catch:{ NumberFormatException -> 0x00ba }
            r5 = 0
            r5 = r2
            r2 = 0
            goto L_0x00cb
        L_0x00ba:
            r0 = move-exception
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "error in parsing \""
            java.lang.String r3 = "\""
            java.lang.String r2 = e.a.a.a.a.a((java.lang.String) r2, (java.lang.String) r4, (java.lang.String) r3)
            r1.<init>(r2, r0)
            throw r1
        L_0x00c9:
            float[] r5 = new float[r2]
        L_0x00cb:
            char r2 = r4.charAt(r2)
            d.i.c.b r4 = new d.i.c.b
            r4.<init>(r2, r5)
            r1.add(r4)
        L_0x00d7:
            int r2 = r3 + 1
            r4 = 0
            r4 = r3
            r3 = r2
            r2 = 0
            goto L_0x000e
        L_0x00df:
            int r3 = r3 - r4
            r2 = 1
            if (r3 != r2) goto L_0x00f8
            int r2 = r16.length()
            if (r4 >= r2) goto L_0x00f8
            char r0 = r0.charAt(r4)
            r2 = 0
            float[] r2 = new float[r2]
            d.i.c.b r3 = new d.i.c.b
            r3.<init>(r0, r2)
            r1.add(r3)
        L_0x00f8:
            int r0 = r1.size()
            d.i.c.b[] r0 = new d.i.c.b[r0]
            java.lang.Object[] r0 = r1.toArray(r0)
            d.i.c.b[] r0 = (d.i.c.b[]) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.b(java.lang.String):d.i.c.b[]");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0016, code lost:
        r0 = r2.getClass().getName();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.Object r2, java.lang.StringBuilder r3) {
        /*
            if (r2 != 0) goto L_0x0008
            java.lang.String r2 = "null"
            r3.append(r2)
            goto L_0x003f
        L_0x0008:
            java.lang.Class r0 = r2.getClass()
            java.lang.String r0 = r0.getSimpleName()
            int r1 = r0.length()
            if (r1 > 0) goto L_0x002c
            java.lang.Class r0 = r2.getClass()
            java.lang.String r0 = r0.getName()
            r1 = 46
            int r1 = r0.lastIndexOf(r1)
            if (r1 <= 0) goto L_0x002c
            int r1 = r1 + 1
            java.lang.String r0 = r0.substring(r1)
        L_0x002c:
            r3.append(r0)
            r0 = 123(0x7b, float:1.72E-43)
            r3.append(r0)
            int r2 = java.lang.System.identityHashCode(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r2)
            r3.append(r2)
        L_0x003f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(java.lang.Object, java.lang.StringBuilder):void");
    }

    public static void a(Parcel parcel, int i2, int i3) {
        c(parcel, i2, 4);
        parcel.writeInt(i3);
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static int b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i3) {
        if (!a(xmlPullParser, str)) {
            return i3;
        }
        return typedArray.getInt(i2, i3);
    }

    public static void a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
            return;
        }
        a1 a1Var = a1.G;
        if (a1Var != null && a1Var.x == view) {
            a1.a((a1) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            a1 a1Var2 = a1.H;
            if (a1Var2 != null && a1Var2.x == view) {
                a1Var2.b();
            }
            view.setOnLongClickListener((View.OnLongClickListener) null);
            view.setLongClickable(false);
            view.setOnHoverListener((View.OnHoverListener) null);
            return;
        }
        new a1(view, charSequence);
    }

    public static void b(Drawable drawable, int i2) {
        drawable.setTint(i2);
    }

    public static void b(Object obj) {
        if (!f207d) {
            try {
                f206c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            f207d = true;
        }
        Class<?> cls = f206c;
        if (cls != null) {
            if (!f209f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    f208e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
                }
                f209f = true;
            }
            Field field = f208e;
            if (field != null) {
                LongSparseArray longSparseArray = null;
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e4) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }

    public static g a(Context context, i iVar, Fragment fragment, boolean z) {
        int i2;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = fragment.getNextAnim();
        boolean z2 = false;
        fragment.setNextAnim(0);
        View a2 = iVar.a(fragment.mContainerId);
        if (!(a2 == null || a2.getTag(R$id.visible_removing_fragment_view_tag) == null)) {
            a2.setTag(R$id.visible_removing_fragment_view_tag, (Object) null);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, nextAnim);
        if (onCreateAnimation != null) {
            return new g(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, nextAnim);
        if (onCreateAnimator != null) {
            return new g(onCreateAnimator);
        }
        if (nextAnim != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, nextAnim);
                    if (loadAnimation != null) {
                        return new g(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                    if (loadAnimator != null) {
                        return new g(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, nextAnim);
                        if (loadAnimation2 != null) {
                            return new g(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (nextTransition == 0) {
            return null;
        }
        if (nextTransition != 4097) {
            i2 = nextTransition != 4099 ? nextTransition != 8194 ? -1 : z ? R$anim.fragment_close_enter : R$anim.fragment_close_exit : z ? R$anim.fragment_fade_enter : R$anim.fragment_fade_exit;
        } else {
            i2 = z ? R$anim.fragment_open_enter : R$anim.fragment_open_exit;
        }
        if (i2 < 0) {
            return null;
        }
        return new g(AnimationUtils.loadAnimation(context, i2));
    }

    public static String b(Context context, ComponentName componentName) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i2 = Build.VERSION.SDK_INT;
        int i3 = 640;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            i3 = 269222528;
        } else if (i4 >= 24) {
            i3 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i3);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static int b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.getLayoutDirection();
        }
        if (!f215l) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f214k = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e2);
            }
            f215l = true;
        }
        Method method = f214k;
        if (method != null) {
            try {
                return ((Integer) method.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e3) {
                Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e3);
                f214k = null;
            }
        }
        return 0;
    }

    public static void a(Parcel parcel, int i2, long j2) {
        c(parcel, i2, 8);
        parcel.writeLong(j2);
    }

    public static <T> T[] b(Parcel parcel, int i2, Parcelable.Creator<T> creator) {
        int h2 = h(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (h2 == 0) {
            return null;
        }
        T[] createTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + h2);
        return createTypedArray;
    }

    public static void a(ViewGroup viewGroup, boolean z) {
        if (!t) {
            Class<ViewGroup> cls = ViewGroup.class;
            try {
                Method declaredMethod = cls.getDeclaredMethod("suppressLayout", new Class[]{Boolean.TYPE});
                s = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e2);
            }
            t = true;
        }
        Method method = s;
        if (method != null) {
            try {
                method.invoke(viewGroup, new Object[]{Boolean.valueOf(z)});
            } catch (IllegalAccessException e3) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e3);
            } catch (InvocationTargetException e4) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e4);
            }
        }
    }

    public static void b(TextView textView, int i2) {
        int i3;
        a(i2);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (textView.getIncludeFontPadding()) {
            i3 = fontMetricsInt.bottom;
        } else {
            i3 = fontMetricsInt.descent;
        }
        if (i2 > Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i3);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x0166, code lost:
        if (r12.f0 == 2) goto L_0x0168;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x016a, code lost:
        r12 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00e8, code lost:
        if (r4[r10].f477d.b == r15) goto L_0x00eb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x014a, code lost:
        if (r12.e0 == 2) goto L_0x0168;
     */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x0227  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x022e  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00be  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(d.g.a.h.e r27, d.g.a.e r28, int r29) {
        /*
            r0 = r27
            r1 = r28
            r2 = r29
            r3 = 2
            if (r2 != 0) goto L_0x000f
            int r5 = r0.s0
            d.g.a.h.b[] r6 = r0.v0
            r7 = 0
            goto L_0x0014
        L_0x000f:
            int r5 = r0.t0
            d.g.a.h.b[] r6 = r0.u0
            r7 = 2
        L_0x0014:
            r8 = 0
        L_0x0015:
            if (r8 >= r5) goto L_0x046c
            r9 = r6[r8]
            boolean r10 = r9.q
            r11 = 0
            r12 = 8
            r14 = 1
            if (r10 != 0) goto L_0x0118
            int r10 = r9.f475l
            int r10 = r10 * 2
            d.g.a.h.d r15 = r9.a
            r4 = r15
            r16 = 0
        L_0x002a:
            if (r16 != 0) goto L_0x00fa
            int r13 = r9.f472i
            int r13 = r13 + r14
            r9.f472i = r13
            d.g.a.h.d[] r13 = r15.i0
            int r14 = r9.f475l
            r13[r14] = r11
            d.g.a.h.d[] r13 = r15.h0
            r13[r14] = r11
            int r13 = r15.Y
            if (r13 == r12) goto L_0x00c6
            d.g.a.h.d r13 = r9.b
            if (r13 != 0) goto L_0x0045
            r9.b = r15
        L_0x0045:
            r9.f467d = r15
            d.g.a.h.d$a[] r13 = r15.C
            int r14 = r9.f475l
            r13 = r13[r14]
            d.g.a.h.d$a r11 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r13 != r11) goto L_0x00c6
            int[] r11 = r15.f487g
            r13 = r11[r14]
            r12 = 3
            if (r13 == 0) goto L_0x0060
            r13 = r11[r14]
            if (r13 == r12) goto L_0x0060
            r11 = r11[r14]
            if (r11 != r3) goto L_0x00c6
        L_0x0060:
            int r11 = r9.f473j
            r13 = 1
            int r11 = r11 + r13
            r9.f473j = r11
            float[] r11 = r15.g0
            int r13 = r9.f475l
            r14 = r11[r13]
            r17 = 0
            int r19 = (r14 > r17 ? 1 : (r14 == r17 ? 0 : -1))
            if (r19 <= 0) goto L_0x0079
            float r3 = r9.f474k
            r11 = r11[r13]
            float r3 = r3 + r11
            r9.f474k = r3
        L_0x0079:
            int r3 = r9.f475l
            int r11 = r15.Y
            r13 = 8
            if (r11 == r13) goto L_0x0095
            d.g.a.h.d$a[] r11 = r15.C
            r11 = r11[r3]
            d.g.a.h.d$a r13 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r11 != r13) goto L_0x0095
            int[] r11 = r15.f487g
            r13 = r11[r3]
            if (r13 == 0) goto L_0x0093
            r3 = r11[r3]
            if (r3 != r12) goto L_0x0095
        L_0x0093:
            r3 = 1
            goto L_0x0096
        L_0x0095:
            r3 = 0
        L_0x0096:
            if (r3 == 0) goto L_0x00b4
            r3 = 0
            int r11 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
            if (r11 >= 0) goto L_0x00a1
            r3 = 1
            r9.n = r3
            goto L_0x00a4
        L_0x00a1:
            r3 = 1
            r9.o = r3
        L_0x00a4:
            java.util.ArrayList<d.g.a.h.d> r3 = r9.f471h
            if (r3 != 0) goto L_0x00af
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r9.f471h = r3
        L_0x00af:
            java.util.ArrayList<d.g.a.h.d> r3 = r9.f471h
            r3.add(r15)
        L_0x00b4:
            d.g.a.h.d r3 = r9.f469f
            if (r3 != 0) goto L_0x00ba
            r9.f469f = r15
        L_0x00ba:
            d.g.a.h.d r3 = r9.f470g
            if (r3 == 0) goto L_0x00c4
            d.g.a.h.d[] r3 = r3.h0
            int r11 = r9.f475l
            r3[r11] = r15
        L_0x00c4:
            r9.f470g = r15
        L_0x00c6:
            if (r4 == r15) goto L_0x00ce
            d.g.a.h.d[] r3 = r4.i0
            int r4 = r9.f475l
            r3[r4] = r15
        L_0x00ce:
            d.g.a.h.c[] r3 = r15.A
            int r4 = r10 + 1
            r3 = r3[r4]
            d.g.a.h.c r3 = r3.f477d
            if (r3 == 0) goto L_0x00ea
            d.g.a.h.d r3 = r3.b
            d.g.a.h.c[] r4 = r3.A
            r11 = r4[r10]
            d.g.a.h.c r11 = r11.f477d
            if (r11 == 0) goto L_0x00ea
            r4 = r4[r10]
            d.g.a.h.c r4 = r4.f477d
            d.g.a.h.d r4 = r4.b
            if (r4 == r15) goto L_0x00eb
        L_0x00ea:
            r3 = 0
        L_0x00eb:
            if (r3 == 0) goto L_0x00ee
            goto L_0x00f1
        L_0x00ee:
            r3 = r15
            r16 = 1
        L_0x00f1:
            r4 = r15
            r11 = 0
            r12 = 8
            r14 = 1
            r15 = r3
            r3 = 2
            goto L_0x002a
        L_0x00fa:
            r9.f466c = r15
            int r3 = r9.f475l
            if (r3 != 0) goto L_0x0107
            boolean r3 = r9.m
            if (r3 == 0) goto L_0x0107
            r9.f468e = r15
            goto L_0x010b
        L_0x0107:
            d.g.a.h.d r3 = r9.a
            r9.f468e = r3
        L_0x010b:
            boolean r3 = r9.o
            if (r3 == 0) goto L_0x0115
            boolean r3 = r9.n
            if (r3 == 0) goto L_0x0115
            r3 = 1
            goto L_0x0116
        L_0x0115:
            r3 = 0
        L_0x0116:
            r9.p = r3
        L_0x0118:
            r3 = 1
            r9.q = r3
            r3 = 4
            boolean r3 = r0.g(r3)
            if (r3 == 0) goto L_0x0457
            d.g.a.h.d r3 = r9.a
            d.g.a.h.d r4 = r9.f466c
            d.g.a.h.d r10 = r9.b
            d.g.a.h.d r11 = r9.f467d
            d.g.a.h.d r12 = r9.f468e
            float r13 = r9.f474k
            d.g.a.h.d$a[] r14 = r0.C
            r14 = r14[r2]
            d.g.a.h.d$a r14 = d.g.a.h.d.a.WRAP_CONTENT
            if (r2 != 0) goto L_0x014d
            int r14 = r12.e0
            if (r14 != 0) goto L_0x013c
            r14 = 1
            goto L_0x013d
        L_0x013c:
            r14 = 0
        L_0x013d:
            int r15 = r12.e0
            r16 = r5
            r5 = 1
            if (r15 != r5) goto L_0x0146
            r5 = 1
            goto L_0x0147
        L_0x0146:
            r5 = 0
        L_0x0147:
            int r12 = r12.e0
            r15 = 2
            if (r12 != r15) goto L_0x016a
            goto L_0x0168
        L_0x014d:
            r16 = r5
            int r5 = r12.f0
            if (r5 != 0) goto L_0x0155
            r5 = 1
            goto L_0x0156
        L_0x0155:
            r5 = 0
        L_0x0156:
            int r14 = r12.f0
            r15 = 1
            if (r14 != r15) goto L_0x015d
            r14 = 1
            goto L_0x015e
        L_0x015d:
            r14 = 0
        L_0x015e:
            int r12 = r12.f0
            r15 = 2
            r26 = r14
            r14 = r5
            r5 = r26
            if (r12 != r15) goto L_0x016a
        L_0x0168:
            r12 = 1
            goto L_0x016b
        L_0x016a:
            r12 = 0
        L_0x016b:
            r15 = r3
            r22 = r6
            r23 = r8
            r6 = 0
            r8 = 0
            r19 = 0
            r20 = 0
            r21 = 0
        L_0x0178:
            if (r21 != 0) goto L_0x0236
            int r0 = r15.Y
            r24 = r9
            r9 = 8
            if (r0 == r9) goto L_0x01c6
            int r6 = r6 + 1
            if (r2 != 0) goto L_0x018b
            int r0 = r15.i()
            goto L_0x018f
        L_0x018b:
            int r0 = r15.d()
        L_0x018f:
            float r0 = (float) r0
            float r19 = r19 + r0
            if (r15 == r10) goto L_0x019f
            d.g.a.h.c[] r0 = r15.A
            r0 = r0[r7]
            int r0 = r0.a()
            float r0 = (float) r0
            float r19 = r19 + r0
        L_0x019f:
            if (r15 == r11) goto L_0x01ae
            d.g.a.h.c[] r0 = r15.A
            int r9 = r7 + 1
            r0 = r0[r9]
            int r0 = r0.a()
            float r0 = (float) r0
            float r19 = r19 + r0
        L_0x01ae:
            d.g.a.h.c[] r0 = r15.A
            r0 = r0[r7]
            int r0 = r0.a()
            float r0 = (float) r0
            float r20 = r20 + r0
            d.g.a.h.c[] r0 = r15.A
            int r9 = r7 + 1
            r0 = r0[r9]
            int r0 = r0.a()
            float r0 = (float) r0
            float r20 = r20 + r0
        L_0x01c6:
            d.g.a.h.c[] r0 = r15.A
            r0 = r0[r7]
            int r0 = r15.Y
            r9 = 8
            if (r0 == r9) goto L_0x0202
            d.g.a.h.d$a[] r0 = r15.C
            r0 = r0[r2]
            d.g.a.h.d$a r9 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r0 != r9) goto L_0x0202
            int r8 = r8 + 1
            if (r2 != 0) goto L_0x01ea
            int r0 = r15.f485e
            if (r0 == 0) goto L_0x01e1
        L_0x01e0:
            goto L_0x01ee
        L_0x01e1:
            int r0 = r15.f488h
            if (r0 != 0) goto L_0x01ee
            int r0 = r15.f489i
            if (r0 == 0) goto L_0x01fa
            goto L_0x01ee
        L_0x01ea:
            int r0 = r15.f486f
            if (r0 == 0) goto L_0x01f1
        L_0x01ee:
            r13 = r1
            goto L_0x044c
        L_0x01f1:
            int r0 = r15.f491k
            if (r0 != 0) goto L_0x01ee
            int r0 = r15.f492l
            if (r0 == 0) goto L_0x01fa
            goto L_0x0201
        L_0x01fa:
            float r0 = r15.G
            r9 = 0
            int r0 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r0 == 0) goto L_0x0202
        L_0x0201:
            goto L_0x01e0
        L_0x0202:
            d.g.a.h.c[] r0 = r15.A
            int r9 = r7 + 1
            r0 = r0[r9]
            d.g.a.h.c r0 = r0.f477d
            if (r0 == 0) goto L_0x0224
            d.g.a.h.d r0 = r0.b
            d.g.a.h.c[] r9 = r0.A
            r25 = r0
            r0 = r9[r7]
            d.g.a.h.c r0 = r0.f477d
            if (r0 == 0) goto L_0x0224
            r0 = r9[r7]
            d.g.a.h.c r0 = r0.f477d
            d.g.a.h.d r0 = r0.b
            if (r0 == r15) goto L_0x0221
            goto L_0x0224
        L_0x0221:
            r0 = r25
            goto L_0x0225
        L_0x0224:
            r0 = 0
        L_0x0225:
            if (r0 == 0) goto L_0x022e
            r15 = r0
            r9 = r24
            r0 = r27
            goto L_0x0178
        L_0x022e:
            r21 = 1
            r0 = r27
            r9 = r24
            goto L_0x0178
        L_0x0236:
            r24 = r9
            d.g.a.h.c[] r0 = r3.A
            r0 = r0[r7]
            d.g.a.h.j r0 = r0.a
            d.g.a.h.c[] r9 = r4.A
            int r18 = r7 + 1
            r9 = r9[r18]
            d.g.a.h.j r9 = r9.a
            r21 = r3
            d.g.a.h.j r3 = r0.f503d
            if (r3 == 0) goto L_0x01ee
            d.g.a.h.j r1 = r9.f503d
            if (r1 != 0) goto L_0x0251
            goto L_0x0261
        L_0x0251:
            int r3 = r3.b
            r25 = r13
            r13 = 1
            if (r3 != r13) goto L_0x0261
            int r1 = r1.b
            if (r1 == r13) goto L_0x025d
            goto L_0x0261
        L_0x025d:
            if (r8 <= 0) goto L_0x0265
            if (r8 == r6) goto L_0x0265
        L_0x0261:
            r13 = r28
            goto L_0x044c
        L_0x0265:
            if (r12 != 0) goto L_0x026e
            if (r14 != 0) goto L_0x026e
            if (r5 == 0) goto L_0x026c
            goto L_0x026e
        L_0x026c:
            r1 = 0
            goto L_0x0287
        L_0x026e:
            if (r10 == 0) goto L_0x027a
            d.g.a.h.c[] r1 = r10.A
            r1 = r1[r7]
            int r1 = r1.a()
            float r1 = (float) r1
            goto L_0x027b
        L_0x027a:
            r1 = 0
        L_0x027b:
            if (r11 == 0) goto L_0x0287
            d.g.a.h.c[] r3 = r11.A
            r3 = r3[r18]
            int r3 = r3.a()
            float r3 = (float) r3
            float r1 = r1 + r3
        L_0x0287:
            d.g.a.h.j r3 = r0.f503d
            float r3 = r3.f506g
            d.g.a.h.j r9 = r9.f503d
            float r9 = r9.f506g
            int r11 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r11 >= 0) goto L_0x0295
            float r9 = r9 - r3
            goto L_0x0297
        L_0x0295:
            float r9 = r3 - r9
        L_0x0297:
            float r9 = r9 - r19
            r11 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r8 <= 0) goto L_0x0326
            if (r8 != r6) goto L_0x0326
            d.g.a.h.d r1 = r15.D
            if (r1 == 0) goto L_0x02ac
            d.g.a.h.d$a[] r1 = r1.C
            r1 = r1[r2]
            d.g.a.h.d$a r5 = d.g.a.h.d.a.WRAP_CONTENT
            if (r1 != r5) goto L_0x02ac
            goto L_0x0261
        L_0x02ac:
            float r9 = r9 + r19
            float r9 = r9 - r20
            r1 = r3
            r3 = r21
        L_0x02b3:
            if (r3 == 0) goto L_0x0321
            d.g.a.h.d[] r5 = r3.i0
            r5 = r5[r2]
            if (r5 != 0) goto L_0x02c1
            if (r3 != r4) goto L_0x02be
            goto L_0x02c1
        L_0x02be:
            r13 = r28
            goto L_0x031f
        L_0x02c1:
            float r6 = (float) r8
            float r6 = r9 / r6
            r10 = 0
            int r12 = (r25 > r10 ? 1 : (r25 == r10 ? 0 : -1))
            if (r12 <= 0) goto L_0x02d9
            float[] r6 = r3.g0
            r10 = r6[r2]
            int r10 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r10 != 0) goto L_0x02d3
            r6 = 0
            goto L_0x02d9
        L_0x02d3:
            r6 = r6[r2]
            float r6 = r6 * r9
            float r6 = r6 / r25
        L_0x02d9:
            int r10 = r3.Y
            r12 = 8
            if (r10 != r12) goto L_0x02e0
            r6 = 0
        L_0x02e0:
            d.g.a.h.c[] r10 = r3.A
            r10 = r10[r7]
            int r10 = r10.a()
            float r10 = (float) r10
            float r1 = r1 + r10
            d.g.a.h.c[] r10 = r3.A
            r10 = r10[r7]
            d.g.a.h.j r10 = r10.a
            d.g.a.h.j r12 = r0.f505f
            r10.a((d.g.a.h.j) r12, (float) r1)
            d.g.a.h.c[] r10 = r3.A
            r10 = r10[r18]
            d.g.a.h.j r10 = r10.a
            d.g.a.h.j r12 = r0.f505f
            float r1 = r1 + r6
            r10.a((d.g.a.h.j) r12, (float) r1)
            d.g.a.h.c[] r6 = r3.A
            r6 = r6[r7]
            d.g.a.h.j r6 = r6.a
            r13 = r28
            r6.a((d.g.a.e) r13)
            d.g.a.h.c[] r6 = r3.A
            r6 = r6[r18]
            d.g.a.h.j r6 = r6.a
            r6.a((d.g.a.e) r13)
            d.g.a.h.c[] r3 = r3.A
            r3 = r3[r18]
            int r3 = r3.a()
            float r3 = (float) r3
            float r1 = r1 + r3
        L_0x031f:
            r3 = r5
            goto L_0x02b3
        L_0x0321:
            r13 = r28
        L_0x0323:
            r14 = 1
            goto L_0x044d
        L_0x0326:
            r13 = r28
            r8 = 0
            int r8 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r8 >= 0) goto L_0x0330
            r5 = 0
            r12 = 1
            r14 = 0
        L_0x0330:
            if (r12 == 0) goto L_0x039a
            float r9 = r9 - r1
            if (r2 != 0) goto L_0x033a
            r8 = r21
            float r11 = r8.V
            goto L_0x0341
        L_0x033a:
            r8 = r21
            r1 = 1
            if (r2 != r1) goto L_0x0341
            float r11 = r8.W
        L_0x0341:
            float r9 = r9 * r11
            float r9 = r9 + r3
            r3 = r8
        L_0x0345:
            if (r3 == 0) goto L_0x03a1
            d.g.a.h.d[] r1 = r3.i0
            r1 = r1[r2]
            if (r1 != 0) goto L_0x034f
            if (r3 != r4) goto L_0x0398
        L_0x034f:
            if (r2 != 0) goto L_0x0356
            int r5 = r3.i()
            goto L_0x035a
        L_0x0356:
            int r5 = r3.d()
        L_0x035a:
            float r5 = (float) r5
            d.g.a.h.c[] r6 = r3.A
            r6 = r6[r7]
            int r6 = r6.a()
            float r6 = (float) r6
            float r9 = r9 + r6
            d.g.a.h.c[] r6 = r3.A
            r6 = r6[r7]
            d.g.a.h.j r6 = r6.a
            d.g.a.h.j r8 = r0.f505f
            r6.a((d.g.a.h.j) r8, (float) r9)
            d.g.a.h.c[] r6 = r3.A
            r6 = r6[r18]
            d.g.a.h.j r6 = r6.a
            d.g.a.h.j r8 = r0.f505f
            float r9 = r9 + r5
            r6.a((d.g.a.h.j) r8, (float) r9)
            d.g.a.h.c[] r5 = r3.A
            r5 = r5[r7]
            d.g.a.h.j r5 = r5.a
            r5.a((d.g.a.e) r13)
            d.g.a.h.c[] r5 = r3.A
            r5 = r5[r18]
            d.g.a.h.j r5 = r5.a
            r5.a((d.g.a.e) r13)
            d.g.a.h.c[] r3 = r3.A
            r3 = r3[r18]
            int r3 = r3.a()
            float r3 = (float) r3
            float r9 = r9 + r3
        L_0x0398:
            r3 = r1
            goto L_0x0345
        L_0x039a:
            r8 = r21
            if (r14 != 0) goto L_0x03a3
            if (r5 == 0) goto L_0x03a1
            goto L_0x03a3
        L_0x03a1:
            r5 = 1
            goto L_0x0323
        L_0x03a3:
            if (r14 == 0) goto L_0x03a6
            goto L_0x03a8
        L_0x03a6:
            if (r5 == 0) goto L_0x03a9
        L_0x03a8:
            float r9 = r9 - r1
        L_0x03a9:
            int r1 = r6 + 1
            float r1 = (float) r1
            float r1 = r9 / r1
            if (r5 == 0) goto L_0x03bb
            r11 = 1
            if (r6 <= r11) goto L_0x03b7
            int r1 = r6 + -1
            float r1 = (float) r1
            goto L_0x03b9
        L_0x03b7:
            r1 = 1073741824(0x40000000, float:2.0)
        L_0x03b9:
            float r1 = r9 / r1
        L_0x03bb:
            int r9 = r8.Y
            r11 = 8
            if (r9 == r11) goto L_0x03c4
            float r9 = r3 + r1
            goto L_0x03c5
        L_0x03c4:
            r9 = r3
        L_0x03c5:
            if (r5 == 0) goto L_0x03d6
            r5 = 1
            if (r6 <= r5) goto L_0x03d7
            d.g.a.h.c[] r6 = r10.A
            r6 = r6[r7]
            int r6 = r6.a()
            float r6 = (float) r6
            float r9 = r6 + r3
            goto L_0x03d7
        L_0x03d6:
            r5 = 1
        L_0x03d7:
            if (r14 == 0) goto L_0x03e5
            if (r10 == 0) goto L_0x03e5
            d.g.a.h.c[] r3 = r10.A
            r3 = r3[r7]
            int r3 = r3.a()
            float r3 = (float) r3
            float r9 = r9 + r3
        L_0x03e5:
            r3 = r8
        L_0x03e6:
            if (r3 == 0) goto L_0x0323
            d.g.a.h.d[] r6 = r3.i0
            r6 = r6[r2]
            if (r6 != 0) goto L_0x03f4
            if (r3 != r4) goto L_0x03f1
            goto L_0x03f4
        L_0x03f1:
            r8 = 8
            goto L_0x044a
        L_0x03f4:
            if (r2 != 0) goto L_0x03fb
            int r8 = r3.i()
            goto L_0x03ff
        L_0x03fb:
            int r8 = r3.d()
        L_0x03ff:
            float r8 = (float) r8
            if (r3 == r10) goto L_0x040c
            d.g.a.h.c[] r11 = r3.A
            r11 = r11[r7]
            int r11 = r11.a()
            float r11 = (float) r11
            float r9 = r9 + r11
        L_0x040c:
            d.g.a.h.c[] r11 = r3.A
            r11 = r11[r7]
            d.g.a.h.j r11 = r11.a
            d.g.a.h.j r12 = r0.f505f
            r11.a((d.g.a.h.j) r12, (float) r9)
            d.g.a.h.c[] r11 = r3.A
            r11 = r11[r18]
            d.g.a.h.j r11 = r11.a
            d.g.a.h.j r12 = r0.f505f
            float r14 = r9 + r8
            r11.a((d.g.a.h.j) r12, (float) r14)
            d.g.a.h.c[] r11 = r3.A
            r11 = r11[r7]
            d.g.a.h.j r11 = r11.a
            r11.a((d.g.a.e) r13)
            d.g.a.h.c[] r11 = r3.A
            r11 = r11[r18]
            d.g.a.h.j r11 = r11.a
            r11.a((d.g.a.e) r13)
            d.g.a.h.c[] r3 = r3.A
            r3 = r3[r18]
            int r3 = r3.a()
            float r3 = (float) r3
            float r8 = r8 + r3
            float r9 = r9 + r8
            if (r6 == 0) goto L_0x03f1
            int r3 = r6.Y
            r8 = 8
            if (r3 == r8) goto L_0x044a
            float r9 = r9 + r1
        L_0x044a:
            r3 = r6
            goto L_0x03e6
        L_0x044c:
            r14 = 0
        L_0x044d:
            r0 = r27
            if (r14 != 0) goto L_0x0462
            r1 = r24
            a((d.g.a.h.e) r0, (d.g.a.e) r13, (int) r2, (int) r7, (d.g.a.h.b) r1)
            goto L_0x0462
        L_0x0457:
            r13 = r1
            r16 = r5
            r22 = r6
            r23 = r8
            r1 = r9
            a((d.g.a.h.e) r0, (d.g.a.e) r13, (int) r2, (int) r7, (d.g.a.h.b) r1)
        L_0x0462:
            int r8 = r23 + 1
            r1 = r13
            r5 = r16
            r6 = r22
            r3 = 2
            goto L_0x0015
        L_0x046c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(d.g.a.h.e, d.g.a.e, int):void");
    }

    public static void a(Handler handler) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException("Must be called on the handler thread");
        }
    }

    public static float[] a(float[] fArr, int i2, int i3) {
        if (i2 <= i3) {
            int length = fArr.length;
            if (i2 < 0 || i2 > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i4 = i3 - i2;
            int min = Math.min(i4, length - i2);
            float[] fArr2 = new float[i4];
            System.arraycopy(fArr, i2, fArr2, 0, min);
            return fArr2;
        }
        throw new IllegalArgumentException();
    }

    public static final NavController a(Activity activity, int i2) {
        if (activity != null) {
            NavController a2 = a(d.i.a.a.a(activity, i2));
            if (a2 != null) {
                h.k.b.g.a((Object) a2, "Navigation.findNavController(this, viewId)");
                return a2;
            }
            throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + i2);
        }
        h.k.b.g.a("$this$findNavController");
        throw null;
    }

    public static boolean a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static int a(s.u uVar, d.t.a.r rVar, View view, View view2, s.k kVar, boolean z) {
        if (kVar.d() == 0 || uVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(kVar.a(view) - kVar.a(view2)) + 1;
        }
        return Math.min(rVar.c(), rVar.a(view2) - rVar.b(view));
    }

    public static File a(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        StringBuilder a2 = a.a(".font");
        a2.append(Process.myPid());
        a2.append(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR);
        a2.append(Process.myTid());
        a2.append(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR);
        String sb = a2.toString();
        int i2 = 0;
        while (i2 < 100) {
            File file = new File(cacheDir, a.a(sb, i2));
            try {
                if (file.createNewFile()) {
                    return file;
                }
                i2++;
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static int a(f fVar, int i2) {
        int i3 = i2 * 2;
        List<d.g.a.h.d> list = null;
        if (fVar != null) {
            if (i2 == 0) {
                list = fVar.f496f;
            } else if (i2 == 1) {
                list = fVar.f497g;
            }
            int size = list.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                d.g.a.h.d dVar = list.get(i5);
                c[] cVarArr = dVar.A;
                int i6 = i3 + 1;
                i4 = Math.max(i4, a(dVar, i2, cVarArr[i6].f477d == null || !(cVarArr[i3].f477d == null || cVarArr[i6].f477d == null), 0));
            }
            fVar.f495e[i2] = i4;
            return i4;
        }
        throw null;
    }

    public static e a(RandomAccessFile randomAccessFile) {
        long length = randomAccessFile.length() - 22;
        long j2 = 0;
        if (length >= 0) {
            long j3 = length - QueueConstants.MAX_MESSAGE_SIZE;
            if (j3 >= 0) {
                j2 = j3;
            }
            int reverseBytes = Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    e eVar = new e();
                    eVar.b = ((long) Integer.reverseBytes(randomAccessFile.readInt())) & 4294967295L;
                    eVar.a = ((long) Integer.reverseBytes(randomAccessFile.readInt())) & 4294967295L;
                    return eVar;
                }
                length--;
            } while (length >= j2);
            throw new ZipException("End Of Central Directory signature not found");
        }
        StringBuilder a2 = a.a("File too short to be a zip file: ");
        a2.append(randomAccessFile.length());
        throw new ZipException(a2.toString());
    }

    public static float a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, float f2) {
        if (!a(xmlPullParser, str)) {
            return f2;
        }
        return typedArray.getFloat(i2, f2);
    }

    public static <T> T a(T t2, Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v0, resolved type: d.g.a.g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v1, resolved type: d.g.a.g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v2, resolved type: d.g.a.h.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v3, resolved type: d.g.a.g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v4, resolved type: d.g.a.h.d} */
    /* JADX WARNING: type inference failed for: r4v9, types: [d.g.a.g] */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r2.e0 == 2) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0044, code lost:
        if (r2.f0 == 2) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0048, code lost:
        r5 = false;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:203:0x03cd  */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x03e8  */
    /* JADX WARNING: Removed duplicated region for block: B:213:0x03eb  */
    /* JADX WARNING: Removed duplicated region for block: B:216:0x03f1  */
    /* JADX WARNING: Removed duplicated region for block: B:262:0x04bb  */
    /* JADX WARNING: Removed duplicated region for block: B:267:0x04f0  */
    /* JADX WARNING: Removed duplicated region for block: B:276:0x0515  */
    /* JADX WARNING: Removed duplicated region for block: B:277:0x0518  */
    /* JADX WARNING: Removed duplicated region for block: B:280:0x051e  */
    /* JADX WARNING: Removed duplicated region for block: B:281:0x0521  */
    /* JADX WARNING: Removed duplicated region for block: B:283:0x0525  */
    /* JADX WARNING: Removed duplicated region for block: B:287:0x0534  */
    /* JADX WARNING: Removed duplicated region for block: B:289:0x0537  */
    /* JADX WARNING: Removed duplicated region for block: B:301:0x03ce A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x014d  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0178  */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x017c  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0185  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(d.g.a.h.e r33, d.g.a.e r34, int r35, int r36, d.g.a.h.b r37) {
        /*
            r0 = r33
            r9 = r34
            r1 = r37
            d.g.a.h.d r10 = r1.a
            d.g.a.h.d r11 = r1.f466c
            d.g.a.h.d r12 = r1.b
            d.g.a.h.d r13 = r1.f467d
            d.g.a.h.d r2 = r1.f468e
            float r3 = r1.f474k
            d.g.a.h.d$a[] r4 = r0.C
            r4 = r4[r35]
            d.g.a.h.d$a r5 = d.g.a.h.d.a.WRAP_CONTENT
            r7 = 1
            if (r4 != r5) goto L_0x001d
            r4 = 1
            goto L_0x001e
        L_0x001d:
            r4 = 0
        L_0x001e:
            r5 = 2
            if (r35 != 0) goto L_0x0034
            int r8 = r2.e0
            if (r8 != 0) goto L_0x0027
            r8 = 1
            goto L_0x0028
        L_0x0027:
            r8 = 0
        L_0x0028:
            int r14 = r2.e0
            if (r14 != r7) goto L_0x002e
            r14 = 1
            goto L_0x002f
        L_0x002e:
            r14 = 0
        L_0x002f:
            int r15 = r2.e0
            if (r15 != r5) goto L_0x0048
            goto L_0x0046
        L_0x0034:
            int r8 = r2.f0
            if (r8 != 0) goto L_0x003a
            r8 = 1
            goto L_0x003b
        L_0x003a:
            r8 = 0
        L_0x003b:
            int r14 = r2.f0
            if (r14 != r7) goto L_0x0041
            r14 = 1
            goto L_0x0042
        L_0x0041:
            r14 = 0
        L_0x0042:
            int r15 = r2.f0
            if (r15 != r5) goto L_0x0048
        L_0x0046:
            r5 = 1
            goto L_0x0049
        L_0x0048:
            r5 = 0
        L_0x0049:
            r7 = r10
            r15 = r14
            r14 = r8
            r8 = 0
        L_0x004d:
            r21 = 0
            if (r8 != 0) goto L_0x0120
            d.g.a.h.c[] r6 = r7.A
            r6 = r6[r36]
            if (r4 != 0) goto L_0x005d
            if (r5 == 0) goto L_0x005a
            goto L_0x005d
        L_0x005a:
            r23 = 4
            goto L_0x005f
        L_0x005d:
            r23 = 1
        L_0x005f:
            int r24 = r6.a()
            r25 = r3
            d.g.a.h.c r3 = r6.f477d
            if (r3 == 0) goto L_0x0071
            if (r7 == r10) goto L_0x0071
            int r3 = r3.a()
            int r24 = r3 + r24
        L_0x0071:
            r3 = r24
            if (r5 == 0) goto L_0x007f
            if (r7 == r10) goto L_0x007f
            if (r7 == r12) goto L_0x007f
            r24 = r8
            r23 = r15
            r8 = 6
            goto L_0x008f
        L_0x007f:
            if (r14 == 0) goto L_0x0089
            if (r4 == 0) goto L_0x0089
            r24 = r8
            r23 = r15
            r8 = 4
            goto L_0x008f
        L_0x0089:
            r24 = r8
            r8 = r23
            r23 = r15
        L_0x008f:
            d.g.a.h.c r15 = r6.f477d
            if (r15 == 0) goto L_0x00b8
            if (r7 != r12) goto L_0x00a2
            r26 = r14
            d.g.a.g r14 = r6.f482i
            d.g.a.g r15 = r15.f482i
            r27 = r2
            r2 = 5
            r9.b(r14, r15, r3, r2)
            goto L_0x00ae
        L_0x00a2:
            r27 = r2
            r26 = r14
            d.g.a.g r2 = r6.f482i
            d.g.a.g r14 = r15.f482i
            r15 = 6
            r9.b(r2, r14, r3, r15)
        L_0x00ae:
            d.g.a.g r2 = r6.f482i
            d.g.a.h.c r6 = r6.f477d
            d.g.a.g r6 = r6.f482i
            r9.a(r2, r6, r3, r8)
            goto L_0x00bc
        L_0x00b8:
            r27 = r2
            r26 = r14
        L_0x00bc:
            if (r4 == 0) goto L_0x00ef
            int r2 = r7.Y
            r3 = 8
            if (r2 == r3) goto L_0x00de
            d.g.a.h.d$a[] r2 = r7.C
            r2 = r2[r35]
            d.g.a.h.d$a r3 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r2 != r3) goto L_0x00de
            d.g.a.h.c[] r2 = r7.A
            int r3 = r36 + 1
            r3 = r2[r3]
            d.g.a.g r3 = r3.f482i
            r2 = r2[r36]
            d.g.a.g r2 = r2.f482i
            r6 = 5
            r8 = 0
            r9.b(r3, r2, r8, r6)
            goto L_0x00df
        L_0x00de:
            r8 = 0
        L_0x00df:
            d.g.a.h.c[] r2 = r7.A
            r2 = r2[r36]
            d.g.a.g r2 = r2.f482i
            d.g.a.h.c[] r3 = r0.A
            r3 = r3[r36]
            d.g.a.g r3 = r3.f482i
            r6 = 6
            r9.b(r2, r3, r8, r6)
        L_0x00ef:
            d.g.a.h.c[] r2 = r7.A
            int r3 = r36 + 1
            r2 = r2[r3]
            d.g.a.h.c r2 = r2.f477d
            if (r2 == 0) goto L_0x010e
            d.g.a.h.d r2 = r2.b
            d.g.a.h.c[] r3 = r2.A
            r6 = r3[r36]
            d.g.a.h.c r6 = r6.f477d
            if (r6 == 0) goto L_0x010e
            r3 = r3[r36]
            d.g.a.h.c r3 = r3.f477d
            d.g.a.h.d r3 = r3.b
            if (r3 == r7) goto L_0x010c
            goto L_0x010e
        L_0x010c:
            r21 = r2
        L_0x010e:
            if (r21 == 0) goto L_0x0115
            r7 = r21
            r8 = r24
            goto L_0x0116
        L_0x0115:
            r8 = 1
        L_0x0116:
            r15 = r23
            r3 = r25
            r14 = r26
            r2 = r27
            goto L_0x004d
        L_0x0120:
            r27 = r2
            r25 = r3
            r26 = r14
            r23 = r15
            if (r13 == 0) goto L_0x014a
            d.g.a.h.c[] r2 = r11.A
            int r3 = r36 + 1
            r6 = r2[r3]
            d.g.a.h.c r6 = r6.f477d
            if (r6 == 0) goto L_0x014a
            d.g.a.h.c[] r6 = r13.A
            r6 = r6[r3]
            d.g.a.g r7 = r6.f482i
            r2 = r2[r3]
            d.g.a.h.c r2 = r2.f477d
            d.g.a.g r2 = r2.f482i
            int r3 = r6.a()
            int r3 = -r3
            r6 = 5
            r9.c(r7, r2, r3, r6)
            goto L_0x014b
        L_0x014a:
            r6 = 5
        L_0x014b:
            if (r4 == 0) goto L_0x0165
            d.g.a.h.c[] r0 = r0.A
            int r2 = r36 + 1
            r0 = r0[r2]
            d.g.a.g r0 = r0.f482i
            d.g.a.h.c[] r3 = r11.A
            r4 = r3[r2]
            d.g.a.g r4 = r4.f482i
            r2 = r3[r2]
            int r2 = r2.a()
            r3 = 6
            r9.b(r0, r4, r2, r3)
        L_0x0165:
            java.util.ArrayList<d.g.a.h.d> r0 = r1.f471h
            if (r0 == 0) goto L_0x0272
            int r2 = r0.size()
            r3 = 1
            if (r2 <= r3) goto L_0x0272
            boolean r4 = r1.n
            if (r4 == 0) goto L_0x017c
            boolean r4 = r1.p
            if (r4 != 0) goto L_0x017c
            int r4 = r1.f473j
            float r4 = (float) r4
            goto L_0x017e
        L_0x017c:
            r4 = r25
        L_0x017e:
            r7 = 0
            r14 = r21
            r8 = 0
            r15 = 0
        L_0x0183:
            if (r8 >= r2) goto L_0x0272
            java.lang.Object r16 = r0.get(r8)
            r3 = r16
            d.g.a.h.d r3 = (d.g.a.h.d) r3
            float[] r6 = r3.g0
            r6 = r6[r35]
            r24 = r0
            int r25 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r25 >= 0) goto L_0x01b0
            boolean r6 = r1.p
            if (r6 == 0) goto L_0x01ae
            d.g.a.h.c[] r0 = r3.A
            int r3 = r36 + 1
            r3 = r0[r3]
            d.g.a.g r3 = r3.f482i
            r0 = r0[r36]
            d.g.a.g r0 = r0.f482i
            r6 = 4
            r7 = 0
            r9.a(r3, r0, r7, r6)
            r6 = 6
            goto L_0x01c8
        L_0x01ae:
            r6 = 1065353216(0x3f800000, float:1.0)
        L_0x01b0:
            r7 = 4
            r20 = 0
            int r25 = (r6 > r20 ? 1 : (r6 == r20 ? 0 : -1))
            if (r25 != 0) goto L_0x01d0
            d.g.a.h.c[] r0 = r3.A
            int r3 = r36 + 1
            r3 = r0[r3]
            d.g.a.g r3 = r3.f482i
            r0 = r0[r36]
            d.g.a.g r0 = r0.f482i
            r6 = 6
            r7 = 0
            r9.a(r3, r0, r7, r6)
        L_0x01c8:
            r29 = r2
            r30 = r11
            r17 = 6
            goto L_0x0263
        L_0x01d0:
            r7 = 0
            r17 = 6
            if (r14 == 0) goto L_0x025a
            d.g.a.h.c[] r14 = r14.A
            r7 = r14[r36]
            d.g.a.g r7 = r7.f482i
            int r28 = r36 + 1
            r14 = r14[r28]
            d.g.a.g r14 = r14.f482i
            d.g.a.h.c[] r0 = r3.A
            r29 = r2
            r2 = r0[r36]
            d.g.a.g r2 = r2.f482i
            r0 = r0[r28]
            d.g.a.g r0 = r0.f482i
            r28 = r3
            d.g.a.b r3 = r34.b()
            r1 = 0
            r3.b = r1
            r30 = r11
            r11 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r31 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r31 == 0) goto L_0x0240
            int r31 = (r15 > r6 ? 1 : (r15 == r6 ? 0 : -1))
            if (r31 != 0) goto L_0x0203
            goto L_0x0240
        L_0x0203:
            int r31 = (r15 > r1 ? 1 : (r15 == r1 ? 0 : -1))
            if (r31 != 0) goto L_0x0214
            d.g.a.a r0 = r3.f444d
            r2 = 1065353216(0x3f800000, float:1.0)
            r0.a((d.g.a.g) r7, (float) r2)
            d.g.a.a r0 = r3.f444d
            r0.a((d.g.a.g) r14, (float) r11)
            goto L_0x0256
        L_0x0214:
            r1 = 1065353216(0x3f800000, float:1.0)
            if (r25 != 0) goto L_0x0223
            d.g.a.a r7 = r3.f444d
            r7.a((d.g.a.g) r2, (float) r1)
            d.g.a.a r1 = r3.f444d
            r1.a((d.g.a.g) r0, (float) r11)
            goto L_0x0256
        L_0x0223:
            float r15 = r15 / r4
            float r25 = r6 / r4
            float r15 = r15 / r25
            d.g.a.a r11 = r3.f444d
            r11.a((d.g.a.g) r7, (float) r1)
            d.g.a.a r1 = r3.f444d
            r11 = -1082130432(0xffffffffbf800000, float:-1.0)
            r1.a((d.g.a.g) r14, (float) r11)
            d.g.a.a r1 = r3.f444d
            r1.a((d.g.a.g) r0, (float) r15)
            d.g.a.a r0 = r3.f444d
            float r1 = -r15
            r0.a((d.g.a.g) r2, (float) r1)
            goto L_0x0256
        L_0x0240:
            r1 = 1065353216(0x3f800000, float:1.0)
            d.g.a.a r15 = r3.f444d
            r15.a((d.g.a.g) r7, (float) r1)
            d.g.a.a r7 = r3.f444d
            r7.a((d.g.a.g) r14, (float) r11)
            d.g.a.a r7 = r3.f444d
            r7.a((d.g.a.g) r0, (float) r1)
            d.g.a.a r0 = r3.f444d
            r0.a((d.g.a.g) r2, (float) r11)
        L_0x0256:
            r9.a((d.g.a.b) r3)
            goto L_0x0260
        L_0x025a:
            r29 = r2
            r28 = r3
            r30 = r11
        L_0x0260:
            r15 = r6
            r14 = r28
        L_0x0263:
            int r8 = r8 + 1
            r1 = r37
            r0 = r24
            r2 = r29
            r11 = r30
            r3 = 1
            r6 = 5
            r7 = 0
            goto L_0x0183
        L_0x0272:
            r30 = r11
            r17 = 6
            if (r12 == 0) goto L_0x02da
            if (r12 == r13) goto L_0x027c
            if (r5 == 0) goto L_0x02da
        L_0x027c:
            d.g.a.h.c[] r0 = r10.A
            r1 = r0[r36]
            r11 = r30
            d.g.a.h.c[] r2 = r11.A
            int r3 = r36 + 1
            r2 = r2[r3]
            r4 = r0[r36]
            d.g.a.h.c r4 = r4.f477d
            if (r4 == 0) goto L_0x0296
            r0 = r0[r36]
            d.g.a.h.c r0 = r0.f477d
            d.g.a.g r0 = r0.f482i
            r4 = r0
            goto L_0x0298
        L_0x0296:
            r4 = r21
        L_0x0298:
            d.g.a.h.c[] r0 = r11.A
            r5 = r0[r3]
            d.g.a.h.c r5 = r5.f477d
            if (r5 == 0) goto L_0x02a8
            r0 = r0[r3]
            d.g.a.h.c r0 = r0.f477d
            d.g.a.g r0 = r0.f482i
            r5 = r0
            goto L_0x02aa
        L_0x02a8:
            r5 = r21
        L_0x02aa:
            if (r12 != r13) goto L_0x02b2
            d.g.a.h.c[] r0 = r12.A
            r1 = r0[r36]
            r2 = r0[r3]
        L_0x02b2:
            if (r4 == 0) goto L_0x0501
            if (r5 == 0) goto L_0x0501
            if (r35 != 0) goto L_0x02bd
            r0 = r27
            float r0 = r0.V
            goto L_0x02c1
        L_0x02bd:
            r0 = r27
            float r0 = r0.W
        L_0x02c1:
            r6 = r0
            int r3 = r1.a()
            int r7 = r2.a()
            d.g.a.g r1 = r1.f482i
            d.g.a.g r8 = r2.f482i
            r10 = 5
            r0 = r34
            r2 = r4
            r4 = r6
            r6 = r8
            r8 = r10
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x0501
        L_0x02da:
            r11 = r30
            if (r26 == 0) goto L_0x03d4
            if (r12 == 0) goto L_0x03d4
            r0 = r37
            int r1 = r0.f473j
            if (r1 <= 0) goto L_0x02ed
            int r0 = r0.f472i
            if (r0 != r1) goto L_0x02ed
            r19 = 1
            goto L_0x02ef
        L_0x02ed:
            r19 = 0
        L_0x02ef:
            r14 = r12
            r15 = r14
        L_0x02f1:
            if (r14 == 0) goto L_0x0501
            d.g.a.h.d[] r0 = r14.i0
            r0 = r0[r35]
            r8 = r0
        L_0x02f8:
            if (r8 == 0) goto L_0x0305
            int r0 = r8.Y
            r6 = 8
            if (r0 != r6) goto L_0x0307
            d.g.a.h.d[] r0 = r8.i0
            r8 = r0[r35]
            goto L_0x02f8
        L_0x0305:
            r6 = 8
        L_0x0307:
            if (r8 != 0) goto L_0x0314
            if (r14 != r13) goto L_0x030c
            goto L_0x0314
        L_0x030c:
            r16 = r8
            r17 = 4
            r18 = 6
            goto L_0x03c7
        L_0x0314:
            d.g.a.h.c[] r0 = r14.A
            r0 = r0[r36]
            d.g.a.g r1 = r0.f482i
            d.g.a.h.c r2 = r0.f477d
            if (r2 == 0) goto L_0x0321
            d.g.a.g r2 = r2.f482i
            goto L_0x0323
        L_0x0321:
            r2 = r21
        L_0x0323:
            if (r15 == r14) goto L_0x032e
            d.g.a.h.c[] r2 = r15.A
            int r3 = r36 + 1
            r2 = r2[r3]
            d.g.a.g r2 = r2.f482i
            goto L_0x0343
        L_0x032e:
            if (r14 != r12) goto L_0x0343
            if (r15 != r14) goto L_0x0343
            d.g.a.h.c[] r2 = r10.A
            r3 = r2[r36]
            d.g.a.h.c r3 = r3.f477d
            if (r3 == 0) goto L_0x0341
            r2 = r2[r36]
            d.g.a.h.c r2 = r2.f477d
            d.g.a.g r2 = r2.f482i
            goto L_0x0343
        L_0x0341:
            r2 = r21
        L_0x0343:
            int r0 = r0.a()
            d.g.a.h.c[] r3 = r14.A
            int r4 = r36 + 1
            r3 = r3[r4]
            int r3 = r3.a()
            if (r8 == 0) goto L_0x0365
            d.g.a.h.c[] r5 = r8.A
            r5 = r5[r36]
            d.g.a.g r7 = r5.f482i
            d.g.a.h.c[] r6 = r14.A
            r6 = r6[r4]
            d.g.a.g r6 = r6.f482i
            r32 = r7
            r7 = r6
            r6 = r32
            goto L_0x0378
        L_0x0365:
            d.g.a.h.c[] r5 = r11.A
            r5 = r5[r4]
            d.g.a.h.c r5 = r5.f477d
            if (r5 == 0) goto L_0x0370
            d.g.a.g r6 = r5.f482i
            goto L_0x0372
        L_0x0370:
            r6 = r21
        L_0x0372:
            d.g.a.h.c[] r7 = r14.A
            r7 = r7[r4]
            d.g.a.g r7 = r7.f482i
        L_0x0378:
            if (r5 == 0) goto L_0x037f
            int r5 = r5.a()
            int r3 = r3 + r5
        L_0x037f:
            if (r15 == 0) goto L_0x038a
            d.g.a.h.c[] r5 = r15.A
            r5 = r5[r4]
            int r5 = r5.a()
            int r0 = r0 + r5
        L_0x038a:
            if (r1 == 0) goto L_0x030c
            if (r2 == 0) goto L_0x030c
            if (r6 == 0) goto L_0x030c
            if (r7 == 0) goto L_0x030c
            if (r14 != r12) goto L_0x039c
            d.g.a.h.c[] r0 = r12.A
            r0 = r0[r36]
            int r0 = r0.a()
        L_0x039c:
            r5 = r0
            if (r14 != r13) goto L_0x03aa
            d.g.a.h.c[] r0 = r13.A
            r0 = r0[r4]
            int r0 = r0.a()
            r16 = r0
            goto L_0x03ac
        L_0x03aa:
            r16 = r3
        L_0x03ac:
            if (r19 == 0) goto L_0x03b1
            r22 = 6
            goto L_0x03b3
        L_0x03b1:
            r22 = 4
        L_0x03b3:
            r4 = 1056964608(0x3f000000, float:0.5)
            r0 = r34
            r3 = r5
            r5 = r6
            r17 = 4
            r18 = 6
            r6 = r7
            r7 = r16
            r16 = r8
            r8 = r22
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x03c7:
            int r0 = r14.Y
            r8 = 8
            if (r0 == r8) goto L_0x03ce
            r15 = r14
        L_0x03ce:
            r14 = r16
            r17 = 6
            goto L_0x02f1
        L_0x03d4:
            r0 = r37
            r8 = 8
            r17 = 4
            r18 = 6
            if (r23 == 0) goto L_0x0501
            if (r12 == 0) goto L_0x0501
            int r1 = r0.f473j
            if (r1 <= 0) goto L_0x03eb
            int r0 = r0.f472i
            if (r0 != r1) goto L_0x03eb
            r19 = 1
            goto L_0x03ed
        L_0x03eb:
            r19 = 0
        L_0x03ed:
            r14 = r12
            r15 = r14
        L_0x03ef:
            if (r14 == 0) goto L_0x04a3
            d.g.a.h.d[] r0 = r14.i0
            r0 = r0[r35]
        L_0x03f5:
            if (r0 == 0) goto L_0x0400
            int r1 = r0.Y
            if (r1 != r8) goto L_0x0400
            d.g.a.h.d[] r0 = r0.i0
            r0 = r0[r35]
            goto L_0x03f5
        L_0x0400:
            if (r14 == r12) goto L_0x0492
            if (r14 == r13) goto L_0x0492
            if (r0 == 0) goto L_0x0492
            if (r0 != r13) goto L_0x040b
            r7 = r21
            goto L_0x040c
        L_0x040b:
            r7 = r0
        L_0x040c:
            d.g.a.h.c[] r0 = r14.A
            r0 = r0[r36]
            d.g.a.g r1 = r0.f482i
            d.g.a.h.c r2 = r0.f477d
            if (r2 == 0) goto L_0x0418
            d.g.a.g r2 = r2.f482i
        L_0x0418:
            d.g.a.h.c[] r2 = r15.A
            int r3 = r36 + 1
            r2 = r2[r3]
            d.g.a.g r2 = r2.f482i
            int r0 = r0.a()
            d.g.a.h.c[] r4 = r14.A
            r4 = r4[r3]
            int r4 = r4.a()
            if (r7 == 0) goto L_0x043e
            d.g.a.h.c[] r5 = r7.A
            r5 = r5[r36]
            d.g.a.g r6 = r5.f482i
            d.g.a.h.c r8 = r5.f477d
            if (r8 == 0) goto L_0x043b
            d.g.a.g r8 = r8.f482i
            goto L_0x0451
        L_0x043b:
            r8 = r21
            goto L_0x0451
        L_0x043e:
            d.g.a.h.c[] r5 = r14.A
            r5 = r5[r3]
            d.g.a.h.c r5 = r5.f477d
            if (r5 == 0) goto L_0x0449
            d.g.a.g r6 = r5.f482i
            goto L_0x044b
        L_0x0449:
            r6 = r21
        L_0x044b:
            d.g.a.h.c[] r8 = r14.A
            r8 = r8[r3]
            d.g.a.g r8 = r8.f482i
        L_0x0451:
            if (r5 == 0) goto L_0x045b
            int r5 = r5.a()
            int r5 = r5 + r4
            r20 = r5
            goto L_0x045d
        L_0x045b:
            r20 = r4
        L_0x045d:
            d.g.a.h.c[] r4 = r15.A
            r3 = r4[r3]
            int r3 = r3.a()
            int r3 = r3 + r0
            if (r19 == 0) goto L_0x046b
            r22 = 6
            goto L_0x046d
        L_0x046b:
            r22 = 4
        L_0x046d:
            if (r1 == 0) goto L_0x0489
            if (r2 == 0) goto L_0x0489
            if (r6 == 0) goto L_0x0489
            if (r8 == 0) goto L_0x0489
            r4 = 1056964608(0x3f000000, float:0.5)
            r0 = r34
            r5 = r6
            r6 = r8
            r16 = r7
            r7 = r20
            r20 = r15
            r15 = 8
            r8 = r22
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x048f
        L_0x0489:
            r16 = r7
            r20 = r15
            r15 = 8
        L_0x048f:
            r0 = r16
            goto L_0x0496
        L_0x0492:
            r20 = r15
            r15 = 8
        L_0x0496:
            int r1 = r14.Y
            if (r1 == r15) goto L_0x049b
            goto L_0x049d
        L_0x049b:
            r14 = r20
        L_0x049d:
            r15 = r14
            r8 = 8
            r14 = r0
            goto L_0x03ef
        L_0x04a3:
            d.g.a.h.c[] r0 = r12.A
            r0 = r0[r36]
            d.g.a.h.c[] r1 = r10.A
            r1 = r1[r36]
            d.g.a.h.c r1 = r1.f477d
            d.g.a.h.c[] r2 = r13.A
            int r3 = r36 + 1
            r10 = r2[r3]
            d.g.a.h.c[] r2 = r11.A
            r2 = r2[r3]
            d.g.a.h.c r14 = r2.f477d
            if (r1 == 0) goto L_0x04f0
            if (r12 == r13) goto L_0x04ca
            d.g.a.g r2 = r0.f482i
            d.g.a.g r1 = r1.f482i
            int r0 = r0.a()
            r15 = 5
            r9.a(r2, r1, r0, r15)
            goto L_0x04f1
        L_0x04ca:
            r15 = 5
            if (r14 == 0) goto L_0x04f1
            d.g.a.g r2 = r0.f482i
            d.g.a.g r3 = r1.f482i
            int r4 = r0.a()
            r5 = 1056964608(0x3f000000, float:0.5)
            d.g.a.g r6 = r10.f482i
            d.g.a.g r7 = r14.f482i
            int r8 = r10.a()
            r16 = 5
            r0 = r34
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r16
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x04f1
        L_0x04f0:
            r15 = 5
        L_0x04f1:
            if (r14 == 0) goto L_0x0501
            if (r12 == r13) goto L_0x0501
            d.g.a.g r0 = r10.f482i
            d.g.a.g r1 = r14.f482i
            int r2 = r10.a()
            int r2 = -r2
            r9.a(r0, r1, r2, r15)
        L_0x0501:
            if (r26 != 0) goto L_0x0505
            if (r23 == 0) goto L_0x0563
        L_0x0505:
            if (r12 == 0) goto L_0x0563
            d.g.a.h.c[] r0 = r12.A
            r0 = r0[r36]
            d.g.a.h.c[] r1 = r13.A
            int r2 = r36 + 1
            r1 = r1[r2]
            d.g.a.h.c r3 = r0.f477d
            if (r3 == 0) goto L_0x0518
            d.g.a.g r3 = r3.f482i
            goto L_0x051a
        L_0x0518:
            r3 = r21
        L_0x051a:
            d.g.a.h.c r4 = r1.f477d
            if (r4 == 0) goto L_0x0521
            d.g.a.g r4 = r4.f482i
            goto L_0x0523
        L_0x0521:
            r4 = r21
        L_0x0523:
            if (r11 == r13) goto L_0x0534
            d.g.a.h.c[] r4 = r11.A
            r4 = r4[r2]
            d.g.a.h.c r4 = r4.f477d
            if (r4 == 0) goto L_0x0531
            d.g.a.g r4 = r4.f482i
            r21 = r4
        L_0x0531:
            r5 = r21
            goto L_0x0535
        L_0x0534:
            r5 = r4
        L_0x0535:
            if (r12 != r13) goto L_0x0542
            d.g.a.h.c[] r0 = r12.A
            r1 = r0[r36]
            r0 = r0[r2]
            r32 = r1
            r1 = r0
            r0 = r32
        L_0x0542:
            if (r3 == 0) goto L_0x0563
            if (r5 == 0) goto L_0x0563
            r4 = 1056964608(0x3f000000, float:0.5)
            int r6 = r0.a()
            d.g.a.h.c[] r7 = r13.A
            r2 = r7[r2]
            int r7 = r2.a()
            d.g.a.g r2 = r0.f482i
            d.g.a.g r8 = r1.f482i
            r10 = 5
            r0 = r34
            r1 = r2
            r2 = r3
            r3 = r6
            r6 = r8
            r8 = r10
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x0563:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(d.g.a.h.e, d.g.a.e, int, int, d.g.a.h.b):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:6:0x0011  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.content.res.ColorStateList a(android.content.res.Resources r4, org.xmlpull.v1.XmlPullParser r5, android.content.res.Resources.Theme r6) {
        /*
            android.util.AttributeSet r0 = android.util.Xml.asAttributeSet(r5)
        L_0x0004:
            int r1 = r5.next()
            r2 = 2
            if (r1 == r2) goto L_0x000f
            r3 = 1
            if (r1 == r3) goto L_0x000f
            goto L_0x0004
        L_0x000f:
            if (r1 != r2) goto L_0x0016
            android.content.res.ColorStateList r4 = a((android.content.res.Resources) r4, (org.xmlpull.v1.XmlPullParser) r5, (android.util.AttributeSet) r0, (android.content.res.Resources.Theme) r6)
            return r4
        L_0x0016:
            org.xmlpull.v1.XmlPullParserException r4 = new org.xmlpull.v1.XmlPullParserException
            java.lang.String r5 = "No start tag found"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
            return;
        }
        if (!r) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                q = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e2);
            }
            r = true;
        }
        Field field = q;
        if (field != null) {
            try {
                field.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e3) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e3);
            }
        }
    }

    public static void a(Parcel parcel, int i2, String str, boolean z) {
        if (str != null) {
            int j2 = j(parcel, i2);
            parcel.writeString(str);
            k(parcel, j2);
        } else if (z) {
            c(parcel, i2, 0);
        }
    }

    public static <T extends Parcelable> T a(Parcel parcel, int i2, Parcelable.Creator<T> creator) {
        int h2 = h(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (h2 == 0) {
            return null;
        }
        T t2 = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + h2);
        return t2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0035, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        r8.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003a, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        r9.addSuppressed(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003e, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0041, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x004a, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.nio.ByteBuffer a(android.content.Context r7, android.os.CancellationSignal r8, android.net.Uri r9) {
        /*
            android.content.ContentResolver r7 = r7.getContentResolver()
            r0 = 0
            java.lang.String r1 = "r"
            android.os.ParcelFileDescriptor r7 = r7.openFileDescriptor(r9, r1, r8)     // Catch:{ IOException -> 0x004b }
            if (r7 != 0) goto L_0x0013
            if (r7 == 0) goto L_0x0012
            r7.close()     // Catch:{ IOException -> 0x004b }
        L_0x0012:
            return r0
        L_0x0013:
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch:{ all -> 0x003f }
            java.io.FileDescriptor r9 = r7.getFileDescriptor()     // Catch:{ all -> 0x003f }
            r8.<init>(r9)     // Catch:{ all -> 0x003f }
            java.nio.channels.FileChannel r1 = r8.getChannel()     // Catch:{ all -> 0x0033 }
            long r5 = r1.size()     // Catch:{ all -> 0x0033 }
            java.nio.channels.FileChannel$MapMode r2 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch:{ all -> 0x0033 }
            r3 = 0
            java.nio.MappedByteBuffer r9 = r1.map(r2, r3, r5)     // Catch:{ all -> 0x0033 }
            r8.close()     // Catch:{ all -> 0x003f }
            r7.close()     // Catch:{ IOException -> 0x004b }
            return r9
        L_0x0033:
            r9 = move-exception
            throw r9     // Catch:{ all -> 0x0035 }
        L_0x0035:
            r1 = move-exception
            r8.close()     // Catch:{ all -> 0x003a }
            goto L_0x003e
        L_0x003a:
            r8 = move-exception
            r9.addSuppressed(r8)     // Catch:{ all -> 0x003f }
        L_0x003e:
            throw r1     // Catch:{ all -> 0x003f }
        L_0x003f:
            r8 = move-exception
            throw r8     // Catch:{ all -> 0x0041 }
        L_0x0041:
            r9 = move-exception
            r7.close()     // Catch:{ all -> 0x0046 }
            goto L_0x004a
        L_0x0046:
            r7 = move-exception
            r8.addSuppressed(r7)     // Catch:{ IOException -> 0x004b }
        L_0x004a:
            throw r9     // Catch:{ IOException -> 0x004b }
        L_0x004b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    public static int a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        return cursor.getColumnIndexOrThrow("`" + str + "`");
    }

    public static Bundle a(Parcel parcel, int i2) {
        int h2 = h(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (h2 == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + h2);
        return readBundle;
    }

    public static void a(Parcel parcel, int i2, IBinder iBinder, boolean z) {
        if (iBinder != null) {
            int j2 = j(parcel, i2);
            parcel.writeStrongBinder(iBinder);
            k(parcel, j2);
        } else if (z) {
            c(parcel, i2, 0);
        }
    }

    /* JADX WARNING: type inference failed for: r8v16, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.content.res.ColorStateList a(android.content.res.Resources r17, org.xmlpull.v1.XmlPullParser r18, android.util.AttributeSet r19, android.content.res.Resources.Theme r20) {
        /*
            r0 = r19
            r1 = r20
            java.lang.String r2 = r18.getName()
            java.lang.String r3 = "selector"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x010b
            int r2 = r18.getDepth()
            r3 = 1
            int r2 = r2 + r3
            r4 = 20
            int[][] r5 = new int[r4][]
            int[] r4 = new int[r4]
            r6 = 0
            r7 = 0
        L_0x001e:
            int r8 = r18.next()
            if (r8 == r3) goto L_0x00fb
            int r9 = r18.getDepth()
            if (r9 >= r2) goto L_0x002d
            r10 = 3
            if (r8 == r10) goto L_0x00fb
        L_0x002d:
            r10 = 2
            if (r8 != r10) goto L_0x00f6
            if (r9 > r2) goto L_0x00f6
            java.lang.String r8 = r18.getName()
            java.lang.String r9 = "item"
            boolean r8 = r8.equals(r9)
            if (r8 != 0) goto L_0x0040
            goto L_0x00f6
        L_0x0040:
            int[] r8 = androidx.core.R$styleable.ColorStateListItem
            if (r1 != 0) goto L_0x004b
            r9 = r17
            android.content.res.TypedArray r8 = r9.obtainAttributes(r0, r8)
            goto L_0x0051
        L_0x004b:
            r9 = r17
            android.content.res.TypedArray r8 = r1.obtainStyledAttributes(r0, r8, r6, r6)
        L_0x0051:
            int r10 = androidx.core.R$styleable.ColorStateListItem_android_color
            r11 = -65281(0xffffffffffff00ff, float:NaN)
            int r10 = r8.getColor(r10, r11)
            r11 = 1065353216(0x3f800000, float:1.0)
            int r12 = androidx.core.R$styleable.ColorStateListItem_android_alpha
            boolean r12 = r8.hasValue(r12)
            if (r12 == 0) goto L_0x006b
            int r12 = androidx.core.R$styleable.ColorStateListItem_android_alpha
            float r11 = r8.getFloat(r12, r11)
            goto L_0x0079
        L_0x006b:
            int r12 = androidx.core.R$styleable.ColorStateListItem_alpha
            boolean r12 = r8.hasValue(r12)
            if (r12 == 0) goto L_0x0079
            int r12 = androidx.core.R$styleable.ColorStateListItem_alpha
            float r11 = r8.getFloat(r12, r11)
        L_0x0079:
            r8.recycle()
            int r8 = r19.getAttributeCount()
            int[] r12 = new int[r8]
            r13 = 0
            r14 = 0
        L_0x0084:
            if (r13 >= r8) goto L_0x00a9
            int r15 = r0.getAttributeNameResource(r13)
            r3 = 16843173(0x10101a5, float:2.3694738E-38)
            if (r15 == r3) goto L_0x00a5
            r3 = 16843551(0x101031f, float:2.3695797E-38)
            if (r15 == r3) goto L_0x00a5
            int r3 = androidx.core.R$attr.alpha
            if (r15 == r3) goto L_0x00a5
            int r3 = r14 + 1
            boolean r16 = r0.getAttributeBooleanValue(r13, r6)
            if (r16 == 0) goto L_0x00a1
            goto L_0x00a2
        L_0x00a1:
            int r15 = -r15
        L_0x00a2:
            r12[r14] = r15
            r14 = r3
        L_0x00a5:
            int r13 = r13 + 1
            r3 = 1
            goto L_0x0084
        L_0x00a9:
            int[] r3 = android.util.StateSet.trimStateSet(r12, r14)
            int r8 = android.graphics.Color.alpha(r10)
            float r8 = (float) r8
            float r8 = r8 * r11
            int r8 = java.lang.Math.round(r8)
            r11 = 16777215(0xffffff, float:2.3509886E-38)
            r10 = r10 & r11
            int r8 = r8 << 24
            r8 = r8 | r10
            int r10 = r7 + 1
            int r11 = r4.length
            r12 = 4
            r13 = 8
            if (r10 <= r11) goto L_0x00d4
            if (r7 > r12) goto L_0x00cc
            r11 = 8
            goto L_0x00ce
        L_0x00cc:
            int r11 = r7 * 2
        L_0x00ce:
            int[] r11 = new int[r11]
            java.lang.System.arraycopy(r4, r6, r11, r6, r7)
            r4 = r11
        L_0x00d4:
            r4[r7] = r8
            int r8 = r5.length
            if (r10 <= r8) goto L_0x00f0
            java.lang.Class r8 = r5.getClass()
            java.lang.Class r8 = r8.getComponentType()
            if (r7 > r12) goto L_0x00e4
            goto L_0x00e6
        L_0x00e4:
            int r13 = r7 * 2
        L_0x00e6:
            java.lang.Object r8 = java.lang.reflect.Array.newInstance(r8, r13)
            java.lang.Object[] r8 = (java.lang.Object[]) r8
            java.lang.System.arraycopy(r5, r6, r8, r6, r7)
            r5 = r8
        L_0x00f0:
            r5[r7] = r3
            int[][] r5 = (int[][]) r5
            r7 = r10
            goto L_0x00f8
        L_0x00f6:
            r9 = r17
        L_0x00f8:
            r3 = 1
            goto L_0x001e
        L_0x00fb:
            int[] r0 = new int[r7]
            int[][] r1 = new int[r7][]
            java.lang.System.arraycopy(r4, r6, r0, r6, r7)
            java.lang.System.arraycopy(r5, r6, r1, r6, r7)
            android.content.res.ColorStateList r2 = new android.content.res.ColorStateList
            r2.<init>(r1, r0)
            return r2
        L_0x010b:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = r18.getPositionDescription()
            r1.append(r3)
            java.lang.String r3 = ": invalid color state list tag "
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    public static void a(Parcel parcel, int i2, Parcelable parcelable, int i3, boolean z) {
        if (parcelable != null) {
            int j2 = j(parcel, i2);
            parcelable.writeToParcel(parcel, i3);
            k(parcel, j2);
        } else if (z) {
            c(parcel, i2, 0);
        }
    }

    public static void a(d.g.a.h.e eVar) {
        if ((eVar.C0 & 32) != 32) {
            eVar.w0.clear();
            eVar.w0.add(0, new f(eVar.k0));
            return;
        }
        eVar.D0 = true;
        eVar.x0 = false;
        eVar.y0 = false;
        eVar.z0 = false;
        ArrayList<d.g.a.h.d> arrayList = eVar.k0;
        List<f> list = eVar.w0;
        boolean z = eVar.e() == d.a.WRAP_CONTENT;
        boolean z2 = eVar.h() == d.a.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (d.g.a.h.d next : arrayList) {
            next.p = null;
            next.d0 = false;
            next.l();
        }
        for (d.g.a.h.d next2 : arrayList) {
            if (next2.p == null) {
                f fVar = new f(new ArrayList(), true);
                list.add(fVar);
                if (!a(next2, fVar, list, z3)) {
                    eVar.w0.clear();
                    eVar.w0.add(0, new f(eVar.k0));
                    eVar.D0 = false;
                    return;
                }
            }
        }
        int i2 = 0;
        int i3 = 0;
        for (f next3 : list) {
            i2 = Math.max(i2, a(next3, 0));
            i3 = Math.max(i3, a(next3, 1));
        }
        if (z) {
            eVar.a(d.a.FIXED);
            eVar.f(i2);
            eVar.x0 = true;
            eVar.y0 = true;
            eVar.A0 = i2;
        }
        if (z2) {
            eVar.b(d.a.FIXED);
            eVar.e(i3);
            eVar.x0 = true;
            eVar.z0 = true;
            eVar.B0 = i3;
        }
        a(list, 0, eVar.i());
        a(list, 1, eVar.d());
    }

    public static int a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i3) {
        if (!a(xmlPullParser, str)) {
            return i3;
        }
        return typedArray.getColor(i2, i3);
    }

    public static d.i.c.b[] a(d.i.c.b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        d.i.c.b[] bVarArr2 = new d.i.c.b[bVarArr.length];
        for (int i2 = 0; i2 < bVarArr.length; i2++) {
            bVarArr2[i2] = new d.i.c.b(bVarArr[i2]);
        }
        return bVarArr2;
    }

    public static Drawable a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!n) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                m = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e2);
            }
            n = true;
        }
        Field field = m;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException e3) {
                Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e3);
                m = null;
            }
        }
        return null;
    }

    public static boolean a(d.g.a.h.d dVar, f fVar, List<f> list, boolean z) {
        c cVar;
        c cVar2;
        c cVar3;
        d.g.a.h.d dVar2;
        c cVar4;
        c cVar5;
        c cVar6;
        c cVar7;
        d.g.a.h.d dVar3;
        c cVar8;
        if (dVar == null) {
            return true;
        }
        dVar.c0 = false;
        d.g.a.h.e eVar = (d.g.a.h.e) dVar.D;
        f fVar2 = dVar.p;
        if (fVar2 == null) {
            dVar.b0 = true;
            fVar.a.add(dVar);
            dVar.p = fVar;
            if (dVar.s.f477d == null && dVar.u.f477d == null && dVar.t.f477d == null && dVar.v.f477d == null && dVar.w.f477d == null && dVar.z.f477d == null) {
                fVar.f494d = false;
                eVar.D0 = false;
                dVar.b0 = false;
                if (z) {
                    return false;
                }
            }
            if (!(dVar.t.f477d == null || dVar.v.f477d == null)) {
                d.a h2 = eVar.h();
                d.a aVar = d.a.WRAP_CONTENT;
                if (z) {
                    fVar.f494d = false;
                    eVar.D0 = false;
                    dVar.b0 = false;
                    return false;
                }
                d.g.a.h.d dVar4 = dVar.t.f477d.b;
                d.g.a.h.d dVar5 = dVar.D;
                if (!(dVar4 == dVar5 && dVar.v.f477d.b == dVar5)) {
                    fVar.f494d = false;
                    eVar.D0 = false;
                    dVar.b0 = false;
                }
            }
            if (!(dVar.s.f477d == null || dVar.u.f477d == null)) {
                d.a e2 = eVar.e();
                d.a aVar2 = d.a.WRAP_CONTENT;
                if (z) {
                    fVar.f494d = false;
                    eVar.D0 = false;
                    dVar.b0 = false;
                    return false;
                }
                d.g.a.h.d dVar6 = dVar.s.f477d.b;
                d.g.a.h.d dVar7 = dVar.D;
                if (!(dVar6 == dVar7 && dVar.u.f477d.b == dVar7)) {
                    fVar.f494d = false;
                    eVar.D0 = false;
                    dVar.b0 = false;
                }
            }
            if (((dVar.e() == d.a.MATCH_CONSTRAINT) ^ (dVar.h() == d.a.MATCH_CONSTRAINT)) && dVar.G != 0.0f) {
                a(dVar);
            } else if (dVar.e() == d.a.MATCH_CONSTRAINT || dVar.h() == d.a.MATCH_CONSTRAINT) {
                fVar.f494d = false;
                eVar.D0 = false;
                dVar.b0 = false;
                if (z) {
                    return false;
                }
            }
            if (((dVar.s.f477d == null && dVar.u.f477d == null) || (((cVar5 = dVar.s.f477d) != null && cVar5.b == dVar.D && dVar.u.f477d == null) || (((cVar6 = dVar.u.f477d) != null && cVar6.b == dVar.D && dVar.s.f477d == null) || ((cVar7 = dVar.s.f477d) != null && cVar7.b == (dVar3 = dVar.D) && (cVar8 = dVar.u.f477d) != null && cVar8.b == dVar3)))) && dVar.z.f477d == null && !(dVar instanceof d.g.a.h.g) && !(dVar instanceof h)) {
                fVar.f496f.add(dVar);
            }
            if (((dVar.t.f477d == null && dVar.v.f477d == null) || (((cVar = dVar.t.f477d) != null && cVar.b == dVar.D && dVar.v.f477d == null) || (((cVar2 = dVar.v.f477d) != null && cVar2.b == dVar.D && dVar.t.f477d == null) || ((cVar3 = dVar.t.f477d) != null && cVar3.b == (dVar2 = dVar.D) && (cVar4 = dVar.v.f477d) != null && cVar4.b == dVar2)))) && dVar.z.f477d == null && dVar.w.f477d == null && !(dVar instanceof d.g.a.h.g) && !(dVar instanceof h)) {
                fVar.f497g.add(dVar);
            }
            if (dVar instanceof h) {
                fVar.f494d = false;
                eVar.D0 = false;
                dVar.b0 = false;
                if (z) {
                    return false;
                }
                h hVar = (h) dVar;
                for (int i2 = 0; i2 < hVar.l0; i2++) {
                    if (!a(hVar.k0[i2], fVar, list, z)) {
                        return false;
                    }
                }
            }
            for (c cVar9 : dVar.A) {
                c cVar10 = cVar9.f477d;
                if (!(cVar10 == null || cVar10.b == dVar.D)) {
                    if (cVar9.f476c == c.C0020c.CENTER) {
                        fVar.f494d = false;
                        eVar.D0 = false;
                        dVar.b0 = false;
                        if (z) {
                            return false;
                        }
                    } else {
                        j jVar = cVar9.a;
                        if (!(cVar10 == null || cVar10.f477d == cVar9)) {
                            cVar10.a.a.add(jVar);
                        }
                    }
                    if (!a(cVar9.f477d.b, fVar, list, z)) {
                        return false;
                    }
                }
            }
            return true;
        }
        if (fVar2 != fVar) {
            fVar.a.addAll(fVar2.a);
            fVar.f496f.addAll(dVar.p.f496f);
            fVar.f497g.addAll(dVar.p.f497g);
            if (!dVar.p.f494d) {
                fVar.f494d = false;
            }
            list.remove(dVar.p);
            for (d.g.a.h.d dVar8 : dVar.p.a) {
                dVar8.p = fVar;
            }
        }
        return true;
    }

    public static Intent a(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String b2 = b((Context) activity, activity.getComponentName());
            if (b2 == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, b2);
            try {
                if (b((Context) activity, componentName) == null) {
                    return Intent.makeMainActivity(componentName);
                }
                return new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + b2 + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int a(Context context, String str) {
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String permissionToOp = Build.VERSION.SDK_INT >= 23 ? AppOpsManager.permissionToOp(str) : null;
        if (permissionToOp != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            if ((Build.VERSION.SDK_INT >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName) : 1) != 0) {
                return -2;
            }
        }
        return 0;
    }

    public static int a(int i2) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException();
    }

    public static d.i.b.b.a a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i2, int i3) {
        d.i.b.b.a aVar;
        if (a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i4 = typedValue.type;
            if (i4 >= 28 && i4 <= 31) {
                return new d.i.b.b.a((Shader) null, (ColorStateList) null, typedValue.data);
            }
            try {
                aVar = d.i.b.b.a.a(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            } catch (Exception e2) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e2);
                aVar = null;
            }
            if (aVar != null) {
                return aVar;
            }
        }
        return new d.i.b.b.a((Shader) null, (ColorStateList) null, i3);
    }

    public static boolean a(d.i.c.b[] bVarArr, d.i.c.b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bVarArr.length; i2++) {
            if (bVarArr[i2].a != bVarArr2[i2].a || bVarArr[i2].b.length != bVarArr2[i2].b.length) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0047 A[SYNTHETIC, Splitter:B:25:0x0047] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0050 A[SYNTHETIC, Splitter:B:31:0x0050] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.io.File r5, java.io.InputStream r6) {
        /*
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.allowThreadDiskWrites()
            r1 = 0
            r2 = 0
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x002a }
            r3.<init>(r5, r1)     // Catch:{ IOException -> 0x002a }
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch:{ IOException -> 0x0025, all -> 0x0022 }
        L_0x000f:
            int r2 = r6.read(r5)     // Catch:{ IOException -> 0x0025, all -> 0x0022 }
            r4 = -1
            if (r2 == r4) goto L_0x001a
            r3.write(r5, r1, r2)     // Catch:{ IOException -> 0x0025, all -> 0x0022 }
            goto L_0x000f
        L_0x001a:
            r5 = 1
            r3.close()     // Catch:{ IOException -> 0x001e }
        L_0x001e:
            android.os.StrictMode.setThreadPolicy(r0)
            return r5
        L_0x0022:
            r5 = move-exception
            r2 = r3
            goto L_0x004e
        L_0x0025:
            r5 = move-exception
            r2 = r3
            goto L_0x002b
        L_0x0028:
            r5 = move-exception
            goto L_0x004e
        L_0x002a:
            r5 = move-exception
        L_0x002b:
            java.lang.String r6 = "TypefaceCompatUtil"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0028 }
            r3.<init>()     // Catch:{ all -> 0x0028 }
            java.lang.String r4 = "Error copying resource contents to temp file: "
            r3.append(r4)     // Catch:{ all -> 0x0028 }
            java.lang.String r5 = r5.getMessage()     // Catch:{ all -> 0x0028 }
            r3.append(r5)     // Catch:{ all -> 0x0028 }
            java.lang.String r5 = r3.toString()     // Catch:{ all -> 0x0028 }
            android.util.Log.e(r6, r5)     // Catch:{ all -> 0x0028 }
            if (r2 == 0) goto L_0x004a
            r2.close()     // Catch:{ IOException -> 0x004a }
        L_0x004a:
            android.os.StrictMode.setThreadPolicy(r0)
            return r1
        L_0x004e:
            if (r2 == 0) goto L_0x0053
            r2.close()     // Catch:{ IOException -> 0x0053 }
        L_0x0053:
            android.os.StrictMode.setThreadPolicy(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(java.io.File, java.io.InputStream):boolean");
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    public static void a(PopupWindow popupWindow, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i2);
            return;
        }
        if (!p) {
            Class<PopupWindow> cls = PopupWindow.class;
            try {
                Method declaredMethod = cls.getDeclaredMethod("setWindowLayoutType", new Class[]{Integer.TYPE});
                o = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            p = true;
        }
        Method method = o;
        if (method != null) {
            try {
                method.invoke(popupWindow, new Object[]{Integer.valueOf(i2)});
            } catch (Exception unused2) {
            }
        }
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0014 A[SYNTHETIC, Splitter:B:13:0x0014] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.io.File r0, android.content.res.Resources r1, int r2) {
        /*
            java.io.InputStream r1 = r1.openRawResource(r2)     // Catch:{ all -> 0x0010 }
            boolean r0 = a((java.io.File) r0, (java.io.InputStream) r1)     // Catch:{ all -> 0x000e }
            if (r1 == 0) goto L_0x000d
            r1.close()     // Catch:{ IOException -> 0x000d }
        L_0x000d:
            return r0
        L_0x000e:
            r0 = move-exception
            goto L_0x0012
        L_0x0010:
            r0 = move-exception
            r1 = 0
        L_0x0012:
            if (r1 == 0) goto L_0x0017
            r1.close()     // Catch:{ IOException -> 0x0017 }
        L_0x0017:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(java.io.File, android.content.res.Resources, int):boolean");
    }

    public static d.i.b.b.b a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        Resources resources2 = resources;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlPullParser.require(2, (String) null, "font-family");
            if (xmlPullParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources2.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamily);
                String string = obtainAttributes.getString(R$styleable.FontFamily_fontProviderAuthority);
                String string2 = obtainAttributes.getString(R$styleable.FontFamily_fontProviderPackage);
                String string3 = obtainAttributes.getString(R$styleable.FontFamily_fontProviderQuery);
                int resourceId = obtainAttributes.getResourceId(R$styleable.FontFamily_fontProviderCerts, 0);
                int integer = obtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchStrategy, 1);
                int integer2 = obtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchTimeout, 500);
                obtainAttributes.recycle();
                if (string == null || string2 == null || string3 == null) {
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("font")) {
                                TypedArray obtainAttributes2 = resources2.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamilyFont);
                                int i2 = obtainAttributes2.getInt(obtainAttributes2.hasValue(R$styleable.FontFamilyFont_fontWeight) ? R$styleable.FontFamilyFont_fontWeight : R$styleable.FontFamilyFont_android_fontWeight, 400);
                                boolean z = 1 == obtainAttributes2.getInt(obtainAttributes2.hasValue(R$styleable.FontFamilyFont_fontStyle) ? R$styleable.FontFamilyFont_fontStyle : R$styleable.FontFamilyFont_android_fontStyle, 0);
                                int i3 = obtainAttributes2.hasValue(R$styleable.FontFamilyFont_ttcIndex) ? R$styleable.FontFamilyFont_ttcIndex : R$styleable.FontFamilyFont_android_ttcIndex;
                                String string4 = obtainAttributes2.getString(obtainAttributes2.hasValue(R$styleable.FontFamilyFont_fontVariationSettings) ? R$styleable.FontFamilyFont_fontVariationSettings : R$styleable.FontFamilyFont_android_fontVariationSettings);
                                int i4 = obtainAttributes2.getInt(i3, 0);
                                int i5 = obtainAttributes2.hasValue(R$styleable.FontFamilyFont_font) ? R$styleable.FontFamilyFont_font : R$styleable.FontFamilyFont_android_font;
                                int resourceId2 = obtainAttributes2.getResourceId(i5, 0);
                                String string5 = obtainAttributes2.getString(i5);
                                obtainAttributes2.recycle();
                                while (xmlPullParser.next() != 3) {
                                    a(xmlPullParser);
                                }
                                arrayList.add(new d.i.b.b.d(string5, i2, z, string4, i4, resourceId2));
                            } else {
                                a(xmlPullParser);
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    return new d.i.b.b.c((d.i.b.b.d[]) arrayList.toArray(new d.i.b.b.d[arrayList.size()]));
                }
                while (xmlPullParser.next() != 3) {
                    a(xmlPullParser);
                }
                return new d.i.b.b.e(new d.i.f.a(string, string2, string3, a(resources2, resourceId)), integer, integer2);
            }
            a(xmlPullParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static NavController a(View view) {
        NavController navController;
        while (view != null) {
            Object tag = view.getTag(androidx.navigation.R$id.nav_controller_view_tag);
            if (tag instanceof WeakReference) {
                navController = (NavController) ((WeakReference) tag).get();
            } else {
                navController = tag instanceof NavController ? (NavController) tag : null;
            }
            if (navController != null) {
                return navController;
            }
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    public static Intent a(Context context, ComponentName componentName) {
        String b2 = b(context, componentName);
        if (b2 == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), b2);
        if (b(context, componentName2) == null) {
            return Intent.makeMainActivity(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v6, resolved type: java.lang.Object[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v29, resolved type: java.lang.Object[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v32, resolved type: java.lang.Object[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.animation.PropertyValuesHolder a(android.content.res.TypedArray r11, int r12, int r13, int r14, java.lang.String r15) {
        /*
            android.util.TypedValue r0 = r11.peekValue(r13)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x000a
            r3 = 1
            goto L_0x000b
        L_0x000a:
            r3 = 0
        L_0x000b:
            if (r3 == 0) goto L_0x0010
            int r0 = r0.type
            goto L_0x0011
        L_0x0010:
            r0 = 0
        L_0x0011:
            android.util.TypedValue r4 = r11.peekValue(r14)
            if (r4 == 0) goto L_0x0019
            r5 = 1
            goto L_0x001a
        L_0x0019:
            r5 = 0
        L_0x001a:
            if (r5 == 0) goto L_0x001f
            int r4 = r4.type
            goto L_0x0020
        L_0x001f:
            r4 = 0
        L_0x0020:
            r6 = 4
            r7 = 3
            if (r12 != r6) goto L_0x0037
            if (r3 == 0) goto L_0x002c
            boolean r12 = b((int) r0)
            if (r12 != 0) goto L_0x0034
        L_0x002c:
            if (r5 == 0) goto L_0x0036
            boolean r12 = b((int) r4)
            if (r12 == 0) goto L_0x0036
        L_0x0034:
            r12 = 3
            goto L_0x0037
        L_0x0036:
            r12 = 0
        L_0x0037:
            if (r12 != 0) goto L_0x003b
            r6 = 1
            goto L_0x003c
        L_0x003b:
            r6 = 0
        L_0x003c:
            r8 = 0
            r9 = 2
            if (r12 != r9) goto L_0x00a9
            java.lang.String r12 = r11.getString(r13)
            java.lang.String r11 = r11.getString(r14)
            d.i.c.b[] r13 = b((java.lang.String) r12)
            d.i.c.b[] r14 = b((java.lang.String) r11)
            if (r13 != 0) goto L_0x0054
            if (r14 == 0) goto L_0x0167
        L_0x0054:
            if (r13 == 0) goto L_0x0098
            d.y.a.a.d r0 = new d.y.a.a.d
            r0.<init>()
            if (r14 == 0) goto L_0x008d
            boolean r3 = a((d.i.c.b[]) r13, (d.i.c.b[]) r14)
            if (r3 == 0) goto L_0x006e
            java.lang.Object[] r11 = new java.lang.Object[r9]
            r11[r2] = r13
            r11[r1] = r14
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofObject(r15, r0, r11)
            goto L_0x0095
        L_0x006e:
            android.view.InflateException r13 = new android.view.InflateException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r15 = " Can't morph from "
            r14.append(r15)
            r14.append(r12)
            java.lang.String r12 = " to "
            r14.append(r12)
            r14.append(r11)
            java.lang.String r11 = r14.toString()
            r13.<init>(r11)
            throw r13
        L_0x008d:
            java.lang.Object[] r11 = new java.lang.Object[r1]
            r11[r2] = r13
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofObject(r15, r0, r11)
        L_0x0095:
            r8 = r11
            goto L_0x0167
        L_0x0098:
            if (r14 == 0) goto L_0x0167
            d.y.a.a.d r11 = new d.y.a.a.d
            r11.<init>()
            java.lang.Object[] r12 = new java.lang.Object[r1]
            r12[r2] = r14
            android.animation.PropertyValuesHolder r8 = android.animation.PropertyValuesHolder.ofObject(r15, r11, r12)
            goto L_0x0167
        L_0x00a9:
            if (r12 != r7) goto L_0x00ae
            d.y.a.a.e r12 = d.y.a.a.e.a
            goto L_0x00af
        L_0x00ae:
            r12 = r8
        L_0x00af:
            r7 = 5
            r10 = 0
            if (r6 == 0) goto L_0x00f8
            if (r3 == 0) goto L_0x00e3
            if (r0 != r7) goto L_0x00bc
            float r13 = r11.getDimension(r13, r10)
            goto L_0x00c0
        L_0x00bc:
            float r13 = r11.getFloat(r13, r10)
        L_0x00c0:
            if (r5 == 0) goto L_0x00d9
            if (r4 != r7) goto L_0x00c9
            float r11 = r11.getDimension(r14, r10)
            goto L_0x00cd
        L_0x00c9:
            float r11 = r11.getFloat(r14, r10)
        L_0x00cd:
            float[] r14 = new float[r9]
            r14[r2] = r13
            r14[r1] = r11
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofFloat(r15, r14)
            goto L_0x015f
        L_0x00d9:
            float[] r11 = new float[r1]
            r11[r2] = r13
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofFloat(r15, r11)
            goto L_0x015f
        L_0x00e3:
            if (r4 != r7) goto L_0x00ea
            float r11 = r11.getDimension(r14, r10)
            goto L_0x00ee
        L_0x00ea:
            float r11 = r11.getFloat(r14, r10)
        L_0x00ee:
            float[] r13 = new float[r1]
            r13[r2] = r11
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofFloat(r15, r13)
            goto L_0x015f
        L_0x00f8:
            if (r3 == 0) goto L_0x013e
            if (r0 != r7) goto L_0x0102
            float r13 = r11.getDimension(r13, r10)
            int r13 = (int) r13
            goto L_0x0111
        L_0x0102:
            boolean r0 = b((int) r0)
            if (r0 == 0) goto L_0x010d
            int r13 = r11.getColor(r13, r2)
            goto L_0x0111
        L_0x010d:
            int r13 = r11.getInt(r13, r2)
        L_0x0111:
            if (r5 == 0) goto L_0x0135
            if (r4 != r7) goto L_0x011b
            float r11 = r11.getDimension(r14, r10)
            int r11 = (int) r11
            goto L_0x012a
        L_0x011b:
            boolean r0 = b((int) r4)
            if (r0 == 0) goto L_0x0126
            int r11 = r11.getColor(r14, r2)
            goto L_0x012a
        L_0x0126:
            int r11 = r11.getInt(r14, r2)
        L_0x012a:
            int[] r14 = new int[r9]
            r14[r2] = r13
            r14[r1] = r11
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofInt(r15, r14)
            goto L_0x015f
        L_0x0135:
            int[] r11 = new int[r1]
            r11[r2] = r13
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofInt(r15, r11)
            goto L_0x015f
        L_0x013e:
            if (r5 == 0) goto L_0x0160
            if (r4 != r7) goto L_0x0148
            float r11 = r11.getDimension(r14, r10)
            int r11 = (int) r11
            goto L_0x0157
        L_0x0148:
            boolean r13 = b((int) r4)
            if (r13 == 0) goto L_0x0153
            int r11 = r11.getColor(r14, r2)
            goto L_0x0157
        L_0x0153:
            int r11 = r11.getInt(r14, r2)
        L_0x0157:
            int[] r13 = new int[r1]
            r13[r2] = r11
            android.animation.PropertyValuesHolder r11 = android.animation.PropertyValuesHolder.ofInt(r15, r13)
        L_0x015f:
            r8 = r11
        L_0x0160:
            if (r8 == 0) goto L_0x0167
            if (r12 == 0) goto L_0x0167
            r8.setEvaluator(r12)
        L_0x0167:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    public static void a(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            a(((InsetDrawable) drawable).getDrawable());
        } else if (drawable instanceof d.i.c.j.b) {
            a(((d.i.c.j.b) drawable).a());
        } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
            int childCount = drawableContainerState.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                Drawable child = drawableContainerState.getChild(i2);
                if (child != null) {
                    a(child);
                }
            }
        }
    }

    public static String a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2) {
        if (!a(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i2);
    }

    public static List<List<byte[]>> a(Resources resources, int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i2)));
            }
            obtainTypedArray.recycle();
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String decode : strArr) {
            arrayList.add(Base64.decode(decode, 0));
        }
        return arrayList;
    }

    public static int a(d.g.a.h.d dVar, int i2, boolean z, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        d.g.a.h.d dVar2;
        int i12;
        d.g.a.h.d dVar3 = dVar;
        int i13 = i2;
        boolean z2 = z;
        int i14 = 0;
        if (!dVar3.b0) {
            return 0;
        }
        boolean z3 = dVar3.w.f477d != null && i13 == 1;
        if (z2) {
            i7 = dVar3.Q;
            i6 = dVar.d() - dVar3.Q;
            i5 = i13 * 2;
            i4 = i5 + 1;
        } else {
            int d2 = dVar.d();
            i6 = dVar3.Q;
            i7 = d2 - i6;
            i4 = i13 * 2;
            i5 = i4 + 1;
        }
        c[] cVarArr = dVar3.A;
        if (cVarArr[i4].f477d == null || cVarArr[i5].f477d != null) {
            i8 = 1;
        } else {
            i8 = -1;
            int i15 = i4;
            i4 = i5;
            i5 = i15;
        }
        int i16 = z3 ? i3 - i7 : i3;
        int a2 = a(dVar, i2) + (dVar3.A[i5].a() * i8);
        int i17 = i16 + a2;
        int i18 = (i13 == 0 ? dVar.i() : dVar.d()) * i8;
        Iterator<l> it = dVar3.A[i5].a.a.iterator();
        while (it.hasNext()) {
            i14 = Math.max(i14, a(((j) it.next()).f502c.b, i13, z2, i17));
        }
        int i19 = 0;
        for (Iterator<l> it2 = dVar3.A[i4].a.a.iterator(); it2.hasNext(); it2 = it2) {
            i19 = Math.max(i19, a(((j) it2.next()).f502c.b, i13, z2, i18 + i17));
        }
        if (z3) {
            i14 -= i7;
            i9 = i19 + i6;
        } else {
            i9 = i19 + ((i13 == 0 ? dVar.i() : dVar.d()) * i8);
        }
        if (i13 == 1) {
            Iterator<l> it3 = dVar3.w.a.a.iterator();
            int i20 = 0;
            while (it3.hasNext()) {
                Iterator<l> it4 = it3;
                j jVar = (j) it3.next();
                int i21 = i4;
                if (i8 == 1) {
                    i12 = Math.max(i20, a(jVar.f502c.b, i13, z2, i7 + i17));
                } else {
                    i12 = Math.max(i20, a(jVar.f502c.b, i13, z2, (i6 * i8) + i17));
                }
                i20 = i12;
                it3 = it4;
                i4 = i21;
            }
            i10 = i4;
            i11 = (dVar3.w.a.a.size() <= 0 || z3) ? i20 : i8 == 1 ? i20 + i7 : i20 - i6;
        } else {
            i10 = i4;
            i11 = 0;
        }
        int max = Math.max(i14, Math.max(i9, i11)) + a2;
        int i22 = i18 + i17;
        if (i8 == -1) {
            int i23 = i22;
            i22 = i17;
            i17 = i23;
        }
        if (z2) {
            d.g.a.h.i.a(dVar3, i13, i17);
            dVar3.a(i17, i22, i13);
        } else {
            dVar3.p.a(dVar3, i13);
            if (i13 == 0) {
                dVar3.K = i17;
            } else if (i13 == 1) {
                dVar3.L = i17;
            }
        }
        if (dVar.b(i2) == d.a.MATCH_CONSTRAINT && dVar3.G != 0.0f) {
            dVar3.p.a(dVar3, i13);
        }
        c[] cVarArr2 = dVar3.A;
        if (cVarArr2[i5].f477d != null && cVarArr2[i10].f477d != null && cVarArr2[i5].f477d.b == (dVar2 = dVar3.D) && cVarArr2[i10].f477d.b == dVar2) {
            dVar3.p.a(dVar3, i13);
        }
        return max;
    }

    public static <T extends Parcelable> void a(Parcel parcel, int i2, T[] tArr, int i3, boolean z) {
        if (tArr != null) {
            int j2 = j(parcel, i2);
            parcel.writeInt(r7);
            for (T t2 : tArr) {
                if (t2 == null) {
                    parcel.writeInt(0);
                } else {
                    a(parcel, t2, i3);
                }
            }
            k(parcel, j2);
        } else if (z) {
            c(parcel, i2, 0);
        }
    }

    public static void a(XmlPullParser xmlPullParser) {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }

    public static <T extends Parcelable> void a(Parcel parcel, int i2, List<T> list, boolean z) {
        if (list != null) {
            int j2 = j(parcel, i2);
            int size = list.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                Parcelable parcelable = (Parcelable) list.get(i3);
                if (parcelable == null) {
                    parcel.writeInt(0);
                } else {
                    a(parcel, parcelable, 0);
                }
            }
            k(parcel, j2);
        } else if (z) {
            c(parcel, i2, 0);
        }
    }

    public static <T extends Parcelable> void a(Parcel parcel, T t2, int i2) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t2.writeToParcel(parcel, i2);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static boolean a(Drawable drawable, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.setLayoutDirection(i2);
        }
        if (!f213j) {
            Class<Drawable> cls = Drawable.class;
            try {
                Method declaredMethod = cls.getDeclaredMethod("setLayoutDirection", new Class[]{Integer.TYPE});
                f212i = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e2);
            }
            f213j = true;
        }
        Method method = f212i;
        if (method != null) {
            try {
                method.invoke(drawable, new Object[]{Integer.valueOf(i2)});
                return true;
            } catch (Exception e3) {
                Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e3);
                f212i = null;
            }
        }
        return false;
    }

    public static void a(List<f> list, int i2, int i3) {
        int i4;
        int size = list.size();
        int i5 = 0;
        while (i5 < size) {
            f fVar = list.get(i5);
            HashSet<d.g.a.h.d> hashSet = null;
            if (fVar != null) {
                if (i2 == 0) {
                    hashSet = fVar.f498h;
                } else if (i2 == 1) {
                    hashSet = fVar.f499i;
                }
                for (d.g.a.h.d next : hashSet) {
                    if (next.b0) {
                        int i6 = i2 * 2;
                        c[] cVarArr = next.A;
                        c cVar = cVarArr[i6];
                        c cVar2 = cVarArr[i6 + 1];
                        if ((cVar.f477d == null || cVar2.f477d == null) ? false : true) {
                            d.g.a.h.i.a(next, i2, cVar.a() + a(next, i2));
                        } else if (next.G == 0.0f || next.b(i2) != d.a.MATCH_CONSTRAINT) {
                            if (i2 == 0) {
                                i4 = next.K;
                            } else {
                                i4 = i2 == 1 ? next.L : 0;
                            }
                            int i7 = i3 - i4;
                            int c2 = i7 - next.c(i2);
                            next.a(c2, i7, i2);
                            d.g.a.h.i.a(next, i2, c2);
                        } else {
                            int a2 = a(next);
                            int i8 = (int) next.A[i6].a.f506g;
                            j jVar = cVar2.a;
                            jVar.f505f = cVar.a;
                            jVar.f506g = (float) a2;
                            jVar.b = 1;
                            next.a(i8, i8 + a2, i2);
                        }
                    }
                }
                i5++;
            } else {
                throw null;
            }
        }
    }

    public static int a(d.g.a.h.d dVar, int i2) {
        d.g.a.h.d dVar2;
        c cVar;
        int i3 = i2 * 2;
        c[] cVarArr = dVar.A;
        c cVar2 = cVarArr[i3];
        c cVar3 = cVarArr[i3 + 1];
        c cVar4 = cVar2.f477d;
        if (cVar4 == null || cVar4.b != (dVar2 = dVar.D) || (cVar = cVar3.f477d) == null || cVar.b != dVar2) {
            return 0;
        }
        return (int) (((float) (((dVar2.c(i2) - cVar2.a()) - cVar3.a()) - dVar.c(i2))) * (i2 == 0 ? dVar.V : dVar.W));
    }

    /* JADX WARNING: Removed duplicated region for block: B:154:0x0306  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.animation.Animator a(android.content.Context r22, android.content.res.Resources r23, android.content.res.Resources.Theme r24, org.xmlpull.v1.XmlPullParser r25, android.util.AttributeSet r26, android.animation.AnimatorSet r27, int r28, float r29) {
        /*
            r8 = r23
            r9 = r24
            r10 = r25
            r11 = r27
            int r12 = r25.getDepth()
            r0 = 0
            r1 = 0
            r13 = r1
        L_0x000f:
            int r1 = r25.next()
            r2 = 3
            r14 = 0
            if (r1 != r2) goto L_0x001d
            int r3 = r25.getDepth()
            if (r3 <= r12) goto L_0x032d
        L_0x001d:
            r3 = 1
            if (r1 == r3) goto L_0x032d
            r4 = 2
            if (r1 == r4) goto L_0x0024
            goto L_0x000f
        L_0x0024:
            java.lang.String r1 = r25.getName()
            java.lang.String r5 = "objectAnimator"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x0046
            android.animation.ObjectAnimator r7 = new android.animation.ObjectAnimator
            r7.<init>()
            r0 = r22
            r1 = r23
            r2 = r24
            r3 = r26
            r4 = r7
            r5 = r29
            r6 = r25
            a((android.content.Context) r0, (android.content.res.Resources) r1, (android.content.res.Resources.Theme) r2, (android.util.AttributeSet) r3, (android.animation.ValueAnimator) r4, (float) r5, (org.xmlpull.v1.XmlPullParser) r6)
            goto L_0x005f
        L_0x0046:
            java.lang.String r5 = "animator"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x0064
            r4 = 0
            r0 = r22
            r1 = r23
            r2 = r24
            r3 = r26
            r5 = r29
            r6 = r25
            android.animation.ValueAnimator r7 = a((android.content.Context) r0, (android.content.res.Resources) r1, (android.content.res.Resources.Theme) r2, (android.util.AttributeSet) r3, (android.animation.ValueAnimator) r4, (float) r5, (org.xmlpull.v1.XmlPullParser) r6)
        L_0x005f:
            r0 = r7
            r19 = r12
            goto L_0x0300
        L_0x0064:
            java.lang.String r5 = "set"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x009b
            android.animation.AnimatorSet r15 = new android.animation.AnimatorSet
            r15.<init>()
            int[] r0 = d.y.a.a.a.f991h
            r7 = r26
            android.content.res.TypedArray r6 = a((android.content.res.Resources) r8, (android.content.res.Resources.Theme) r9, (android.util.AttributeSet) r7, (int[]) r0)
            java.lang.String r0 = "ordering"
            int r16 = b(r6, r10, r0, r14, r14)
            r0 = r22
            r1 = r23
            r2 = r24
            r3 = r25
            r4 = r26
            r5 = r15
            r17 = r6
            r6 = r16
            r7 = r29
            a(r0, r1, r2, r3, r4, r5, r6, r7)
            r17.recycle()
            r19 = r12
            r0 = r15
            goto L_0x0300
        L_0x009b:
            java.lang.String r5 = "propertyValuesHolder"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x0316
            android.util.AttributeSet r1 = android.util.Xml.asAttributeSet(r25)
            r6 = 0
        L_0x00a8:
            int r7 = r25.getEventType()
            if (r7 == r2) goto L_0x02da
            if (r7 == r3) goto L_0x02da
            if (r7 == r4) goto L_0x00b6
            r25.next()
            goto L_0x00a8
        L_0x00b6:
            java.lang.String r3 = r25.getName()
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L_0x02c3
            int[] r3 = d.y.a.a.a.f992i
            android.content.res.TypedArray r3 = a((android.content.res.Resources) r8, (android.content.res.Resources.Theme) r9, (android.util.AttributeSet) r1, (int[]) r3)
            java.lang.String r7 = "propertyName"
            java.lang.String r7 = a((android.content.res.TypedArray) r3, (org.xmlpull.v1.XmlPullParser) r10, (java.lang.String) r7, (int) r2)
            r14 = 4
            java.lang.String r15 = "valueType"
            int r4 = b(r3, r10, r15, r4, r14)
            r14 = 0
            r16 = r1
            r15 = r4
        L_0x00d7:
            int r1 = r25.next()
            if (r1 == r2) goto L_0x01ca
            r17 = r2
            r2 = 1
            if (r1 == r2) goto L_0x01ca
            java.lang.String r1 = r25.getName()
            java.lang.String r2 = "keyframe"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x01c0
            java.lang.String r1 = "value"
            r2 = 4
            if (r15 != r2) goto L_0x0121
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r25)
            int[] r15 = d.y.a.a.a.f993j
            android.content.res.TypedArray r2 = a((android.content.res.Resources) r8, (android.content.res.Resources.Theme) r9, (android.util.AttributeSet) r2, (int[]) r15)
            boolean r15 = a((org.xmlpull.v1.XmlPullParser) r10, (java.lang.String) r1)
            if (r15 != 0) goto L_0x0105
            r15 = 0
            goto L_0x010a
        L_0x0105:
            r15 = 0
            android.util.TypedValue r15 = r2.peekValue(r15)
        L_0x010a:
            if (r15 == 0) goto L_0x010f
            r17 = 1
            goto L_0x0111
        L_0x010f:
            r17 = 0
        L_0x0111:
            if (r17 == 0) goto L_0x011d
            int r15 = r15.type
            boolean r15 = b((int) r15)
            if (r15 == 0) goto L_0x011d
            r15 = 3
            goto L_0x011e
        L_0x011d:
            r15 = 0
        L_0x011e:
            r2.recycle()
        L_0x0121:
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r25)
            r18 = r5
            int[] r5 = d.y.a.a.a.f993j
            android.content.res.TypedArray r2 = a((android.content.res.Resources) r8, (android.content.res.Resources.Theme) r9, (android.util.AttributeSet) r2, (int[]) r5)
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            java.lang.String r8 = "fraction"
            r9 = 3
            float r5 = a((android.content.res.TypedArray) r2, (org.xmlpull.v1.XmlPullParser) r10, (java.lang.String) r8, (int) r9, (float) r5)
            boolean r8 = a((org.xmlpull.v1.XmlPullParser) r10, (java.lang.String) r1)
            if (r8 != 0) goto L_0x013e
            r8 = 0
            goto L_0x0143
        L_0x013e:
            r8 = 0
            android.util.TypedValue r8 = r2.peekValue(r8)
        L_0x0143:
            if (r8 == 0) goto L_0x0147
            r9 = 1
            goto L_0x0148
        L_0x0147:
            r9 = 0
        L_0x0148:
            r19 = r12
            r12 = 4
            if (r15 != r12) goto L_0x015b
            if (r9 == 0) goto L_0x0159
            int r8 = r8.type
            boolean r8 = b((int) r8)
            if (r8 == 0) goto L_0x0159
            r8 = 3
            goto L_0x015c
        L_0x0159:
            r8 = 0
            goto L_0x015c
        L_0x015b:
            r8 = r15
        L_0x015c:
            if (r9 == 0) goto L_0x017d
            if (r8 == 0) goto L_0x0172
            r9 = 1
            if (r8 == r9) goto L_0x0168
            r9 = 3
            if (r8 == r9) goto L_0x0168
            r1 = 0
            goto L_0x0188
        L_0x0168:
            r8 = 0
            int r1 = b(r2, r10, r1, r8, r8)
            android.animation.Keyframe r1 = android.animation.Keyframe.ofInt(r5, r1)
            goto L_0x0188
        L_0x0172:
            r8 = 0
            r9 = 0
            float r1 = a((android.content.res.TypedArray) r2, (org.xmlpull.v1.XmlPullParser) r10, (java.lang.String) r1, (int) r8, (float) r9)
            android.animation.Keyframe r1 = android.animation.Keyframe.ofFloat(r5, r1)
            goto L_0x0188
        L_0x017d:
            if (r8 != 0) goto L_0x0184
            android.animation.Keyframe r1 = android.animation.Keyframe.ofFloat(r5)
            goto L_0x0188
        L_0x0184:
            android.animation.Keyframe r1 = android.animation.Keyframe.ofInt(r5)
        L_0x0188:
            java.lang.String r5 = "interpolator"
            boolean r5 = a((org.xmlpull.v1.XmlPullParser) r10, (java.lang.String) r5)
            if (r5 != 0) goto L_0x0192
            r5 = 0
            goto L_0x0198
        L_0x0192:
            r5 = 0
            r8 = 1
            int r5 = r2.getResourceId(r8, r5)
        L_0x0198:
            r8 = r22
            if (r5 <= 0) goto L_0x01a3
            android.view.animation.Interpolator r5 = android.view.animation.AnimationUtils.loadInterpolator(r8, r5)
            r1.setInterpolator(r5)
        L_0x01a3:
            r2.recycle()
            if (r1 == 0) goto L_0x01b2
            if (r14 != 0) goto L_0x01af
            java.util.ArrayList r14 = new java.util.ArrayList
            r14.<init>()
        L_0x01af:
            r14.add(r1)
        L_0x01b2:
            r25.next()
            r2 = 3
            r8 = r23
            r9 = r24
            r5 = r18
            r12 = r19
            goto L_0x00d7
        L_0x01c0:
            r8 = r22
            r8 = r23
            r9 = r24
            r2 = r17
            goto L_0x00d7
        L_0x01ca:
            r8 = r22
            r18 = r5
            r19 = r12
            if (r14 == 0) goto L_0x02a8
            int r1 = r14.size()
            if (r1 <= 0) goto L_0x02a8
            r2 = 0
            java.lang.Object r2 = r14.get(r2)
            android.animation.Keyframe r2 = (android.animation.Keyframe) r2
            int r5 = r1 + -1
            java.lang.Object r5 = r14.get(r5)
            android.animation.Keyframe r5 = (android.animation.Keyframe) r5
            float r9 = r5.getFraction()
            r12 = 1065353216(0x3f800000, float:1.0)
            int r17 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r17 >= 0) goto L_0x0208
            r17 = 0
            int r9 = (r9 > r17 ? 1 : (r9 == r17 ? 0 : -1))
            if (r9 >= 0) goto L_0x01fb
            r5.setFraction(r12)
            goto L_0x0208
        L_0x01fb:
            int r9 = r14.size()
            android.animation.Keyframe r5 = a((android.animation.Keyframe) r5, (float) r12)
            r14.add(r9, r5)
            int r1 = r1 + 1
        L_0x0208:
            float r5 = r2.getFraction()
            r9 = 0
            int r12 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r12 == 0) goto L_0x0223
            int r5 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r5 >= 0) goto L_0x0219
            r2.setFraction(r9)
            goto L_0x0223
        L_0x0219:
            android.animation.Keyframe r2 = a((android.animation.Keyframe) r2, (float) r9)
            r5 = 0
            r14.add(r5, r2)
            int r1 = r1 + 1
        L_0x0223:
            android.animation.Keyframe[] r2 = new android.animation.Keyframe[r1]
            r14.toArray(r2)
            r5 = 0
        L_0x0229:
            if (r5 >= r1) goto L_0x029b
            r9 = r2[r5]
            float r12 = r9.getFraction()
            r14 = 0
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 >= 0) goto L_0x0292
            if (r5 != 0) goto L_0x023c
            r9.setFraction(r14)
            goto L_0x0292
        L_0x023c:
            int r12 = r1 + -1
            if (r5 != r12) goto L_0x0246
            r12 = 1065353216(0x3f800000, float:1.0)
            r9.setFraction(r12)
            goto L_0x0292
        L_0x0246:
            int r9 = r5 + 1
            r14 = r5
        L_0x0249:
            if (r9 >= r12) goto L_0x0260
            r17 = r2[r9]
            float r17 = r17.getFraction()
            r20 = 0
            int r17 = (r17 > r20 ? 1 : (r17 == r20 ? 0 : -1))
            if (r17 < 0) goto L_0x0258
            goto L_0x0260
        L_0x0258:
            int r14 = r9 + 1
            r21 = r14
            r14 = r9
            r9 = r21
            goto L_0x0249
        L_0x0260:
            int r9 = r14 + 1
            r9 = r2[r9]
            float r9 = r9.getFraction()
            int r12 = r5 + -1
            r12 = r2[r12]
            float r12 = r12.getFraction()
            float r9 = r9 - r12
            int r12 = r14 - r5
            int r12 = r12 + 2
            float r12 = (float) r12
            float r9 = r9 / r12
            r12 = r5
        L_0x0278:
            if (r12 > r14) goto L_0x0292
            r17 = r1
            r1 = r2[r12]
            int r20 = r12 + -1
            r20 = r2[r20]
            float r20 = r20.getFraction()
            float r8 = r20 + r9
            r1.setFraction(r8)
            int r12 = r12 + 1
            r8 = r22
            r1 = r17
            goto L_0x0278
        L_0x0292:
            r17 = r1
            int r5 = r5 + 1
            r8 = r22
            r1 = r17
            goto L_0x0229
        L_0x029b:
            android.animation.PropertyValuesHolder r1 = android.animation.PropertyValuesHolder.ofKeyframe(r7, r2)
            r2 = 3
            if (r15 != r2) goto L_0x02aa
            d.y.a.a.e r5 = d.y.a.a.e.a
            r1.setEvaluator(r5)
            goto L_0x02aa
        L_0x02a8:
            r2 = 3
            r1 = 0
        L_0x02aa:
            r5 = 0
            r8 = 1
            if (r1 != 0) goto L_0x02b2
            android.animation.PropertyValuesHolder r1 = a((android.content.res.TypedArray) r3, (int) r4, (int) r5, (int) r8, (java.lang.String) r7)
        L_0x02b2:
            if (r1 == 0) goto L_0x02bf
            if (r6 != 0) goto L_0x02bc
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r6 = r4
        L_0x02bc:
            r6.add(r1)
        L_0x02bf:
            r3.recycle()
            goto L_0x02c9
        L_0x02c3:
            r16 = r1
            r18 = r5
            r19 = r12
        L_0x02c9:
            r25.next()
            r3 = 1
            r4 = 2
            r8 = r23
            r9 = r24
            r1 = r16
            r5 = r18
            r12 = r19
            goto L_0x00a8
        L_0x02da:
            r19 = r12
            if (r6 == 0) goto L_0x02f2
            int r1 = r6.size()
            android.animation.PropertyValuesHolder[] r2 = new android.animation.PropertyValuesHolder[r1]
            r3 = 0
        L_0x02e5:
            if (r3 >= r1) goto L_0x02f3
            java.lang.Object r4 = r6.get(r3)
            android.animation.PropertyValuesHolder r4 = (android.animation.PropertyValuesHolder) r4
            r2[r3] = r4
            int r3 = r3 + 1
            goto L_0x02e5
        L_0x02f2:
            r2 = 0
        L_0x02f3:
            if (r2 == 0) goto L_0x02ff
            boolean r1 = r0 instanceof android.animation.ValueAnimator
            if (r1 == 0) goto L_0x02ff
            r1 = r0
            android.animation.ValueAnimator r1 = (android.animation.ValueAnimator) r1
            r1.setValues(r2)
        L_0x02ff:
            r14 = 1
        L_0x0300:
            if (r11 == 0) goto L_0x030e
            if (r14 != 0) goto L_0x030e
            if (r13 != 0) goto L_0x030b
            java.util.ArrayList r13 = new java.util.ArrayList
            r13.<init>()
        L_0x030b:
            r13.add(r0)
        L_0x030e:
            r8 = r23
            r9 = r24
            r12 = r19
            goto L_0x000f
        L_0x0316:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Unknown animator name: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.String r2 = r25.getName()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x032d:
            if (r11 == 0) goto L_0x0357
            if (r13 == 0) goto L_0x0357
            int r1 = r13.size()
            android.animation.Animator[] r1 = new android.animation.Animator[r1]
            java.util.Iterator r2 = r13.iterator()
            r3 = 0
        L_0x033c:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L_0x034e
            java.lang.Object r4 = r2.next()
            android.animation.Animator r4 = (android.animation.Animator) r4
            int r5 = r3 + 1
            r1[r3] = r4
            r3 = r5
            goto L_0x033c
        L_0x034e:
            if (r28 != 0) goto L_0x0354
            r11.playTogether(r1)
            goto L_0x0357
        L_0x0354:
            r11.playSequentially(r1)
        L_0x0357:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.r.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    public static ActionMode.Callback a(TextView textView, ActionMode.Callback callback) {
        int i2 = Build.VERSION.SDK_INT;
        return (i2 < 26 || i2 > 27 || (callback instanceof d.i.j.d)) ? callback : new d.i.j.d(callback, textView);
    }

    public static int a(d.g.a.h.d dVar) {
        float f2;
        float f3;
        if (dVar.e() == d.a.MATCH_CONSTRAINT) {
            if (dVar.H == 0) {
                f3 = ((float) dVar.d()) * dVar.G;
            } else {
                f3 = ((float) dVar.d()) / dVar.G;
            }
            int i2 = (int) f3;
            dVar.f(i2);
            return i2;
        } else if (dVar.h() != d.a.MATCH_CONSTRAINT) {
            return -1;
        } else {
            if (dVar.H == 1) {
                f2 = ((float) dVar.i()) * dVar.G;
            } else {
                f2 = ((float) dVar.i()) / dVar.G;
            }
            int i3 = (int) f2;
            dVar.e(i3);
            return i3;
        }
    }

    public static void a(TextView textView, int i2) {
        int i3;
        a(i2);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i2);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (textView.getIncludeFontPadding()) {
            i3 = fontMetricsInt.top;
        } else {
            i3 = fontMetricsInt.ascent;
        }
        if (i2 > Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), i2 + i3, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static Keyframe a(Keyframe keyframe, float f2) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f2);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f2);
        }
        return Keyframe.ofObject(f2);
    }

    public static a.C0026a a(TextView textView) {
        int i2;
        int i3;
        TextDirectionHeuristic textDirectionHeuristic;
        if (Build.VERSION.SDK_INT >= 28) {
            return new a.C0026a(textView.getTextMetricsParams());
        }
        TextPaint textPaint = new TextPaint(textView.getPaint());
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 23) {
            i3 = 1;
            i2 = 1;
        } else {
            i3 = 0;
            i2 = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        if (Build.VERSION.SDK_INT >= 23) {
            i3 = textView.getBreakStrategy();
            i2 = textView.getHyphenationFrequency();
        }
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (Build.VERSION.SDK_INT < 28 || (textView.getInputType() & 15) != 3) {
            if (textView.getLayoutDirection() == 1) {
                z = true;
            }
            switch (textView.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (!z) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    } else {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    }
            }
        } else {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            if (directionality == 1 || directionality == 2) {
                textDirectionHeuristic = TextDirectionHeuristics.RTL;
            } else {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            }
        }
        return new a.C0026a(textPaint, textDirectionHeuristic, i3, i2);
    }

    public static void a(TextView textView, d.i.g.a aVar) {
        if (Build.VERSION.SDK_INT < 29) {
            a.C0026a a2 = a(textView);
            if (aVar == null) {
                throw null;
            } else if (a2.a((a.C0026a) null)) {
                textView.setText(aVar);
            } else {
                throw new IllegalArgumentException("Given text can not be applied to TextView.");
            }
        } else if (aVar != null) {
            textView.setText((CharSequence) null);
        } else {
            throw null;
        }
    }

    public static ValueAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f2, XmlPullParser xmlPullParser) {
        TypedArray typedArray;
        ValueAnimator valueAnimator2;
        TypedArray typedArray2;
        ValueAnimator valueAnimator3;
        PropertyValuesHolder propertyValuesHolder;
        Resources resources2 = resources;
        Resources.Theme theme2 = theme;
        AttributeSet attributeSet2 = attributeSet;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        TypedArray a2 = a(resources2, theme2, attributeSet2, d.y.a.a.a.f990g);
        TypedArray a3 = a(resources2, theme2, attributeSet2, d.y.a.a.a.f994k);
        ValueAnimator valueAnimator4 = valueAnimator == null ? new ValueAnimator() : valueAnimator;
        long b2 = (long) b(a2, xmlPullParser2, "duration", 1, 300);
        int i2 = 0;
        long b3 = (long) b(a2, xmlPullParser2, "startOffset", 2, 0);
        int b4 = b(a2, xmlPullParser2, "valueType", 7, 4);
        if (a(xmlPullParser2, "valueFrom") && a(xmlPullParser2, "valueTo")) {
            if (b4 == 4) {
                TypedValue peekValue = a2.peekValue(5);
                boolean z = peekValue != null;
                int i3 = z ? peekValue.type : 0;
                TypedValue peekValue2 = a2.peekValue(6);
                boolean z2 = peekValue2 != null;
                b4 = ((!z || !b(i3)) && (!z2 || !b(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder a4 = a(a2, b4, 5, 6, "");
            if (a4 != null) {
                valueAnimator4.setValues(new PropertyValuesHolder[]{a4});
            }
        }
        valueAnimator4.setDuration(b2);
        valueAnimator4.setStartDelay(b3);
        valueAnimator4.setRepeatCount(b(a2, xmlPullParser2, "repeatCount", 3, 0));
        valueAnimator4.setRepeatMode(b(a2, xmlPullParser2, "repeatMode", 4, 1));
        if (a3 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator4;
            String a5 = a(a3, xmlPullParser2, "pathData", 1);
            if (a5 != null) {
                String a6 = a(a3, xmlPullParser2, "propertyXName", 2);
                String a7 = a(a3, xmlPullParser2, "propertyYName", 3);
                if (a6 == null && a7 == null) {
                    throw new InflateException(a3.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path c2 = c(a5);
                float f3 = 0.5f * f2;
                PathMeasure pathMeasure = new PathMeasure(c2, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f4 = 0.0f;
                while (true) {
                    f4 += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f4));
                    if (!pathMeasure.nextContour()) {
                        break;
                    }
                }
                PathMeasure pathMeasure2 = new PathMeasure(c2, false);
                int min = Math.min(100, ((int) (f4 / f3)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f5 = f4 / ((float) (min - 1));
                valueAnimator2 = valueAnimator4;
                typedArray = a2;
                int i4 = 0;
                float f6 = 0.0f;
                while (true) {
                    propertyValuesHolder = null;
                    if (i2 >= min) {
                        break;
                    }
                    int i5 = min;
                    pathMeasure2.getPosTan(f6 - ((Float) arrayList.get(i4)).floatValue(), fArr3, (float[]) null);
                    fArr[i2] = fArr3[0];
                    fArr2[i2] = fArr3[1];
                    f6 += f5;
                    int i6 = i4 + 1;
                    if (i6 < arrayList.size() && f6 > ((Float) arrayList.get(i6)).floatValue()) {
                        pathMeasure2.nextContour();
                        i4 = i6;
                    }
                    i2++;
                    min = i5;
                }
                PropertyValuesHolder ofFloat = a6 != null ? PropertyValuesHolder.ofFloat(a6, fArr) : null;
                if (a7 != null) {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(a7, fArr2);
                }
                if (ofFloat == null) {
                    i2 = 0;
                    objectAnimator.setValues(new PropertyValuesHolder[]{propertyValuesHolder});
                } else {
                    i2 = 0;
                    if (propertyValuesHolder == null) {
                        objectAnimator.setValues(new PropertyValuesHolder[]{ofFloat});
                    } else {
                        objectAnimator.setValues(new PropertyValuesHolder[]{ofFloat, propertyValuesHolder});
                    }
                }
            } else {
                valueAnimator2 = valueAnimator4;
                typedArray = a2;
                objectAnimator.setPropertyName(a(a3, xmlPullParser2, "propertyName", 0));
            }
        } else {
            valueAnimator2 = valueAnimator4;
            typedArray = a2;
        }
        if (!a(xmlPullParser2, "interpolator")) {
            typedArray2 = typedArray;
        } else {
            typedArray2 = typedArray;
            i2 = typedArray2.getResourceId(i2, i2);
        }
        if (i2 > 0) {
            valueAnimator3 = valueAnimator2;
            valueAnimator3.setInterpolator(AnimationUtils.loadInterpolator(context, i2));
        } else {
            valueAnimator3 = valueAnimator2;
        }
        typedArray2.recycle();
        if (a3 != null) {
            a3.recycle();
        }
        return valueAnimator3;
    }
}
