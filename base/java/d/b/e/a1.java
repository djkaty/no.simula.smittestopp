package d.b.e;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.R$dimen;
import com.microsoft.appcenter.channel.DefaultChannel;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import d.i.i.n;
import d.i.i.r;

public class a1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static a1 G;
    public static a1 H;
    public final Runnable A = new a();
    public final Runnable B = new b();
    public int C;
    public int D;
    public b1 E;
    public boolean F;
    public final View x;
    public final CharSequence y;
    public final int z;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            a1.this.a(false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            a1.this.b();
        }
    }

    public a1(View view, CharSequence charSequence) {
        this.x = view;
        this.y = charSequence;
        this.z = r.a(ViewConfiguration.get(view.getContext()));
        a();
        this.x.setOnLongClickListener(this);
        this.x.setOnHoverListener(this);
    }

    public void a(boolean z2) {
        int i2;
        int i3;
        long j2;
        int i4;
        long j3;
        if (n.s(this.x)) {
            a((a1) null);
            a1 a1Var = H;
            if (a1Var != null) {
                a1Var.b();
            }
            H = this;
            this.F = z2;
            b1 b1Var = new b1(this.x.getContext());
            this.E = b1Var;
            View view = this.x;
            int i5 = this.C;
            int i6 = this.D;
            boolean z3 = this.F;
            CharSequence charSequence = this.y;
            if (b1Var.b.getParent() != null) {
                b1Var.a();
            }
            b1Var.f341c.setText(charSequence);
            WindowManager.LayoutParams layoutParams = b1Var.f342d;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = b1Var.a.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                i5 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = b1Var.a.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_extra_offset);
                i2 = i6 + dimensionPixelOffset2;
                i3 = i6 - dimensionPixelOffset2;
            } else {
                i2 = view.getHeight();
                i3 = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = b1Var.a.getResources().getDimensionPixelOffset(z3 ? R$dimen.tooltip_y_offset_touch : R$dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context = view.getContext();
                while (true) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else if (context instanceof Activity) {
                        rootView = ((Activity) context).getWindow().getDecorView();
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
            } else {
                rootView.getWindowVisibleDisplayFrame(b1Var.f343e);
                Rect rect = b1Var.f343e;
                if (rect.left < 0 && rect.top < 0) {
                    Resources resources = b1Var.a.getResources();
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", TelemetryEventStrings.Os.OS_NAME);
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    b1Var.f343e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(b1Var.f345g);
                view.getLocationOnScreen(b1Var.f344f);
                int[] iArr = b1Var.f344f;
                int i7 = iArr[0];
                int[] iArr2 = b1Var.f345g;
                iArr[0] = i7 - iArr2[0];
                iArr[1] = iArr[1] - iArr2[1];
                layoutParams.x = (iArr[0] + i5) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                b1Var.b.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = b1Var.b.getMeasuredHeight();
                int[] iArr3 = b1Var.f344f;
                int i8 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
                int i9 = iArr3[1] + i2 + dimensionPixelOffset3;
                if (z3) {
                    if (i8 >= 0) {
                        layoutParams.y = i8;
                    } else {
                        layoutParams.y = i9;
                    }
                } else if (measuredHeight + i9 <= b1Var.f343e.height()) {
                    layoutParams.y = i9;
                } else {
                    layoutParams.y = i8;
                }
            }
            ((WindowManager) b1Var.a.getSystemService("window")).addView(b1Var.b, b1Var.f342d);
            this.x.addOnAttachStateChangeListener(this);
            if (this.F) {
                j2 = 2500;
            } else {
                if ((this.x.getWindowSystemUiVisibility() & 1) == 1) {
                    j3 = DefaultChannel.MINIMUM_TRANSMISSION_INTERVAL;
                    i4 = ViewConfiguration.getLongPressTimeout();
                } else {
                    j3 = 15000;
                    i4 = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j3 - ((long) i4);
            }
            this.x.removeCallbacks(this.B);
            this.x.postDelayed(this.B, j2);
        }
    }

    public void b() {
        if (H == this) {
            H = null;
            b1 b1Var = this.E;
            if (b1Var != null) {
                b1Var.a();
                this.E = null;
                a();
                this.x.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (G == this) {
            a((a1) null);
        }
        this.x.removeCallbacks(this.B);
    }

    public boolean onHover(View view, MotionEvent motionEvent) {
        boolean z2;
        if (this.E != null && this.F) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.x.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                a();
                b();
            }
        } else if (this.x.isEnabled() && this.E == null) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (Math.abs(x2 - this.C) > this.z || Math.abs(y2 - this.D) > this.z) {
                this.C = x2;
                this.D = y2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                a(this);
            }
        }
        return false;
    }

    public boolean onLongClick(View view) {
        this.C = view.getWidth() / 2;
        this.D = view.getHeight() / 2;
        a(true);
        return true;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        b();
    }

    public static void a(a1 a1Var) {
        a1 a1Var2 = G;
        if (a1Var2 != null) {
            a1Var2.x.removeCallbacks(a1Var2.A);
        }
        G = a1Var;
        if (a1Var != null) {
            a1Var.x.postDelayed(a1Var.A, (long) ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        this.C = Integer.MAX_VALUE;
        this.D = Integer.MAX_VALUE;
    }
}
