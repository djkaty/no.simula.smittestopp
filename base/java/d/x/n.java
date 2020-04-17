package d.x;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import d.x.h;
import java.util.ArrayList;
import java.util.Iterator;

public class n extends h {
    public ArrayList<h> f0 = new ArrayList<>();
    public boolean g0 = true;
    public int h0;
    public boolean i0 = false;
    public int j0 = 0;

    public class a extends k {
        public final /* synthetic */ h a;

        public a(n nVar, h hVar) {
            this.a = hVar;
        }

        public void d(h hVar) {
            this.a.c();
            hVar.b((h.d) this);
        }
    }

    public static class b extends k {
        public n a;

        public b(n nVar) {
            this.a = nVar;
        }

        public void c(h hVar) {
            n nVar = this.a;
            if (!nVar.i0) {
                nVar.d();
                this.a.i0 = true;
            }
        }

        public void d(h hVar) {
            n nVar = this.a;
            int i2 = nVar.h0 - 1;
            nVar.h0 = i2;
            if (i2 == 0) {
                nVar.i0 = false;
                nVar.a();
            }
            hVar.b((h.d) this);
        }
    }

    public n b(int i2) {
        if (i2 == 0) {
            this.g0 = true;
        } else if (i2 == 1) {
            this.g0 = false;
        } else {
            throw new AndroidRuntimeException(e.a.a.a.a.a("Invalid parameter for TransitionSet ordering: ", i2));
        }
        return this;
    }

    public void c() {
        if (this.f0.isEmpty()) {
            d();
            a();
            return;
        }
        b bVar = new b(this);
        Iterator<h> it = this.f0.iterator();
        while (it.hasNext()) {
            it.next().a((h.d) bVar);
        }
        this.h0 = this.f0.size();
        if (!this.g0) {
            for (int i2 = 1; i2 < this.f0.size(); i2++) {
                this.f0.get(i2 - 1).a((h.d) new a(this, this.f0.get(i2)));
            }
            h hVar = this.f0.get(0);
            if (hVar != null) {
                hVar.c();
                return;
            }
            return;
        }
        Iterator<h> it2 = this.f0.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
    }

    public h d(View view) {
        for (int i2 = 0; i2 < this.f0.size(); i2++) {
            this.f0.get(i2).d(view);
        }
        this.C.remove(view);
        return this;
    }

    public void e(View view) {
        super.e(view);
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f0.get(i2).e(view);
        }
    }

    public h clone() {
        n nVar = (n) super.clone();
        nVar.f0 = new ArrayList<>();
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            nVar.a(this.f0.get(i2).clone());
        }
        return nVar;
    }

    public n a(h hVar) {
        this.f0.add(hVar);
        hVar.O = this;
        long j2 = this.z;
        if (j2 >= 0) {
            hVar.a(j2);
        }
        if ((this.j0 & 1) != 0) {
            hVar.a(this.A);
        }
        if ((this.j0 & 2) != 0) {
            hVar.a((m) null);
        }
        if ((this.j0 & 4) != 0) {
            hVar.a(this.b0);
        }
        if ((this.j0 & 8) != 0) {
            hVar.a(this.a0);
        }
        return this;
    }

    public h b(long j2) {
        this.y = j2;
        return this;
    }

    public h b(h.d dVar) {
        super.b(dVar);
        return this;
    }

    public void b(p pVar) {
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f0.get(i2).b(pVar);
        }
    }

    public void c(p pVar) {
        if (b(pVar.b)) {
            Iterator<h> it = this.f0.iterator();
            while (it.hasNext()) {
                h next = it.next();
                if (next.b(pVar.b)) {
                    next.c(pVar);
                    pVar.f973c.add(next);
                }
            }
        }
    }

    public h a(int i2) {
        if (i2 < 0 || i2 >= this.f0.size()) {
            return null;
        }
        return this.f0.get(i2);
    }

    public n a(TimeInterpolator timeInterpolator) {
        this.j0 |= 1;
        ArrayList<h> arrayList = this.f0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f0.get(i2).a(timeInterpolator);
            }
        }
        this.A = timeInterpolator;
        return this;
    }

    public void c(View view) {
        super.c(view);
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f0.get(i2).c(view);
        }
    }

    public h a(View view) {
        for (int i2 = 0; i2 < this.f0.size(); i2++) {
            this.f0.get(i2).a(view);
        }
        this.C.add(view);
        return this;
    }

    public h a(h.d dVar) {
        super.a(dVar);
        return this;
    }

    public n a(long j2) {
        this.z = j2;
        if (j2 >= 0) {
            int size = this.f0.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f0.get(i2).a(j2);
            }
        }
        return this;
    }

    public void a(ViewGroup viewGroup, q qVar, q qVar2, ArrayList<p> arrayList, ArrayList<p> arrayList2) {
        long j2 = this.y;
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            h hVar = this.f0.get(i2);
            if (j2 > 0 && (this.g0 || i2 == 0)) {
                long j3 = hVar.y;
                if (j3 > 0) {
                    hVar.b(j3 + j2);
                } else {
                    hVar.b(j2);
                }
            }
            hVar.a(viewGroup, qVar, qVar2, arrayList, arrayList2);
        }
    }

    public void a(p pVar) {
        if (b(pVar.b)) {
            Iterator<h> it = this.f0.iterator();
            while (it.hasNext()) {
                h next = it.next();
                if (next.b(pVar.b)) {
                    next.a(pVar);
                    pVar.f973c.add(next);
                }
            }
        }
    }

    public String a(String str) {
        String a2 = super.a(str);
        for (int i2 = 0; i2 < this.f0.size(); i2++) {
            StringBuilder a3 = e.a.a.a.a.a(a2, "\n");
            a3.append(this.f0.get(i2).a(str + "  "));
            a2 = a3.toString();
        }
        return a2;
    }

    public void a(e eVar) {
        if (eVar == null) {
            this.b0 = h.d0;
        } else {
            this.b0 = eVar;
        }
        this.j0 |= 4;
        for (int i2 = 0; i2 < this.f0.size(); i2++) {
            this.f0.get(i2).a(eVar);
        }
    }

    public void a(h.c cVar) {
        this.a0 = cVar;
        this.j0 |= 8;
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f0.get(i2).a(cVar);
        }
    }

    public void a(m mVar) {
        this.Z = mVar;
        this.j0 |= 2;
        int size = this.f0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f0.get(i2).a(mVar);
        }
    }
}
