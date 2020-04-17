package d.x;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.transition.R$id;
import d.i.i.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class l {
    public static h a = new a();
    public static ThreadLocal<WeakReference<d.f.a<ViewGroup, ArrayList<h>>>> b = new ThreadLocal<>();

    /* renamed from: c  reason: collision with root package name */
    public static ArrayList<ViewGroup> f972c = new ArrayList<>();

    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        public h x;
        public ViewGroup y;

        /* renamed from: d.x.l$a$a  reason: collision with other inner class name */
        public class C0054a extends k {
            public final /* synthetic */ d.f.a a;

            public C0054a(d.f.a aVar) {
                this.a = aVar;
            }

            public void d(h hVar) {
                ((ArrayList) this.a.get(a.this.y)).remove(hVar);
            }
        }

        public a(h hVar, ViewGroup viewGroup) {
            this.x = hVar;
            this.y = viewGroup;
        }

        /* JADX WARNING: Removed duplicated region for block: B:12:0x005c  */
        /* JADX WARNING: Removed duplicated region for block: B:139:0x02b7  */
        /* JADX WARNING: Removed duplicated region for block: B:18:0x0078  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onPreDraw() {
            /*
                r18 = this;
                r0 = r18
                android.view.ViewGroup r1 = r0.y
                android.view.ViewTreeObserver r1 = r1.getViewTreeObserver()
                r1.removeOnPreDrawListener(r0)
                android.view.ViewGroup r1 = r0.y
                r1.removeOnAttachStateChangeListener(r0)
                java.util.ArrayList<android.view.ViewGroup> r1 = d.x.l.f972c
                android.view.ViewGroup r2 = r0.y
                boolean r1 = r1.remove(r2)
                r2 = 1
                if (r1 != 0) goto L_0x001c
                return r2
            L_0x001c:
                d.f.a r1 = d.x.l.a()
                android.view.ViewGroup r3 = r0.y
                java.lang.Object r3 = r1.get(r3)
                java.util.ArrayList r3 = (java.util.ArrayList) r3
                r4 = 0
                if (r3 != 0) goto L_0x0036
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
                android.view.ViewGroup r5 = r0.y
                r1.put(r5, r3)
                goto L_0x0042
            L_0x0036:
                int r5 = r3.size()
                if (r5 <= 0) goto L_0x0042
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>(r3)
                goto L_0x0043
            L_0x0042:
                r5 = r4
            L_0x0043:
                d.x.h r6 = r0.x
                r3.add(r6)
                d.x.h r3 = r0.x
                d.x.l$a$a r6 = new d.x.l$a$a
                r6.<init>(r1)
                r3.a((d.x.h.d) r6)
                d.x.h r1 = r0.x
                android.view.ViewGroup r3 = r0.y
                r6 = 0
                r1.a((android.view.ViewGroup) r3, (boolean) r6)
                if (r5 == 0) goto L_0x0072
                java.util.Iterator r1 = r5.iterator()
            L_0x0060:
                boolean r3 = r1.hasNext()
                if (r3 == 0) goto L_0x0072
                java.lang.Object r3 = r1.next()
                d.x.h r3 = (d.x.h) r3
                android.view.ViewGroup r5 = r0.y
                r3.e(r5)
                goto L_0x0060
            L_0x0072:
                d.x.h r1 = r0.x
                android.view.ViewGroup r8 = r0.y
                if (r1 == 0) goto L_0x02b7
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
                r1.Q = r3
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
                r1.R = r3
                d.x.q r3 = r1.M
                d.x.q r5 = r1.N
                d.f.a r7 = new d.f.a
                d.f.a<android.view.View, d.x.p> r9 = r3.a
                r7.<init>((d.f.h) r9)
                d.f.a r9 = new d.f.a
                d.f.a<android.view.View, d.x.p> r10 = r5.a
                r9.<init>((d.f.h) r10)
                r10 = 0
            L_0x0099:
                int[] r11 = r1.P
                int r12 = r11.length
                if (r10 >= r12) goto L_0x01f5
                r11 = r11[r10]
                if (r11 == r2) goto L_0x01b3
                r12 = 2
                if (r11 == r12) goto L_0x0165
                r12 = 3
                if (r11 == r12) goto L_0x0111
                r12 = 4
                if (r11 == r12) goto L_0x00ae
            L_0x00ab:
                r17 = r3
                goto L_0x010d
            L_0x00ae:
                d.f.e<android.view.View> r11 = r3.f974c
                d.f.e<android.view.View> r12 = r5.f974c
                int r13 = r11.c()
                r14 = 0
            L_0x00b7:
                if (r14 >= r13) goto L_0x00ab
                java.lang.Object r15 = r11.a((int) r14)
                android.view.View r15 = (android.view.View) r15
                if (r15 == 0) goto L_0x0103
                boolean r16 = r1.b((android.view.View) r15)
                if (r16 == 0) goto L_0x0103
                boolean r6 = r11.x
                if (r6 == 0) goto L_0x00ce
                r11.b()
            L_0x00ce:
                long[] r6 = r11.y
                r17 = r3
                r2 = r6[r14]
                java.lang.Object r2 = r12.a((long) r2)
                android.view.View r2 = (android.view.View) r2
                if (r2 == 0) goto L_0x0105
                boolean r3 = r1.b((android.view.View) r2)
                if (r3 == 0) goto L_0x0105
                java.lang.Object r3 = r7.getOrDefault(r15, r4)
                d.x.p r3 = (d.x.p) r3
                java.lang.Object r6 = r9.getOrDefault(r2, r4)
                d.x.p r6 = (d.x.p) r6
                if (r3 == 0) goto L_0x0105
                if (r6 == 0) goto L_0x0105
                java.util.ArrayList<d.x.p> r4 = r1.Q
                r4.add(r3)
                java.util.ArrayList<d.x.p> r3 = r1.R
                r3.add(r6)
                r7.remove(r15)
                r9.remove(r2)
                goto L_0x0105
            L_0x0103:
                r17 = r3
            L_0x0105:
                int r14 = r14 + 1
                r3 = r17
                r2 = 1
                r4 = 0
                r6 = 0
                goto L_0x00b7
            L_0x010d:
                r2 = r17
                goto L_0x01eb
            L_0x0111:
                r2 = r3
                android.util.SparseArray<android.view.View> r3 = r2.b
                android.util.SparseArray<android.view.View> r4 = r5.b
                int r6 = r3.size()
                r11 = 0
            L_0x011b:
                if (r11 >= r6) goto L_0x01eb
                java.lang.Object r12 = r3.valueAt(r11)
                android.view.View r12 = (android.view.View) r12
                if (r12 == 0) goto L_0x0160
                boolean r13 = r1.b((android.view.View) r12)
                if (r13 == 0) goto L_0x0160
                int r13 = r3.keyAt(r11)
                java.lang.Object r13 = r4.get(r13)
                android.view.View r13 = (android.view.View) r13
                if (r13 == 0) goto L_0x0160
                boolean r14 = r1.b((android.view.View) r13)
                if (r14 == 0) goto L_0x0160
                r14 = 0
                java.lang.Object r15 = r7.getOrDefault(r12, r14)
                d.x.p r15 = (d.x.p) r15
                java.lang.Object r17 = r9.getOrDefault(r13, r14)
                r14 = r17
                d.x.p r14 = (d.x.p) r14
                if (r15 == 0) goto L_0x0160
                if (r14 == 0) goto L_0x0160
                java.util.ArrayList<d.x.p> r0 = r1.Q
                r0.add(r15)
                java.util.ArrayList<d.x.p> r0 = r1.R
                r0.add(r14)
                r7.remove(r12)
                r9.remove(r13)
            L_0x0160:
                int r11 = r11 + 1
                r0 = r18
                goto L_0x011b
            L_0x0165:
                r2 = r3
                d.f.a<java.lang.String, android.view.View> r0 = r2.f975d
                d.f.a<java.lang.String, android.view.View> r3 = r5.f975d
                int r4 = r0.z
                r6 = 0
            L_0x016d:
                if (r6 >= r4) goto L_0x01eb
                java.lang.Object r11 = r0.e(r6)
                android.view.View r11 = (android.view.View) r11
                if (r11 == 0) goto L_0x01b0
                boolean r12 = r1.b((android.view.View) r11)
                if (r12 == 0) goto L_0x01b0
                java.lang.Object r12 = r0.c(r6)
                java.lang.Object r12 = r3.get(r12)
                android.view.View r12 = (android.view.View) r12
                if (r12 == 0) goto L_0x01b0
                boolean r13 = r1.b((android.view.View) r12)
                if (r13 == 0) goto L_0x01b0
                r13 = 0
                java.lang.Object r14 = r7.getOrDefault(r11, r13)
                d.x.p r14 = (d.x.p) r14
                java.lang.Object r15 = r9.getOrDefault(r12, r13)
                d.x.p r15 = (d.x.p) r15
                if (r14 == 0) goto L_0x01b0
                if (r15 == 0) goto L_0x01b0
                java.util.ArrayList<d.x.p> r13 = r1.Q
                r13.add(r14)
                java.util.ArrayList<d.x.p> r13 = r1.R
                r13.add(r15)
                r7.remove(r11)
                r9.remove(r12)
            L_0x01b0:
                int r6 = r6 + 1
                goto L_0x016d
            L_0x01b3:
                r2 = r3
                int r0 = r7.z
            L_0x01b6:
                int r0 = r0 + -1
                if (r0 < 0) goto L_0x01eb
                java.lang.Object r3 = r7.c(r0)
                android.view.View r3 = (android.view.View) r3
                if (r3 == 0) goto L_0x01b6
                boolean r4 = r1.b((android.view.View) r3)
                if (r4 == 0) goto L_0x01b6
                java.lang.Object r3 = r9.remove(r3)
                d.x.p r3 = (d.x.p) r3
                if (r3 == 0) goto L_0x01b6
                android.view.View r4 = r3.b
                if (r4 == 0) goto L_0x01b6
                boolean r4 = r1.b((android.view.View) r4)
                if (r4 == 0) goto L_0x01b6
                java.lang.Object r4 = r7.d(r0)
                d.x.p r4 = (d.x.p) r4
                java.util.ArrayList<d.x.p> r6 = r1.Q
                r6.add(r4)
                java.util.ArrayList<d.x.p> r4 = r1.R
                r4.add(r3)
                goto L_0x01b6
            L_0x01eb:
                int r10 = r10 + 1
                r3 = r2
                r2 = 1
                r4 = 0
                r6 = 0
                r0 = r18
                goto L_0x0099
            L_0x01f5:
                r0 = 0
            L_0x01f6:
                int r2 = r7.z
                if (r0 >= r2) goto L_0x0216
                java.lang.Object r2 = r7.e(r0)
                d.x.p r2 = (d.x.p) r2
                android.view.View r3 = r2.b
                boolean r3 = r1.b((android.view.View) r3)
                if (r3 == 0) goto L_0x0213
                java.util.ArrayList<d.x.p> r3 = r1.Q
                r3.add(r2)
                java.util.ArrayList<d.x.p> r2 = r1.R
                r3 = 0
                r2.add(r3)
            L_0x0213:
                int r0 = r0 + 1
                goto L_0x01f6
            L_0x0216:
                r0 = 0
            L_0x0217:
                int r2 = r9.z
                if (r0 >= r2) goto L_0x0237
                java.lang.Object r2 = r9.e(r0)
                d.x.p r2 = (d.x.p) r2
                android.view.View r3 = r2.b
                boolean r3 = r1.b((android.view.View) r3)
                if (r3 == 0) goto L_0x0234
                java.util.ArrayList<d.x.p> r3 = r1.R
                r3.add(r2)
                java.util.ArrayList<d.x.p> r2 = r1.Q
                r3 = 0
                r2.add(r3)
            L_0x0234:
                int r0 = r0 + 1
                goto L_0x0217
            L_0x0237:
                d.f.a r0 = d.x.h.e()
                int r2 = r0.z
                d.x.d0 r3 = d.x.v.c(r8)
                r4 = 1
                int r2 = r2 - r4
            L_0x0243:
                if (r2 < 0) goto L_0x02a6
                java.lang.Object r4 = r0.c(r2)
                android.animation.Animator r4 = (android.animation.Animator) r4
                if (r4 == 0) goto L_0x02a3
                r5 = 0
                java.lang.Object r6 = r0.getOrDefault(r4, r5)
                d.x.h$b r6 = (d.x.h.b) r6
                if (r6 == 0) goto L_0x02a3
                android.view.View r5 = r6.a
                if (r5 == 0) goto L_0x02a3
                d.x.d0 r5 = r6.f970d
                boolean r5 = r3.equals(r5)
                if (r5 == 0) goto L_0x02a3
                d.x.p r5 = r6.f969c
                android.view.View r7 = r6.a
                r9 = 1
                d.x.p r10 = r1.c(r7, r9)
                d.x.p r11 = r1.b(r7, r9)
                if (r10 != 0) goto L_0x027e
                if (r11 != 0) goto L_0x027e
                d.x.q r9 = r1.N
                d.f.a<android.view.View, d.x.p> r9 = r9.a
                java.lang.Object r7 = r9.get(r7)
                r11 = r7
                d.x.p r11 = (d.x.p) r11
            L_0x027e:
                if (r10 != 0) goto L_0x0282
                if (r11 == 0) goto L_0x028c
            L_0x0282:
                d.x.h r6 = r6.f971e
                boolean r5 = r6.a((d.x.p) r5, (d.x.p) r11)
                if (r5 == 0) goto L_0x028c
                r5 = 1
                goto L_0x028d
            L_0x028c:
                r5 = 0
            L_0x028d:
                if (r5 == 0) goto L_0x02a3
                boolean r5 = r4.isRunning()
                if (r5 != 0) goto L_0x02a0
                boolean r5 = r4.isStarted()
                if (r5 == 0) goto L_0x029c
                goto L_0x02a0
            L_0x029c:
                r0.remove(r4)
                goto L_0x02a3
            L_0x02a0:
                r4.cancel()
            L_0x02a3:
                int r2 = r2 + -1
                goto L_0x0243
            L_0x02a6:
                d.x.q r9 = r1.M
                d.x.q r10 = r1.N
                java.util.ArrayList<d.x.p> r11 = r1.Q
                java.util.ArrayList<d.x.p> r12 = r1.R
                r7 = r1
                r7.a(r8, r9, r10, r11, r12)
                r1.c()
                r0 = 1
                return r0
            L_0x02b7:
                r0 = r4
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: d.x.l.a.onPreDraw():boolean");
        }

        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            this.y.getViewTreeObserver().removeOnPreDrawListener(this);
            this.y.removeOnAttachStateChangeListener(this);
            l.f972c.remove(this.y);
            ArrayList arrayList = l.a().get(this.y);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).e(this.y);
                }
            }
            this.x.a(true);
        }
    }

    public static d.f.a<ViewGroup, ArrayList<h>> a() {
        d.f.a<ViewGroup, ArrayList<h>> aVar;
        WeakReference weakReference = b.get();
        if (weakReference != null && (aVar = (d.f.a) weakReference.get()) != null) {
            return aVar;
        }
        d.f.a<ViewGroup, ArrayList<h>> aVar2 = new d.f.a<>();
        b.set(new WeakReference(aVar2));
        return aVar2;
    }

    public static void a(ViewGroup viewGroup, h hVar) {
        if (!f972c.contains(viewGroup) && n.t(viewGroup)) {
            f972c.add(viewGroup);
            if (hVar == null) {
                hVar = a;
            }
            h clone = hVar.clone();
            ArrayList orDefault = a().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator it = orDefault.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).c((View) viewGroup);
                }
            }
            if (clone != null) {
                clone.a(viewGroup, true);
            }
            if (((g) viewGroup.getTag(R$id.transition_current_scene)) == null) {
                viewGroup.setTag(R$id.transition_current_scene, (Object) null);
                if (clone != null) {
                    a aVar = new a(clone, viewGroup);
                    viewGroup.addOnAttachStateChangeListener(aVar);
                    viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
                    return;
                }
                return;
            }
            throw null;
        }
    }
}
