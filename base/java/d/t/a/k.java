package d.t.a;

import android.view.View;
import d.t.a.s;
import java.util.ArrayList;
import java.util.List;

public class k extends w {

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<s.x> f780h = new ArrayList<>();

    /* renamed from: i  reason: collision with root package name */
    public ArrayList<s.x> f781i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    public ArrayList<b> f782j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    public ArrayList<a> f783k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    public ArrayList<ArrayList<s.x>> f784l = new ArrayList<>();
    public ArrayList<ArrayList<b>> m = new ArrayList<>();
    public ArrayList<ArrayList<a>> n = new ArrayList<>();
    public ArrayList<s.x> o = new ArrayList<>();
    public ArrayList<s.x> p = new ArrayList<>();
    public ArrayList<s.x> q = new ArrayList<>();
    public ArrayList<s.x> r = new ArrayList<>();

    public static class a {
        public s.x a;
        public s.x b;

        /* renamed from: c  reason: collision with root package name */
        public int f785c;

        /* renamed from: d  reason: collision with root package name */
        public int f786d;

        /* renamed from: e  reason: collision with root package name */
        public int f787e;

        /* renamed from: f  reason: collision with root package name */
        public int f788f;

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("ChangeInfo{oldHolder=");
            a2.append(this.a);
            a2.append(", newHolder=");
            a2.append(this.b);
            a2.append(", fromX=");
            a2.append(this.f785c);
            a2.append(", fromY=");
            a2.append(this.f786d);
            a2.append(", toX=");
            a2.append(this.f787e);
            a2.append(", toY=");
            a2.append(this.f788f);
            a2.append('}');
            return a2.toString();
        }
    }

    public static class b {
        public s.x a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f789c;

        /* renamed from: d  reason: collision with root package name */
        public int f790d;

        /* renamed from: e  reason: collision with root package name */
        public int f791e;
    }

    public final void a(List<a> list, s.x xVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, xVar) && aVar.a == null && aVar.b == null) {
                list.remove(aVar);
            }
        }
    }

    public void b(s.x xVar) {
        View view = xVar.a;
        view.animate().cancel();
        int size = this.f782j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.f782j.get(size).a == xVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                a(xVar);
                this.f782j.remove(size);
            }
        }
        a((List<a>) this.f783k, xVar);
        if (this.f780h.remove(xVar)) {
            view.setAlpha(1.0f);
            e(xVar);
        }
        if (this.f781i.remove(xVar)) {
            view.setAlpha(1.0f);
            a(xVar);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = this.n.get(size2);
            a((List<a>) arrayList, xVar);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        for (int size3 = this.m.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = this.m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((b) arrayList2.get(size4)).a == xVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    a(xVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f784l.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = this.f784l.get(size5);
            if (arrayList3.remove(xVar)) {
                view.setAlpha(1.0f);
                a(xVar);
                if (arrayList3.isEmpty()) {
                    this.f784l.remove(size5);
                }
            }
        }
        this.q.remove(xVar);
        this.o.remove(xVar);
        this.r.remove(xVar);
        this.p.remove(xVar);
        d();
    }

    public boolean c() {
        return !this.f781i.isEmpty() || !this.f783k.isEmpty() || !this.f782j.isEmpty() || !this.f780h.isEmpty() || !this.p.isEmpty() || !this.q.isEmpty() || !this.o.isEmpty() || !this.r.isEmpty() || !this.m.isEmpty() || !this.f784l.isEmpty() || !this.n.isEmpty();
    }

    public void d() {
        if (!c()) {
            a();
        }
    }

    public final boolean a(a aVar, s.x xVar) {
        if (aVar.b == xVar) {
            aVar.b = null;
        } else if (aVar.a != xVar) {
            return false;
        } else {
            aVar.a = null;
        }
        xVar.a.setAlpha(1.0f);
        xVar.a.setTranslationX(0.0f);
        xVar.a.setTranslationY(0.0f);
        a(xVar);
        return true;
    }

    public void a(List<s.x> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).a.animate().cancel();
        }
    }

    public boolean a(s.x xVar, List<Object> list) {
        return !list.isEmpty() || super.a(xVar, list);
    }

    public void b() {
        int size = this.f782j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar = this.f782j.get(size);
            View view = bVar.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            a(bVar.a);
            this.f782j.remove(size);
        }
        int size2 = this.f780h.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            a(this.f780h.get(size2));
            this.f780h.remove(size2);
        }
        int size3 = this.f781i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            s.x xVar = this.f781i.get(size3);
            xVar.a.setAlpha(1.0f);
            a(xVar);
            this.f781i.remove(size3);
        }
        int size4 = this.f783k.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            a aVar = this.f783k.get(size4);
            s.x xVar2 = aVar.a;
            if (xVar2 != null) {
                a(aVar, xVar2);
            }
            s.x xVar3 = aVar.b;
            if (xVar3 != null) {
                a(aVar, xVar3);
            }
        }
        this.f783k.clear();
        if (c()) {
            int size5 = this.m.size();
            while (true) {
                size5--;
                if (size5 < 0) {
                    break;
                }
                ArrayList arrayList = this.m.get(size5);
                int size6 = arrayList.size();
                while (true) {
                    size6--;
                    if (size6 >= 0) {
                        b bVar2 = (b) arrayList.get(size6);
                        View view2 = bVar2.a.a;
                        view2.setTranslationY(0.0f);
                        view2.setTranslationX(0.0f);
                        a(bVar2.a);
                        arrayList.remove(size6);
                        if (arrayList.isEmpty()) {
                            this.m.remove(arrayList);
                        }
                    }
                }
            }
            int size7 = this.f784l.size();
            while (true) {
                size7--;
                if (size7 < 0) {
                    break;
                }
                ArrayList arrayList2 = this.f784l.get(size7);
                int size8 = arrayList2.size();
                while (true) {
                    size8--;
                    if (size8 >= 0) {
                        s.x xVar4 = (s.x) arrayList2.get(size8);
                        xVar4.a.setAlpha(1.0f);
                        a(xVar4);
                        arrayList2.remove(size8);
                        if (arrayList2.isEmpty()) {
                            this.f784l.remove(arrayList2);
                        }
                    }
                }
            }
            int size9 = this.n.size();
            while (true) {
                size9--;
                if (size9 >= 0) {
                    ArrayList arrayList3 = this.n.get(size9);
                    int size10 = arrayList3.size();
                    while (true) {
                        size10--;
                        if (size10 >= 0) {
                            a aVar2 = (a) arrayList3.get(size10);
                            s.x xVar5 = aVar2.a;
                            if (xVar5 != null) {
                                a(aVar2, xVar5);
                            }
                            s.x xVar6 = aVar2.b;
                            if (xVar6 != null) {
                                a(aVar2, xVar6);
                            }
                            if (arrayList3.isEmpty()) {
                                this.n.remove(arrayList3);
                            }
                        }
                    }
                } else {
                    a(this.q);
                    a(this.p);
                    a(this.o);
                    a(this.r);
                    a();
                    return;
                }
            }
        }
    }
}
