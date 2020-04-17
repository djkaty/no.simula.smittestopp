package e.c.a.b.f;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import e.c.a.b.k.a;

public class c {
    public final a a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f1257c;

    /* renamed from: d  reason: collision with root package name */
    public int f1258d;

    /* renamed from: e  reason: collision with root package name */
    public int f1259e;

    /* renamed from: f  reason: collision with root package name */
    public int f1260f;

    /* renamed from: g  reason: collision with root package name */
    public int f1261g;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f1262h;

    /* renamed from: i  reason: collision with root package name */
    public ColorStateList f1263i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f1264j;

    /* renamed from: k  reason: collision with root package name */
    public ColorStateList f1265k;

    /* renamed from: l  reason: collision with root package name */
    public final Paint f1266l = new Paint(1);
    public final Rect m = new Rect();
    public final RectF n = new RectF();
    public GradientDrawable o;
    public GradientDrawable p;
    public GradientDrawable q;
    public boolean r = false;

    public c(a aVar) {
        this.a = aVar;
    }

    @TargetApi(21)
    public final Drawable a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.o = gradientDrawable;
        gradientDrawable.setCornerRadius(((float) this.f1260f) + 1.0E-5f);
        this.o.setColor(-1);
        b();
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.p = gradientDrawable2;
        gradientDrawable2.setCornerRadius(((float) this.f1260f) + 1.0E-5f);
        this.p.setColor(0);
        this.p.setStroke(this.f1261g, this.f1264j);
        InsetDrawable insetDrawable = new InsetDrawable(new LayerDrawable(new Drawable[]{this.o, this.p}), this.b, this.f1258d, this.f1257c, this.f1259e);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        this.q = gradientDrawable3;
        gradientDrawable3.setCornerRadius(((float) this.f1260f) + 1.0E-5f);
        this.q.setColor(-1);
        return new b(a.a(this.f1265k), insetDrawable, this.q);
    }

    public final void b() {
        GradientDrawable gradientDrawable = this.o;
        if (gradientDrawable != null) {
            gradientDrawable.setTintList(this.f1263i);
            PorterDuff.Mode mode = this.f1262h;
            if (mode != null) {
                this.o.setTintMode(mode);
            }
        }
    }
}
