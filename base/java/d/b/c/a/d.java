package d.b.c.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;
import d.b.a.r;

public class d extends Drawable {
    public static final float m = ((float) Math.toRadians(45.0d));
    public final Paint a = new Paint();
    public float b;

    /* renamed from: c  reason: collision with root package name */
    public float f248c;

    /* renamed from: d  reason: collision with root package name */
    public float f249d;

    /* renamed from: e  reason: collision with root package name */
    public float f250e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f251f;

    /* renamed from: g  reason: collision with root package name */
    public final Path f252g = new Path();

    /* renamed from: h  reason: collision with root package name */
    public final int f253h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f254i = false;

    /* renamed from: j  reason: collision with root package name */
    public float f255j;

    /* renamed from: k  reason: collision with root package name */
    public float f256k;

    /* renamed from: l  reason: collision with root package name */
    public int f257l = 2;

    public d(Context context) {
        this.a.setStyle(Paint.Style.STROKE);
        this.a.setStrokeJoin(Paint.Join.MITER);
        this.a.setStrokeCap(Paint.Cap.BUTT);
        this.a.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes((AttributeSet) null, R$styleable.DrawerArrowToggle, R$attr.drawerArrowStyle, R$style.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = obtainStyledAttributes.getColor(R$styleable.DrawerArrowToggle_color, 0);
        if (color != this.a.getColor()) {
            this.a.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_thickness, 0.0f);
        if (this.a.getStrokeWidth() != dimension) {
            this.a.setStrokeWidth(dimension);
            this.f256k = (float) (Math.cos((double) m) * ((double) (dimension / 2.0f)));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(R$styleable.DrawerArrowToggle_spinBars, true);
        if (this.f251f != z) {
            this.f251f = z;
            invalidateSelf();
        }
        float round = (float) Math.round(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_gapBetweenBars, 0.0f));
        if (round != this.f250e) {
            this.f250e = round;
            invalidateSelf();
        }
        this.f253h = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DrawerArrowToggle_drawableSize, 0);
        this.f248c = (float) Math.round(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_barLength, 0.0f));
        this.b = (float) Math.round(obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f249d = obtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    public static float a(float f2, float f3, float f4) {
        return ((f3 - f2) * f4) + f2;
    }

    public void draw(Canvas canvas) {
        Canvas canvas2 = canvas;
        Rect bounds = getBounds();
        int i2 = this.f257l;
        boolean z = false;
        if (i2 != 0 && (i2 == 1 || (i2 == 3 ? r.b((Drawable) this) == 0 : r.b((Drawable) this) == 1))) {
            z = true;
        }
        float f2 = this.b;
        float a2 = a(this.f248c, (float) Math.sqrt((double) (f2 * f2 * 2.0f)), this.f255j);
        float a3 = a(this.f248c, this.f249d, this.f255j);
        float round = (float) Math.round(a(0.0f, this.f256k, this.f255j));
        float a4 = a(0.0f, m, this.f255j);
        double d2 = (double) a2;
        float a5 = a(z ? 0.0f : -180.0f, z ? 180.0f : 0.0f, this.f255j);
        double d3 = (double) a4;
        boolean z2 = z;
        float round2 = (float) Math.round(Math.cos(d3) * d2);
        float round3 = (float) Math.round(Math.sin(d3) * d2);
        this.f252g.rewind();
        float a6 = a(this.a.getStrokeWidth() + this.f250e, -this.f256k, this.f255j);
        float f3 = (-a3) / 2.0f;
        this.f252g.moveTo(f3 + round, 0.0f);
        this.f252g.rLineTo(a3 - (round * 2.0f), 0.0f);
        this.f252g.moveTo(f3, a6);
        this.f252g.rLineTo(round2, round3);
        this.f252g.moveTo(f3, -a6);
        this.f252g.rLineTo(round2, -round3);
        this.f252g.close();
        canvas.save();
        float strokeWidth = this.a.getStrokeWidth();
        float height = ((float) bounds.height()) - (3.0f * strokeWidth);
        float f4 = this.f250e;
        canvas2.translate((float) bounds.centerX(), (strokeWidth * 1.5f) + f4 + ((float) ((((int) (height - (2.0f * f4))) / 4) * 2)));
        if (this.f251f) {
            canvas2.rotate(a5 * ((float) (this.f254i ^ z2 ? -1 : 1)));
        } else if (z2) {
            canvas2.rotate(180.0f);
        }
        canvas2.drawPath(this.f252g, this.a);
        canvas.restore();
    }

    public int getIntrinsicHeight() {
        return this.f253h;
    }

    public int getIntrinsicWidth() {
        return this.f253h;
    }

    public int getOpacity() {
        return -3;
    }

    public void setAlpha(int i2) {
        if (i2 != this.a.getAlpha()) {
            this.a.setAlpha(i2);
            invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setProgress(float f2) {
        if (this.f255j != f2) {
            this.f255j = f2;
            invalidateSelf();
        }
    }
}
