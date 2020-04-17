package e.c.a.b.e;

import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.microsoft.azure.storage.Constants;
import d.b.a.q;
import d.i.i.n;
import java.lang.ref.WeakReference;

public class b extends q {
    public boolean A;
    public boolean B;
    public boolean C;
    public BottomSheetBehavior.b D;
    public BottomSheetBehavior<FrameLayout> z;

    public class a implements View.OnClickListener {
        public a() {
        }

        public void onClick(View view) {
            b bVar = b.this;
            if (bVar.A && bVar.isShowing()) {
                b bVar2 = b.this;
                if (!bVar2.C) {
                    TypedArray obtainStyledAttributes = bVar2.getContext().obtainStyledAttributes(new int[]{16843611});
                    bVar2.B = obtainStyledAttributes.getBoolean(0, true);
                    obtainStyledAttributes.recycle();
                    bVar2.C = true;
                }
                if (bVar2.B) {
                    b.this.cancel();
                }
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c(b bVar) {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class d extends BottomSheetBehavior.b {
        public d() {
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b(android.content.Context r4, int r5) {
        /*
            r3 = this;
            r0 = 1
            if (r5 != 0) goto L_0x0019
            android.util.TypedValue r5 = new android.util.TypedValue
            r5.<init>()
            android.content.res.Resources$Theme r1 = r4.getTheme()
            int r2 = com.google.android.material.R$attr.bottomSheetDialogTheme
            boolean r1 = r1.resolveAttribute(r2, r5, r0)
            if (r1 == 0) goto L_0x0017
            int r5 = r5.resourceId
            goto L_0x0019
        L_0x0017:
            int r5 = com.google.android.material.R$style.Theme_Design_Light_BottomSheetDialog
        L_0x0019:
            r3.<init>(r4, r5)
            r3.A = r0
            r3.B = r0
            e.c.a.b.e.b$d r4 = new e.c.a.b.e.b$d
            r4.<init>()
            r3.D = r4
            r3.a((int) r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.e.b.<init>(android.content.Context, int):void");
    }

    public final View a(int i2, View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.design_bottom_sheet_dialog, (ViewGroup) null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(R$id.coordinator);
        if (i2 != 0 && view == null) {
            view = getLayoutInflater().inflate(i2, coordinatorLayout, false);
        }
        FrameLayout frameLayout2 = (FrameLayout) coordinatorLayout.findViewById(R$id.design_bottom_sheet);
        ViewGroup.LayoutParams layoutParams2 = frameLayout2.getLayoutParams();
        if (layoutParams2 instanceof CoordinatorLayout.f) {
            CoordinatorLayout.c cVar = ((CoordinatorLayout.f) layoutParams2).a;
            if (cVar instanceof BottomSheetBehavior) {
                BottomSheetBehavior<FrameLayout> bottomSheetBehavior = (BottomSheetBehavior) cVar;
                this.z = bottomSheetBehavior;
                bottomSheetBehavior.t = this.D;
                bottomSheetBehavior.f137j = this.A;
                if (layoutParams == null) {
                    frameLayout2.addView(view);
                } else {
                    frameLayout2.addView(view, layoutParams);
                }
                coordinatorLayout.findViewById(R$id.touch_outside).setOnClickListener(new a());
                n.a((View) frameLayout2, (d.i.i.a) new C0069b());
                frameLayout2.setOnTouchListener(new c(this));
                return frameLayout;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    public void onStart() {
        int i2;
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.z;
        if (bottomSheetBehavior != null && (i2 = bottomSheetBehavior.f139l) == 5 && 4 != i2) {
            WeakReference<V> weakReference = bottomSheetBehavior.r;
            if (weakReference == null) {
                bottomSheetBehavior.f139l = 4;
                return;
            }
            View view = (View) weakReference.get();
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent == null || !parent.isLayoutRequested() || !n.s(view)) {
                    bottomSheetBehavior.a(view, 4);
                } else {
                    view.post(new a(bottomSheetBehavior, view, 4));
                }
            }
        }
    }

    public void setCancelable(boolean z2) {
        super.setCancelable(z2);
        if (this.A != z2) {
            this.A = z2;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.z;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.f137j = z2;
            }
        }
    }

    public void setCanceledOnTouchOutside(boolean z2) {
        super.setCanceledOnTouchOutside(z2);
        if (z2 && !this.A) {
            this.A = true;
        }
        this.B = z2;
        this.C = true;
    }

    public void setContentView(int i2) {
        super.setContentView(a(i2, (View) null, (ViewGroup.LayoutParams) null));
    }

    public void setContentView(View view) {
        super.setContentView(a(0, view, (ViewGroup.LayoutParams) null));
    }

    /* renamed from: e.c.a.b.e.b$b  reason: collision with other inner class name */
    public class C0069b extends d.i.i.a {
        public C0069b() {
        }

        public boolean a(View view, int i2, Bundle bundle) {
            if (i2 == 1048576) {
                b bVar = b.this;
                if (bVar.A) {
                    bVar.cancel();
                    return true;
                }
            }
            return super.a(view, i2, bundle);
        }

        public void a(View view, d.i.i.x.d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            if (b.this.A) {
                dVar.a.addAction(Constants.MB);
                dVar.a.setDismissable(true);
                return;
            }
            dVar.a.setDismissable(false);
        }
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(a(0, view, layoutParams));
    }
}
