package d.b.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import com.microsoft.azure.storage.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

public class a0 {

    /* renamed from: k  reason: collision with root package name */
    public static final RectF f331k = new RectF();

    /* renamed from: l  reason: collision with root package name */
    public static ConcurrentHashMap<String, Method> f332l = new ConcurrentHashMap<>();
    public static ConcurrentHashMap<String, Field> m = new ConcurrentHashMap<>();
    public int a = 0;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public float f333c = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    public float f334d = -1.0f;

    /* renamed from: e  reason: collision with root package name */
    public float f335e = -1.0f;

    /* renamed from: f  reason: collision with root package name */
    public int[] f336f = new int[0];

    /* renamed from: g  reason: collision with root package name */
    public boolean f337g = false;

    /* renamed from: h  reason: collision with root package name */
    public TextPaint f338h;

    /* renamed from: i  reason: collision with root package name */
    public final TextView f339i;

    /* renamed from: j  reason: collision with root package name */
    public final Context f340j;

    public a0(TextView textView) {
        this.f339i = textView;
        this.f340j = textView.getContext();
    }

    public final int[] a(int[] iArr) {
        if (r0 == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (r0 == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    public final boolean b() {
        if (!d() || this.a != 1) {
            this.b = false;
        } else {
            if (!this.f337g || this.f336f.length == 0) {
                int floor = ((int) Math.floor((double) ((this.f335e - this.f334d) / this.f333c))) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round((((float) i2) * this.f333c) + this.f334d);
                }
                this.f336f = a(iArr);
            }
            this.b = true;
        }
        return this.b;
    }

    public final boolean c() {
        int length = this.f336f.length;
        boolean z = length > 0;
        this.f337g = z;
        if (z) {
            this.a = 1;
            int[] iArr = this.f336f;
            this.f334d = (float) iArr[0];
            this.f335e = (float) iArr[length - 1];
            this.f333c = -1.0f;
        }
        return this.f337g;
    }

    public final boolean d() {
        return !(this.f339i instanceof k);
    }

    public final void a(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        } else if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        } else if (f4 > 0.0f) {
            this.a = 1;
            this.f334d = f2;
            this.f335e = f3;
            this.f333c = f4;
            this.f337g = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
    }

    public void a(int i2, float f2) {
        Resources resources;
        Context context = this.f340j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        float applyDimension = TypedValue.applyDimension(i2, f2, resources.getDisplayMetrics());
        if (applyDimension != this.f339i.getPaint().getTextSize()) {
            this.f339i.getPaint().setTextSize(applyDimension);
            boolean isInLayout = this.f339i.isInLayout();
            if (this.f339i.getLayout() != null) {
                this.b = false;
                try {
                    Method a2 = a("nullLayouts");
                    if (a2 != null) {
                        a2.invoke(this.f339i, new Object[0]);
                    }
                } catch (Exception e2) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (!isInLayout) {
                    this.f339i.requestLayout();
                } else {
                    this.f339i.forceLayout();
                }
                this.f339i.invalidate();
            }
        }
    }

    public final int a(RectF rectF) {
        StaticLayout staticLayout;
        int i2;
        TextDirectionHeuristic textDirectionHeuristic;
        CharSequence transformation;
        RectF rectF2 = rectF;
        int length = this.f336f.length;
        if (length != 0) {
            int i3 = length - 1;
            int i4 = 0;
            int i5 = 1;
            int i6 = 0;
            while (i5 <= i3) {
                int i7 = (i5 + i3) / 2;
                int i8 = this.f336f[i7];
                CharSequence text = this.f339i.getText();
                TransformationMethod transformationMethod = this.f339i.getTransformationMethod();
                if (!(transformationMethod == null || (transformation = transformationMethod.getTransformation(text, this.f339i)) == null)) {
                    text = transformation;
                }
                int maxLines = this.f339i.getMaxLines();
                TextPaint textPaint = this.f338h;
                if (textPaint == null) {
                    this.f338h = new TextPaint();
                } else {
                    textPaint.reset();
                }
                this.f338h.set(this.f339i.getPaint());
                this.f338h.setTextSize((float) i8);
                Layout.Alignment alignment = (Layout.Alignment) a((Object) this.f339i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
                int round = Math.round(rectF2.right);
                if (Build.VERSION.SDK_INT >= 23) {
                    StaticLayout.Builder obtain = StaticLayout.Builder.obtain(text, i4, text.length(), this.f338h, round);
                    obtain.setAlignment(alignment).setLineSpacing(this.f339i.getLineSpacingExtra(), this.f339i.getLineSpacingMultiplier()).setIncludePad(this.f339i.getIncludeFontPadding()).setBreakStrategy(this.f339i.getBreakStrategy()).setHyphenationFrequency(this.f339i.getHyphenationFrequency()).setMaxLines(maxLines == -1 ? Integer.MAX_VALUE : maxLines);
                    try {
                        if (Build.VERSION.SDK_INT >= 29) {
                            textDirectionHeuristic = this.f339i.getTextDirectionHeuristic();
                        } else {
                            textDirectionHeuristic = (TextDirectionHeuristic) a((Object) this.f339i, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
                        }
                        obtain.setTextDirection(textDirectionHeuristic);
                    } catch (ClassCastException unused) {
                        Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
                    }
                    staticLayout = obtain.build();
                    i2 = -1;
                } else {
                    i2 = -1;
                    staticLayout = new StaticLayout(text, this.f338h, round, alignment, this.f339i.getLineSpacingMultiplier(), this.f339i.getLineSpacingExtra(), this.f339i.getIncludeFontPadding());
                }
                if ((maxLines == i2 || (staticLayout.getLineCount() <= maxLines && staticLayout.getLineEnd(staticLayout.getLineCount() - 1) == text.length())) && ((float) staticLayout.getHeight()) <= rectF2.bottom) {
                    i4 = 0;
                    int i9 = i7 + 1;
                    i6 = i5;
                    i5 = i9;
                } else {
                    i6 = i7 - 1;
                    i3 = i6;
                    i4 = 0;
                }
            }
            return this.f336f[i6];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    public static <T> T a(Object obj, String str, T t) {
        try {
            return a(str).invoke(obj, new Object[0]);
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    public static Method a(String str) {
        try {
            Method method = f332l.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                f332l.put(str, method);
            }
            return method;
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    public void a() {
        boolean z;
        int i2;
        if (d() && this.a != 0) {
            if (this.b) {
                if (this.f339i.getMeasuredHeight() > 0 && this.f339i.getMeasuredWidth() > 0) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        z = this.f339i.isHorizontallyScrollable();
                    } else {
                        z = ((Boolean) a((Object) this.f339i, "getHorizontallyScrolling", false)).booleanValue();
                    }
                    if (z) {
                        i2 = Constants.MB;
                    } else {
                        i2 = (this.f339i.getMeasuredWidth() - this.f339i.getTotalPaddingLeft()) - this.f339i.getTotalPaddingRight();
                    }
                    int height = (this.f339i.getHeight() - this.f339i.getCompoundPaddingBottom()) - this.f339i.getCompoundPaddingTop();
                    if (i2 > 0 && height > 0) {
                        synchronized (f331k) {
                            f331k.setEmpty();
                            f331k.right = (float) i2;
                            f331k.bottom = (float) height;
                            float a2 = (float) a(f331k);
                            if (a2 != this.f339i.getTextSize()) {
                                a(0, a2);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.b = true;
        }
    }
}
