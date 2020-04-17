package d.b.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import d.b.a.u;
import d.b.d.a;
import d.b.d.i.g;
import d.b.d.i.m;
import d.b.e.c0;
import d.b.e.d1;
import d.b.e.x0;
import d.i.i.n;
import d.i.i.s;
import d.i.i.t;
import d.i.i.u;
import java.lang.Thread;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

public class k extends j implements g.a, LayoutInflater.Factory2 {
    public static final boolean A0;
    public static final Map<Class<?>, Integer> w0 = new d.f.a();
    public static final boolean x0 = false;
    public static final int[] y0 = {16842836};
    public static boolean z0 = true;
    public final Context A;
    public Window B;
    public e C;
    public final i D;
    public a E;
    public MenuInflater F;
    public CharSequence G;
    public c0 H;
    public c I;
    public C0008k J;
    public d.b.d.a K;
    public ActionBarContextView L;
    public PopupWindow M;
    public Runnable N;
    public s O = null;
    public boolean P = true;
    public boolean Q;
    public ViewGroup R;
    public TextView S;
    public View T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public j[] c0;
    public j d0;
    public boolean e0;
    public boolean f0;
    public boolean g0;
    public boolean h0;
    public boolean i0;
    public int j0 = -100;
    public int k0;
    public boolean l0;
    public boolean m0;
    public g n0;
    public g o0;
    public boolean p0;
    public int q0;
    public final Runnable r0 = new b();
    public boolean s0;
    public Rect t0;
    public Rect u0;
    public AppCompatViewInflater v0;
    public final Object z;

    public static class a implements Thread.UncaughtExceptionHandler {
        public final /* synthetic */ Thread.UncaughtExceptionHandler a;

        public a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = uncaughtExceptionHandler;
        }

        public void uncaughtException(Thread thread, Throwable th) {
            String message;
            boolean z = false;
            if ((th instanceof Resources.NotFoundException) && (message = th.getMessage()) != null && (message.contains("drawable") || message.contains("Drawable"))) {
                z = true;
            }
            if (z) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.a.uncaughtException(thread, notFoundException);
                return;
            }
            this.a.uncaughtException(thread, th);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            k kVar = k.this;
            if ((kVar.q0 & 1) != 0) {
                kVar.c(0);
            }
            k kVar2 = k.this;
            if ((kVar2.q0 & 4096) != 0) {
                kVar2.c(108);
            }
            k kVar3 = k.this;
            kVar3.p0 = false;
            kVar3.q0 = 0;
        }
    }

    public class d implements a.C0012a {
        public a.C0012a a;

        public class a extends u {
            public a() {
            }

            public void a(View view) {
                k.this.L.setVisibility(8);
                k kVar = k.this;
                PopupWindow popupWindow = kVar.M;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (kVar.L.getParent() instanceof View) {
                    n.y((View) k.this.L.getParent());
                }
                k.this.L.removeAllViews();
                k.this.O.a((t) null);
                k.this.O = null;
            }
        }

        public d(a.C0012a aVar) {
            this.a = aVar;
        }

        public boolean a(d.b.d.a aVar, Menu menu) {
            return this.a.a(aVar, menu);
        }

        public boolean b(d.b.d.a aVar, Menu menu) {
            return this.a.b(aVar, menu);
        }

        public boolean a(d.b.d.a aVar, MenuItem menuItem) {
            return this.a.a(aVar, menuItem);
        }

        public void a(d.b.d.a aVar) {
            this.a.a(aVar);
            k kVar = k.this;
            if (kVar.M != null) {
                kVar.B.getDecorView().removeCallbacks(k.this.N);
            }
            k kVar2 = k.this;
            if (kVar2.L != null) {
                kVar2.e();
                k kVar3 = k.this;
                s a2 = n.a(kVar3.L);
                a2.a(0.0f);
                kVar3.O = a2;
                s sVar = k.this.O;
                a aVar2 = new a();
                View view = (View) sVar.a.get();
                if (view != null) {
                    sVar.a(view, aVar2);
                }
            }
            k kVar4 = k.this;
            i iVar = kVar4.D;
            if (iVar != null) {
                iVar.b(kVar4.K);
            }
            k.this.K = null;
        }
    }

    public class f extends g {

        /* renamed from: c  reason: collision with root package name */
        public final PowerManager f192c;

        public f(Context context) {
            super();
            this.f192c = (PowerManager) context.getSystemService("power");
        }

        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        public int c() {
            return this.f192c.isPowerSaveMode() ? 2 : 1;
        }

        public void d() {
            k.this.d();
        }
    }

    public abstract class g {
        public BroadcastReceiver a;

        public class a extends BroadcastReceiver {
            public a() {
            }

            public void onReceive(Context context, Intent intent) {
                g.this.d();
            }
        }

        public g() {
        }

        public void a() {
            BroadcastReceiver broadcastReceiver = this.a;
            if (broadcastReceiver != null) {
                try {
                    k.this.A.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public void e() {
            a();
            IntentFilter b2 = b();
            if (b2 != null && b2.countActions() != 0) {
                if (this.a == null) {
                    this.a = new a();
                }
                k.this.A.registerReceiver(this.a, b2);
            }
        }
    }

    public class h extends g {

        /* renamed from: c  reason: collision with root package name */
        public final u f194c;

        public h(u uVar) {
            super();
            this.f194c = uVar;
        }

        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        public int c() {
            boolean z;
            long j2;
            u uVar = this.f194c;
            u.a aVar = uVar.f225c;
            boolean z2 = false;
            if (aVar.b > System.currentTimeMillis()) {
                z = aVar.a;
            } else {
                Location location = null;
                Location a = r.a(uVar.a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? uVar.a("network") : null;
                if (r.a(uVar.a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    location = uVar.a("gps");
                }
                if (location == null || a == null ? location != null : location.getTime() > a.getTime()) {
                    a = location;
                }
                if (a != null) {
                    u.a aVar2 = uVar.f225c;
                    long currentTimeMillis = System.currentTimeMillis();
                    if (t.f222d == null) {
                        t.f222d = new t();
                    }
                    t tVar = t.f222d;
                    t tVar2 = tVar;
                    tVar2.a(currentTimeMillis - 86400000, a.getLatitude(), a.getLongitude());
                    tVar2.a(currentTimeMillis, a.getLatitude(), a.getLongitude());
                    if (tVar.f223c == 1) {
                        z2 = true;
                    }
                    long j3 = tVar.b;
                    long j4 = tVar.a;
                    long j5 = j3;
                    tVar.a(currentTimeMillis + 86400000, a.getLatitude(), a.getLongitude());
                    long j6 = tVar.b;
                    if (j5 == -1 || j4 == -1) {
                        j2 = 43200000 + currentTimeMillis;
                    } else {
                        j2 = (currentTimeMillis > j4 ? j6 + 0 : currentTimeMillis > j5 ? j4 + 0 : j5 + 0) + 60000;
                    }
                    aVar2.a = z2;
                    aVar2.b = j2;
                    z = aVar.a;
                } else {
                    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                    int i2 = Calendar.getInstance().get(11);
                    if (i2 < 6 || i2 >= 22) {
                        z2 = true;
                    }
                    z = z2;
                }
            }
            if (z) {
                return 2;
            }
            return 1;
        }

        public void d() {
            k.this.d();
        }
    }

    public class i extends ContentFrameLayout {
        public i(Context context) {
            super(context);
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return k.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    k kVar = k.this;
                    kVar.a(kVar.d(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        public void setBackgroundResource(int i2) {
            setBackgroundDrawable(d.b.b.a.a.c(getContext(), i2));
        }
    }

    public static final class j {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f196c;

        /* renamed from: d  reason: collision with root package name */
        public int f197d;

        /* renamed from: e  reason: collision with root package name */
        public int f198e;

        /* renamed from: f  reason: collision with root package name */
        public int f199f;

        /* renamed from: g  reason: collision with root package name */
        public ViewGroup f200g;

        /* renamed from: h  reason: collision with root package name */
        public View f201h;

        /* renamed from: i  reason: collision with root package name */
        public View f202i;

        /* renamed from: j  reason: collision with root package name */
        public d.b.d.i.g f203j;

        /* renamed from: k  reason: collision with root package name */
        public d.b.d.i.e f204k;

        /* renamed from: l  reason: collision with root package name */
        public Context f205l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q = false;
        public boolean r;
        public Bundle s;

        public j(int i2) {
            this.a = i2;
        }

        public void a(d.b.d.i.g gVar) {
            d.b.d.i.e eVar;
            d.b.d.i.g gVar2 = this.f203j;
            if (gVar != gVar2) {
                if (gVar2 != null) {
                    gVar2.a((m) this.f204k);
                }
                this.f203j = gVar;
                if (gVar != null && (eVar = this.f204k) != null) {
                    gVar.a((m) eVar, gVar.a);
                }
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        boolean z2 = false;
        if (i2 <= 25) {
            z2 = true;
        }
        A0 = z2;
        if (x0 && !z0) {
            Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    public k(Context context, Window window, i iVar, Object obj) {
        Integer num;
        h hVar = null;
        this.A = context;
        this.D = iVar;
        this.z = obj;
        if (this.j0 == -100 && (obj instanceof Dialog)) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof h)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        }
                        context = ((ContextWrapper) context).getBaseContext();
                    } else {
                        hVar = (h) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (hVar != null) {
                this.j0 = ((k) hVar.j()).j0;
            }
        }
        if (this.j0 == -100 && (num = w0.get(this.z.getClass())) != null) {
            this.j0 = num.intValue();
            w0.remove(this.z.getClass());
        }
        if (window != null) {
            a(window);
        }
        d.b.e.j.b();
    }

    public void a(Bundle bundle) {
        this.f0 = true;
        a(false);
        g();
        Object obj = this.z;
        if (obj instanceof Activity) {
            String str = null;
            try {
                Activity activity = (Activity) obj;
                str = r.b((Context) activity, activity.getComponentName());
            } catch (PackageManager.NameNotFoundException e2) {
                throw new IllegalArgumentException(e2);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                a aVar = this.E;
                if (aVar == null) {
                    this.s0 = true;
                } else {
                    aVar.b(true);
                }
            }
        }
        this.g0 = true;
    }

    public void b() {
        k();
        a aVar = this.E;
        if (aVar == null || !aVar.e()) {
            e(0);
        }
    }

    public void c() {
        this.h0 = false;
        j.b((j) this);
        k();
        a aVar = this.E;
        if (aVar != null) {
            aVar.d(false);
        }
        if (this.z instanceof Dialog) {
            g gVar = this.n0;
            if (gVar != null) {
                gVar.a();
            }
            g gVar2 = this.o0;
            if (gVar2 != null) {
                gVar2.a();
            }
        }
    }

    public j d(int i2) {
        j[] jVarArr = this.c0;
        if (jVarArr == null || jVarArr.length <= i2) {
            j[] jVarArr2 = new j[(i2 + 1)];
            if (jVarArr != null) {
                System.arraycopy(jVarArr, 0, jVarArr2, 0, jVarArr.length);
            }
            this.c0 = jVarArr2;
            jVarArr = jVarArr2;
        }
        j jVar = jVarArr[i2];
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(i2);
        jVarArr[i2] = jVar2;
        return jVar2;
    }

    public void e() {
        s sVar = this.O;
        if (sVar != null) {
            sVar.a();
        }
    }

    public final void f() {
        ViewGroup viewGroup;
        CharSequence charSequence;
        Context context;
        if (!this.Q) {
            TypedArray obtainStyledAttributes = this.A.obtainStyledAttributes(R$styleable.AppCompatTheme);
            if (obtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
                if (obtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowNoTitle, false)) {
                    a(1);
                } else if (obtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBar, false)) {
                    a(108);
                }
                if (obtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                    a(109);
                }
                if (obtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                    a(10);
                }
                this.Z = obtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_android_windowIsFloating, false);
                obtainStyledAttributes.recycle();
                g();
                this.B.getDecorView();
                LayoutInflater from = LayoutInflater.from(this.A);
                if (this.a0) {
                    if (this.Y) {
                        viewGroup = (ViewGroup) from.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
                    } else {
                        viewGroup = (ViewGroup) from.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
                    }
                    n.a((View) viewGroup, (d.i.i.k) new l(this));
                } else if (this.Z) {
                    viewGroup = (ViewGroup) from.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
                    this.X = false;
                    this.W = false;
                } else if (this.W) {
                    TypedValue typedValue = new TypedValue();
                    this.A.getTheme().resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new d.b.d.c(this.A, typedValue.resourceId);
                    } else {
                        context = this.A;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
                    c0 c0Var = (c0) viewGroup.findViewById(R$id.decor_content_parent);
                    this.H = c0Var;
                    c0Var.setWindowCallback(j());
                    if (this.X) {
                        this.H.a(109);
                    }
                    if (this.U) {
                        this.H.a(2);
                    }
                    if (this.V) {
                        this.H.a(5);
                    }
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    if (this.H == null) {
                        this.S = (TextView) viewGroup.findViewById(R$id.title);
                    }
                    d1.b(viewGroup);
                    ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R$id.action_bar_activity_content);
                    ViewGroup viewGroup2 = (ViewGroup) this.B.findViewById(16908290);
                    if (viewGroup2 != null) {
                        while (viewGroup2.getChildCount() > 0) {
                            View childAt = viewGroup2.getChildAt(0);
                            viewGroup2.removeViewAt(0);
                            contentFrameLayout.addView(childAt);
                        }
                        viewGroup2.setId(-1);
                        contentFrameLayout.setId(16908290);
                        if (viewGroup2 instanceof FrameLayout) {
                            ((FrameLayout) viewGroup2).setForeground((Drawable) null);
                        }
                    }
                    this.B.setContentView(viewGroup);
                    contentFrameLayout.setAttachListener(new n(this));
                    this.R = viewGroup;
                    Object obj = this.z;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = this.G;
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        c0 c0Var2 = this.H;
                        if (c0Var2 != null) {
                            c0Var2.setWindowTitle(charSequence);
                        } else {
                            a aVar = this.E;
                            if (aVar != null) {
                                aVar.b(charSequence);
                            } else {
                                TextView textView = this.S;
                                if (textView != null) {
                                    textView.setText(charSequence);
                                }
                            }
                        }
                    }
                    ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.R.findViewById(16908290);
                    View decorView = this.B.getDecorView();
                    contentFrameLayout2.D.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
                    if (n.t(contentFrameLayout2)) {
                        contentFrameLayout2.requestLayout();
                    }
                    TypedArray obtainStyledAttributes2 = this.A.obtainStyledAttributes(R$styleable.AppCompatTheme);
                    obtainStyledAttributes2.getValue(R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
                    obtainStyledAttributes2.getValue(R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
                    if (obtainStyledAttributes2.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
                        obtainStyledAttributes2.getValue(R$styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout2.getFixedWidthMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
                        obtainStyledAttributes2.getValue(R$styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout2.getFixedWidthMinor());
                    }
                    if (obtainStyledAttributes2.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
                        obtainStyledAttributes2.getValue(R$styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout2.getFixedHeightMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
                        obtainStyledAttributes2.getValue(R$styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout2.getFixedHeightMinor());
                    }
                    obtainStyledAttributes2.recycle();
                    contentFrameLayout2.requestLayout();
                    this.Q = true;
                    j d2 = d(0);
                    if (this.i0) {
                        return;
                    }
                    if (d2 == null || d2.f203j == null) {
                        e(108);
                        return;
                    }
                    return;
                }
                StringBuilder a2 = e.a.a.a.a.a("AppCompat does not support the current theme features: { windowActionBar: ");
                a2.append(this.W);
                a2.append(", windowActionBarOverlay: ");
                a2.append(this.X);
                a2.append(", android:windowIsFloating: ");
                a2.append(this.Z);
                a2.append(", windowActionModeOverlay: ");
                a2.append(this.Y);
                a2.append(", windowNoTitle: ");
                a2.append(this.a0);
                a2.append(" }");
                throw new IllegalArgumentException(a2.toString());
            }
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
    }

    public final void g() {
        if (this.B == null) {
            Object obj = this.z;
            if (obj instanceof Activity) {
                a(((Activity) obj).getWindow());
            }
        }
        if (this.B == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final Context h() {
        k();
        a aVar = this.E;
        Context d2 = aVar != null ? aVar.d() : null;
        return d2 == null ? this.A : d2;
    }

    public final g i() {
        if (this.n0 == null) {
            Context context = this.A;
            if (u.f224d == null) {
                Context applicationContext = context.getApplicationContext();
                u.f224d = new u(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.n0 = new h(u.f224d);
        }
        return this.n0;
    }

    public final Window.Callback j() {
        return this.B.getCallback();
    }

    public final void k() {
        f();
        if (this.W && this.E == null) {
            Object obj = this.z;
            if (obj instanceof Activity) {
                this.E = new v((Activity) this.z, this.X);
            } else if (obj instanceof Dialog) {
                this.E = new v((Dialog) this.z);
            }
            a aVar = this.E;
            if (aVar != null) {
                aVar.b(this.s0);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
        r0 = r1.R;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean l() {
        /*
            r1 = this;
            boolean r0 = r1.Q
            if (r0 == 0) goto L_0x0010
            android.view.ViewGroup r0 = r1.R
            if (r0 == 0) goto L_0x0010
            boolean r0 = d.i.i.n.t(r0)
            if (r0 == 0) goto L_0x0010
            r0 = 1
            goto L_0x0011
        L_0x0010:
            r0 = 0
        L_0x0011:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.l():boolean");
    }

    public final void m() {
        if (this.Q) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0072, code lost:
        if (((org.xmlpull.v1.XmlPullParser) r15).getDepth() > 1) goto L_0x0083;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View onCreateView(android.view.View r12, java.lang.String r13, android.content.Context r14, android.util.AttributeSet r15) {
        /*
            r11 = this;
            androidx.appcompat.app.AppCompatViewInflater r0 = r11.v0
            r1 = 0
            if (r0 != 0) goto L_0x0062
            android.content.Context r0 = r11.A
            int[] r2 = androidx.appcompat.R$styleable.AppCompatTheme
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r2)
            int r2 = androidx.appcompat.R$styleable.AppCompatTheme_viewInflaterClass
            java.lang.String r0 = r0.getString(r2)
            if (r0 == 0) goto L_0x005b
            java.lang.Class<androidx.appcompat.app.AppCompatViewInflater> r2 = androidx.appcompat.app.AppCompatViewInflater.class
            java.lang.String r2 = r2.getName()
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L_0x0022
            goto L_0x005b
        L_0x0022:
            java.lang.Class r2 = java.lang.Class.forName(r0)     // Catch:{ all -> 0x0037 }
            java.lang.Class[] r3 = new java.lang.Class[r1]     // Catch:{ all -> 0x0037 }
            java.lang.reflect.Constructor r2 = r2.getDeclaredConstructor(r3)     // Catch:{ all -> 0x0037 }
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch:{ all -> 0x0037 }
            java.lang.Object r2 = r2.newInstance(r3)     // Catch:{ all -> 0x0037 }
            androidx.appcompat.app.AppCompatViewInflater r2 = (androidx.appcompat.app.AppCompatViewInflater) r2     // Catch:{ all -> 0x0037 }
            r11.v0 = r2     // Catch:{ all -> 0x0037 }
            goto L_0x0062
        L_0x0037:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Failed to instantiate custom view inflater "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = ". Falling back to default."
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            java.lang.String r3 = "AppCompatDelegate"
            android.util.Log.i(r3, r0, r2)
            androidx.appcompat.app.AppCompatViewInflater r0 = new androidx.appcompat.app.AppCompatViewInflater
            r0.<init>()
            r11.v0 = r0
            goto L_0x0062
        L_0x005b:
            androidx.appcompat.app.AppCompatViewInflater r0 = new androidx.appcompat.app.AppCompatViewInflater
            r0.<init>()
            r11.v0 = r0
        L_0x0062:
            boolean r0 = x0
            if (r0 == 0) goto L_0x009c
            boolean r0 = r15 instanceof org.xmlpull.v1.XmlPullParser
            r2 = 1
            if (r0 == 0) goto L_0x0075
            r0 = r15
            org.xmlpull.v1.XmlPullParser r0 = (org.xmlpull.v1.XmlPullParser) r0
            int r0 = r0.getDepth()
            if (r0 <= r2) goto L_0x009a
            goto L_0x0083
        L_0x0075:
            r0 = r12
            android.view.ViewParent r0 = (android.view.ViewParent) r0
            if (r0 != 0) goto L_0x007b
            goto L_0x009a
        L_0x007b:
            android.view.Window r3 = r11.B
            android.view.View r3 = r3.getDecorView()
        L_0x0081:
            if (r0 != 0) goto L_0x0085
        L_0x0083:
            r1 = 1
            goto L_0x009a
        L_0x0085:
            if (r0 == r3) goto L_0x009a
            boolean r4 = r0 instanceof android.view.View
            if (r4 == 0) goto L_0x009a
            r4 = r0
            android.view.View r4 = (android.view.View) r4
            boolean r4 = d.i.i.n.s(r4)
            if (r4 == 0) goto L_0x0095
            goto L_0x009a
        L_0x0095:
            android.view.ViewParent r0 = r0.getParent()
            goto L_0x0081
        L_0x009a:
            r7 = r1
            goto L_0x009d
        L_0x009c:
            r7 = 0
        L_0x009d:
            androidx.appcompat.app.AppCompatViewInflater r2 = r11.v0
            boolean r8 = x0
            r9 = 1
            d.b.e.c1.a()
            r10 = 0
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            android.view.View r12 = r2.createView(r3, r4, r5, r6, r7, r8, r9, r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    public final class c implements m.a {
        public c() {
        }

        public boolean a(d.b.d.i.g gVar) {
            Window.Callback j2 = k.this.j();
            if (j2 == null) {
                return true;
            }
            j2.onMenuOpened(108, gVar);
            return true;
        }

        public void a(d.b.d.i.g gVar, boolean z) {
            k.this.b(gVar);
        }
    }

    public final void e(int i2) {
        this.q0 = (1 << i2) | this.q0;
        if (!this.p0) {
            n.a(this.B.getDecorView(), this.r0);
            this.p0 = true;
        }
    }

    public class e extends d.b.d.h {
        public e(Window.Callback callback) {
            super(callback);
        }

        /* JADX WARNING: Removed duplicated region for block: B:26:0x004e  */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x0052  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final android.view.ActionMode a(android.view.ActionMode.Callback r10) {
            /*
                r9 = this;
                d.b.d.e$a r0 = new d.b.d.e$a
                d.b.a.k r1 = d.b.a.k.this
                android.content.Context r1 = r1.A
                r0.<init>(r1, r10)
                d.b.a.k r10 = d.b.a.k.this
                r1 = 0
                if (r10 == 0) goto L_0x01ad
                d.b.d.a r2 = r10.K
                if (r2 == 0) goto L_0x0015
                r2.a()
            L_0x0015:
                d.b.a.k$d r2 = new d.b.a.k$d
                r2.<init>(r0)
                r10.k()
                d.b.a.a r3 = r10.E
                if (r3 == 0) goto L_0x0030
                d.b.d.a r3 = r3.a((d.b.d.a.C0012a) r2)
                r10.K = r3
                if (r3 == 0) goto L_0x0030
                d.b.a.i r4 = r10.D
                if (r4 == 0) goto L_0x0030
                r4.a((d.b.d.a) r3)
            L_0x0030:
                d.b.d.a r3 = r10.K
                if (r3 != 0) goto L_0x01a3
                r10.e()
                d.b.d.a r3 = r10.K
                if (r3 == 0) goto L_0x003e
                r3.a()
            L_0x003e:
                d.b.a.i r3 = r10.D
                if (r3 == 0) goto L_0x004b
                boolean r4 = r10.i0
                if (r4 != 0) goto L_0x004b
                d.b.d.a r3 = r3.a((d.b.d.a.C0012a) r2)     // Catch:{ AbstractMethodError -> 0x004b }
                goto L_0x004c
            L_0x004b:
                r3 = r1
            L_0x004c:
                if (r3 == 0) goto L_0x0052
                r10.K = r3
                goto L_0x0194
            L_0x0052:
                androidx.appcompat.widget.ActionBarContextView r3 = r10.L
                r4 = 1
                r5 = 0
                if (r3 != 0) goto L_0x00fd
                boolean r3 = r10.Z
                if (r3 == 0) goto L_0x00de
                android.util.TypedValue r3 = new android.util.TypedValue
                r3.<init>()
                android.content.Context r6 = r10.A
                android.content.res.Resources$Theme r6 = r6.getTheme()
                int r7 = androidx.appcompat.R$attr.actionBarTheme
                r6.resolveAttribute(r7, r3, r4)
                int r7 = r3.resourceId
                if (r7 == 0) goto L_0x0091
                android.content.Context r7 = r10.A
                android.content.res.Resources r7 = r7.getResources()
                android.content.res.Resources$Theme r7 = r7.newTheme()
                r7.setTo(r6)
                int r6 = r3.resourceId
                r7.applyStyle(r6, r4)
                d.b.d.c r6 = new d.b.d.c
                android.content.Context r8 = r10.A
                r6.<init>(r8, r5)
                android.content.res.Resources$Theme r8 = r6.getTheme()
                r8.setTo(r7)
                goto L_0x0093
            L_0x0091:
                android.content.Context r6 = r10.A
            L_0x0093:
                androidx.appcompat.widget.ActionBarContextView r7 = new androidx.appcompat.widget.ActionBarContextView
                r7.<init>(r6)
                r10.L = r7
                android.widget.PopupWindow r7 = new android.widget.PopupWindow
                int r8 = androidx.appcompat.R$attr.actionModePopupWindowStyle
                r7.<init>(r6, r1, r8)
                r10.M = r7
                r8 = 2
                d.b.a.r.a((android.widget.PopupWindow) r7, (int) r8)
                android.widget.PopupWindow r7 = r10.M
                androidx.appcompat.widget.ActionBarContextView r8 = r10.L
                r7.setContentView(r8)
                android.widget.PopupWindow r7 = r10.M
                r8 = -1
                r7.setWidth(r8)
                android.content.res.Resources$Theme r7 = r6.getTheme()
                int r8 = androidx.appcompat.R$attr.actionBarSize
                r7.resolveAttribute(r8, r3, r4)
                int r3 = r3.data
                android.content.res.Resources r6 = r6.getResources()
                android.util.DisplayMetrics r6 = r6.getDisplayMetrics()
                int r3 = android.util.TypedValue.complexToDimensionPixelSize(r3, r6)
                androidx.appcompat.widget.ActionBarContextView r6 = r10.L
                r6.setContentHeight(r3)
                android.widget.PopupWindow r3 = r10.M
                r6 = -2
                r3.setHeight(r6)
                d.b.a.o r3 = new d.b.a.o
                r3.<init>(r10)
                r10.N = r3
                goto L_0x00fd
            L_0x00de:
                android.view.ViewGroup r3 = r10.R
                int r6 = androidx.appcompat.R$id.action_mode_bar_stub
                android.view.View r3 = r3.findViewById(r6)
                androidx.appcompat.widget.ViewStubCompat r3 = (androidx.appcompat.widget.ViewStubCompat) r3
                if (r3 == 0) goto L_0x00fd
                android.content.Context r6 = r10.h()
                android.view.LayoutInflater r6 = android.view.LayoutInflater.from(r6)
                r3.setLayoutInflater(r6)
                android.view.View r3 = r3.a()
                androidx.appcompat.widget.ActionBarContextView r3 = (androidx.appcompat.widget.ActionBarContextView) r3
                r10.L = r3
            L_0x00fd:
                androidx.appcompat.widget.ActionBarContextView r3 = r10.L
                if (r3 == 0) goto L_0x0194
                r10.e()
                androidx.appcompat.widget.ActionBarContextView r3 = r10.L
                r3.b()
                d.b.d.d r3 = new d.b.d.d
                androidx.appcompat.widget.ActionBarContextView r6 = r10.L
                android.content.Context r6 = r6.getContext()
                androidx.appcompat.widget.ActionBarContextView r7 = r10.L
                android.widget.PopupWindow r8 = r10.M
                if (r8 != 0) goto L_0x0118
                goto L_0x0119
            L_0x0118:
                r4 = 0
            L_0x0119:
                r3.<init>(r6, r7, r2, r4)
                d.b.d.i.g r4 = r3.E
                d.b.d.a$a r2 = r2.a
                boolean r2 = r2.b(r3, r4)
                if (r2 == 0) goto L_0x0192
                r3.g()
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                r2.a(r3)
                r10.K = r3
                boolean r2 = r10.l()
                r3 = 1065353216(0x3f800000, float:1.0)
                if (r2 == 0) goto L_0x015c
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                r4 = 0
                r2.setAlpha(r4)
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                d.i.i.s r2 = d.i.i.n.a(r2)
                r2.a((float) r3)
                r10.O = r2
                d.b.a.p r3 = new d.b.a.p
                r3.<init>(r10)
                java.lang.ref.WeakReference<android.view.View> r4 = r2.a
                java.lang.Object r4 = r4.get()
                android.view.View r4 = (android.view.View) r4
                if (r4 == 0) goto L_0x0182
                r2.a(r4, r3)
                goto L_0x0182
            L_0x015c:
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                r2.setAlpha(r3)
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                r2.setVisibility(r5)
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                r3 = 32
                r2.sendAccessibilityEvent(r3)
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                android.view.ViewParent r2 = r2.getParent()
                boolean r2 = r2 instanceof android.view.View
                if (r2 == 0) goto L_0x0182
                androidx.appcompat.widget.ActionBarContextView r2 = r10.L
                android.view.ViewParent r2 = r2.getParent()
                android.view.View r2 = (android.view.View) r2
                r2.requestApplyInsets()
            L_0x0182:
                android.widget.PopupWindow r2 = r10.M
                if (r2 == 0) goto L_0x0194
                android.view.Window r2 = r10.B
                android.view.View r2 = r2.getDecorView()
                java.lang.Runnable r3 = r10.N
                r2.post(r3)
                goto L_0x0194
            L_0x0192:
                r10.K = r1
            L_0x0194:
                d.b.d.a r2 = r10.K
                if (r2 == 0) goto L_0x019f
                d.b.a.i r3 = r10.D
                if (r3 == 0) goto L_0x019f
                r3.a((d.b.d.a) r2)
            L_0x019f:
                d.b.d.a r2 = r10.K
                r10.K = r2
            L_0x01a3:
                d.b.d.a r10 = r10.K
                if (r10 == 0) goto L_0x01ac
                android.view.ActionMode r10 = r0.b(r10)
                return r10
            L_0x01ac:
                return r1
            L_0x01ad:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.e.a(android.view.ActionMode$Callback):android.view.ActionMode");
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return k.this.a(keyEvent) || this.x.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
            if (r6 != false) goto L_0x001d;
         */
        /* JADX WARNING: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean dispatchKeyShortcutEvent(android.view.KeyEvent r6) {
            /*
                r5 = this;
                android.view.Window$Callback r0 = r5.x
                boolean r0 = r0.dispatchKeyShortcutEvent(r6)
                r1 = 0
                r2 = 1
                if (r0 != 0) goto L_0x004f
                d.b.a.k r0 = d.b.a.k.this
                int r3 = r6.getKeyCode()
                r0.k()
                d.b.a.a r4 = r0.E
                if (r4 == 0) goto L_0x001f
                boolean r3 = r4.a(r3, r6)
                if (r3 == 0) goto L_0x001f
            L_0x001d:
                r6 = 1
                goto L_0x004d
            L_0x001f:
                d.b.a.k$j r3 = r0.d0
                if (r3 == 0) goto L_0x0034
                int r4 = r6.getKeyCode()
                boolean r3 = r0.a(r3, r4, r6, r2)
                if (r3 == 0) goto L_0x0034
                d.b.a.k$j r6 = r0.d0
                if (r6 == 0) goto L_0x001d
                r6.n = r2
                goto L_0x001d
            L_0x0034:
                d.b.a.k$j r3 = r0.d0
                if (r3 != 0) goto L_0x004c
                d.b.a.k$j r3 = r0.d(r1)
                r0.b((d.b.a.k.j) r3, (android.view.KeyEvent) r6)
                int r4 = r6.getKeyCode()
                boolean r6 = r0.a(r3, r4, r6, r2)
                r3.m = r1
                if (r6 == 0) goto L_0x004c
                goto L_0x001d
            L_0x004c:
                r6 = 0
            L_0x004d:
                if (r6 == 0) goto L_0x0050
            L_0x004f:
                r1 = 1
            L_0x0050:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.e.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        public void onContentChanged() {
        }

        public boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof d.b.d.i.g)) {
                return this.x.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        public boolean onMenuOpened(int i2, Menu menu) {
            this.x.onMenuOpened(i2, menu);
            k kVar = k.this;
            if (kVar != null) {
                if (i2 == 108) {
                    kVar.k();
                    a aVar = kVar.E;
                    if (aVar != null) {
                        aVar.a(true);
                    }
                }
                return true;
            }
            throw null;
        }

        public void onPanelClosed(int i2, Menu menu) {
            this.x.onPanelClosed(i2, menu);
            k kVar = k.this;
            if (kVar == null) {
                throw null;
            } else if (i2 == 108) {
                kVar.k();
                a aVar = kVar.E;
                if (aVar != null) {
                    aVar.a(false);
                }
            } else if (i2 == 0) {
                j d2 = kVar.d(i2);
                if (d2.o) {
                    kVar.a(d2, false);
                }
            }
        }

        public boolean onPreparePanel(int i2, View view, Menu menu) {
            d.b.d.i.g gVar = menu instanceof d.b.d.i.g ? (d.b.d.i.g) menu : null;
            if (i2 == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.y = true;
            }
            boolean onPreparePanel = this.x.onPreparePanel(i2, view, menu);
            if (gVar != null) {
                gVar.y = false;
            }
            return onPreparePanel;
        }

        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
            d.b.d.i.g gVar;
            j d2 = k.this.d(0);
            if (d2 == null || (gVar = d2.f203j) == null) {
                this.x.onProvideKeyboardShortcuts(list, menu, i2);
            } else {
                this.x.onProvideKeyboardShortcuts(list, gVar, i2);
            }
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (k.this.P) {
                return a(callback);
            }
            return this.x.onWindowStartingActionMode(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
            if (!k.this.P || i2 != 0) {
                return this.x.onWindowStartingActionMode(callback, i2);
            }
            return a(callback);
        }
    }

    /* renamed from: d.b.a.k$k  reason: collision with other inner class name */
    public final class C0008k implements m.a {
        public C0008k() {
        }

        public void a(d.b.d.i.g gVar, boolean z) {
            d.b.d.i.g c2 = gVar.c();
            boolean z2 = c2 != gVar;
            k kVar = k.this;
            if (z2) {
                gVar = c2;
            }
            j a = kVar.a((Menu) gVar);
            if (a == null) {
                return;
            }
            if (z2) {
                k.this.a(a.a, a, c2);
                k.this.a(a, true);
                return;
            }
            k.this.a(a, z);
        }

        public boolean a(d.b.d.i.g gVar) {
            Window.Callback j2;
            if (gVar != null) {
                return true;
            }
            k kVar = k.this;
            if (!kVar.W || (j2 = kVar.j()) == null || k.this.i0) {
                return true;
            }
            j2.onMenuOpened(108, gVar);
            return true;
        }
    }

    public void b(int i2) {
        f();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.A).inflate(i2, viewGroup);
        this.C.x.onContentChanged();
    }

    public boolean d() {
        return a(true);
    }

    public void c(int i2) {
        j d2;
        j d3 = d(i2);
        if (d3.f203j != null) {
            Bundle bundle = new Bundle();
            d3.f203j.b(bundle);
            if (bundle.size() > 0) {
                d3.s = bundle;
            }
            d3.f203j.j();
            d3.f203j.clear();
        }
        d3.r = true;
        d3.q = true;
        if ((i2 == 108 || i2 == 0) && this.H != null && (d2 = d(0)) != null) {
            d2.m = false;
            b(d2, (KeyEvent) null);
        }
    }

    public void a(View view) {
        f();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.C.x.onContentChanged();
    }

    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        f();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.C.x.onContentChanged();
    }

    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        f();
        ((ViewGroup) this.R.findViewById(16908290)).addView(view, layoutParams);
        this.C.x.onContentChanged();
    }

    public final boolean b(j jVar, KeyEvent keyEvent) {
        c0 c0Var;
        c0 c0Var2;
        Resources.Theme theme;
        c0 c0Var3;
        if (this.i0) {
            return false;
        }
        if (jVar.m) {
            return true;
        }
        j jVar2 = this.d0;
        if (!(jVar2 == null || jVar2 == jVar)) {
            a(jVar2, false);
        }
        Window.Callback j2 = j();
        if (j2 != null) {
            jVar.f202i = j2.onCreatePanelView(jVar.a);
        }
        int i2 = jVar.a;
        boolean z2 = i2 == 0 || i2 == 108;
        if (z2 && (c0Var3 = this.H) != null) {
            c0Var3.e();
        }
        if (jVar.f202i == null && (!z2 || !(this.E instanceof s))) {
            if (jVar.f203j == null || jVar.r) {
                if (jVar.f203j == null) {
                    Context context = this.A;
                    int i3 = jVar.a;
                    if ((i3 == 0 || i3 == 108) && this.H != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            d.b.d.c cVar = new d.b.d.c(context, 0);
                            cVar.getTheme().setTo(theme);
                            context = cVar;
                        }
                    }
                    d.b.d.i.g gVar = new d.b.d.i.g(context);
                    gVar.f296e = this;
                    jVar.a(gVar);
                    if (jVar.f203j == null) {
                        return false;
                    }
                }
                if (z2 && this.H != null) {
                    if (this.I == null) {
                        this.I = new c();
                    }
                    this.H.a(jVar.f203j, this.I);
                }
                jVar.f203j.j();
                if (!j2.onCreatePanelMenu(jVar.a, jVar.f203j)) {
                    jVar.a((d.b.d.i.g) null);
                    if (z2 && (c0Var2 = this.H) != null) {
                        c0Var2.a((Menu) null, this.I);
                    }
                    return false;
                }
                jVar.r = false;
            }
            jVar.f203j.j();
            Bundle bundle = jVar.s;
            if (bundle != null) {
                jVar.f203j.a(bundle);
                jVar.s = null;
            }
            if (!j2.onPreparePanel(0, jVar.f202i, jVar.f203j)) {
                if (z2 && (c0Var = this.H) != null) {
                    c0Var.a((Menu) null, this.I);
                }
                jVar.f203j.i();
                return false;
            }
            boolean z3 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            jVar.p = z3;
            jVar.f203j.setQwertyMode(z3);
            jVar.f203j.i();
        }
        jVar.m = true;
        jVar.n = false;
        this.d0 = jVar;
        return true;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView((View) null, str, context, attributeSet);
    }

    public final void a(Window window) {
        if (this.B == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof e)) {
                e eVar = new e(callback);
                this.C = eVar;
                window.setCallback(eVar);
                x0 a2 = x0.a(this.A, (AttributeSet) null, y0);
                Drawable c2 = a2.c(0);
                if (c2 != null) {
                    window.setBackgroundDrawable(c2);
                }
                a2.b.recycle();
                this.B = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    public final void a(CharSequence charSequence) {
        this.G = charSequence;
        c0 c0Var = this.H;
        if (c0Var != null) {
            c0Var.setWindowTitle(charSequence);
            return;
        }
        a aVar = this.E;
        if (aVar != null) {
            aVar.b(charSequence);
            return;
        }
        TextView textView = this.S;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean a(d.b.d.i.g gVar, MenuItem menuItem) {
        j a2;
        Window.Callback j2 = j();
        if (j2 == null || this.i0 || (a2 = a((Menu) gVar.c())) == null) {
            return false;
        }
        return j2.onMenuItemSelected(a2.a, menuItem);
    }

    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.view.KeyEvent r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.z
            boolean r1 = r0 instanceof d.i.i.c.a
            r2 = 1
            if (r1 != 0) goto L_0x000b
            boolean r0 = r0 instanceof d.b.a.q
            if (r0 == 0) goto L_0x001a
        L_0x000b:
            android.view.Window r0 = r6.B
            android.view.View r0 = r0.getDecorView()
            if (r0 == 0) goto L_0x001a
            boolean r0 = d.i.i.n.b((android.view.View) r0, (android.view.KeyEvent) r7)
            if (r0 == 0) goto L_0x001a
            return r2
        L_0x001a:
            int r0 = r7.getKeyCode()
            r1 = 82
            if (r0 != r1) goto L_0x002d
            d.b.a.k$e r0 = r6.C
            android.view.Window$Callback r0 = r0.x
            boolean r0 = r0.dispatchKeyEvent(r7)
            if (r0 == 0) goto L_0x002d
            return r2
        L_0x002d:
            int r0 = r7.getKeyCode()
            int r3 = r7.getAction()
            r4 = 0
            if (r3 != 0) goto L_0x003a
            r3 = 1
            goto L_0x003b
        L_0x003a:
            r3 = 0
        L_0x003b:
            r5 = 4
            if (r3 == 0) goto L_0x0065
            if (r0 == r5) goto L_0x0056
            if (r0 == r1) goto L_0x0043
            goto L_0x0062
        L_0x0043:
            int r0 = r7.getRepeatCount()
            if (r0 != 0) goto L_0x0119
            d.b.a.k$j r0 = r6.d(r4)
            boolean r1 = r0.o
            if (r1 != 0) goto L_0x0119
            r6.b((d.b.a.k.j) r0, (android.view.KeyEvent) r7)
            goto L_0x0119
        L_0x0056:
            int r7 = r7.getFlags()
            r7 = r7 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L_0x005f
            goto L_0x0060
        L_0x005f:
            r2 = 0
        L_0x0060:
            r6.e0 = r2
        L_0x0062:
            r2 = 0
            goto L_0x0119
        L_0x0065:
            if (r0 == r5) goto L_0x00eb
            if (r0 == r1) goto L_0x006a
            goto L_0x0062
        L_0x006a:
            d.b.d.a r0 = r6.K
            if (r0 == 0) goto L_0x0070
            goto L_0x0119
        L_0x0070:
            d.b.a.k$j r0 = r6.d(r4)
            d.b.e.c0 r1 = r6.H
            if (r1 == 0) goto L_0x00aa
            boolean r1 = r1.f()
            if (r1 == 0) goto L_0x00aa
            android.content.Context r1 = r6.A
            android.view.ViewConfiguration r1 = android.view.ViewConfiguration.get(r1)
            boolean r1 = r1.hasPermanentMenuKey()
            if (r1 != 0) goto L_0x00aa
            d.b.e.c0 r1 = r6.H
            boolean r1 = r1.b()
            if (r1 != 0) goto L_0x00a3
            boolean r1 = r6.i0
            if (r1 != 0) goto L_0x00ca
            boolean r7 = r6.b((d.b.a.k.j) r0, (android.view.KeyEvent) r7)
            if (r7 == 0) goto L_0x00ca
            d.b.e.c0 r7 = r6.H
            boolean r7 = r7.d()
            goto L_0x00d1
        L_0x00a3:
            d.b.e.c0 r7 = r6.H
            boolean r7 = r7.c()
            goto L_0x00d1
        L_0x00aa:
            boolean r1 = r0.o
            if (r1 != 0) goto L_0x00cc
            boolean r1 = r0.n
            if (r1 == 0) goto L_0x00b3
            goto L_0x00cc
        L_0x00b3:
            boolean r1 = r0.m
            if (r1 == 0) goto L_0x00ca
            boolean r1 = r0.r
            if (r1 == 0) goto L_0x00c2
            r0.m = r4
            boolean r1 = r6.b((d.b.a.k.j) r0, (android.view.KeyEvent) r7)
            goto L_0x00c3
        L_0x00c2:
            r1 = 1
        L_0x00c3:
            if (r1 == 0) goto L_0x00ca
            r6.a((d.b.a.k.j) r0, (android.view.KeyEvent) r7)
            r7 = 1
            goto L_0x00d1
        L_0x00ca:
            r7 = 0
            goto L_0x00d1
        L_0x00cc:
            boolean r7 = r0.o
            r6.a((d.b.a.k.j) r0, (boolean) r2)
        L_0x00d1:
            if (r7 == 0) goto L_0x0119
            android.content.Context r7 = r6.A
            java.lang.String r0 = "audio"
            java.lang.Object r7 = r7.getSystemService(r0)
            android.media.AudioManager r7 = (android.media.AudioManager) r7
            if (r7 == 0) goto L_0x00e3
            r7.playSoundEffect(r4)
            goto L_0x0119
        L_0x00e3:
            java.lang.String r7 = "AppCompatDelegate"
            java.lang.String r0 = "Couldn't get audio manager"
            android.util.Log.w(r7, r0)
            goto L_0x0119
        L_0x00eb:
            boolean r7 = r6.e0
            r6.e0 = r4
            d.b.a.k$j r0 = r6.d(r4)
            if (r0 == 0) goto L_0x00ff
            boolean r1 = r0.o
            if (r1 == 0) goto L_0x00ff
            if (r7 != 0) goto L_0x0119
            r6.a((d.b.a.k.j) r0, (boolean) r2)
            goto L_0x0119
        L_0x00ff:
            d.b.d.a r7 = r6.K
            if (r7 == 0) goto L_0x0107
            r7.a()
            goto L_0x0114
        L_0x0107:
            r6.k()
            d.b.a.a r7 = r6.E
            if (r7 == 0) goto L_0x0116
            boolean r7 = r7.b()
            if (r7 == 0) goto L_0x0116
        L_0x0114:
            r7 = 1
            goto L_0x0117
        L_0x0116:
            r7 = 0
        L_0x0117:
            if (r7 == 0) goto L_0x0062
        L_0x0119:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.a(android.view.KeyEvent):boolean");
    }

    public void b(d.b.d.i.g gVar) {
        if (!this.b0) {
            this.b0 = true;
            this.H.g();
            Window.Callback j2 = j();
            if (j2 != null && !this.i0) {
                j2.onPanelClosed(108, gVar);
            }
            this.b0 = false;
        }
    }

    public void a() {
        LayoutInflater from = LayoutInflater.from(this.A);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (!(from.getFactory2() instanceof k)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:72:0x014f, code lost:
        if (r14 != null) goto L_0x0151;
     */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:98:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(d.b.a.k.j r13, android.view.KeyEvent r14) {
        /*
            r12 = this;
            boolean r0 = r13.o
            if (r0 != 0) goto L_0x01cd
            boolean r0 = r12.i0
            if (r0 == 0) goto L_0x000a
            goto L_0x01cd
        L_0x000a:
            int r0 = r13.a
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L_0x0027
            android.content.Context r0 = r12.A
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.screenLayout
            r0 = r0 & 15
            r3 = 4
            if (r0 != r3) goto L_0x0023
            r0 = 1
            goto L_0x0024
        L_0x0023:
            r0 = 0
        L_0x0024:
            if (r0 == 0) goto L_0x0027
            return
        L_0x0027:
            android.view.Window$Callback r0 = r12.j()
            if (r0 == 0) goto L_0x003b
            int r3 = r13.a
            d.b.d.i.g r4 = r13.f203j
            boolean r0 = r0.onMenuOpened(r3, r4)
            if (r0 != 0) goto L_0x003b
            r12.a((d.b.a.k.j) r13, (boolean) r1)
            return
        L_0x003b:
            android.content.Context r0 = r12.A
            java.lang.String r3 = "window"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            if (r0 != 0) goto L_0x0048
            return
        L_0x0048:
            boolean r14 = r12.b((d.b.a.k.j) r13, (android.view.KeyEvent) r14)
            if (r14 != 0) goto L_0x004f
            return
        L_0x004f:
            android.view.ViewGroup r14 = r13.f200g
            r3 = -2
            r4 = -1
            if (r14 == 0) goto L_0x006b
            boolean r14 = r13.q
            if (r14 == 0) goto L_0x005a
            goto L_0x006b
        L_0x005a:
            android.view.View r14 = r13.f202i
            if (r14 == 0) goto L_0x01ab
            android.view.ViewGroup$LayoutParams r14 = r14.getLayoutParams()
            if (r14 == 0) goto L_0x01ab
            int r14 = r14.width
            if (r14 != r4) goto L_0x01ab
            r5 = -1
            goto L_0x01ac
        L_0x006b:
            android.view.ViewGroup r14 = r13.f200g
            if (r14 != 0) goto L_0x00da
            android.content.Context r14 = r12.h()
            android.util.TypedValue r4 = new android.util.TypedValue
            r4.<init>()
            android.content.res.Resources r5 = r14.getResources()
            android.content.res.Resources$Theme r5 = r5.newTheme()
            android.content.res.Resources$Theme r6 = r14.getTheme()
            r5.setTo(r6)
            int r6 = androidx.appcompat.R$attr.actionBarPopupTheme
            r5.resolveAttribute(r6, r4, r1)
            int r6 = r4.resourceId
            if (r6 == 0) goto L_0x0093
            r5.applyStyle(r6, r1)
        L_0x0093:
            int r6 = androidx.appcompat.R$attr.panelMenuListTheme
            r5.resolveAttribute(r6, r4, r1)
            int r4 = r4.resourceId
            if (r4 == 0) goto L_0x00a0
            r5.applyStyle(r4, r1)
            goto L_0x00a5
        L_0x00a0:
            int r4 = androidx.appcompat.R$style.Theme_AppCompat_CompactMenu
            r5.applyStyle(r4, r1)
        L_0x00a5:
            d.b.d.c r4 = new d.b.d.c
            r4.<init>(r14, r2)
            android.content.res.Resources$Theme r14 = r4.getTheme()
            r14.setTo(r5)
            r13.f205l = r4
            int[] r14 = androidx.appcompat.R$styleable.AppCompatTheme
            android.content.res.TypedArray r14 = r4.obtainStyledAttributes(r14)
            int r4 = androidx.appcompat.R$styleable.AppCompatTheme_panelBackground
            int r4 = r14.getResourceId(r4, r2)
            r13.b = r4
            int r4 = androidx.appcompat.R$styleable.AppCompatTheme_android_windowAnimationStyle
            int r4 = r14.getResourceId(r4, r2)
            r13.f199f = r4
            r14.recycle()
            d.b.a.k$i r14 = new d.b.a.k$i
            android.content.Context r4 = r13.f205l
            r14.<init>(r4)
            r13.f200g = r14
            r14 = 81
            r13.f196c = r14
            goto L_0x00e9
        L_0x00da:
            boolean r4 = r13.q
            if (r4 == 0) goto L_0x00e9
            int r14 = r14.getChildCount()
            if (r14 <= 0) goto L_0x00e9
            android.view.ViewGroup r14 = r13.f200g
            r14.removeAllViews()
        L_0x00e9:
            android.view.View r14 = r13.f202i
            if (r14 == 0) goto L_0x00f0
            r13.f201h = r14
            goto L_0x0151
        L_0x00f0:
            d.b.d.i.g r14 = r13.f203j
            if (r14 != 0) goto L_0x00f5
            goto L_0x0153
        L_0x00f5:
            d.b.a.k$k r14 = r12.J
            if (r14 != 0) goto L_0x0100
            d.b.a.k$k r14 = new d.b.a.k$k
            r14.<init>()
            r12.J = r14
        L_0x0100:
            d.b.a.k$k r14 = r12.J
            d.b.d.i.g r4 = r13.f203j
            if (r4 != 0) goto L_0x0108
            r14 = 0
            goto L_0x014d
        L_0x0108:
            d.b.d.i.e r4 = r13.f204k
            if (r4 != 0) goto L_0x0120
            d.b.d.i.e r4 = new d.b.d.i.e
            android.content.Context r5 = r13.f205l
            int r6 = androidx.appcompat.R$layout.abc_list_menu_item_layout
            r4.<init>(r5, r6)
            r13.f204k = r4
            r4.E = r14
            d.b.d.i.g r14 = r13.f203j
            android.content.Context r5 = r14.a
            r14.a((d.b.d.i.m) r4, (android.content.Context) r5)
        L_0x0120:
            d.b.d.i.e r14 = r13.f204k
            android.view.ViewGroup r4 = r13.f200g
            androidx.appcompat.view.menu.ExpandedMenuView r5 = r14.A
            if (r5 != 0) goto L_0x014b
            android.view.LayoutInflater r5 = r14.y
            int r6 = androidx.appcompat.R$layout.abc_expanded_menu_layout
            android.view.View r4 = r5.inflate(r6, r4, r2)
            androidx.appcompat.view.menu.ExpandedMenuView r4 = (androidx.appcompat.view.menu.ExpandedMenuView) r4
            r14.A = r4
            d.b.d.i.e$a r4 = r14.F
            if (r4 != 0) goto L_0x013f
            d.b.d.i.e$a r4 = new d.b.d.i.e$a
            r4.<init>()
            r14.F = r4
        L_0x013f:
            androidx.appcompat.view.menu.ExpandedMenuView r4 = r14.A
            d.b.d.i.e$a r5 = r14.F
            r4.setAdapter(r5)
            androidx.appcompat.view.menu.ExpandedMenuView r4 = r14.A
            r4.setOnItemClickListener(r14)
        L_0x014b:
            androidx.appcompat.view.menu.ExpandedMenuView r14 = r14.A
        L_0x014d:
            r13.f201h = r14
            if (r14 == 0) goto L_0x0153
        L_0x0151:
            r14 = 1
            goto L_0x0154
        L_0x0153:
            r14 = 0
        L_0x0154:
            if (r14 == 0) goto L_0x01cd
            android.view.View r14 = r13.f201h
            if (r14 != 0) goto L_0x015b
            goto L_0x016e
        L_0x015b:
            android.view.View r14 = r13.f202i
            if (r14 == 0) goto L_0x0160
            goto L_0x016c
        L_0x0160:
            d.b.d.i.e r14 = r13.f204k
            android.widget.ListAdapter r14 = r14.a()
            int r14 = r14.getCount()
            if (r14 <= 0) goto L_0x016e
        L_0x016c:
            r14 = 1
            goto L_0x016f
        L_0x016e:
            r14 = 0
        L_0x016f:
            if (r14 != 0) goto L_0x0172
            goto L_0x01cd
        L_0x0172:
            android.view.View r14 = r13.f201h
            android.view.ViewGroup$LayoutParams r14 = r14.getLayoutParams()
            if (r14 != 0) goto L_0x017f
            android.view.ViewGroup$LayoutParams r14 = new android.view.ViewGroup$LayoutParams
            r14.<init>(r3, r3)
        L_0x017f:
            int r4 = r13.b
            android.view.ViewGroup r5 = r13.f200g
            r5.setBackgroundResource(r4)
            android.view.View r4 = r13.f201h
            android.view.ViewParent r4 = r4.getParent()
            boolean r5 = r4 instanceof android.view.ViewGroup
            if (r5 == 0) goto L_0x0197
            android.view.ViewGroup r4 = (android.view.ViewGroup) r4
            android.view.View r5 = r13.f201h
            r4.removeView(r5)
        L_0x0197:
            android.view.ViewGroup r4 = r13.f200g
            android.view.View r5 = r13.f201h
            r4.addView(r5, r14)
            android.view.View r14 = r13.f201h
            boolean r14 = r14.hasFocus()
            if (r14 != 0) goto L_0x01ab
            android.view.View r14 = r13.f201h
            r14.requestFocus()
        L_0x01ab:
            r5 = -2
        L_0x01ac:
            r13.n = r2
            android.view.WindowManager$LayoutParams r14 = new android.view.WindowManager$LayoutParams
            r6 = -2
            int r7 = r13.f197d
            int r8 = r13.f198e
            r9 = 1002(0x3ea, float:1.404E-42)
            r10 = 8519680(0x820000, float:1.1938615E-38)
            r11 = -3
            r4 = r14
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            int r2 = r13.f196c
            r14.gravity = r2
            int r2 = r13.f199f
            r14.windowAnimations = r2
            android.view.ViewGroup r2 = r13.f200g
            r0.addView(r2, r14)
            r13.o = r1
        L_0x01cd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.a(d.b.a.k$j, android.view.KeyEvent):void");
    }

    public int f(int i2) {
        boolean z2;
        boolean z3;
        ActionBarContextView actionBarContextView = this.L;
        int i3 = 0;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.L.getLayoutParams();
            boolean z4 = true;
            if (this.L.isShown()) {
                if (this.t0 == null) {
                    this.t0 = new Rect();
                    this.u0 = new Rect();
                }
                Rect rect = this.t0;
                Rect rect2 = this.u0;
                rect.set(0, i2, 0, 0);
                d1.a(this.R, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    View view = this.T;
                    if (view == null) {
                        View view2 = new View(this.A);
                        this.T = view2;
                        view2.setBackgroundColor(this.A.getResources().getColor(R$color.abc_input_method_navigation_guard));
                        this.R.addView(this.T, -1, new ViewGroup.LayoutParams(-1, i2));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.T.setLayoutParams(layoutParams);
                        }
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (this.T == null) {
                    z4 = false;
                }
                if (!this.Y && z4) {
                    i2 = 0;
                }
                boolean z5 = z4;
                z4 = z3;
                z2 = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z4 = false;
            }
            if (z4) {
                this.L.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.T;
        if (view3 != null) {
            if (!z2) {
                i3 = 8;
            }
            view3.setVisibility(i3);
        }
        return i2;
    }

    public void a(d.b.d.i.g gVar) {
        c0 c0Var = this.H;
        if (c0Var == null || !c0Var.f() || (ViewConfiguration.get(this.A).hasPermanentMenuKey() && !this.H.a())) {
            j d2 = d(0);
            d2.q = true;
            a(d2, false);
            a(d2, (KeyEvent) null);
            return;
        }
        Window.Callback j2 = j();
        if (this.H.b()) {
            this.H.c();
            if (!this.i0) {
                j2.onPanelClosed(108, d(0).f203j);
            }
        } else if (j2 != null && !this.i0) {
            if (this.p0 && (1 & this.q0) != 0) {
                this.B.getDecorView().removeCallbacks(this.r0);
                this.r0.run();
            }
            j d3 = d(0);
            d.b.d.i.g gVar2 = d3.f203j;
            if (gVar2 != null && !d3.r && j2.onPreparePanel(0, d3.f202i, gVar2)) {
                j2.onMenuOpened(108, d3.f203j);
                this.H.d();
            }
        }
    }

    public void a(j jVar, boolean z2) {
        ViewGroup viewGroup;
        c0 c0Var;
        if (!z2 || jVar.a != 0 || (c0Var = this.H) == null || !c0Var.b()) {
            WindowManager windowManager = (WindowManager) this.A.getSystemService("window");
            if (!(windowManager == null || !jVar.o || (viewGroup = jVar.f200g) == null)) {
                windowManager.removeView(viewGroup);
                if (z2) {
                    a(jVar.a, jVar, (Menu) null);
                }
            }
            jVar.m = false;
            jVar.n = false;
            jVar.o = false;
            jVar.f201h = null;
            jVar.q = true;
            if (this.d0 == jVar) {
                this.d0 = null;
                return;
            }
            return;
        }
        b(jVar.f203j);
    }

    public void a(int i2, j jVar, Menu menu) {
        if (menu == null) {
            if (jVar == null && i2 >= 0) {
                j[] jVarArr = this.c0;
                if (i2 < jVarArr.length) {
                    jVar = jVarArr[i2];
                }
            }
            if (jVar != null) {
                menu = jVar.f203j;
            }
        }
        if ((jVar == null || jVar.o) && !this.i0) {
            this.C.x.onPanelClosed(i2, menu);
        }
    }

    public j a(Menu menu) {
        j[] jVarArr = this.c0;
        int length = jVarArr != null ? jVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            j jVar = jVarArr[i2];
            if (jVar != null && jVar.f203j == menu) {
                return jVar;
            }
        }
        return null;
    }

    public final boolean a(j jVar, int i2, KeyEvent keyEvent, int i3) {
        d.b.d.i.g gVar;
        boolean z2 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((jVar.m || b(jVar, keyEvent)) && (gVar = jVar.f203j) != null) {
            z2 = gVar.performShortcut(i2, keyEvent, i3);
        }
        if (z2 && (i3 & 1) == 0 && this.H == null) {
            a(jVar, true);
        }
        return z2;
    }

    public boolean a(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        if (this.a0 && i2 == 108) {
            return false;
        }
        if (this.W && i2 == 1) {
            this.W = false;
        }
        if (i2 == 1) {
            m();
            this.a0 = true;
            return true;
        } else if (i2 == 2) {
            m();
            this.U = true;
            return true;
        } else if (i2 == 5) {
            m();
            this.V = true;
            return true;
        } else if (i2 == 10) {
            m();
            this.Y = true;
            return true;
        } else if (i2 == 108) {
            m();
            this.W = true;
            return true;
        } else if (i2 != 109) {
            return this.B.requestFeature(i2);
        } else {
            m();
            this.X = true;
            return true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:112:0x019f  */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01d0  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x0247  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x0255  */
    /* JADX WARNING: Removed duplicated region for block: B:173:0x025d  */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x0266  */
    /* JADX WARNING: Removed duplicated region for block: B:181:0x0279  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0107  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(boolean r13) {
        /*
            r12 = this;
            boolean r0 = r12.i0
            r1 = 0
            if (r0 == 0) goto L_0x0006
            return r1
        L_0x0006:
            int r0 = r12.j0
            r2 = -100
            if (r0 == r2) goto L_0x000d
            goto L_0x000f
        L_0x000d:
            r0 = -100
        L_0x000f:
            r3 = -1
            r4 = 3
            r5 = 2
            r6 = 23
            r7 = 1
            if (r0 == r2) goto L_0x005c
            if (r0 == r3) goto L_0x005b
            if (r0 == 0) goto L_0x003d
            if (r0 == r7) goto L_0x005b
            if (r0 == r5) goto L_0x005b
            if (r0 != r4) goto L_0x0035
            d.b.a.k$g r2 = r12.o0
            if (r2 != 0) goto L_0x002e
            d.b.a.k$f r2 = new d.b.a.k$f
            android.content.Context r3 = r12.A
            r2.<init>(r3)
            r12.o0 = r2
        L_0x002e:
            d.b.a.k$g r2 = r12.o0
            int r3 = r2.c()
            goto L_0x005c
        L_0x0035:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."
            r13.<init>(r0)
            throw r13
        L_0x003d:
            int r2 = android.os.Build.VERSION.SDK_INT
            if (r2 < r6) goto L_0x0052
            android.content.Context r2 = r12.A
            java.lang.Class<android.app.UiModeManager> r8 = android.app.UiModeManager.class
            java.lang.Object r2 = r2.getSystemService(r8)
            android.app.UiModeManager r2 = (android.app.UiModeManager) r2
            int r2 = r2.getNightMode()
            if (r2 != 0) goto L_0x0052
            goto L_0x005c
        L_0x0052:
            d.b.a.k$g r2 = r12.i()
            int r3 = r2.c()
            goto L_0x005c
        L_0x005b:
            r3 = r0
        L_0x005c:
            android.content.Context r2 = r12.A
            android.content.Context r2 = r2.getApplicationContext()
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
            int r2 = r2.uiMode
            r2 = r2 & 48
            if (r3 == r7) goto L_0x0077
            if (r3 == r5) goto L_0x0074
            r3 = r2
            goto L_0x0079
        L_0x0074:
            r3 = 32
            goto L_0x0079
        L_0x0077:
            r3 = 16
        L_0x0079:
            boolean r5 = r12.m0
            java.lang.String r8 = "AppCompatDelegate"
            if (r5 != 0) goto L_0x00b6
            java.lang.Object r5 = r12.z
            boolean r5 = r5 instanceof android.app.Activity
            if (r5 == 0) goto L_0x00b6
            android.content.Context r5 = r12.A
            android.content.pm.PackageManager r5 = r5.getPackageManager()
            if (r5 != 0) goto L_0x008f
            r5 = 0
            goto L_0x00ba
        L_0x008f:
            android.content.ComponentName r9 = new android.content.ComponentName     // Catch:{ NameNotFoundException -> 0x00ae }
            android.content.Context r10 = r12.A     // Catch:{ NameNotFoundException -> 0x00ae }
            java.lang.Object r11 = r12.z     // Catch:{ NameNotFoundException -> 0x00ae }
            java.lang.Class r11 = r11.getClass()     // Catch:{ NameNotFoundException -> 0x00ae }
            r9.<init>(r10, r11)     // Catch:{ NameNotFoundException -> 0x00ae }
            android.content.pm.ActivityInfo r5 = r5.getActivityInfo(r9, r1)     // Catch:{ NameNotFoundException -> 0x00ae }
            if (r5 == 0) goto L_0x00aa
            int r5 = r5.configChanges     // Catch:{ NameNotFoundException -> 0x00ae }
            r5 = r5 & 512(0x200, float:7.175E-43)
            if (r5 == 0) goto L_0x00aa
            r5 = 1
            goto L_0x00ab
        L_0x00aa:
            r5 = 0
        L_0x00ab:
            r12.l0 = r5     // Catch:{ NameNotFoundException -> 0x00ae }
            goto L_0x00b6
        L_0x00ae:
            r5 = move-exception
            java.lang.String r9 = "Exception while getting ActivityInfo"
            android.util.Log.d(r8, r9, r5)
            r12.l0 = r1
        L_0x00b6:
            r12.m0 = r7
            boolean r5 = r12.l0
        L_0x00ba:
            boolean r9 = A0
            if (r9 != 0) goto L_0x00c0
            if (r3 == r2) goto L_0x00e7
        L_0x00c0:
            if (r5 != 0) goto L_0x00e7
            boolean r2 = r12.f0
            if (r2 != 0) goto L_0x00e7
            java.lang.Object r2 = r12.z
            boolean r2 = r2 instanceof android.view.ContextThemeWrapper
            if (r2 == 0) goto L_0x00e7
            android.content.res.Configuration r2 = new android.content.res.Configuration
            r2.<init>()
            int r9 = r2.uiMode
            r9 = r9 & -49
            r9 = r9 | r3
            r2.uiMode = r9
            java.lang.Object r9 = r12.z     // Catch:{ IllegalStateException -> 0x00e1 }
            android.view.ContextThemeWrapper r9 = (android.view.ContextThemeWrapper) r9     // Catch:{ IllegalStateException -> 0x00e1 }
            r9.applyOverrideConfiguration(r2)     // Catch:{ IllegalStateException -> 0x00e1 }
            r1 = 1
            goto L_0x00e7
        L_0x00e1:
            r2 = move-exception
            java.lang.String r9 = "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"
            android.util.Log.e(r8, r9, r2)
        L_0x00e7:
            android.content.Context r2 = r12.A
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
            int r2 = r2.uiMode
            r2 = r2 & 48
            if (r1 != 0) goto L_0x010d
            if (r2 == r3) goto L_0x010d
            if (r13 == 0) goto L_0x010d
            if (r5 != 0) goto L_0x010d
            boolean r13 = r12.f0
            if (r13 == 0) goto L_0x010d
            java.lang.Object r13 = r12.z
            boolean r8 = r13 instanceof android.app.Activity
            if (r8 == 0) goto L_0x010d
            android.app.Activity r13 = (android.app.Activity) r13
            d.i.a.a.d(r13)
            r1 = 1
        L_0x010d:
            r13 = 0
            if (r1 != 0) goto L_0x0244
            if (r2 == r3) goto L_0x0244
            android.content.Context r1 = r12.A
            android.content.res.Resources r1 = r1.getResources()
            android.content.res.Configuration r2 = new android.content.res.Configuration
            android.content.res.Configuration r8 = r1.getConfiguration()
            r2.<init>(r8)
            android.content.res.Configuration r8 = r1.getConfiguration()
            int r8 = r8.uiMode
            r8 = r8 & -49
            r3 = r3 | r8
            r2.uiMode = r3
            r1.updateConfiguration(r2, r13)
            int r3 = android.os.Build.VERSION.SDK_INT
            r8 = 26
            if (r3 >= r8) goto L_0x01ff
            r8 = 28
            if (r3 < r8) goto L_0x013b
            goto L_0x01ff
        L_0x013b:
            r8 = 24
            java.lang.String r9 = "mDrawableCache"
            java.lang.String r10 = "ResourcesFlusher"
            if (r3 < r8) goto L_0x01a3
            boolean r3 = d.b.a.r.f211h
            if (r3 != 0) goto L_0x015d
            java.lang.Class<android.content.res.Resources> r3 = android.content.res.Resources.class
            java.lang.String r8 = "mResourcesImpl"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r8)     // Catch:{ NoSuchFieldException -> 0x0155 }
            d.b.a.r.f210g = r3     // Catch:{ NoSuchFieldException -> 0x0155 }
            r3.setAccessible(r7)     // Catch:{ NoSuchFieldException -> 0x0155 }
            goto L_0x015b
        L_0x0155:
            r3 = move-exception
            java.lang.String r8 = "Could not retrieve Resources#mResourcesImpl field"
            android.util.Log.e(r10, r8, r3)
        L_0x015b:
            d.b.a.r.f211h = r7
        L_0x015d:
            java.lang.reflect.Field r3 = d.b.a.r.f210g
            if (r3 != 0) goto L_0x0163
            goto L_0x01ff
        L_0x0163:
            java.lang.Object r1 = r3.get(r1)     // Catch:{ IllegalAccessException -> 0x0168 }
            goto L_0x016f
        L_0x0168:
            r1 = move-exception
            java.lang.String r3 = "Could not retrieve value from Resources#mResourcesImpl"
            android.util.Log.e(r10, r3, r1)
            r1 = r13
        L_0x016f:
            if (r1 != 0) goto L_0x0173
            goto L_0x01ff
        L_0x0173:
            boolean r3 = d.b.a.r.b
            if (r3 != 0) goto L_0x018d
            java.lang.Class r3 = r1.getClass()     // Catch:{ NoSuchFieldException -> 0x0185 }
            java.lang.reflect.Field r3 = r3.getDeclaredField(r9)     // Catch:{ NoSuchFieldException -> 0x0185 }
            d.b.a.r.a = r3     // Catch:{ NoSuchFieldException -> 0x0185 }
            r3.setAccessible(r7)     // Catch:{ NoSuchFieldException -> 0x0185 }
            goto L_0x018b
        L_0x0185:
            r3 = move-exception
            java.lang.String r8 = "Could not retrieve ResourcesImpl#mDrawableCache field"
            android.util.Log.e(r10, r8, r3)
        L_0x018b:
            d.b.a.r.b = r7
        L_0x018d:
            java.lang.reflect.Field r3 = d.b.a.r.a
            if (r3 == 0) goto L_0x019c
            java.lang.Object r1 = r3.get(r1)     // Catch:{ IllegalAccessException -> 0x0196 }
            goto L_0x019d
        L_0x0196:
            r1 = move-exception
            java.lang.String r3 = "Could not retrieve value from ResourcesImpl#mDrawableCache"
            android.util.Log.e(r10, r3, r1)
        L_0x019c:
            r1 = r13
        L_0x019d:
            if (r1 == 0) goto L_0x01ff
            d.b.a.r.b((java.lang.Object) r1)
            goto L_0x01ff
        L_0x01a3:
            java.lang.String r8 = "Could not retrieve Resources#mDrawableCache field"
            java.lang.String r11 = "Could not retrieve value from Resources#mDrawableCache"
            if (r3 < r6) goto L_0x01d4
            boolean r3 = d.b.a.r.b
            if (r3 != 0) goto L_0x01bf
            java.lang.Class<android.content.res.Resources> r3 = android.content.res.Resources.class
            java.lang.reflect.Field r3 = r3.getDeclaredField(r9)     // Catch:{ NoSuchFieldException -> 0x01b9 }
            d.b.a.r.a = r3     // Catch:{ NoSuchFieldException -> 0x01b9 }
            r3.setAccessible(r7)     // Catch:{ NoSuchFieldException -> 0x01b9 }
            goto L_0x01bd
        L_0x01b9:
            r3 = move-exception
            android.util.Log.e(r10, r8, r3)
        L_0x01bd:
            d.b.a.r.b = r7
        L_0x01bf:
            java.lang.reflect.Field r3 = d.b.a.r.a
            if (r3 == 0) goto L_0x01cc
            java.lang.Object r1 = r3.get(r1)     // Catch:{ IllegalAccessException -> 0x01c8 }
            goto L_0x01cd
        L_0x01c8:
            r1 = move-exception
            android.util.Log.e(r10, r11, r1)
        L_0x01cc:
            r1 = r13
        L_0x01cd:
            if (r1 != 0) goto L_0x01d0
            goto L_0x01ff
        L_0x01d0:
            d.b.a.r.b((java.lang.Object) r1)
            goto L_0x01ff
        L_0x01d4:
            boolean r3 = d.b.a.r.b
            if (r3 != 0) goto L_0x01ea
            java.lang.Class<android.content.res.Resources> r3 = android.content.res.Resources.class
            java.lang.reflect.Field r3 = r3.getDeclaredField(r9)     // Catch:{ NoSuchFieldException -> 0x01e4 }
            d.b.a.r.a = r3     // Catch:{ NoSuchFieldException -> 0x01e4 }
            r3.setAccessible(r7)     // Catch:{ NoSuchFieldException -> 0x01e4 }
            goto L_0x01e8
        L_0x01e4:
            r3 = move-exception
            android.util.Log.e(r10, r8, r3)
        L_0x01e8:
            d.b.a.r.b = r7
        L_0x01ea:
            java.lang.reflect.Field r3 = d.b.a.r.a
            if (r3 == 0) goto L_0x01ff
            java.lang.Object r1 = r3.get(r1)     // Catch:{ IllegalAccessException -> 0x01f5 }
            java.util.Map r1 = (java.util.Map) r1     // Catch:{ IllegalAccessException -> 0x01f5 }
            goto L_0x01fa
        L_0x01f5:
            r1 = move-exception
            android.util.Log.e(r10, r11, r1)
            r1 = r13
        L_0x01fa:
            if (r1 == 0) goto L_0x01ff
            r1.clear()
        L_0x01ff:
            int r1 = r12.k0
            if (r1 == 0) goto L_0x0217
            android.content.Context r3 = r12.A
            r3.setTheme(r1)
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r6) goto L_0x0217
            android.content.Context r1 = r12.A
            android.content.res.Resources$Theme r1 = r1.getTheme()
            int r3 = r12.k0
            r1.applyStyle(r3, r7)
        L_0x0217:
            if (r5 == 0) goto L_0x0245
            java.lang.Object r1 = r12.z
            boolean r3 = r1 instanceof android.app.Activity
            if (r3 == 0) goto L_0x0245
            android.app.Activity r1 = (android.app.Activity) r1
            boolean r3 = r1 instanceof d.o.l
            if (r3 == 0) goto L_0x023c
            r3 = r1
            d.o.l r3 = (d.o.l) r3
            d.o.g r3 = r3.getLifecycle()
            d.o.m r3 = (d.o.m) r3
            d.o.g$b r3 = r3.b
            d.o.g$b r5 = d.o.g.b.STARTED
            boolean r3 = r3.isAtLeast(r5)
            if (r3 == 0) goto L_0x0245
            r1.onConfigurationChanged(r2)
            goto L_0x0245
        L_0x023c:
            boolean r3 = r12.h0
            if (r3 == 0) goto L_0x0245
            r1.onConfigurationChanged(r2)
            goto L_0x0245
        L_0x0244:
            r7 = r1
        L_0x0245:
            if (r7 == 0) goto L_0x0253
            java.lang.Object r1 = r12.z
            boolean r2 = r1 instanceof d.b.a.h
            if (r2 == 0) goto L_0x0253
            d.b.a.h r1 = (d.b.a.h) r1
            if (r1 == 0) goto L_0x0252
            goto L_0x0253
        L_0x0252:
            throw r13
        L_0x0253:
            if (r0 != 0) goto L_0x025d
            d.b.a.k$g r13 = r12.i()
            r13.e()
            goto L_0x0264
        L_0x025d:
            d.b.a.k$g r13 = r12.n0
            if (r13 == 0) goto L_0x0264
            r13.a()
        L_0x0264:
            if (r0 != r4) goto L_0x0279
            d.b.a.k$g r13 = r12.o0
            if (r13 != 0) goto L_0x0273
            d.b.a.k$f r13 = new d.b.a.k$f
            android.content.Context r0 = r12.A
            r13.<init>(r0)
            r12.o0 = r13
        L_0x0273:
            d.b.a.k$g r13 = r12.o0
            r13.e()
            goto L_0x0280
        L_0x0279:
            d.b.a.k$g r13 = r12.o0
            if (r13 == 0) goto L_0x0280
            r13.a()
        L_0x0280:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.a.k.a(boolean):boolean");
    }
}
