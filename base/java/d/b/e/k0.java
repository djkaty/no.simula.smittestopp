package d.b.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import com.microsoft.azure.storage.Constants;
import d.b.a.r;
import d.b.d.i.p;
import d.i.i.n;
import java.lang.reflect.Method;

public class k0 implements p {
    public static Method Z;
    public static Method a0;
    public static Method b0;
    public int A = -2;
    public int B = -2;
    public int C;
    public int D;
    public int E = 1002;
    public boolean F;
    public boolean G;
    public boolean H;
    public int I = 0;
    public boolean J = false;
    public boolean K = false;
    public int L = Integer.MAX_VALUE;
    public int M = 0;
    public DataSetObserver N;
    public View O;
    public AdapterView.OnItemClickListener P;
    public final e Q = new e();
    public final d R = new d();
    public final c S = new c();
    public final a T = new a();
    public final Handler U;
    public final Rect V = new Rect();
    public Rect W;
    public boolean X;
    public PopupWindow Y;
    public Context x;
    public ListAdapter y;
    public f0 z;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            f0 f0Var = k0.this.z;
            if (f0Var != null) {
                f0Var.setListSelectionHidden(true);
                f0Var.requestLayout();
            }
        }
    }

    public class b extends DataSetObserver {
        public b() {
        }

        public void onChanged() {
            if (k0.this.a()) {
                k0.this.c();
            }
        }

        public void onInvalidated() {
            k0.this.dismiss();
        }
    }

    public class c implements AbsListView.OnScrollListener {
        public c() {
        }

        public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i2) {
            boolean z = true;
            if (i2 == 1) {
                if (k0.this.Y.getInputMethodMode() != 2) {
                    z = false;
                }
                if (!z && k0.this.Y.getContentView() != null) {
                    k0 k0Var = k0.this;
                    k0Var.U.removeCallbacks(k0Var.Q);
                    k0.this.Q.run();
                }
            }
        }
    }

    public class d implements View.OnTouchListener {
        public d() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x2 = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = k0.this.Y) != null && popupWindow.isShowing() && x2 >= 0 && x2 < k0.this.Y.getWidth() && y >= 0 && y < k0.this.Y.getHeight()) {
                k0 k0Var = k0.this;
                k0Var.U.postDelayed(k0Var.Q, 250);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                k0 k0Var2 = k0.this;
                k0Var2.U.removeCallbacks(k0Var2.Q);
                return false;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        public void run() {
            f0 f0Var = k0.this.z;
            if (f0Var != null && n.s(f0Var) && k0.this.z.getCount() > k0.this.z.getChildCount()) {
                int childCount = k0.this.z.getChildCount();
                k0 k0Var = k0.this;
                if (childCount <= k0Var.L) {
                    k0Var.Y.setInputMethodMode(2);
                    k0.this.c();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            Class<PopupWindow> cls = PopupWindow.class;
            try {
                Z = cls.getDeclaredMethod("setClipToScreenEnabled", new Class[]{Boolean.TYPE});
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                b0 = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[]{Rect.class});
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            Class<PopupWindow> cls2 = PopupWindow.class;
            try {
                a0 = cls2.getDeclaredMethod("getMaxAvailableHeight", new Class[]{View.class, Integer.TYPE, Boolean.TYPE});
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public k0(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.x = context;
        this.U = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i2, i3);
        this.C = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.D = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.F = true;
        }
        obtainStyledAttributes.recycle();
        p pVar = new p(context, attributeSet, i2, i3);
        this.Y = pVar;
        pVar.setInputMethodMode(1);
    }

    public void a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.N;
        if (dataSetObserver == null) {
            this.N = new b();
        } else {
            ListAdapter listAdapter2 = this.y;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.y = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.N);
        }
        f0 f0Var = this.z;
        if (f0Var != null) {
            f0Var.setAdapter(this.y);
        }
    }

    public int b() {
        return this.C;
    }

    public void c() {
        int i2;
        int i3;
        int i4;
        f0 f0Var;
        int i5;
        boolean z2 = true;
        if (this.z == null) {
            f0 a2 = a(this.x, !this.X);
            this.z = a2;
            a2.setAdapter(this.y);
            this.z.setOnItemClickListener(this.P);
            this.z.setFocusable(true);
            this.z.setFocusableInTouchMode(true);
            this.z.setOnItemSelectedListener(new j0(this));
            this.z.setOnScrollListener(this.S);
            this.Y.setContentView(this.z);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.Y.getContentView();
        }
        Drawable background = this.Y.getBackground();
        if (background != null) {
            background.getPadding(this.V);
            Rect rect = this.V;
            int i6 = rect.top;
            i2 = rect.bottom + i6;
            if (!this.F) {
                this.D = -i6;
            }
        } else {
            this.V.setEmpty();
            i2 = 0;
        }
        boolean z3 = this.Y.getInputMethodMode() == 2;
        View view = this.O;
        int i7 = this.D;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = a0;
            if (method != null) {
                try {
                    i3 = ((Integer) method.invoke(this.Y, new Object[]{view, Integer.valueOf(i7), Boolean.valueOf(z3)})).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            i3 = this.Y.getMaxAvailableHeight(view, i7);
        } else {
            i3 = this.Y.getMaxAvailableHeight(view, i7, z3);
        }
        if (this.J || this.A == -1) {
            i4 = i3 + i2;
        } else {
            int i8 = this.B;
            if (i8 == -2) {
                int i9 = this.x.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.V;
                i5 = View.MeasureSpec.makeMeasureSpec(i9 - (rect2.left + rect2.right), Integer.MIN_VALUE);
            } else if (i8 != -1) {
                i5 = View.MeasureSpec.makeMeasureSpec(i8, Constants.GB);
            } else {
                int i10 = this.x.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.V;
                i5 = View.MeasureSpec.makeMeasureSpec(i10 - (rect3.left + rect3.right), Constants.GB);
            }
            int a3 = this.z.a(i5, i3 - 0, -1);
            i4 = a3 + (a3 > 0 ? this.z.getPaddingBottom() + this.z.getPaddingTop() + i2 + 0 : 0);
        }
        boolean z4 = this.Y.getInputMethodMode() == 2;
        r.a(this.Y, this.E);
        if (!this.Y.isShowing()) {
            int i11 = this.B;
            if (i11 == -1) {
                i11 = -1;
            } else if (i11 == -2) {
                i11 = this.O.getWidth();
            }
            int i12 = this.A;
            if (i12 == -1) {
                i4 = -1;
            } else if (i12 != -2) {
                i4 = i12;
            }
            this.Y.setWidth(i11);
            this.Y.setHeight(i4);
            if (Build.VERSION.SDK_INT <= 28) {
                Method method2 = Z;
                if (method2 != null) {
                    try {
                        method2.invoke(this.Y, new Object[]{true});
                    } catch (Exception unused2) {
                        Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                    }
                }
            } else {
                this.Y.setIsClippedToScreen(true);
            }
            this.Y.setOutsideTouchable(!this.K && !this.J);
            this.Y.setTouchInterceptor(this.R);
            if (this.H) {
                r.a(this.Y, this.G);
            }
            if (Build.VERSION.SDK_INT <= 28) {
                Method method3 = b0;
                if (method3 != null) {
                    try {
                        method3.invoke(this.Y, new Object[]{this.W});
                    } catch (Exception e2) {
                        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                    }
                }
            } else {
                this.Y.setEpicenterBounds(this.W);
            }
            this.Y.showAsDropDown(this.O, this.C, this.D, this.I);
            this.z.setSelection(-1);
            if ((!this.X || this.z.isInTouchMode()) && (f0Var = this.z) != null) {
                f0Var.setListSelectionHidden(true);
                f0Var.requestLayout();
            }
            if (!this.X) {
                this.U.post(this.T);
            }
        } else if (n.s(this.O)) {
            int i13 = this.B;
            if (i13 == -1) {
                i13 = -1;
            } else if (i13 == -2) {
                i13 = this.O.getWidth();
            }
            int i14 = this.A;
            if (i14 == -1) {
                if (!z4) {
                    i4 = -1;
                }
                if (z4) {
                    this.Y.setWidth(this.B == -1 ? -1 : 0);
                    this.Y.setHeight(0);
                } else {
                    this.Y.setWidth(this.B == -1 ? -1 : 0);
                    this.Y.setHeight(-1);
                }
            } else if (i14 != -2) {
                i4 = i14;
            }
            PopupWindow popupWindow = this.Y;
            if (this.K || this.J) {
                z2 = false;
            }
            popupWindow.setOutsideTouchable(z2);
            this.Y.update(this.O, this.C, this.D, i13 < 0 ? -1 : i13, i4 < 0 ? -1 : i4);
        }
    }

    public int d() {
        if (!this.F) {
            return 0;
        }
        return this.D;
    }

    public void dismiss() {
        this.Y.dismiss();
        this.Y.setContentView((View) null);
        this.z = null;
        this.U.removeCallbacks(this.Q);
    }

    public Drawable e() {
        return this.Y.getBackground();
    }

    public ListView g() {
        return this.z;
    }

    public void b(int i2) {
        this.D = i2;
        this.F = true;
    }

    public void d(int i2) {
        Drawable background = this.Y.getBackground();
        if (background != null) {
            background.getPadding(this.V);
            Rect rect = this.V;
            this.B = rect.left + rect.right + i2;
            return;
        }
        this.B = i2;
    }

    public void a(boolean z2) {
        this.X = z2;
        this.Y.setFocusable(z2);
    }

    public void a(Drawable drawable) {
        this.Y.setBackgroundDrawable(drawable);
    }

    public void a(int i2) {
        this.C = i2;
    }

    public boolean a() {
        return this.Y.isShowing();
    }

    public f0 a(Context context, boolean z2) {
        return new f0(context, z2);
    }
}
