package e.c.a.b.i;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import d.i.i.n;
import e.c.a.b.a.g;
import java.util.ArrayList;
import java.util.List;

public class e {
    public static final int[] A = {16842910};
    public static final int[] B = new int[0];
    public static final TimeInterpolator v = e.c.a.b.a.a.b;
    public static final int[] w = {16842919, 16842910};
    public static final int[] x = {16843623, 16842908, 16842910};
    public static final int[] y = {16842908, 16842910};
    public static final int[] z = {16843623, 16842910};
    public int a = 0;
    public Animator b;

    /* renamed from: c  reason: collision with root package name */
    public g f1271c;

    /* renamed from: d  reason: collision with root package name */
    public g f1272d;

    /* renamed from: e  reason: collision with root package name */
    public g f1273e;

    /* renamed from: f  reason: collision with root package name */
    public g f1274f;

    /* renamed from: g  reason: collision with root package name */
    public final e.c.a.b.j.c f1275g;

    /* renamed from: h  reason: collision with root package name */
    public float f1276h;

    /* renamed from: i  reason: collision with root package name */
    public float f1277i;

    /* renamed from: j  reason: collision with root package name */
    public float f1278j;

    /* renamed from: k  reason: collision with root package name */
    public float f1279k;

    /* renamed from: l  reason: collision with root package name */
    public float f1280l = 1.0f;
    public ArrayList<Animator.AnimatorListener> m;
    public ArrayList<Animator.AnimatorListener> n;
    public final e.c.a.b.j.f o;
    public final e.c.a.b.l.b p;
    public final Rect q = new Rect();
    public final RectF r = new RectF();
    public final RectF s = new RectF();
    public final Matrix t = new Matrix();
    public ViewTreeObserver.OnPreDrawListener u;

    public class a extends f {
        public a(e eVar) {
            super((b) null);
        }
    }

    public class b extends f {
        public b() {
            super((b) null);
        }
    }

    public class c extends f {
        public c() {
            super((b) null);
        }
    }

    public interface d {
    }

    /* renamed from: e.c.a.b.i.e$e  reason: collision with other inner class name */
    public class C0071e extends f {
        public C0071e() {
            super((b) null);
        }
    }

    public abstract class f extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        public boolean a;

        public /* synthetic */ f(b bVar) {
        }

        public void onAnimationEnd(Animator animator) {
            throw null;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.a) {
                throw null;
            }
            valueAnimator.getAnimatedFraction();
            throw null;
        }
    }

    public e(e.c.a.b.j.f fVar, e.c.a.b.l.b bVar) {
        this.o = fVar;
        this.p = bVar;
        e.c.a.b.j.c cVar = new e.c.a.b.j.c();
        this.f1275g = cVar;
        cVar.a(w, a((f) new c()));
        this.f1275g.a(x, a((f) new b()));
        this.f1275g.a(y, a((f) new b()));
        this.f1275g.a(z, a((f) new b()));
        this.f1275g.a(A, a((f) new C0071e()));
        this.f1275g.a(B, a((f) new a(this)));
        this.f1276h = this.o.getRotation();
    }

    public float a() {
        throw null;
    }

    public final void a(float f2) {
        this.f1280l = f2;
        Matrix matrix = this.t;
        matrix.reset();
        this.o.getDrawable();
        this.o.setImageMatrix(matrix);
    }

    public void a(float f2, float f3, float f4) {
        throw null;
    }

    public void a(ColorStateList colorStateList) {
        throw null;
    }

    public void a(Rect rect) {
        throw null;
    }

    public void a(int[] iArr) {
        throw null;
    }

    public void b(Rect rect) {
        throw null;
    }

    public boolean b() {
        if (this.o.getVisibility() != 0) {
            if (this.a == 2) {
                return true;
            }
            return false;
        } else if (this.a != 1) {
            return true;
        } else {
            return false;
        }
    }

    public void c() {
        throw null;
    }

    public void d() {
        throw null;
    }

    public boolean e() {
        throw null;
    }

    public final boolean f() {
        return n.t(this.o) && !this.o.isInEditMode();
    }

    public final void g() {
        Rect rect = this.q;
        a(rect);
        b(rect);
        e.c.a.b.l.b bVar = this.p;
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        FloatingActionButton.b bVar2 = (FloatingActionButton.b) bVar;
        FloatingActionButton.this.H.set(i2, i3, i4, i5);
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        int i6 = floatingActionButton.F;
        floatingActionButton.setPadding(i2 + i6, i3 + i6, i4 + i6, i5 + i6);
    }

    public final AnimatorSet a(g gVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.o, View.ALPHA, new float[]{f2});
        gVar.a("opacity").a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.o, View.SCALE_X, new float[]{f3});
        gVar.a("scale").a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.o, View.SCALE_Y, new float[]{f3});
        gVar.a("scale").a(ofFloat3);
        arrayList.add(ofFloat3);
        this.t.reset();
        this.o.getDrawable();
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.o, new e.c.a.b.a.e(), new e.c.a.b.a.f(), new Matrix[]{new Matrix(this.t)});
        gVar.a("iconScale").a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        e.c.a.a.b.l.c.a(animatorSet, (List<Animator>) arrayList);
        return animatorSet;
    }

    public final ValueAnimator a(f fVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(v);
        valueAnimator.setDuration(100);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(new float[]{0.0f, 1.0f});
        return valueAnimator;
    }
}
