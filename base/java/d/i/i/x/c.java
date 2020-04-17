package d.i.i.x;

import android.view.accessibility.AccessibilityManager;
import e.c.a.b.m.d;

public final class c implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final b a;

    public c(b bVar) {
        this.a = bVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return this.a.equals(((c) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public void onTouchExplorationStateChanged(boolean z) {
        d.this.setClickableOrFocusableBasedOnAccessibility(z);
    }
}
