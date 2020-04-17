package d.t.a;

import android.view.View;
import d.t.a.s;
import java.util.ArrayList;
import java.util.List;

public class b {
    public final C0042b a;
    public final a b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final List<View> f767c = new ArrayList();

    /* renamed from: d.t.a.b$b  reason: collision with other inner class name */
    public interface C0042b {
    }

    public b(C0042b bVar) {
        this.a = bVar;
    }

    public int a() {
        return ((t) this.a).a() - this.f767c.size();
    }

    public View b(int i2) {
        return ((t) this.a).a(c(i2));
    }

    public final boolean c(View view) {
        if (!this.f767c.remove(view)) {
            return false;
        }
        t tVar = (t) this.a;
        if (tVar != null) {
            s.x b2 = s.b(view);
            if (b2 == null) {
                return true;
            }
            b2.a(tVar.a);
            return true;
        }
        throw null;
    }

    public View d(int i2) {
        return ((t) this.a).a.getChildAt(i2);
    }

    public String toString() {
        return this.b.toString() + ", hidden list:" + this.f767c.size();
    }

    public static class a {
        public long a = 0;
        public a b;

        public final void a() {
            if (this.b == null) {
                this.b = new a();
            }
        }

        public void b() {
            this.a = 0;
            a aVar = this.b;
            if (aVar != null) {
                aVar.b();
            }
        }

        public boolean c(int i2) {
            if (i2 < 64) {
                return (this.a & (1 << i2)) != 0;
            }
            a();
            return this.b.c(i2 - 64);
        }

        public boolean d(int i2) {
            if (i2 >= 64) {
                a();
                return this.b.d(i2 - 64);
            }
            long j2 = 1 << i2;
            boolean z = (this.a & j2) != 0;
            long j3 = this.a & (~j2);
            this.a = j3;
            long j4 = j2 - 1;
            this.a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            a aVar = this.b;
            if (aVar != null) {
                if (aVar.c(0)) {
                    e(63);
                }
                this.b.d(0);
            }
            return z;
        }

        public void e(int i2) {
            if (i2 >= 64) {
                a();
                this.b.e(i2 - 64);
                return;
            }
            this.a |= 1 << i2;
        }

        public String toString() {
            if (this.b == null) {
                return Long.toBinaryString(this.a);
            }
            return this.b.toString() + "xx" + Long.toBinaryString(this.a);
        }

        public void a(int i2) {
            if (i2 >= 64) {
                a aVar = this.b;
                if (aVar != null) {
                    aVar.a(i2 - 64);
                    return;
                }
                return;
            }
            this.a &= ~(1 << i2);
        }

        public int b(int i2) {
            a aVar = this.b;
            if (aVar == null) {
                if (i2 >= 64) {
                    return Long.bitCount(this.a);
                }
                return Long.bitCount(this.a & ((1 << i2) - 1));
            } else if (i2 < 64) {
                return Long.bitCount(this.a & ((1 << i2) - 1));
            } else {
                return Long.bitCount(this.a) + aVar.b(i2 - 64);
            }
        }
    }

    public void a(int i2) {
        s.x b2;
        int c2 = c(i2);
        this.b.d(c2);
        t tVar = (t) this.a;
        View childAt = tVar.a.getChildAt(c2);
        if (!(childAt == null || (b2 = s.b(childAt)) == null)) {
            if (!b2.p() || b2.u()) {
                b2.a(256);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("called detach on an already detached child ");
                sb.append(b2);
                throw new IllegalArgumentException(e.a.a.a.a.a(tVar.a, sb));
            }
        }
        tVar.a.detachViewFromParent(c2);
    }

    public int b() {
        return ((t) this.a).a();
    }

    public boolean b(View view) {
        return this.f767c.contains(view);
    }

    public final int c(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int a2 = ((t) this.a).a();
        int i3 = i2;
        while (i3 < a2) {
            int b2 = i2 - (i3 - this.b.b(i3));
            if (b2 == 0) {
                while (this.b.c(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += b2;
        }
        return -1;
    }

    public int a(View view) {
        int indexOfChild = ((t) this.a).a.indexOfChild(view);
        if (indexOfChild != -1 && !this.b.c(indexOfChild)) {
            return indexOfChild - this.b.b(indexOfChild);
        }
        return -1;
    }
}
