package d.b.e;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;

public class b1 {
    public final Context a;
    public final View b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f341c;

    /* renamed from: d  reason: collision with root package name */
    public final WindowManager.LayoutParams f342d = new WindowManager.LayoutParams();

    /* renamed from: e  reason: collision with root package name */
    public final Rect f343e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    public final int[] f344f = new int[2];

    /* renamed from: g  reason: collision with root package name */
    public final int[] f345g = new int[2];

    public b1(Context context) {
        this.a = context;
        View inflate = LayoutInflater.from(context).inflate(R$layout.abc_tooltip, (ViewGroup) null);
        this.b = inflate;
        this.f341c = (TextView) inflate.findViewById(R$id.message);
        this.f342d.setTitle(b1.class.getSimpleName());
        this.f342d.packageName = this.a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f342d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R$style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public void a() {
        if (this.b.getParent() != null) {
            ((WindowManager) this.a.getSystemService("window")).removeView(this.b);
        }
    }
}
