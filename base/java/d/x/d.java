package d.x;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import d.m.a.k0;
import d.x.h;
import java.util.ArrayList;
import java.util.List;

public class d extends k0 {

    public class a extends h.c {
        public a(d dVar, Rect rect) {
        }
    }

    public class b implements h.d {
        public final /* synthetic */ View a;
        public final /* synthetic */ ArrayList b;

        public b(d dVar, View view, ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        public void a(h hVar) {
        }

        public void b(h hVar) {
        }

        public void c(h hVar) {
        }

        public void d(h hVar) {
            hVar.b((h.d) this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((View) this.b.get(i2)).setVisibility(0);
            }
        }
    }

    public class c implements h.d {
        public final /* synthetic */ Object a;
        public final /* synthetic */ ArrayList b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Object f964c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ ArrayList f965d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ Object f966e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ ArrayList f967f;

        public c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.f964c = obj2;
            this.f965d = arrayList2;
            this.f966e = obj3;
            this.f967f = arrayList3;
        }

        public void a(h hVar) {
        }

        public void b(h hVar) {
        }

        public void c(h hVar) {
            Object obj = this.a;
            if (obj != null) {
                d.this.a(obj, (ArrayList<View>) this.b, (ArrayList<View>) null);
            }
            Object obj2 = this.f964c;
            if (obj2 != null) {
                d.this.a(obj2, (ArrayList<View>) this.f965d, (ArrayList<View>) null);
            }
            Object obj3 = this.f966e;
            if (obj3 != null) {
                d.this.a(obj3, (ArrayList<View>) this.f967f, (ArrayList<View>) null);
            }
        }

        public void d(h hVar) {
        }
    }

    /* renamed from: d.x.d$d  reason: collision with other inner class name */
    public class C0053d extends h.c {
        public C0053d(d dVar, Rect rect) {
        }
    }

    public boolean a(Object obj) {
        return obj instanceof h;
    }

    public Object b(Object obj) {
        if (obj != null) {
            return ((h) obj).clone();
        }
        return null;
    }

    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        n nVar = new n();
        nVar.a((h) obj);
        return nVar;
    }

    public void a(Object obj, ArrayList<View> arrayList) {
        h hVar = (h) obj;
        if (hVar != null) {
            int i2 = 0;
            if (hVar instanceof n) {
                n nVar = (n) hVar;
                int size = nVar.f0.size();
                while (i2 < size) {
                    a((Object) nVar.a(i2), arrayList);
                    i2++;
                }
            } else if (!a(hVar) && k0.a((List) hVar.C)) {
                int size2 = arrayList.size();
                while (i2 < size2) {
                    hVar.a(arrayList.get(i2));
                    i2++;
                }
            }
        }
    }

    public void b(Object obj, View view, ArrayList<View> arrayList) {
        n nVar = (n) obj;
        ArrayList<View> arrayList2 = nVar.C;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            k0.a((List<View>) arrayList2, arrayList.get(i2));
        }
        arrayList2.add(view);
        arrayList.add(view);
        a((Object) nVar, arrayList);
    }

    public void c(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            a(view, rect);
            ((h) obj).a((h.c) new a(this, rect));
        }
    }

    public Object b(Object obj, Object obj2, Object obj3) {
        n nVar = new n();
        if (obj != null) {
            nVar.a((h) obj);
        }
        if (obj2 != null) {
            nVar.a((h) obj2);
        }
        if (obj3 != null) {
            nVar.a((h) obj3);
        }
        return nVar;
    }

    public void a(Object obj, View view, ArrayList<View> arrayList) {
        ((h) obj).a((h.d) new b(this, view, arrayList));
    }

    public Object a(Object obj, Object obj2, Object obj3) {
        h hVar = (h) obj;
        h hVar2 = (h) obj2;
        h hVar3 = (h) obj3;
        if (hVar != null && hVar2 != null) {
            n nVar = new n();
            nVar.a(hVar);
            nVar.a(hVar2);
            nVar.b(1);
            hVar = nVar;
        } else if (hVar == null) {
            hVar = hVar2 != null ? hVar2 : null;
        }
        if (hVar3 == null) {
            return hVar;
        }
        n nVar2 = new n();
        if (hVar != null) {
            nVar2.a(hVar);
        }
        nVar2.a(hVar3);
        return nVar2;
    }

    public void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        n nVar = (n) obj;
        if (nVar != null) {
            nVar.C.clear();
            nVar.C.addAll(arrayList2);
            a((Object) nVar, arrayList, arrayList2);
        }
    }

    public void b(Object obj, View view) {
        if (obj != null) {
            ((h) obj).d(view);
        }
    }

    public void a(ViewGroup viewGroup, Object obj) {
        l.a(viewGroup, (h) obj);
    }

    public void a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((h) obj).a((h.d) new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    public void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        int i2;
        h hVar = (h) obj;
        int i3 = 0;
        if (hVar instanceof n) {
            n nVar = (n) hVar;
            int size = nVar.f0.size();
            while (i3 < size) {
                a((Object) nVar.a(i3), arrayList, arrayList2);
                i3++;
            }
        } else if (!a(hVar)) {
            ArrayList<View> arrayList3 = hVar.C;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                if (arrayList2 == null) {
                    i2 = 0;
                } else {
                    i2 = arrayList2.size();
                }
                while (i3 < i2) {
                    hVar.a(arrayList2.get(i3));
                    i3++;
                }
                int size2 = arrayList.size();
                while (true) {
                    size2--;
                    if (size2 >= 0) {
                        hVar.d(arrayList.get(size2));
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public void a(Object obj, View view) {
        if (obj != null) {
            ((h) obj).a(view);
        }
    }

    public void a(Object obj, Rect rect) {
        if (obj != null) {
            ((h) obj).a((h.c) new C0053d(this, rect));
        }
    }

    public static boolean a(h hVar) {
        return !k0.a((List) hVar.B) || !k0.a((List) hVar.D) || !k0.a((List) hVar.E);
    }
}
