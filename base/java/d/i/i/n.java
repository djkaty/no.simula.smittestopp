package d.i.i;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.core.R$id;
import d.i.i.a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class n {
    public static WeakHashMap<View, s> a = null;
    public static Field b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f606c = false;

    /* renamed from: d  reason: collision with root package name */
    public static ThreadLocal<Rect> f607d;

    public static class a implements View.OnApplyWindowInsetsListener {
        public final /* synthetic */ k a;

        public a(k kVar) {
            this.a = kVar;
        }

        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            return (WindowInsets) this.a.a(view, w.a(windowInsets)).a;
        }
    }

    public interface c {
        boolean a(View view, KeyEvent keyEvent);
    }

    static {
        new AtomicInteger(1);
        new WeakHashMap();
    }

    public static void A(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static Rect a() {
        if (f607d == null) {
            f607d = new ThreadLocal<>();
        }
        Rect rect = f607d.get();
        if (rect == null) {
            rect = new Rect();
            f607d.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static View.AccessibilityDelegate b(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (f606c) {
            return null;
        }
        if (b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f606c = true;
                return null;
            }
        }
        try {
            Object obj = b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f606c = true;
            return null;
        }
    }

    public static ColorStateList c(View view) {
        return view.getBackgroundTintList();
    }

    public static void d(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i2);
            return;
        }
        Rect a2 = a();
        boolean z = false;
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            a2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !a2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        b(view, i2);
        if (z && a2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(a2);
        }
    }

    public static void e(View view, int i2) {
        view.setImportantForAccessibility(i2);
    }

    public static float f(View view) {
        return view.getElevation();
    }

    public static boolean g(View view) {
        return view.getFitsSystemWindows();
    }

    @SuppressLint({"InlinedApi"})
    public static int h(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int i(View view) {
        return view.getLayoutDirection();
    }

    public static int j(View view) {
        return view.getMinimumHeight();
    }

    public static int k(View view) {
        return view.getMinimumWidth();
    }

    public static int l(View view) {
        return view.getPaddingEnd();
    }

    public static int m(View view) {
        return view.getPaddingStart();
    }

    public static String n(View view) {
        return view.getTransitionName();
    }

    public static int o(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static float p(View view) {
        return view.getZ();
    }

    public static boolean q(View view) {
        return view.hasOnClickListeners();
    }

    public static boolean r(View view) {
        return view.hasOverlappingRendering();
    }

    public static boolean s(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean t(View view) {
        return view.isLaidOut();
    }

    public static boolean u(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static boolean v(View view) {
        return view.isPaddingRelative();
    }

    public static boolean w(View view) {
        Boolean bool = (Boolean) new o(R$id.tag_screen_reader_focusable, Boolean.class, 28).b(view);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static void x(View view) {
        view.postInvalidateOnAnimation();
    }

    public static void y(View view) {
        view.requestApplyInsets();
    }

    public static void z(View view) {
        view.stopNestedScroll();
    }

    public static void c(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i2);
            return;
        }
        Rect a2 = a();
        boolean z = false;
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            a2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !a2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        a(view, i2);
        if (z && a2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(a2);
        }
    }

    public static Display e(View view) {
        return view.getDisplay();
    }

    public static void f(View view, int i2) {
        if (view instanceof d) {
            ((d) view).a(i2);
        } else if (i2 == 0) {
            view.stopNestedScroll();
        }
    }

    public static abstract class b<T> {
        public final int a;
        public final Class<T> b;

        /* renamed from: c  reason: collision with root package name */
        public final int f608c;

        public b(int i2, Class<T> cls, int i3) {
            this.a = i2;
            this.b = cls;
            this.f608c = i3;
        }

        public abstract T a(View view);

        public T b(View view) {
            if (Build.VERSION.SDK_INT >= this.f608c) {
                return a(view);
            }
            T tag = view.getTag(this.a);
            if (this.b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        public b(int i2, Class<T> cls, int i3, int i4) {
            this.a = i2;
            this.b = cls;
            this.f608c = i4;
        }
    }

    public static class d {

        /* renamed from: d  reason: collision with root package name */
        public static final ArrayList<WeakReference<View>> f609d = new ArrayList<>();
        public WeakHashMap<View, Boolean> a = null;
        public SparseArray<WeakReference<View>> b = null;

        /* renamed from: c  reason: collision with root package name */
        public WeakReference<KeyEvent> f610c = null;

        public static d a(View view) {
            d dVar = (d) view.getTag(R$id.tag_unhandled_key_event_manager);
            if (dVar != null) {
                return dVar;
            }
            d dVar2 = new d();
            view.setTag(R$id.tag_unhandled_key_event_manager, dVar2);
            return dVar2;
        }

        public final boolean b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((c) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        public final View a(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View a2 = a(viewGroup.getChildAt(childCount), keyEvent);
                        if (a2 != null) {
                            return a2;
                        }
                    }
                }
                if (b(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        public final void a() {
            WeakHashMap<View, Boolean> weakHashMap = this.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (!f609d.isEmpty()) {
                synchronized (f609d) {
                    if (this.a == null) {
                        this.a = new WeakHashMap<>();
                    }
                    for (int size = f609d.size() - 1; size >= 0; size--) {
                        View view = (View) f609d.get(size).get();
                        if (view == null) {
                            f609d.remove(size);
                        } else {
                            this.a.put(view, Boolean.TRUE);
                            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                this.a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
    }

    public static w a(View view, w wVar) {
        WindowInsets windowInsets = (WindowInsets) wVar.a;
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (!onApplyWindowInsets.equals(windowInsets)) {
            windowInsets = new WindowInsets(onApplyWindowInsets);
        }
        return w.a(windowInsets);
    }

    public static void a(View view, a aVar) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (aVar == null && (b(view) instanceof a.C0027a)) {
            aVar = new a();
        }
        if (aVar == null) {
            accessibilityDelegate = null;
        } else {
            accessibilityDelegate = aVar.b;
        }
        view.setAccessibilityDelegate(accessibilityDelegate);
    }

    public static void b(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                A((View) parent);
            }
        }
    }

    public static void a(View view, boolean z) {
        view.setHasTransientState(z);
    }

    public static Rect d(View view) {
        return view.getClipBounds();
    }

    public static void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void a(View view, Runnable runnable, long j2) {
        view.postOnAnimationDelayed(runnable, j2);
    }

    public static s a(View view) {
        if (a == null) {
            a = new WeakHashMap<>();
        }
        s sVar = a.get(view);
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s(view);
        a.put(view, sVar2);
        return sVar2;
    }

    public static boolean b(View view, KeyEvent keyEvent) {
        int indexOfKey;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        d a2 = d.a(view);
        WeakReference<KeyEvent> weakReference = a2.f610c;
        if (weakReference != null && weakReference.get() == keyEvent) {
            return false;
        }
        a2.f610c = new WeakReference<>(keyEvent);
        WeakReference weakReference2 = null;
        if (a2.b == null) {
            a2.b = new SparseArray<>();
        }
        SparseArray<WeakReference<View>> sparseArray = a2.b;
        if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReference2 = sparseArray.valueAt(indexOfKey);
            sparseArray.removeAt(indexOfKey);
        }
        if (weakReference2 == null) {
            weakReference2 = sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference2 == null) {
            return false;
        }
        View view2 = (View) weakReference2.get();
        if (view2 != null && s(view2)) {
            a2.b(view2, keyEvent);
        }
        return true;
    }

    public static void a(View view, float f2) {
        view.setElevation(f2);
    }

    public static void a(View view, String str) {
        view.setTransitionName(str);
    }

    public static void a(View view, k kVar) {
        if (kVar == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) null);
        } else {
            view.setOnApplyWindowInsetsListener(new a(kVar));
        }
    }

    public static void a(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void a(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background != null && z) {
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }
    }

    public static void a(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background != null && z) {
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }
    }

    public static void a(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                A((View) parent);
            }
        }
    }

    public static void a(View view, Rect rect) {
        view.setClipBounds(rect);
    }

    public static void a(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    public static void a(View view, m mVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (mVar != null ? mVar.a : null));
        }
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        d a2 = d.a(view);
        if (a2 != null) {
            if (keyEvent.getAction() == 0) {
                a2.a();
            }
            View a3 = a2.a(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (a3 != null && !KeyEvent.isModifierKey(keyCode)) {
                    if (a2.b == null) {
                        a2.b = new SparseArray<>();
                    }
                    a2.b.put(keyCode, new WeakReference(a3));
                }
            }
            if (a3 != null) {
                return true;
            }
            return false;
        }
        throw null;
    }
}
