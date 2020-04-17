package d.b.c.a;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import d.b.c.a.b;

@SuppressLint({"RestrictedAPI"})
public class e extends b {
    public a J;
    public boolean K;

    public static class a extends b.c {
        public int[][] J;

        public a(a aVar, e eVar, Resources resources) {
            super(aVar, eVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[this.f242g.length][];
            }
        }

        public int a(int[] iArr) {
            int[][] iArr2 = this.J;
            int i2 = this.f243h;
            for (int i3 = 0; i3 < i2; i3++) {
                if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                    return i3;
                }
            }
            return -1;
        }

        public void d() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        public Drawable newDrawable() {
            return new e(this, (Resources) null);
        }

        public Drawable newDrawable(Resources resources) {
            return new e(this, resources);
        }
    }

    public e(a aVar, Resources resources) {
        a(new a(aVar, this, resources));
        onStateChange(getState());
    }

    public void applyTheme(Resources.Theme theme) {
        b.c cVar = this.x;
        if (cVar != null) {
            if (theme != null) {
                cVar.c();
                int i2 = cVar.f243h;
                Drawable[] drawableArr = cVar.f242g;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null && drawableArr[i3].canApplyTheme()) {
                        drawableArr[i3].applyTheme(theme);
                        cVar.f240e |= drawableArr[i3].getChangingConfigurations();
                    }
                }
                cVar.a(theme.getResources());
            }
            onStateChange(getState());
            return;
        }
        throw null;
    }

    public boolean isStateful() {
        return true;
    }

    public Drawable mutate() {
        if (!this.K) {
            super.mutate();
            if (this == this) {
                this.J.d();
                this.K = true;
            }
        }
        return this;
    }

    public boolean onStateChange(int[] iArr) {
        boolean z;
        Drawable drawable = this.A;
        if (drawable != null) {
            z = drawable.setState(iArr);
        } else {
            Drawable drawable2 = this.z;
            z = drawable2 != null ? drawable2.setState(iArr) : false;
        }
        int a2 = this.J.a(iArr);
        if (a2 < 0) {
            a2 = this.J.a(StateSet.WILD_CARD);
        }
        if (a(a2) || z) {
            return true;
        }
        return false;
    }

    public a a() {
        return new a(this.J, this, (Resources) null);
    }

    public void a(b.c cVar) {
        super.a(cVar);
        if (cVar instanceof a) {
            this.J = (a) cVar;
        }
    }

    public e(a aVar) {
        if (aVar != null) {
            a(aVar);
        }
    }
}
