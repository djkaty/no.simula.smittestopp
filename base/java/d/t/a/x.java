package d.t.a;

import android.view.View;

public class x {
    public final b a;
    public a b = new a();

    public static class a {
        public int a = 0;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f862c;

        /* renamed from: d  reason: collision with root package name */
        public int f863d;

        /* renamed from: e  reason: collision with root package name */
        public int f864e;

        public int a(int i2, int i3) {
            if (i2 > i3) {
                return 1;
            }
            return i2 == i3 ? 2 : 4;
        }

        public boolean a() {
            int i2 = this.a;
            if ((i2 & 7) != 0 && (i2 & (a(this.f863d, this.b) << 0)) == 0) {
                return false;
            }
            int i3 = this.a;
            if ((i3 & 112) != 0 && (i3 & (a(this.f863d, this.f862c) << 4)) == 0) {
                return false;
            }
            int i4 = this.a;
            if ((i4 & 1792) != 0 && (i4 & (a(this.f864e, this.b) << 8)) == 0) {
                return false;
            }
            int i5 = this.a;
            if ((i5 & 28672) == 0 || (i5 & (a(this.f864e, this.f862c) << 12)) != 0) {
                return true;
            }
            return false;
        }
    }

    public interface b {
        int a();

        int a(View view);

        View a(int i2);

        int b();

        int b(View view);
    }

    public x(b bVar) {
        this.a = bVar;
    }

    public View a(int i2, int i3, int i4, int i5) {
        int b2 = this.a.b();
        int a2 = this.a.a();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            View a3 = this.a.a(i2);
            int b3 = this.a.b(a3);
            int a4 = this.a.a(a3);
            a aVar = this.b;
            aVar.b = b2;
            aVar.f862c = a2;
            aVar.f863d = b3;
            aVar.f864e = a4;
            if (i4 != 0) {
                aVar.a = 0;
                aVar.a = i4 | 0;
                if (aVar.a()) {
                    return a3;
                }
            }
            if (i5 != 0) {
                a aVar2 = this.b;
                aVar2.a = 0;
                aVar2.a = i5 | 0;
                if (aVar2.a()) {
                    view = a3;
                }
            }
            i2 += i6;
        }
        return view;
    }
}
