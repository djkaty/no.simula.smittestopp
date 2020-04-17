package d.b.e;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import d.b.d.i.g;
import d.i.i.n;
import d.i.i.s;
import d.i.i.t;

public abstract class a extends ViewGroup {
    public c A;
    public int B;
    public s C;
    public boolean D;
    public boolean E;
    public final C0014a x;
    public final Context y;
    public ActionMenuView z;

    /* renamed from: d.b.e.a$a  reason: collision with other inner class name */
    public class C0014a implements t {
        public boolean a = false;
        public int b;

        public C0014a() {
        }

        public void a(View view) {
            if (!this.a) {
                a aVar = a.this;
                aVar.C = null;
                a.super.setVisibility(this.b);
            }
        }

        public void b(View view) {
            a.super.setVisibility(0);
            this.a = false;
        }

        public void c(View view) {
            this.a = true;
        }
    }

    public a(Context context) {
        this(context, (AttributeSet) null);
    }

    public int getAnimatedVisibility() {
        if (this.C != null) {
            return this.x.b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.B;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes((AttributeSet) null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        c cVar = this.A;
        if (cVar != null) {
            Configuration configuration2 = cVar.y.getResources().getConfiguration();
            int i2 = configuration2.screenWidthDp;
            int i3 = configuration2.screenHeightDp;
            cVar.N = (configuration2.smallestScreenWidthDp > 600 || i2 > 600 || (i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960)) ? 5 : (i2 >= 500 || (i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640)) ? 4 : i2 >= 360 ? 3 : 2;
            g gVar = cVar.z;
            if (gVar != null) {
                gVar.b(true);
            }
        }
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.E = false;
        }
        if (!this.E) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.E = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.E = false;
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.D = false;
        }
        if (!this.D) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i2);

    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            s sVar = this.C;
            if (sVar != null) {
                sVar.a();
            }
            super.setVisibility(i2);
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public s a(int i2, long j2) {
        s sVar = this.C;
        if (sVar != null) {
            sVar.a();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            s a = n.a(this);
            a.a(1.0f);
            a.a(j2);
            C0014a aVar = this.x;
            a.this.C = a;
            aVar.b = i2;
            View view = (View) a.a.get();
            if (view != null) {
                a.a(view, aVar);
            }
            return a;
        }
        s a2 = n.a(this);
        a2.a(0.0f);
        a2.a(j2);
        C0014a aVar2 = this.x;
        a.this.C = a2;
        aVar2.b = i2;
        View view2 = (View) a2.a.get();
        if (view2 != null) {
            a2.a(view2, aVar2);
        }
        return a2;
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = new C0014a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.y = context;
        } else {
            this.y = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    public int a(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    public int a(View view, int i2, int i3, int i4, boolean z2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = ((i4 - measuredHeight) / 2) + i3;
        if (z2) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z2 ? -measuredWidth : measuredWidth;
    }
}
