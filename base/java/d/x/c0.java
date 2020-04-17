package d.x;

import android.view.View;
import android.view.WindowId;

public class c0 implements d0 {
    public final WindowId a;

    public c0(View view) {
        this.a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof c0) && ((c0) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
