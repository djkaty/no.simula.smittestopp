package d.x;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import d.f.e;
import d.i.i.n;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class h implements Cloneable {
    public static final int[] c0 = {2, 1, 3, 4};
    public static final e d0 = new a();
    public static ThreadLocal<d.f.a<Animator, b>> e0 = new ThreadLocal<>();
    public TimeInterpolator A = null;
    public ArrayList<Integer> B = new ArrayList<>();
    public ArrayList<View> C = new ArrayList<>();
    public ArrayList<String> D = null;
    public ArrayList<Class> E = null;
    public ArrayList<Integer> F = null;
    public ArrayList<View> G = null;
    public ArrayList<Class> H = null;
    public ArrayList<String> I = null;
    public ArrayList<Integer> J = null;
    public ArrayList<View> K = null;
    public ArrayList<Class> L = null;
    public q M = new q();
    public q N = new q();
    public n O = null;
    public int[] P = c0;
    public ArrayList<p> Q;
    public ArrayList<p> R;
    public boolean S = false;
    public ArrayList<Animator> T = new ArrayList<>();
    public int U = 0;
    public boolean V = false;
    public boolean W = false;
    public ArrayList<d> X = null;
    public ArrayList<Animator> Y = new ArrayList<>();
    public m Z;
    public c a0;
    public e b0 = d0;
    public String x = getClass().getName();
    public long y = -1;
    public long z = -1;

    public static class a extends e {
        public Path a(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    }

    public static class b {
        public View a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public p f969c;

        /* renamed from: d  reason: collision with root package name */
        public d0 f970d;

        /* renamed from: e  reason: collision with root package name */
        public h f971e;

        public b(View view, String str, h hVar, d0 d0Var, p pVar) {
            this.a = view;
            this.b = str;
            this.f969c = pVar;
            this.f970d = d0Var;
            this.f971e = hVar;
        }
    }

    public static abstract class c {
    }

    public interface d {
        void a(h hVar);

        void b(h hVar);

        void c(h hVar);

        void d(h hVar);
    }

    public static d.f.a<Animator, b> e() {
        d.f.a<Animator, b> aVar = e0.get();
        if (aVar != null) {
            return aVar;
        }
        d.f.a<Animator, b> aVar2 = new d.f.a<>();
        e0.set(aVar2);
        return aVar2;
    }

    public Animator a(ViewGroup viewGroup, p pVar, p pVar2) {
        return null;
    }

    public h a(long j2) {
        this.z = j2;
        return this;
    }

    public abstract void a(p pVar);

    public h b(long j2) {
        this.y = j2;
        return this;
    }

    public void b(p pVar) {
    }

    public String[] b() {
        return null;
    }

    public void c() {
        d();
        d.f.a<Animator, b> e2 = e();
        Iterator<Animator> it = this.Y.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (e2.containsKey(next)) {
                d();
                if (next != null) {
                    next.addListener(new i(this, e2));
                    long j2 = this.z;
                    if (j2 >= 0) {
                        next.setDuration(j2);
                    }
                    long j3 = this.y;
                    if (j3 >= 0) {
                        next.setStartDelay(j3);
                    }
                    TimeInterpolator timeInterpolator = this.A;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new j(this));
                    next.start();
                }
            }
        }
        this.Y.clear();
        a();
    }

    public abstract void c(p pVar);

    public h d(View view) {
        this.C.remove(view);
        return this;
    }

    public String toString() {
        return a("");
    }

    public h a(TimeInterpolator timeInterpolator) {
        this.A = timeInterpolator;
        return this;
    }

    public boolean b(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.F;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.G;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList5 = this.H;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.H.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.I != null && n.n(view) != null && this.I.contains(view.getTransitionName())) {
            return false;
        }
        if ((this.B.size() == 0 && this.C.size() == 0 && (((arrayList = this.E) == null || arrayList.isEmpty()) && ((arrayList2 = this.D) == null || arrayList2.isEmpty()))) || this.B.contains(Integer.valueOf(id)) || this.C.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.D;
        if (arrayList6 != null && arrayList6.contains(n.n(view))) {
            return true;
        }
        if (this.E != null) {
            for (int i3 = 0; i3 < this.E.size(); i3++) {
                if (this.E.get(i3).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public h clone() {
        try {
            h hVar = (h) super.clone();
            hVar.Y = new ArrayList<>();
            hVar.M = new q();
            hVar.N = new q();
            hVar.Q = null;
            hVar.R = null;
            return hVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public void d() {
        if (this.U == 0) {
            ArrayList<d> arrayList = this.X;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.X.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((d) arrayList2.get(i2)).c(this);
                }
            }
            this.W = false;
        }
        this.U++;
    }

    public void a(ViewGroup viewGroup, q qVar, q qVar2, ArrayList<p> arrayList, ArrayList<p> arrayList2) {
        int i2;
        Animator animator;
        p pVar;
        View view;
        p pVar2;
        Animator animator2;
        d.f.a<Animator, b> e2 = e();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            p pVar3 = arrayList.get(i3);
            p pVar4 = arrayList2.get(i3);
            if (pVar3 != null && !pVar3.f973c.contains(this)) {
                pVar3 = null;
            }
            if (pVar4 != null && !pVar4.f973c.contains(this)) {
                pVar4 = null;
            }
            if (!(pVar3 == null && pVar4 == null)) {
                if (pVar3 == null || pVar4 == null || a(pVar3, pVar4)) {
                    Animator a2 = a(viewGroup, pVar3, pVar4);
                    if (a2 != null) {
                        if (pVar4 != null) {
                            View view2 = pVar4.b;
                            String[] b2 = b();
                            if (view2 != null && b2 != null && b2.length > 0) {
                                pVar2 = new p();
                                pVar2.b = view2;
                                p orDefault = qVar2.a.getOrDefault(view2, null);
                                if (orDefault != null) {
                                    int i4 = 0;
                                    while (i4 < b2.length) {
                                        pVar2.a.put(b2[i4], orDefault.a.get(b2[i4]));
                                        i4++;
                                        a2 = a2;
                                        size = size;
                                        orDefault = orDefault;
                                    }
                                }
                                Animator animator3 = a2;
                                i2 = size;
                                int i5 = e2.z;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= i5) {
                                        animator2 = animator3;
                                        break;
                                    }
                                    b bVar = e2.get(e2.c(i6));
                                    if (bVar.f969c != null && bVar.a == view2 && bVar.b.equals(this.x) && bVar.f969c.equals(pVar2)) {
                                        animator2 = null;
                                        break;
                                    }
                                    i6++;
                                }
                            } else {
                                q qVar3 = qVar2;
                                i2 = size;
                                animator2 = a2;
                                pVar2 = null;
                            }
                            view = view2;
                            animator = animator2;
                            pVar = pVar2;
                        } else {
                            q qVar4 = qVar2;
                            i2 = size;
                            view = pVar3.b;
                            animator = a2;
                            pVar = null;
                        }
                        if (animator != null) {
                            e2.put(animator, new b(view, this.x, this, v.c(viewGroup), pVar));
                            this.Y.add(animator);
                        }
                        i3++;
                        size = i2;
                    }
                    q qVar5 = qVar2;
                    i2 = size;
                    i3++;
                    size = i2;
                }
            }
            ViewGroup viewGroup2 = viewGroup;
            q qVar52 = qVar2;
            i2 = size;
            i3++;
            size = i2;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                Animator animator4 = this.Y.get(sparseIntArray.keyAt(i7));
                animator4.setStartDelay(animator4.getStartDelay() + (((long) sparseIntArray.valueAt(i7)) - Long.MAX_VALUE));
            }
        }
    }

    public void e(View view) {
        if (this.V) {
            if (!this.W) {
                d.f.a<Animator, b> e2 = e();
                int i2 = e2.z;
                d0 c2 = v.c(view);
                for (int i3 = i2 - 1; i3 >= 0; i3--) {
                    b e3 = e2.e(i3);
                    if (e3.a != null && c2.equals(e3.f970d)) {
                        e2.c(i3).resume();
                    }
                }
                ArrayList<d> arrayList = this.X;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.X.clone();
                    int size = arrayList2.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ((d) arrayList2.get(i4)).b(this);
                    }
                }
            }
            this.V = false;
        }
    }

    public p c(View view, boolean z2) {
        n nVar = this.O;
        if (nVar != null) {
            return nVar.c(view, z2);
        }
        return (z2 ? this.M : this.N).a.getOrDefault(view, null);
    }

    public p b(View view, boolean z2) {
        n nVar = this.O;
        if (nVar != null) {
            return nVar.b(view, z2);
        }
        ArrayList<p> arrayList = z2 ? this.Q : this.R;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            p pVar = arrayList.get(i3);
            if (pVar == null) {
                return null;
            }
            if (pVar.b == view) {
                i2 = i3;
                break;
            }
            i3++;
        }
        if (i2 < 0) {
            return null;
        }
        return (z2 ? this.R : this.Q).get(i2);
    }

    public void c(View view) {
        if (!this.W) {
            d.f.a<Animator, b> e2 = e();
            int i2 = e2.z;
            d0 c2 = v.c(view);
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                b e3 = e2.e(i3);
                if (e3.a != null && c2.equals(e3.f970d)) {
                    e2.c(i3).pause();
                }
            }
            ArrayList<d> arrayList = this.X;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.X.clone();
                int size = arrayList2.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ((d) arrayList2.get(i4)).a(this);
                }
            }
            this.V = true;
        }
    }

    public h b(d dVar) {
        ArrayList<d> arrayList = this.X;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(dVar);
        if (this.X.size() == 0) {
            this.X = null;
        }
        return this;
    }

    public h a(View view) {
        this.C.add(view);
        return this;
    }

    public void a(ViewGroup viewGroup, boolean z2) {
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        a(z2);
        if ((this.B.size() > 0 || this.C.size() > 0) && (((arrayList = this.D) == null || arrayList.isEmpty()) && ((arrayList2 = this.E) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.B.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.B.get(i2).intValue());
                if (findViewById != null) {
                    p pVar = new p();
                    pVar.b = findViewById;
                    if (z2) {
                        c(pVar);
                    } else {
                        a(pVar);
                    }
                    pVar.f973c.add(this);
                    b(pVar);
                    if (z2) {
                        a(this.M, findViewById, pVar);
                    } else {
                        a(this.N, findViewById, pVar);
                    }
                }
            }
            for (int i3 = 0; i3 < this.C.size(); i3++) {
                View view = this.C.get(i3);
                p pVar2 = new p();
                pVar2.b = view;
                if (z2) {
                    c(pVar2);
                } else {
                    a(pVar2);
                }
                pVar2.f973c.add(this);
                b(pVar2);
                if (z2) {
                    a(this.M, view, pVar2);
                } else {
                    a(this.N, view, pVar2);
                }
            }
            return;
        }
        a((View) viewGroup, z2);
    }

    public static void a(q qVar, View view, p pVar) {
        qVar.a.put(view, pVar);
        int id = view.getId();
        if (id >= 0) {
            if (qVar.b.indexOfKey(id) >= 0) {
                qVar.b.put(id, (Object) null);
            } else {
                qVar.b.put(id, view);
            }
        }
        String n = n.n(view);
        if (n != null) {
            if (qVar.f975d.a((Object) n) >= 0) {
                qVar.f975d.put(n, null);
            } else {
                qVar.f975d.put(n, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                e<View> eVar = qVar.f974c;
                if (eVar.x) {
                    eVar.b();
                }
                if (d.f.d.a(eVar.y, eVar.A, itemIdAtPosition) >= 0) {
                    View a2 = qVar.f974c.a(itemIdAtPosition);
                    if (a2 != null) {
                        a2.setHasTransientState(false);
                        qVar.f974c.c(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                view.setHasTransientState(true);
                qVar.f974c.c(itemIdAtPosition, view);
            }
        }
    }

    public void a(boolean z2) {
        if (z2) {
            this.M.a.clear();
            this.M.b.clear();
            this.M.f974c.a();
            return;
        }
        this.N.a.clear();
        this.N.b.clear();
        this.N.f974c.a();
    }

    public final void a(View view, boolean z2) {
        if (view != null) {
            int id = view.getId();
            ArrayList<Integer> arrayList = this.F;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.G;
                if (arrayList2 == null || !arrayList2.contains(view)) {
                    ArrayList<Class> arrayList3 = this.H;
                    if (arrayList3 != null) {
                        int size = arrayList3.size();
                        int i2 = 0;
                        while (i2 < size) {
                            if (!this.H.get(i2).isInstance(view)) {
                                i2++;
                            } else {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        p pVar = new p();
                        pVar.b = view;
                        if (z2) {
                            c(pVar);
                        } else {
                            a(pVar);
                        }
                        pVar.f973c.add(this);
                        b(pVar);
                        if (z2) {
                            a(this.M, view, pVar);
                        } else {
                            a(this.N, view, pVar);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.J;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.K;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
                                ArrayList<Class> arrayList6 = this.L;
                                if (arrayList6 != null) {
                                    int size2 = arrayList6.size();
                                    int i3 = 0;
                                    while (i3 < size2) {
                                        if (!this.L.get(i3).isInstance(view)) {
                                            i3++;
                                        } else {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                    a(viewGroup.getChildAt(i4), z2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean a(p pVar, p pVar2) {
        if (pVar == null || pVar2 == null) {
            return false;
        }
        String[] b2 = b();
        if (b2 != null) {
            int length = b2.length;
            int i2 = 0;
            while (i2 < length) {
                if (!a(pVar, pVar2, b2[i2])) {
                    i2++;
                }
            }
            return false;
        }
        for (String a2 : pVar.a.keySet()) {
            if (a(pVar, pVar2, a2)) {
            }
        }
        return false;
        return true;
    }

    public static boolean a(p pVar, p pVar2, String str) {
        Object obj = pVar.a.get(str);
        Object obj2 = pVar2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    public void a() {
        int i2 = this.U - 1;
        this.U = i2;
        if (i2 == 0) {
            ArrayList<d> arrayList = this.X;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.X.clone();
                int size = arrayList2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((d) arrayList2.get(i3)).d(this);
                }
            }
            for (int i4 = 0; i4 < this.M.f974c.c(); i4++) {
                View a2 = this.M.f974c.a(i4);
                if (a2 != null) {
                    n.a(a2, false);
                }
            }
            for (int i5 = 0; i5 < this.N.f974c.c(); i5++) {
                View a3 = this.N.f974c.a(i5);
                if (a3 != null) {
                    n.a(a3, false);
                }
            }
            this.W = true;
        }
    }

    public h a(d dVar) {
        if (this.X == null) {
            this.X = new ArrayList<>();
        }
        this.X.add(dVar);
        return this;
    }

    public void a(e eVar) {
        if (eVar == null) {
            this.b0 = d0;
        } else {
            this.b0 = eVar;
        }
    }

    public void a(c cVar) {
        this.a0 = cVar;
    }

    public void a(m mVar) {
        this.Z = mVar;
    }

    public String a(String str) {
        StringBuilder a2 = e.a.a.a.a.a(str);
        a2.append(getClass().getSimpleName());
        a2.append("@");
        a2.append(Integer.toHexString(hashCode()));
        a2.append(": ");
        String sb = a2.toString();
        if (this.z != -1) {
            StringBuilder a3 = e.a.a.a.a.a(sb, "dur(");
            a3.append(this.z);
            a3.append(") ");
            sb = a3.toString();
        }
        if (this.y != -1) {
            StringBuilder a4 = e.a.a.a.a.a(sb, "dly(");
            a4.append(this.y);
            a4.append(") ");
            sb = a4.toString();
        }
        if (this.A != null) {
            StringBuilder a5 = e.a.a.a.a.a(sb, "interp(");
            a5.append(this.A);
            a5.append(") ");
            sb = a5.toString();
        }
        if (this.B.size() <= 0 && this.C.size() <= 0) {
            return sb;
        }
        String b2 = e.a.a.a.a.b(sb, "tgts(");
        if (this.B.size() > 0) {
            for (int i2 = 0; i2 < this.B.size(); i2++) {
                if (i2 > 0) {
                    b2 = e.a.a.a.a.b(b2, ", ");
                }
                StringBuilder a6 = e.a.a.a.a.a(b2);
                a6.append(this.B.get(i2));
                b2 = a6.toString();
            }
        }
        if (this.C.size() > 0) {
            for (int i3 = 0; i3 < this.C.size(); i3++) {
                if (i3 > 0) {
                    b2 = e.a.a.a.a.b(b2, ", ");
                }
                StringBuilder a7 = e.a.a.a.a.a(b2);
                a7.append(this.C.get(i3));
                b2 = a7.toString();
            }
        }
        return e.a.a.a.a.b(b2, ")");
    }
}
