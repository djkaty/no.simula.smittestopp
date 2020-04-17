package e.c.a.b.g;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;

public interface c {

    public static class b implements TypeEvaluator<e> {
        public static final TypeEvaluator<e> b = new b();
        public final e a = new e((a) null);

        public Object evaluate(float f2, Object obj, Object obj2) {
            e eVar = (e) obj;
            e eVar2 = (e) obj2;
            e eVar3 = this.a;
            float a2 = e.c.a.a.b.l.c.a(eVar.a, eVar2.a, f2);
            float a3 = e.c.a.a.b.l.c.a(eVar.b, eVar2.b, f2);
            float a4 = e.c.a.a.b.l.c.a(eVar.f1267c, eVar2.f1267c, f2);
            eVar3.a = a2;
            eVar3.b = a3;
            eVar3.f1267c = a4;
            return this.a;
        }
    }

    /* renamed from: e.c.a.b.g.c$c  reason: collision with other inner class name */
    public static class C0070c extends Property<c, e> {
        public static final Property<c, e> a = new C0070c("circularReveal");

        public C0070c(String str) {
            super(e.class, str);
        }

        public Object get(Object obj) {
            return ((c) obj).getRevealInfo();
        }

        public void set(Object obj, Object obj2) {
            ((c) obj).setRevealInfo((e) obj2);
        }
    }

    public static class d extends Property<c, Integer> {
        public static final Property<c, Integer> a = new d("circularRevealScrimColor");

        public d(String str) {
            super(Integer.class, str);
        }

        public Object get(Object obj) {
            return Integer.valueOf(((c) obj).getCircularRevealScrimColor());
        }

        public void set(Object obj, Object obj2) {
            ((c) obj).setCircularRevealScrimColor(((Integer) obj2).intValue());
        }
    }

    public static class e {
        public float a;
        public float b;

        /* renamed from: c  reason: collision with root package name */
        public float f1267c;

        public e() {
        }

        public /* synthetic */ e(a aVar) {
        }

        public e(float f2, float f3, float f4) {
            this.a = f2;
            this.b = f3;
            this.f1267c = f4;
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i2);

    void setRevealInfo(e eVar);
}
