package d.t.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import d.i.i.n;
import d.t.a.s;
import java.util.ArrayList;
import java.util.List;

public class l extends s.j implements s.n {
    public static final int[] D = {16842919};
    public static final int[] E = new int[0];
    public int A = 0;
    public final Runnable B = new a();
    public final s.o C = new b();
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final StateListDrawable f792c;

    /* renamed from: d  reason: collision with root package name */
    public final Drawable f793d;

    /* renamed from: e  reason: collision with root package name */
    public final int f794e;

    /* renamed from: f  reason: collision with root package name */
    public final int f795f;

    /* renamed from: g  reason: collision with root package name */
    public final StateListDrawable f796g;

    /* renamed from: h  reason: collision with root package name */
    public final Drawable f797h;

    /* renamed from: i  reason: collision with root package name */
    public final int f798i;

    /* renamed from: j  reason: collision with root package name */
    public final int f799j;

    /* renamed from: k  reason: collision with root package name */
    public int f800k;

    /* renamed from: l  reason: collision with root package name */
    public int f801l;
    public float m;
    public int n;
    public int o;
    public float p;
    public int q = 0;
    public int r = 0;
    public s s;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];
    public final ValueAnimator z = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            l lVar = l.this;
            int i2 = lVar.A;
            if (i2 == 1) {
                lVar.z.cancel();
            } else if (i2 != 2) {
                return;
            }
            lVar.A = 3;
            ValueAnimator valueAnimator = lVar.z;
            valueAnimator.setFloatValues(new float[]{((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f});
            lVar.z.setDuration((long) 500);
            lVar.z.start();
        }
    }

    public class b extends s.o {
        public b() {
        }
    }

    public class c extends AnimatorListenerAdapter {
        public boolean a = false;

        public c() {
        }

        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                this.a = false;
            } else if (((Float) l.this.z.getAnimatedValue()).floatValue() == 0.0f) {
                l lVar = l.this;
                lVar.A = 0;
                lVar.a(0);
            } else {
                l lVar2 = l.this;
                lVar2.A = 2;
                lVar2.s.invalidate();
            }
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            l.this.f792c.setAlpha(floatValue);
            l.this.f793d.setAlpha(floatValue);
            l.this.s.invalidate();
        }
    }

    public l(s sVar, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        this.f792c = stateListDrawable;
        this.f793d = drawable;
        this.f796g = stateListDrawable2;
        this.f797h = drawable2;
        this.f794e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f795f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f798i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f799j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.a = i3;
        this.b = i4;
        this.f792c.setAlpha(255);
        this.f793d.setAlpha(255);
        this.z.addListener(new c());
        this.z.addUpdateListener(new d());
        s sVar2 = this.s;
        if (sVar2 != sVar) {
            if (sVar2 != null) {
                s.k kVar = sVar2.I;
                if (kVar != null) {
                    kVar.a("Cannot remove item decoration during a scroll  or layout");
                }
                sVar2.K.remove(this);
                if (sVar2.K.isEmpty()) {
                    sVar2.setWillNotDraw(sVar2.getOverScrollMode() == 2);
                }
                sVar2.l();
                sVar2.requestLayout();
                s sVar3 = this.s;
                sVar3.L.remove(this);
                if (sVar3.M == this) {
                    sVar3.M = null;
                }
                s sVar4 = this.s;
                s.o oVar = this.C;
                List<s.o> list = sVar4.E0;
                if (list != null) {
                    list.remove(oVar);
                }
                a();
            }
            this.s = sVar;
            if (sVar != null) {
                s.k kVar2 = sVar.I;
                if (kVar2 != null) {
                    kVar2.a("Cannot add item decoration during a scroll  or layout");
                }
                if (sVar.K.isEmpty()) {
                    sVar.setWillNotDraw(false);
                }
                sVar.K.add(this);
                sVar.l();
                sVar.requestLayout();
                this.s.L.add(this);
                s sVar5 = this.s;
                s.o oVar2 = this.C;
                if (sVar5.E0 == null) {
                    sVar5.E0 = new ArrayList();
                }
                sVar5.E0.add(oVar2);
            }
        }
    }

    public void a(int i2) {
        if (i2 == 2 && this.v != 2) {
            this.f792c.setState(D);
            a();
        }
        if (i2 == 0) {
            this.s.invalidate();
        } else {
            b();
        }
        if (this.v == 2 && i2 != 2) {
            this.f792c.setState(E);
            a();
            this.s.postDelayed(this.B, (long) 1200);
        } else if (i2 == 1) {
            a();
            this.s.postDelayed(this.B, (long) 1500);
        }
        this.v = i2;
    }

    public void a(boolean z2) {
    }

    public boolean b(float f2, float f3) {
        if (n.i(this.s) == 1) {
            if (f2 > ((float) (this.f794e / 2))) {
                return false;
            }
        } else if (f2 < ((float) (this.q - this.f794e))) {
            return false;
        }
        int i2 = this.f801l;
        int i3 = this.f800k / 2;
        if (f3 < ((float) (i2 - i3)) || f3 > ((float) (i3 + i2))) {
            return false;
        }
        return true;
    }

    public void b() {
        int i2 = this.A;
        if (i2 != 0) {
            if (i2 == 3) {
                this.z.cancel();
            } else {
                return;
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(new float[]{((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f});
        this.z.setDuration(500);
        this.z.setStartDelay(0);
        this.z.start();
    }

    public void b(s sVar, MotionEvent motionEvent) {
        if (this.v != 0) {
            if (motionEvent.getAction() == 0) {
                boolean b2 = b(motionEvent.getX(), motionEvent.getY());
                boolean a2 = a(motionEvent.getX(), motionEvent.getY());
                if (b2 || a2) {
                    if (a2) {
                        this.w = 1;
                        this.p = (float) ((int) motionEvent.getX());
                    } else if (b2) {
                        this.w = 2;
                        this.m = (float) ((int) motionEvent.getY());
                    }
                    a(2);
                }
            } else if (motionEvent.getAction() == 1 && this.v == 2) {
                this.m = 0.0f;
                this.p = 0.0f;
                a(1);
                this.w = 0;
            } else if (motionEvent.getAction() == 2 && this.v == 2) {
                b();
                if (this.w == 1) {
                    float x2 = motionEvent.getX();
                    int[] iArr = this.y;
                    int i2 = this.b;
                    iArr[0] = i2;
                    iArr[1] = this.q - i2;
                    float max = Math.max((float) iArr[0], Math.min((float) iArr[1], x2));
                    if (Math.abs(((float) this.o) - max) >= 2.0f) {
                        int a3 = a(this.p, max, iArr, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
                        if (a3 != 0) {
                            this.s.scrollBy(a3, 0);
                        }
                        this.p = max;
                    }
                }
                if (this.w == 2) {
                    float y2 = motionEvent.getY();
                    int[] iArr2 = this.x;
                    int i3 = this.b;
                    iArr2[0] = i3;
                    iArr2[1] = this.r - i3;
                    float max2 = Math.max((float) iArr2[0], Math.min((float) iArr2[1], y2));
                    if (Math.abs(((float) this.f801l) - max2) >= 2.0f) {
                        int a4 = a(this.m, max2, iArr2, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
                        if (a4 != 0) {
                            this.s.scrollBy(0, a4);
                        }
                        this.m = max2;
                    }
                }
            }
        }
    }

    public final void a() {
        this.s.removeCallbacks(this.B);
    }

    public boolean a(s sVar, MotionEvent motionEvent) {
        int i2 = this.v;
        if (i2 == 1) {
            boolean b2 = b(motionEvent.getX(), motionEvent.getY());
            boolean a2 = a(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!b2 && !a2) {
                return false;
            }
            if (a2) {
                this.w = 1;
                this.p = (float) ((int) motionEvent.getX());
            } else if (b2) {
                this.w = 2;
                this.m = (float) ((int) motionEvent.getY());
            }
            a(2);
        } else if (i2 == 2) {
            return true;
        } else {
            return false;
        }
        return true;
    }

    public final int a(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f3 - f2) / ((float) i5)) * ((float) i6));
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    public boolean a(float f2, float f3) {
        if (f3 >= ((float) (this.r - this.f798i))) {
            int i2 = this.o;
            int i3 = this.n;
            return f2 >= ((float) (i2 - (i3 / 2))) && f2 <= ((float) ((i3 / 2) + i2));
        }
    }
}
