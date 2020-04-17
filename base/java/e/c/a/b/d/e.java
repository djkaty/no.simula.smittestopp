package e.c.a.b.d;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MenuItem;
import d.b.d.i.g;
import d.b.d.i.i;
import d.b.d.i.m;
import d.b.d.i.r;
import d.x.l;

public class e implements m {
    public int A;
    public g x;
    public d y;
    public boolean z = false;

    public static class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0068a();
        public int x;

        /* renamed from: e.c.a.b.d.e$a$a  reason: collision with other inner class name */
        public static class C0068a implements Parcelable.Creator<a> {
            public Object createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            public Object[] newArray(int i2) {
                return new a[i2];
            }
        }

        public a() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.x);
        }

        public a(Parcel parcel) {
            this.x = parcel.readInt();
        }
    }

    public void a(Context context, g gVar) {
        this.x = gVar;
        this.y.U = gVar;
    }

    public void a(g gVar, boolean z2) {
    }

    public void a(m.a aVar) {
    }

    public boolean a(g gVar, i iVar) {
        return false;
    }

    public boolean a(r rVar) {
        return false;
    }

    public boolean b() {
        return false;
    }

    public boolean b(g gVar, i iVar) {
        return false;
    }

    public Parcelable d() {
        a aVar = new a();
        aVar.x = this.y.getSelectedItemId();
        return aVar;
    }

    public int getId() {
        return this.A;
    }

    public void a(boolean z2) {
        if (!this.z) {
            if (z2) {
                this.y.a();
                return;
            }
            d dVar = this.y;
            g gVar = dVar.U;
            if (gVar != null && dVar.H != null) {
                int size = gVar.size();
                if (size != dVar.H.length) {
                    dVar.a();
                    return;
                }
                int i2 = dVar.I;
                for (int i3 = 0; i3 < size; i3++) {
                    MenuItem item = dVar.U.getItem(i3);
                    if (item.isChecked()) {
                        dVar.I = item.getItemId();
                        dVar.J = i3;
                    }
                }
                if (i2 != dVar.I) {
                    l.a(dVar, dVar.x);
                }
                boolean a2 = dVar.a(dVar.G, dVar.U.d().size());
                for (int i4 = 0; i4 < size; i4++) {
                    dVar.T.z = true;
                    dVar.H[i4].setLabelVisibilityMode(dVar.G);
                    dVar.H[i4].setShifting(a2);
                    dVar.H[i4].a((i) dVar.U.getItem(i4), 0);
                    dVar.T.z = false;
                }
            }
        }
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof a) {
            d dVar = this.y;
            int i2 = ((a) parcelable).x;
            int size = dVar.U.size();
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem item = dVar.U.getItem(i3);
                if (i2 == item.getItemId()) {
                    dVar.I = i2;
                    dVar.J = i3;
                    item.setChecked(true);
                    return;
                }
            }
        }
    }
}
