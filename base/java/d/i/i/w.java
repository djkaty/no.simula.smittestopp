package d.i.i;

import android.view.WindowInsets;
import java.util.Objects;

public class w {
    public final Object a;

    public w(Object obj) {
        this.a = obj;
    }

    public int a() {
        return ((WindowInsets) this.a).getSystemWindowInsetBottom();
    }

    public int b() {
        return ((WindowInsets) this.a).getSystemWindowInsetLeft();
    }

    public int c() {
        return ((WindowInsets) this.a).getSystemWindowInsetRight();
    }

    public int d() {
        return ((WindowInsets) this.a).getSystemWindowInsetTop();
    }

    public boolean e() {
        return ((WindowInsets) this.a).isConsumed();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        return Objects.equals(this.a, ((w) obj).a);
    }

    public int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static w a(WindowInsets windowInsets) {
        return new w(Objects.requireNonNull(windowInsets));
    }
}
