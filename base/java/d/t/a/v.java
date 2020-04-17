package d.t.a;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import d.i.i.x.d;
import d.t.a.s;

public class v extends d.i.i.a {

    /* renamed from: d  reason: collision with root package name */
    public final s f858d;

    /* renamed from: e  reason: collision with root package name */
    public final d.i.i.a f859e = new a(this);

    public v(s sVar) {
        this.f858d = sVar;
    }

    public boolean a() {
        return this.f858d.i();
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0085 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.view.View r4, int r5, android.os.Bundle r6) {
        /*
            r3 = this;
            boolean r4 = super.a(r4, r5, r6)
            r6 = 1
            if (r4 == 0) goto L_0x0008
            return r6
        L_0x0008:
            boolean r4 = r3.a()
            r0 = 0
            if (r4 != 0) goto L_0x008f
            d.t.a.s r4 = r3.f858d
            d.t.a.s$k r4 = r4.getLayoutManager()
            if (r4 == 0) goto L_0x008f
            d.t.a.s r4 = r3.f858d
            d.t.a.s$k r4 = r4.getLayoutManager()
            d.t.a.s r1 = r4.b
            d.t.a.s$q r2 = r1.y
            r2 = 4096(0x1000, float:5.74E-42)
            if (r5 == r2) goto L_0x0058
            r2 = 8192(0x2000, float:1.14794E-41)
            if (r5 == r2) goto L_0x002c
            r5 = 0
            r1 = 0
            goto L_0x0083
        L_0x002c:
            r5 = -1
            boolean r1 = r1.canScrollVertically(r5)
            if (r1 == 0) goto L_0x0041
            int r1 = r4.p
            int r2 = r4.i()
            int r1 = r1 - r2
            int r2 = r4.f()
            int r1 = r1 - r2
            int r1 = -r1
            goto L_0x0042
        L_0x0041:
            r1 = 0
        L_0x0042:
            d.t.a.s r2 = r4.b
            boolean r5 = r2.canScrollHorizontally(r5)
            if (r5 == 0) goto L_0x0082
            int r5 = r4.o
            int r2 = r4.g()
            int r5 = r5 - r2
            int r2 = r4.h()
            int r5 = r5 - r2
            int r5 = -r5
            goto L_0x0083
        L_0x0058:
            boolean r5 = r1.canScrollVertically(r6)
            if (r5 == 0) goto L_0x006c
            int r5 = r4.p
            int r1 = r4.i()
            int r5 = r5 - r1
            int r1 = r4.f()
            int r5 = r5 - r1
            r1 = r5
            goto L_0x006d
        L_0x006c:
            r1 = 0
        L_0x006d:
            d.t.a.s r5 = r4.b
            boolean r5 = r5.canScrollHorizontally(r6)
            if (r5 == 0) goto L_0x0082
            int r5 = r4.o
            int r2 = r4.g()
            int r5 = r5 - r2
            int r2 = r4.h()
            int r5 = r5 - r2
            goto L_0x0083
        L_0x0082:
            r5 = 0
        L_0x0083:
            if (r1 != 0) goto L_0x0089
            if (r5 != 0) goto L_0x0089
            r6 = 0
            goto L_0x008e
        L_0x0089:
            d.t.a.s r4 = r4.b
            r4.c(r5, r1)
        L_0x008e:
            return r6
        L_0x008f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.v.a(android.view.View, int, android.os.Bundle):boolean");
    }

    public static class a extends d.i.i.a {

        /* renamed from: d  reason: collision with root package name */
        public final v f860d;

        public a(v vVar) {
            this.f860d = vVar;
        }

        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            if (!this.f860d.a() && this.f860d.f858d.getLayoutManager() != null) {
                s.q qVar = this.f860d.f858d.getLayoutManager().b.y;
            }
            return false;
        }

        public void a(View view, d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            if (!this.f860d.a() && this.f860d.f858d.getLayoutManager() != null) {
                this.f860d.f858d.getLayoutManager().a(view, dVar);
            }
        }
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(s.class.getName());
        if ((view instanceof s) && !a()) {
            s sVar = (s) view;
            if (sVar.getLayoutManager() != null) {
                sVar.getLayoutManager().a(accessibilityEvent);
            }
        }
    }

    public void a(View view, d dVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
        dVar.a.setClassName(s.class.getName());
        if (!a() && this.f858d.getLayoutManager() != null) {
            s.k layoutManager = this.f858d.getLayoutManager();
            s sVar = layoutManager.b;
            s.q qVar = sVar.y;
            s.u uVar = sVar.C0;
            if (sVar.canScrollVertically(-1) || layoutManager.b.canScrollHorizontally(-1)) {
                dVar.a.addAction(8192);
                dVar.a.setScrollable(true);
            }
            if (layoutManager.b.canScrollVertically(1) || layoutManager.b.canScrollHorizontally(1)) {
                dVar.a.addAction(4096);
                dVar.a.setScrollable(true);
            }
            dVar.a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.b(qVar, uVar), layoutManager.a(qVar, uVar), false, 0));
        }
    }
}
