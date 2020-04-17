package d.g.a.h;

import d.g.a.c;
import java.util.ArrayList;

public class n extends d {
    public ArrayList<d> k0 = new ArrayList<>();

    public void a(c cVar) {
        super.a(cVar);
        int size = this.k0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.k0.get(i2).a(cVar);
        }
    }

    public void b(int i2, int i3) {
        this.O = i2;
        this.P = i3;
        int size = this.k0.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.k0.get(i4).b(this.I + this.O, this.J + this.P);
        }
    }

    public void k() {
        this.k0.clear();
        super.k();
    }

    public void n() {
        int i2 = this.I;
        int i3 = this.J;
        this.M = i2;
        this.N = i3;
        ArrayList<d> arrayList = this.k0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                d dVar = this.k0.get(i4);
                dVar.b(this.M + this.O, this.N + this.P);
                if (!(dVar instanceof e)) {
                    dVar.n();
                }
            }
        }
    }

    public void o() {
        n();
        ArrayList<d> arrayList = this.k0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                d dVar = this.k0.get(i2);
                if (dVar instanceof n) {
                    ((n) dVar).o();
                }
            }
        }
    }
}
