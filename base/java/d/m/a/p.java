package d.m.a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.R$id;
import androidx.fragment.app.Fragment;
import d.m.a.f0;
import d.m.a.y;
import d.o.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class p {
    public ArrayList<Fragment> A;
    public ArrayList<g> B;
    public t C;
    public Runnable D = new d();
    public final ArrayList<e> a = new ArrayList<>();
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final x f660c = new x();

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<a> f661d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<Fragment> f662e;

    /* renamed from: f  reason: collision with root package name */
    public final n f663f = new n(this);

    /* renamed from: g  reason: collision with root package name */
    public OnBackPressedDispatcher f664g;

    /* renamed from: h  reason: collision with root package name */
    public final d.a.b f665h = new a(false);

    /* renamed from: i  reason: collision with root package name */
    public final AtomicInteger f666i = new AtomicInteger();

    /* renamed from: j  reason: collision with root package name */
    public ConcurrentHashMap<Fragment, HashSet<d.i.e.a>> f667j = new ConcurrentHashMap<>();

    /* renamed from: k  reason: collision with root package name */
    public final f0.a f668k = new b();

    /* renamed from: l  reason: collision with root package name */
    public final o f669l = new o(this);
    public int m = -1;
    public m<?> n;
    public i o;
    public Fragment p;
    public Fragment q;
    public l r = null;
    public l s = new c();
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public ArrayList<a> y;
    public ArrayList<Boolean> z;

    public class a extends d.a.b {
        public a(boolean z) {
            super(z);
        }

        public void a() {
            p pVar = p.this;
            pVar.d(true);
            if (pVar.f665h.a) {
                pVar.k();
            } else {
                pVar.f664g.a();
            }
        }
    }

    public class b implements f0.a {
        public b() {
        }

        public void a(Fragment fragment, d.i.e.a aVar) {
            if (!aVar.b()) {
                p pVar = p.this;
                HashSet hashSet = pVar.f667j.get(fragment);
                if (hashSet != null && hashSet.remove(aVar) && hashSet.isEmpty()) {
                    pVar.f667j.remove(fragment);
                    if (fragment.mState < 3) {
                        pVar.e(fragment);
                        pVar.a(fragment, fragment.getStateAfterAnimating());
                    }
                }
            }
        }

        public void b(Fragment fragment, d.i.e.a aVar) {
            p pVar = p.this;
            if (pVar.f667j.get(fragment) == null) {
                pVar.f667j.put(fragment, new HashSet());
            }
            pVar.f667j.get(fragment).add(aVar);
        }
    }

    public class c extends l {
        public c() {
        }

        public Fragment a(ClassLoader classLoader, String str) {
            m<?> mVar = p.this.n;
            Context context = mVar.y;
            if (mVar != null) {
                return Fragment.instantiate(context, str, (Bundle) null);
            }
            throw null;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        public void run() {
            p.this.d(true);
        }
    }

    public interface e {
        boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2);
    }

    public class f implements e {
        public final String a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f671c;

        public f(String str, int i2, int i3) {
            this.a = str;
            this.b = i2;
            this.f671c = i3;
        }

        public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = p.this.q;
            if (fragment != null && this.b < 0 && this.a == null && fragment.getChildFragmentManager().k()) {
                return false;
            }
            return p.this.a(arrayList, arrayList2, this.a, this.b, this.f671c);
        }
    }

    public static class g implements Fragment.f {
        public final boolean a;
        public final a b;

        /* renamed from: c  reason: collision with root package name */
        public int f673c;

        public g(a aVar, boolean z) {
            this.a = z;
            this.b = aVar;
        }

        public void a() {
            boolean z = this.f673c > 0;
            for (Fragment next : this.b.r.f660c.c()) {
                next.setOnStartEnterTransitionListener((Fragment.f) null);
                if (z && next.isPostponed()) {
                    next.startPostponedEnterTransition();
                }
            }
            a aVar = this.b;
            aVar.r.a(aVar, this.a, !z, true);
        }
    }

    public static boolean c(int i2) {
        return Log.isLoggable("FragmentManager", i2);
    }

    public final void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new d.i.h.a("FragmentManager"));
        m<?> mVar = this.n;
        if (mVar != null) {
            try {
                c.this.dump("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        throw runtimeException;
    }

    public void b(Fragment fragment) {
        boolean z2;
        if (!i()) {
            t tVar = this.C;
            if (tVar.f676c.containsKey(fragment.mWho)) {
                z2 = false;
            } else {
                tVar.f676c.put(fragment.mWho, fragment);
                z2 = true;
            }
            if (z2 && c(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        } else if (c(2)) {
            Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
        }
    }

    public final void d(Fragment fragment) {
        HashSet hashSet = this.f667j.get(fragment);
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((d.i.e.a) it.next()).a();
            }
            hashSet.clear();
            e(fragment);
            this.f667j.remove(fragment);
        }
    }

    public final void e(Fragment fragment) {
        fragment.performDestroyView();
        this.f669l.g(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.a(null);
        fragment.mInLayout = false;
    }

    public void f(Fragment fragment) {
        if (c(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (c(2)) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                this.f660c.b(fragment);
                if (j(fragment)) {
                    this.t = true;
                }
                r(fragment);
            }
        }
    }

    public final void g() {
        if (this.B != null) {
            while (!this.B.isEmpty()) {
                this.B.remove(0).a();
            }
        }
    }

    public final ViewGroup h(Fragment fragment) {
        if (fragment.mContainerId > 0 && this.o.a()) {
            View a2 = this.o.a(fragment.mContainerId);
            if (a2 instanceof ViewGroup) {
                return (ViewGroup) a2;
            }
        }
        return null;
    }

    public void i(Fragment fragment) {
        if (c(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            r(fragment);
        }
    }

    public void j() {
        if (this.n != null) {
            this.u = false;
            this.v = false;
            for (Fragment next : this.f660c.c()) {
                if (next != null) {
                    next.noteStateNotSaved();
                }
            }
        }
    }

    public boolean k(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        p pVar = fragment.mFragmentManager;
        if (!fragment.equals(pVar.q) || !k(pVar.p)) {
            return false;
        }
        return true;
    }

    public void l(Fragment fragment) {
        if (!this.f660c.a(fragment.mWho)) {
            v vVar = new v(this.f669l, fragment);
            vVar.a(this.n.y.getClassLoader());
            this.f660c.b.put(vVar.b.mWho, vVar);
            if (fragment.mRetainInstanceChangedWhileDetached) {
                if (fragment.mRetainInstance) {
                    b(fragment);
                } else {
                    p(fragment);
                }
                fragment.mRetainInstanceChangedWhileDetached = false;
            }
            vVar.f682c = this.m;
            if (c(2)) {
                Log.v("FragmentManager", "Added fragment to active set " + fragment);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x006e, code lost:
        r0 = r4.mView;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m(androidx.fragment.app.Fragment r9) {
        /*
            r8 = this;
            d.m.a.x r0 = r8.f660c
            java.lang.String r1 = r9.mWho
            boolean r0 = r0.a((java.lang.String) r1)
            if (r0 != 0) goto L_0x003a
            r0 = 3
            boolean r0 = c((int) r0)
            if (r0 == 0) goto L_0x0039
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Ignoring moving "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = " to state "
            r0.append(r9)
            int r9 = r8.m
            r0.append(r9)
            java.lang.String r9 = "since it is not added to "
            r0.append(r9)
            r0.append(r8)
            java.lang.String r9 = r0.toString()
            java.lang.String r0 = "FragmentManager"
            android.util.Log.d(r0, r9)
        L_0x0039:
            return
        L_0x003a:
            int r0 = r8.m
            r8.a((androidx.fragment.app.Fragment) r9, (int) r0)
            android.view.View r0 = r9.mView
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x00c2
            d.m.a.x r3 = r8.f660c
            r4 = 0
            if (r3 == 0) goto L_0x00c1
            android.view.ViewGroup r5 = r9.mContainer
            if (r5 == 0) goto L_0x006c
            if (r0 != 0) goto L_0x0051
            goto L_0x006c
        L_0x0051:
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r3.a
            int r0 = r0.indexOf(r9)
        L_0x0057:
            int r0 = r0 + -1
            if (r0 < 0) goto L_0x006c
            java.util.ArrayList<androidx.fragment.app.Fragment> r6 = r3.a
            java.lang.Object r6 = r6.get(r0)
            androidx.fragment.app.Fragment r6 = (androidx.fragment.app.Fragment) r6
            android.view.ViewGroup r7 = r6.mContainer
            if (r7 != r5) goto L_0x0057
            android.view.View r7 = r6.mView
            if (r7 == 0) goto L_0x0057
            r4 = r6
        L_0x006c:
            if (r4 == 0) goto L_0x0086
            android.view.View r0 = r4.mView
            android.view.ViewGroup r3 = r9.mContainer
            int r0 = r3.indexOfChild(r0)
            android.view.View r4 = r9.mView
            int r4 = r3.indexOfChild(r4)
            if (r4 >= r0) goto L_0x0086
            r3.removeViewAt(r4)
            android.view.View r4 = r9.mView
            r3.addView(r4, r0)
        L_0x0086:
            boolean r0 = r9.mIsNewlyAdded
            if (r0 == 0) goto L_0x00c2
            android.view.ViewGroup r0 = r9.mContainer
            if (r0 == 0) goto L_0x00c2
            float r0 = r9.mPostponedAlpha
            r3 = 0
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r4 <= 0) goto L_0x009a
            android.view.View r4 = r9.mView
            r4.setAlpha(r0)
        L_0x009a:
            r9.mPostponedAlpha = r3
            r9.mIsNewlyAdded = r2
            d.m.a.m<?> r0 = r8.n
            android.content.Context r0 = r0.y
            d.m.a.i r3 = r8.o
            d.m.a.g r0 = d.b.a.r.a((android.content.Context) r0, (d.m.a.i) r3, (androidx.fragment.app.Fragment) r9, (boolean) r1)
            if (r0 == 0) goto L_0x00c2
            android.view.animation.Animation r3 = r0.a
            if (r3 == 0) goto L_0x00b4
            android.view.View r0 = r9.mView
            r0.startAnimation(r3)
            goto L_0x00c2
        L_0x00b4:
            android.animation.Animator r3 = r0.b
            android.view.View r4 = r9.mView
            r3.setTarget(r4)
            android.animation.Animator r0 = r0.b
            r0.start()
            goto L_0x00c2
        L_0x00c1:
            throw r4
        L_0x00c2:
            boolean r0 = r9.mHiddenChanged
            if (r0 == 0) goto L_0x014a
            android.view.View r0 = r9.mView
            if (r0 == 0) goto L_0x0137
            d.m.a.m<?> r0 = r8.n
            android.content.Context r0 = r0.y
            d.m.a.i r3 = r8.o
            boolean r4 = r9.mHidden
            r4 = r4 ^ r1
            d.m.a.g r0 = d.b.a.r.a((android.content.Context) r0, (d.m.a.i) r3, (androidx.fragment.app.Fragment) r9, (boolean) r4)
            if (r0 == 0) goto L_0x010d
            android.animation.Animator r3 = r0.b
            if (r3 == 0) goto L_0x010d
            android.view.View r4 = r9.mView
            r3.setTarget(r4)
            boolean r3 = r9.mHidden
            if (r3 == 0) goto L_0x0102
            boolean r3 = r9.isHideReplaced()
            if (r3 == 0) goto L_0x00f0
            r9.setHideReplaced(r2)
            goto L_0x0107
        L_0x00f0:
            android.view.ViewGroup r3 = r9.mContainer
            android.view.View r4 = r9.mView
            r3.startViewTransition(r4)
            android.animation.Animator r5 = r0.b
            d.m.a.q r6 = new d.m.a.q
            r6.<init>(r8, r3, r4, r9)
            r5.addListener(r6)
            goto L_0x0107
        L_0x0102:
            android.view.View r3 = r9.mView
            r3.setVisibility(r2)
        L_0x0107:
            android.animation.Animator r0 = r0.b
            r0.start()
            goto L_0x0137
        L_0x010d:
            if (r0 == 0) goto L_0x011b
            android.view.View r3 = r9.mView
            android.view.animation.Animation r4 = r0.a
            r3.startAnimation(r4)
            android.view.animation.Animation r0 = r0.a
            r0.start()
        L_0x011b:
            boolean r0 = r9.mHidden
            if (r0 == 0) goto L_0x0128
            boolean r0 = r9.isHideReplaced()
            if (r0 != 0) goto L_0x0128
            r0 = 8
            goto L_0x0129
        L_0x0128:
            r0 = 0
        L_0x0129:
            android.view.View r3 = r9.mView
            r3.setVisibility(r0)
            boolean r0 = r9.isHideReplaced()
            if (r0 == 0) goto L_0x0137
            r9.setHideReplaced(r2)
        L_0x0137:
            boolean r0 = r9.mAdded
            if (r0 == 0) goto L_0x0143
            boolean r0 = r8.j(r9)
            if (r0 == 0) goto L_0x0143
            r8.t = r1
        L_0x0143:
            r9.mHiddenChanged = r2
            boolean r0 = r9.mHidden
            r9.onHiddenChanged(r0)
        L_0x014a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.p.m(androidx.fragment.app.Fragment):void");
    }

    public void n(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.b) {
            this.x = true;
            return;
        }
        fragment.mDeferStart = false;
        a(fragment, this.m);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0018, code lost:
        if (r1 == null) goto L_0x001f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001a, code lost:
        r1 = r1.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001f, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0020, code lost:
        if (r1 <= 0) goto L_0x002b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0028, code lost:
        if (k(r4.p) == false) goto L_0x002b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002b, code lost:
        r2 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002c, code lost:
        r0.a = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002e, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0013, code lost:
        r0 = r4.f665h;
        r1 = r4.f661d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void o() {
        /*
            r4 = this;
            java.util.ArrayList<d.m.a.p$e> r0 = r4.a
            monitor-enter(r0)
            java.util.ArrayList<d.m.a.p$e> r1 = r4.a     // Catch:{ all -> 0x002f }
            boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x002f }
            r2 = 1
            if (r1 != 0) goto L_0x0012
            d.a.b r1 = r4.f665h     // Catch:{ all -> 0x002f }
            r1.a = r2     // Catch:{ all -> 0x002f }
            monitor-exit(r0)     // Catch:{ all -> 0x002f }
            return
        L_0x0012:
            monitor-exit(r0)     // Catch:{ all -> 0x002f }
            d.a.b r0 = r4.f665h
            java.util.ArrayList<d.m.a.a> r1 = r4.f661d
            r3 = 0
            if (r1 == 0) goto L_0x001f
            int r1 = r1.size()
            goto L_0x0020
        L_0x001f:
            r1 = 0
        L_0x0020:
            if (r1 <= 0) goto L_0x002b
            androidx.fragment.app.Fragment r1 = r4.p
            boolean r1 = r4.k(r1)
            if (r1 == 0) goto L_0x002b
            goto L_0x002c
        L_0x002b:
            r2 = 0
        L_0x002c:
            r0.a = r2
            return
        L_0x002f:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x002f }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.p.o():void");
    }

    public void p(Fragment fragment) {
        if (!i()) {
            if ((this.C.f676c.remove(fragment.mWho) != null) && c(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
            }
        } else if (c(2)) {
            Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
        }
    }

    public void q(Fragment fragment) {
        if (fragment == null || (fragment.equals(a(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.q;
            this.q = fragment;
            g(fragment2);
            g(this.q);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void r(Fragment fragment) {
        ViewGroup h2 = h(fragment);
        if (h2 != null) {
            if (h2.getTag(R$id.visible_removing_fragment_view_tag) == null) {
                h2.setTag(R$id.visible_removing_fragment_view_tag, fragment);
            }
            ((Fragment) h2.getTag(R$id.visible_removing_fragment_view_tag)).setNextAnim(fragment.getNextAnim());
        }
    }

    public void s(Fragment fragment) {
        if (c(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.p;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.p)));
            sb.append("}");
        } else {
            m<?> mVar = this.n;
            if (mVar != null) {
                sb.append(mVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.n)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public void c(Fragment fragment) {
        if (c(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                this.f660c.a(fragment);
                if (c(2)) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                if (j(fragment)) {
                    this.t = true;
                }
            }
        }
    }

    public final void g(Fragment fragment) {
        if (fragment != null && fragment.equals(a(fragment.mWho))) {
            fragment.performPrimaryNavigationFragmentChanged();
        }
    }

    public boolean k() {
        d(false);
        c(true);
        Fragment fragment = this.q;
        if (fragment != null && fragment.getChildFragmentManager().k()) {
            return true;
        }
        boolean a2 = a(this.y, this.z, (String) null, -1, 0);
        if (a2) {
            this.b = true;
            try {
                c(this.y, this.z);
            } finally {
                a();
            }
        }
        o();
        e();
        this.f660c.a();
        return a2;
    }

    public l h() {
        l lVar = this.r;
        if (lVar != null) {
            return lVar;
        }
        Fragment fragment = this.p;
        if (fragment != null) {
            return fragment.mFragmentManager.h();
        }
        return this.s;
    }

    public boolean i() {
        return this.u || this.v;
    }

    public final boolean j(Fragment fragment) {
        boolean z2;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        p pVar = fragment.mChildFragmentManager;
        Iterator it = ((ArrayList) pVar.f660c.b()).iterator();
        boolean z3 = false;
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            Fragment fragment2 = (Fragment) it.next();
            if (fragment2 != null) {
                z3 = pVar.j(fragment2);
                continue;
            }
            if (z3) {
                z2 = true;
                break;
            }
        }
        if (z2) {
            return true;
        }
        return false;
    }

    public final void n() {
        Iterator it = ((ArrayList) this.f660c.b()).iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null) {
                n(fragment);
            }
        }
    }

    /* JADX INFO: finally extract failed */
    public boolean d(boolean z2) {
        c(z2);
        boolean z3 = false;
        while (b(this.y, this.z)) {
            this.b = true;
            try {
                c(this.y, this.z);
                a();
                z3 = true;
            } catch (Throwable th) {
                a();
                throw th;
            }
        }
        o();
        e();
        this.f660c.a();
        return z3;
    }

    public final void e() {
        if (this.x) {
            this.x = false;
            n();
        }
    }

    public Fragment b(int i2) {
        x xVar = this.f660c;
        int size = xVar.a.size();
        while (true) {
            size--;
            if (size >= 0) {
                Fragment fragment = xVar.a.get(size);
                if (fragment != null && fragment.mFragmentId == i2) {
                    return fragment;
                }
            } else {
                for (v next : xVar.b.values()) {
                    if (next != null) {
                        Fragment fragment2 = next.b;
                        if (fragment2.mFragmentId == i2) {
                            return fragment2;
                        }
                    }
                }
                return null;
            }
        }
    }

    public Fragment c(String str) {
        Fragment findFragmentByWho;
        for (v next : this.f660c.b.values()) {
            if (next != null && (findFragmentByWho = next.b.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public final void f() {
        if (!this.f667j.isEmpty()) {
            for (Fragment next : this.f667j.keySet()) {
                d(next);
                a(next, next.getStateAfterAnimating());
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String b2 = e.a.a.a.a.b(str, "    ");
        x xVar = this.f660c;
        if (xVar != null) {
            String b3 = e.a.a.a.a.b(str, "    ");
            if (!xVar.b.isEmpty()) {
                printWriter.print(str);
                printWriter.print("Active Fragments:");
                for (v next : xVar.b.values()) {
                    printWriter.print(str);
                    if (next != null) {
                        Fragment fragment = next.b;
                        printWriter.println(fragment);
                        fragment.dump(b3, fileDescriptor, printWriter, strArr);
                    } else {
                        printWriter.println("null");
                    }
                }
            }
            int size3 = xVar.a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                for (int i2 = 0; i2 < size3; i2++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(xVar.a.get(i2).toString());
                }
            }
            ArrayList<Fragment> arrayList = this.f662e;
            if (arrayList != null && (size2 = arrayList.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (int i3 = 0; i3 < size2; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.f662e.get(i3).toString());
                }
            }
            ArrayList<a> arrayList2 = this.f661d;
            if (arrayList2 != null && (size = arrayList2.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (int i4 = 0; i4 < size; i4++) {
                    a aVar = this.f661d.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(aVar.toString());
                    aVar.a(b2, printWriter, true);
                }
            }
            printWriter.print(str);
            printWriter.println("Back Stack Index: " + this.f666i.get());
            synchronized (this.a) {
                int size4 = this.a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(this.a.get(i5));
                    }
                }
            }
            printWriter.print(str);
            printWriter.println("FragmentManager misc state:");
            printWriter.print(str);
            printWriter.print("  mHost=");
            printWriter.println(this.n);
            printWriter.print(str);
            printWriter.print("  mContainer=");
            printWriter.println(this.o);
            if (this.p != null) {
                printWriter.print(str);
                printWriter.print("  mParent=");
                printWriter.println(this.p);
            }
            printWriter.print(str);
            printWriter.print("  mCurState=");
            printWriter.print(this.m);
            printWriter.print(" mStateSaved=");
            printWriter.print(this.u);
            printWriter.print(" mStopped=");
            printWriter.print(this.v);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.w);
            if (this.t) {
                printWriter.print(str);
                printWriter.print("  mNeedMenuInvalidate=");
                printWriter.println(this.t);
                return;
            }
            return;
        }
        throw null;
    }

    public void o(Fragment fragment) {
        if (c(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z2 = !fragment.isInBackStack();
        if (!fragment.mDetached || z2) {
            this.f660c.b(fragment);
            if (j(fragment)) {
                this.t = true;
            }
            fragment.mRemoving = true;
            r(fragment);
        }
    }

    public final void c(boolean z2) {
        if (this.b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.n == null) {
            if (this.w) {
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            throw new IllegalStateException("FragmentManager has not been attached to a host.");
        } else if (Looper.myLooper() != this.n.z.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        } else if (z2 || !i()) {
            if (this.y == null) {
                this.y = new ArrayList<>();
                this.z = new ArrayList<>();
            }
            this.b = true;
            try {
                a((ArrayList<a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.b = false;
            }
        } else {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    public Fragment b(String str) {
        x xVar = this.f660c;
        if (xVar != null) {
            if (str != null) {
                int size = xVar.a.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    Fragment fragment = xVar.a.get(size);
                    if (fragment != null && str.equals(fragment.mTag)) {
                        return fragment;
                    }
                }
            }
            if (str == null) {
                return null;
            }
            for (v next : xVar.b.values()) {
                if (next != null) {
                    Fragment fragment2 = next.b;
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
            return null;
        }
        throw null;
    }

    public void d() {
        for (Fragment next : this.f660c.c()) {
            if (next != null) {
                next.performLowMemory();
            }
        }
    }

    public Parcelable l() {
        int size;
        g();
        f();
        d(true);
        this.u = true;
        x xVar = this.f660c;
        b[] bVarArr = null;
        if (xVar != null) {
            ArrayList<u> arrayList = new ArrayList<>(xVar.b.size());
            for (v next : xVar.b.values()) {
                if (next != null) {
                    Fragment fragment = next.b;
                    u uVar = new u(next.b);
                    if (next.b.mState <= -1 || uVar.J != null) {
                        uVar.J = next.b.mSavedFragmentState;
                    } else {
                        Bundle a2 = next.a();
                        uVar.J = a2;
                        if (next.b.mTargetWho != null) {
                            if (a2 == null) {
                                uVar.J = new Bundle();
                            }
                            uVar.J.putString("android:target_state", next.b.mTargetWho);
                            int i2 = next.b.mTargetRequestCode;
                            if (i2 != 0) {
                                uVar.J.putInt("android:target_req_state", i2);
                            }
                        }
                    }
                    arrayList.add(uVar);
                    if (c(2)) {
                        Log.v("FragmentManager", "Saved state of " + fragment + ": " + uVar.J);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                if (c(2)) {
                    Log.v("FragmentManager", "saveAllState: no fragments!");
                }
                return null;
            }
            ArrayList<String> d2 = this.f660c.d();
            ArrayList<a> arrayList2 = this.f661d;
            if (arrayList2 != null && (size = arrayList2.size()) > 0) {
                bVarArr = new b[size];
                for (int i3 = 0; i3 < size; i3++) {
                    bVarArr[i3] = new b(this.f661d.get(i3));
                    if (c(2)) {
                        StringBuilder a3 = e.a.a.a.a.a("saveAllState: adding back stack #", i3, ": ");
                        a3.append(this.f661d.get(i3));
                        Log.v("FragmentManager", a3.toString());
                    }
                }
            }
            s sVar = new s();
            sVar.x = arrayList;
            sVar.y = d2;
            sVar.z = bVarArr;
            sVar.A = this.f666i.get();
            Fragment fragment2 = this.q;
            if (fragment2 != null) {
                sVar.B = fragment2.mWho;
            }
            return sVar;
        }
        throw null;
    }

    public final boolean b(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.a) {
            if (this.a.isEmpty()) {
                return false;
            }
            int size = this.a.size();
            boolean z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                z2 |= this.a.get(i2).a(arrayList, arrayList2);
            }
            this.a.clear();
            this.n.z.removeCallbacks(this.D);
            return z2;
        }
    }

    public final void c(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (!arrayList.isEmpty()) {
            if (arrayList.size() == arrayList2.size()) {
                a(arrayList, arrayList2);
                int size = arrayList.size();
                int i2 = 0;
                int i3 = 0;
                while (i2 < size) {
                    if (!arrayList.get(i2).p) {
                        if (i3 != i2) {
                            a(arrayList, arrayList2, i3, i2);
                        }
                        i3 = i2 + 1;
                        if (arrayList2.get(i2).booleanValue()) {
                            while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).p) {
                                i3++;
                            }
                        }
                        a(arrayList, arrayList2, i2, i3);
                        i2 = i3 - 1;
                    }
                    i2++;
                }
                if (i3 != size) {
                    a(arrayList, arrayList2, i3, size);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error with the back stack records");
        }
    }

    public void b() {
        this.u = false;
        this.v = false;
        a(1);
    }

    public void b(boolean z2) {
        for (Fragment next : this.f660c.c()) {
            if (next != null) {
                next.performPictureInPictureModeChanged(z2);
            }
        }
    }

    public boolean b(Menu menu) {
        boolean z2 = false;
        if (this.m < 1) {
            return false;
        }
        for (Fragment next : this.f660c.c()) {
            if (next != null && next.performPrepareOptionsMenu(menu)) {
                z2 = true;
            }
        }
        return z2;
    }

    public boolean b(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (Fragment next : this.f660c.c()) {
            if (next != null && next.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void c() {
        this.w = true;
        d(true);
        f();
        a(-1);
        this.n = null;
        this.o = null;
        this.p = null;
        if (this.f664g != null) {
            this.f665h.b();
            this.f664g = null;
        }
    }

    public void m() {
        synchronized (this.a) {
            boolean z2 = false;
            boolean z3 = this.B != null && !this.B.isEmpty();
            if (this.a.size() == 1) {
                z2 = true;
            }
            if (z3 || z2) {
                this.n.z.removeCallbacks(this.D);
                this.n.z.post(this.D);
                o();
            }
        }
    }

    /* JADX WARNING: type inference failed for: r3v63, types: [android.view.View] */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ad, code lost:
        if (r1 != 3) goto L_0x0682;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x034c  */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x036b  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04b3 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:213:0x04be  */
    /* JADX WARNING: Removed duplicated region for block: B:214:0x04c2  */
    /* JADX WARNING: Removed duplicated region for block: B:218:0x04cd  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x01b6  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0215  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(androidx.fragment.app.Fragment r18, int r19) {
        /*
            r17 = this;
            r0 = r17
            r7 = r18
            d.m.a.x r1 = r0.f660c
            java.lang.String r2 = r7.mWho
            java.util.HashMap<java.lang.String, d.m.a.v> r1 = r1.b
            java.lang.Object r1 = r1.get(r2)
            d.m.a.v r1 = (d.m.a.v) r1
            r8 = 1
            if (r1 != 0) goto L_0x001c
            d.m.a.v r1 = new d.m.a.v
            d.m.a.o r2 = r0.f669l
            r1.<init>(r2, r7)
            r1.f682c = r8
        L_0x001c:
            r9 = r1
            int r1 = r9.f682c
            androidx.fragment.app.Fragment r2 = r9.b
            boolean r3 = r2.mFromLayout
            r4 = 2
            if (r3 == 0) goto L_0x003c
            boolean r3 = r2.mInLayout
            if (r3 == 0) goto L_0x002f
            int r1 = java.lang.Math.max(r1, r8)
            goto L_0x003c
        L_0x002f:
            if (r1 >= r4) goto L_0x0038
            int r2 = r2.mState
            int r1 = java.lang.Math.min(r1, r2)
            goto L_0x003c
        L_0x0038:
            int r1 = java.lang.Math.min(r1, r8)
        L_0x003c:
            androidx.fragment.app.Fragment r2 = r9.b
            boolean r2 = r2.mAdded
            if (r2 != 0) goto L_0x0046
            int r1 = java.lang.Math.min(r1, r8)
        L_0x0046:
            androidx.fragment.app.Fragment r2 = r9.b
            boolean r3 = r2.mRemoving
            r5 = -1
            if (r3 == 0) goto L_0x005c
            boolean r2 = r2.isInBackStack()
            if (r2 == 0) goto L_0x0058
            int r1 = java.lang.Math.min(r1, r8)
            goto L_0x005c
        L_0x0058:
            int r1 = java.lang.Math.min(r1, r5)
        L_0x005c:
            androidx.fragment.app.Fragment r2 = r9.b
            boolean r3 = r2.mDeferStart
            r6 = 3
            if (r3 == 0) goto L_0x006b
            int r2 = r2.mState
            if (r2 >= r6) goto L_0x006b
            int r1 = java.lang.Math.min(r1, r4)
        L_0x006b:
            androidx.fragment.app.Fragment r2 = r9.b
            d.o.g$b r2 = r2.mMaxState
            int r2 = r2.ordinal()
            r3 = 4
            if (r2 == r4) goto L_0x0084
            if (r2 == r6) goto L_0x007f
            if (r2 == r3) goto L_0x0088
            int r1 = java.lang.Math.min(r1, r5)
            goto L_0x0088
        L_0x007f:
            int r1 = java.lang.Math.min(r1, r6)
            goto L_0x0088
        L_0x0084:
            int r1 = java.lang.Math.min(r1, r8)
        L_0x0088:
            r2 = r19
            int r10 = java.lang.Math.min(r2, r1)
            int r1 = r7.mState
            java.lang.String r11 = "FragmentManager"
            r2 = 0
            r12 = 0
            if (r1 > r10) goto L_0x0390
            if (r1 >= r10) goto L_0x00a3
            java.util.concurrent.ConcurrentHashMap<androidx.fragment.app.Fragment, java.util.HashSet<d.i.e.a>> r1 = r0.f667j
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L_0x00a3
            r17.d((androidx.fragment.app.Fragment) r18)
        L_0x00a3:
            int r1 = r7.mState
            if (r1 == r5) goto L_0x00b1
            if (r1 == 0) goto L_0x0176
            if (r1 == r8) goto L_0x01b0
            if (r1 == r4) goto L_0x0349
            if (r1 == r6) goto L_0x0369
            goto L_0x0682
        L_0x00b1:
            if (r10 <= r5) goto L_0x0176
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x00cd
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "moveto ATTACHED: "
            r1.append(r3)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r11, r1)
        L_0x00cd:
            androidx.fragment.app.Fragment r1 = r7.mTarget
            java.lang.String r3 = " that does not belong to this FragmentManager!"
            java.lang.String r4 = " declared target fragment "
            java.lang.String r13 = "Fragment "
            if (r1 == 0) goto L_0x0115
            java.lang.String r14 = r1.mWho
            androidx.fragment.app.Fragment r14 = r0.a((java.lang.String) r14)
            boolean r1 = r1.equals(r14)
            if (r1 == 0) goto L_0x00f5
            androidx.fragment.app.Fragment r1 = r7.mTarget
            int r14 = r1.mState
            if (r14 >= r8) goto L_0x00ec
            r0.a((androidx.fragment.app.Fragment) r1, (int) r8)
        L_0x00ec:
            androidx.fragment.app.Fragment r1 = r7.mTarget
            java.lang.String r1 = r1.mWho
            r7.mTargetWho = r1
            r7.mTarget = r2
            goto L_0x0115
        L_0x00f5:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r13)
            r2.append(r7)
            r2.append(r4)
            androidx.fragment.app.Fragment r4 = r7.mTarget
            r2.append(r4)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x0115:
            java.lang.String r1 = r7.mTargetWho
            if (r1 == 0) goto L_0x0143
            d.m.a.x r14 = r0.f660c
            androidx.fragment.app.Fragment r1 = r14.b((java.lang.String) r1)
            if (r1 == 0) goto L_0x0129
            int r3 = r1.mState
            if (r3 >= r8) goto L_0x0143
            r0.a((androidx.fragment.app.Fragment) r1, (int) r8)
            goto L_0x0143
        L_0x0129:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r13)
            r2.append(r7)
            r2.append(r4)
            java.lang.String r4 = r7.mTargetWho
            java.lang.String r2 = e.a.a.a.a.a((java.lang.StringBuilder) r2, (java.lang.String) r4, (java.lang.String) r3)
            r1.<init>(r2)
            throw r1
        L_0x0143:
            d.m.a.m<?> r1 = r0.n
            androidx.fragment.app.Fragment r3 = r0.p
            androidx.fragment.app.Fragment r4 = r9.b
            r4.mHost = r1
            r4.mParentFragment = r3
            r4.mFragmentManager = r0
            d.m.a.o r3 = r9.a
            android.content.Context r13 = r1.y
            r3.b((androidx.fragment.app.Fragment) r4, (android.content.Context) r13, (boolean) r12)
            androidx.fragment.app.Fragment r3 = r9.b
            r3.performAttach()
            androidx.fragment.app.Fragment r3 = r9.b
            androidx.fragment.app.Fragment r4 = r3.mParentFragment
            if (r4 != 0) goto L_0x016a
            r4 = r1
            d.m.a.c$a r4 = (d.m.a.c.a) r4
            d.m.a.c r4 = d.m.a.c.this
            r4.onAttachFragment(r3)
            goto L_0x016d
        L_0x016a:
            r4.onAttachFragment(r3)
        L_0x016d:
            d.m.a.o r3 = r9.a
            androidx.fragment.app.Fragment r4 = r9.b
            android.content.Context r1 = r1.y
            r3.a((androidx.fragment.app.Fragment) r4, (android.content.Context) r1, (boolean) r12)
        L_0x0176:
            if (r10 <= 0) goto L_0x01b0
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x0189
            java.lang.String r1 = "moveto CREATED: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x0189:
            androidx.fragment.app.Fragment r1 = r9.b
            boolean r3 = r1.mIsCreated
            if (r3 != 0) goto L_0x01a7
            d.m.a.o r3 = r9.a
            android.os.Bundle r4 = r1.mSavedFragmentState
            r3.c(r1, r4, r12)
            androidx.fragment.app.Fragment r1 = r9.b
            android.os.Bundle r3 = r1.mSavedFragmentState
            r1.performCreate(r3)
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            android.os.Bundle r4 = r3.mSavedFragmentState
            r1.b((androidx.fragment.app.Fragment) r3, (android.os.Bundle) r4, (boolean) r12)
            goto L_0x01b0
        L_0x01a7:
            android.os.Bundle r3 = r1.mSavedFragmentState
            r1.restoreChildFragmentState(r3)
            androidx.fragment.app.Fragment r1 = r9.b
            r1.mState = r8
        L_0x01b0:
            r1 = 8
            java.lang.String r3 = "moveto CREATE_VIEW: "
            if (r10 <= r5) goto L_0x0213
            androidx.fragment.app.Fragment r4 = r9.b
            boolean r13 = r4.mFromLayout
            if (r13 == 0) goto L_0x0213
            boolean r13 = r4.mInLayout
            if (r13 == 0) goto L_0x0213
            boolean r4 = r4.mPerformedCreateView
            if (r4 != 0) goto L_0x0213
            boolean r4 = c((int) r6)
            if (r4 == 0) goto L_0x01d3
            java.lang.StringBuilder r4 = e.a.a.a.a.a(r3)
            androidx.fragment.app.Fragment r13 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r4, (androidx.fragment.app.Fragment) r13, (java.lang.String) r11)
        L_0x01d3:
            androidx.fragment.app.Fragment r4 = r9.b
            android.os.Bundle r13 = r4.mSavedFragmentState
            android.view.LayoutInflater r13 = r4.performGetLayoutInflater(r13)
            androidx.fragment.app.Fragment r14 = r9.b
            android.os.Bundle r14 = r14.mSavedFragmentState
            r4.performCreateView(r13, r2, r14)
            androidx.fragment.app.Fragment r4 = r9.b
            android.view.View r4 = r4.mView
            if (r4 == 0) goto L_0x0213
            r4.setSaveFromParentEnabled(r12)
            androidx.fragment.app.Fragment r4 = r9.b
            android.view.View r13 = r4.mView
            int r14 = androidx.fragment.R$id.fragment_container_view_tag
            r13.setTag(r14, r4)
            androidx.fragment.app.Fragment r4 = r9.b
            boolean r13 = r4.mHidden
            if (r13 == 0) goto L_0x01ff
            android.view.View r4 = r4.mView
            r4.setVisibility(r1)
        L_0x01ff:
            androidx.fragment.app.Fragment r4 = r9.b
            android.view.View r13 = r4.mView
            android.os.Bundle r14 = r4.mSavedFragmentState
            r4.onViewCreated(r13, r14)
            d.m.a.o r4 = r9.a
            androidx.fragment.app.Fragment r13 = r9.b
            android.view.View r14 = r13.mView
            android.os.Bundle r15 = r13.mSavedFragmentState
            r4.a(r13, r14, r15, r12)
        L_0x0213:
            if (r10 <= r8) goto L_0x0349
            d.m.a.i r4 = r0.o
            androidx.fragment.app.Fragment r13 = r9.b
            boolean r13 = r13.mFromLayout
            if (r13 == 0) goto L_0x021f
            goto L_0x0308
        L_0x021f:
            boolean r13 = c((int) r6)
            if (r13 == 0) goto L_0x022e
            java.lang.StringBuilder r3 = e.a.a.a.a.a(r3)
            androidx.fragment.app.Fragment r13 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r3, (androidx.fragment.app.Fragment) r13, (java.lang.String) r11)
        L_0x022e:
            androidx.fragment.app.Fragment r3 = r9.b
            android.view.ViewGroup r13 = r3.mContainer
            if (r13 == 0) goto L_0x0235
            goto L_0x02a2
        L_0x0235:
            int r3 = r3.mContainerId
            if (r3 == 0) goto L_0x02a1
            if (r3 == r5) goto L_0x0287
            android.view.View r3 = r4.a(r3)
            r13 = r3
            android.view.ViewGroup r13 = (android.view.ViewGroup) r13
            if (r13 != 0) goto L_0x02a2
            androidx.fragment.app.Fragment r3 = r9.b
            boolean r4 = r3.mRestored
            if (r4 == 0) goto L_0x024b
            goto L_0x02a2
        L_0x024b:
            android.content.res.Resources r1 = r3.getResources()     // Catch:{ NotFoundException -> 0x0258 }
            androidx.fragment.app.Fragment r2 = r9.b     // Catch:{ NotFoundException -> 0x0258 }
            int r2 = r2.mContainerId     // Catch:{ NotFoundException -> 0x0258 }
            java.lang.String r1 = r1.getResourceName(r2)     // Catch:{ NotFoundException -> 0x0258 }
            goto L_0x025a
        L_0x0258:
            java.lang.String r1 = "unknown"
        L_0x025a:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "No view found for id 0x"
            java.lang.StringBuilder r3 = e.a.a.a.a.a(r3)
            androidx.fragment.app.Fragment r4 = r9.b
            int r4 = r4.mContainerId
            java.lang.String r4 = java.lang.Integer.toHexString(r4)
            r3.append(r4)
            java.lang.String r4 = " ("
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = ") for fragment "
            r3.append(r1)
            androidx.fragment.app.Fragment r1 = r9.b
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L_0x0287:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "Cannot create fragment "
            java.lang.StringBuilder r2 = e.a.a.a.a.a(r2)
            androidx.fragment.app.Fragment r3 = r9.b
            r2.append(r3)
            java.lang.String r3 = " for a container view with no id"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x02a1:
            r13 = r2
        L_0x02a2:
            androidx.fragment.app.Fragment r3 = r9.b
            r3.mContainer = r13
            android.os.Bundle r4 = r3.mSavedFragmentState
            android.view.LayoutInflater r4 = r3.performGetLayoutInflater(r4)
            androidx.fragment.app.Fragment r5 = r9.b
            android.os.Bundle r5 = r5.mSavedFragmentState
            r3.performCreateView(r4, r13, r5)
            androidx.fragment.app.Fragment r3 = r9.b
            android.view.View r3 = r3.mView
            if (r3 == 0) goto L_0x0308
            r3.setSaveFromParentEnabled(r12)
            androidx.fragment.app.Fragment r3 = r9.b
            android.view.View r4 = r3.mView
            int r5 = androidx.fragment.R$id.fragment_container_view_tag
            r4.setTag(r5, r3)
            if (r13 == 0) goto L_0x02ce
            androidx.fragment.app.Fragment r3 = r9.b
            android.view.View r3 = r3.mView
            r13.addView(r3)
        L_0x02ce:
            androidx.fragment.app.Fragment r3 = r9.b
            boolean r4 = r3.mHidden
            if (r4 == 0) goto L_0x02d9
            android.view.View r3 = r3.mView
            r3.setVisibility(r1)
        L_0x02d9:
            androidx.fragment.app.Fragment r1 = r9.b
            android.view.View r1 = r1.mView
            d.i.i.n.y(r1)
            androidx.fragment.app.Fragment r1 = r9.b
            android.view.View r3 = r1.mView
            android.os.Bundle r4 = r1.mSavedFragmentState
            r1.onViewCreated(r3, r4)
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            android.view.View r4 = r3.mView
            android.os.Bundle r5 = r3.mSavedFragmentState
            r1.a(r3, r4, r5, r12)
            androidx.fragment.app.Fragment r1 = r9.b
            android.view.View r3 = r1.mView
            int r3 = r3.getVisibility()
            if (r3 != 0) goto L_0x0305
            androidx.fragment.app.Fragment r3 = r9.b
            android.view.ViewGroup r3 = r3.mContainer
            if (r3 == 0) goto L_0x0305
            goto L_0x0306
        L_0x0305:
            r8 = 0
        L_0x0306:
            r1.mIsNewlyAdded = r8
        L_0x0308:
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x0319
            java.lang.String r1 = "moveto ACTIVITY_CREATED: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x0319:
            androidx.fragment.app.Fragment r1 = r9.b
            android.os.Bundle r3 = r1.mSavedFragmentState
            r1.performActivityCreated(r3)
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            android.os.Bundle r4 = r3.mSavedFragmentState
            r1.a((androidx.fragment.app.Fragment) r3, (android.os.Bundle) r4, (boolean) r12)
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x033a
            java.lang.String r1 = "moveto RESTORE_VIEW_STATE: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x033a:
            androidx.fragment.app.Fragment r1 = r9.b
            android.view.View r3 = r1.mView
            if (r3 == 0) goto L_0x0345
            android.os.Bundle r3 = r1.mSavedFragmentState
            r1.restoreViewState(r3)
        L_0x0345:
            androidx.fragment.app.Fragment r1 = r9.b
            r1.mSavedFragmentState = r2
        L_0x0349:
            r1 = 2
            if (r10 <= r1) goto L_0x0369
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x035d
            java.lang.String r1 = "moveto STARTED: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x035d:
            androidx.fragment.app.Fragment r1 = r9.b
            r1.performStart()
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            r1.e(r3, r12)
        L_0x0369:
            if (r10 <= r6) goto L_0x0682
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x037c
            java.lang.String r1 = "moveto RESUMED: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x037c:
            androidx.fragment.app.Fragment r1 = r9.b
            r1.performResume()
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            r1.d(r3, r12)
            androidx.fragment.app.Fragment r1 = r9.b
            r1.mSavedFragmentState = r2
            r1.mSavedViewState = r2
            goto L_0x0682
        L_0x0390:
            if (r1 <= r10) goto L_0x0682
            if (r1 == 0) goto L_0x0626
            if (r1 == r8) goto L_0x04c8
            r4 = 2
            if (r1 == r4) goto L_0x03dd
            if (r1 == r6) goto L_0x03be
            if (r1 == r3) goto L_0x039f
            goto L_0x0682
        L_0x039f:
            if (r10 >= r3) goto L_0x03be
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x03b2
            java.lang.String r1 = "movefrom RESUMED: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x03b2:
            androidx.fragment.app.Fragment r1 = r9.b
            r1.performPause()
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            r1.c(r3, r12)
        L_0x03be:
            if (r10 >= r6) goto L_0x03dd
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x03d1
            java.lang.String r1 = "movefrom STARTED: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r3 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r3, (java.lang.String) r11)
        L_0x03d1:
            androidx.fragment.app.Fragment r1 = r9.b
            r1.performStop()
            d.m.a.o r1 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            r1.f(r3, r12)
        L_0x03dd:
            r1 = 2
            if (r10 >= r1) goto L_0x04c8
            boolean r1 = c((int) r6)
            if (r1 == 0) goto L_0x03fa
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "movefrom ACTIVITY_CREATED: "
            r1.append(r3)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r11, r1)
        L_0x03fa:
            android.view.View r1 = r7.mView
            if (r1 == 0) goto L_0x0412
            d.m.a.m<?> r1 = r0.n
            d.m.a.c$a r1 = (d.m.a.c.a) r1
            d.m.a.c r1 = d.m.a.c.this
            boolean r1 = r1.isFinishing()
            r1 = r1 ^ r8
            if (r1 == 0) goto L_0x0412
            android.util.SparseArray<android.os.Parcelable> r1 = r7.mSavedViewState
            if (r1 != 0) goto L_0x0412
            r9.b()
        L_0x0412:
            android.view.View r1 = r7.mView
            if (r1 == 0) goto L_0x04b4
            android.view.ViewGroup r3 = r7.mContainer
            if (r3 == 0) goto L_0x04b4
            r3.endViewTransition(r1)
            android.view.View r1 = r7.mView
            r1.clearAnimation()
            boolean r1 = r18.isRemovingParent()
            if (r1 != 0) goto L_0x04b4
            int r1 = r0.m
            r3 = 0
            if (r1 <= r5) goto L_0x0449
            boolean r1 = r0.w
            if (r1 != 0) goto L_0x0449
            android.view.View r1 = r7.mView
            int r1 = r1.getVisibility()
            if (r1 != 0) goto L_0x0449
            float r1 = r7.mPostponedAlpha
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 < 0) goto L_0x0449
            d.m.a.m<?> r1 = r0.n
            android.content.Context r1 = r1.y
            d.m.a.i r2 = r0.o
            d.m.a.g r2 = d.b.a.r.a((android.content.Context) r1, (d.m.a.i) r2, (androidx.fragment.app.Fragment) r7, (boolean) r12)
        L_0x0449:
            r7.mPostponedAlpha = r3
            android.view.ViewGroup r12 = r7.mContainer
            android.view.View r13 = r7.mView
            if (r2 == 0) goto L_0x04aa
            r7.setStateAfterAnimating(r10)
            d.m.a.f0$a r1 = r0.f668k
            android.view.View r3 = r7.mView
            android.view.ViewGroup r4 = r7.mContainer
            r4.startViewTransition(r3)
            d.i.e.a r6 = new d.i.e.a
            r6.<init>()
            d.m.a.d r5 = new d.m.a.d
            r5.<init>(r7)
            r6.a(r5)
            r5 = r1
            d.m.a.p$b r5 = (d.m.a.p.b) r5
            r5.b(r7, r6)
            android.view.animation.Animation r1 = r2.a
            if (r1 == 0) goto L_0x048e
            d.m.a.h r1 = new d.m.a.h
            android.view.animation.Animation r2 = r2.a
            r1.<init>(r2, r4, r3)
            android.view.View r2 = r7.mView
            r7.setAnimatingAway(r2)
            d.m.a.e r2 = new d.m.a.e
            r2.<init>(r4, r7, r5, r6)
            r1.setAnimationListener(r2)
            android.view.View r2 = r7.mView
            r2.startAnimation(r1)
            goto L_0x04aa
        L_0x048e:
            android.animation.Animator r14 = r2.b
            r7.setAnimator(r14)
            d.m.a.f r15 = new d.m.a.f
            r16 = 0
            r1 = r15
            r2 = r4
            r4 = r18
            r1.<init>(r2, r3, r4, r5, r6)
            r14.addListener(r15)
            android.view.View r1 = r7.mView
            r14.setTarget(r1)
            r14.start()
            goto L_0x04ac
        L_0x04aa:
            r16 = 0
        L_0x04ac:
            r12.removeView(r13)
            android.view.ViewGroup r1 = r7.mContainer
            if (r12 == r1) goto L_0x04b6
            return
        L_0x04b4:
            r16 = 0
        L_0x04b6:
            java.util.concurrent.ConcurrentHashMap<androidx.fragment.app.Fragment, java.util.HashSet<d.i.e.a>> r1 = r0.f667j
            java.lang.Object r1 = r1.get(r7)
            if (r1 != 0) goto L_0x04c2
            r17.e(r18)
            goto L_0x04c5
        L_0x04c2:
            r7.setStateAfterAnimating(r10)
        L_0x04c5:
            r1 = r16
            goto L_0x04cb
        L_0x04c8:
            r16 = 0
            r1 = 0
        L_0x04cb:
            if (r10 >= r8) goto L_0x0627
            boolean r2 = r7.mRemoving
            if (r2 == 0) goto L_0x04d9
            boolean r2 = r18.isInBackStack()
            if (r2 != 0) goto L_0x04d9
            r2 = 1
            goto L_0x04da
        L_0x04d9:
            r2 = 0
        L_0x04da:
            if (r2 != 0) goto L_0x04fa
            d.m.a.t r2 = r0.C
            boolean r2 = r2.a(r7)
            if (r2 == 0) goto L_0x04e5
            goto L_0x04fa
        L_0x04e5:
            java.lang.String r2 = r7.mTargetWho
            if (r2 == 0) goto L_0x0567
            d.m.a.x r3 = r0.f660c
            androidx.fragment.app.Fragment r2 = r3.b((java.lang.String) r2)
            if (r2 == 0) goto L_0x0567
            boolean r3 = r2.getRetainInstance()
            if (r3 == 0) goto L_0x0567
            r7.mTarget = r2
            goto L_0x0567
        L_0x04fa:
            androidx.fragment.app.Fragment r2 = r9.b
            d.m.a.x r3 = r0.f660c
            java.lang.String r4 = r2.mWho
            boolean r3 = r3.a((java.lang.String) r4)
            if (r3 != 0) goto L_0x0507
            goto L_0x0567
        L_0x0507:
            r3 = 2
            boolean r3 = c((int) r3)
            if (r3 == 0) goto L_0x0522
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Removed fragment from active set "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            android.util.Log.v(r11, r3)
        L_0x0522:
            d.m.a.x r3 = r0.f660c
            if (r3 == 0) goto L_0x0624
            androidx.fragment.app.Fragment r4 = r9.b
            java.util.HashMap<java.lang.String, d.m.a.v> r5 = r3.b
            java.util.Collection r5 = r5.values()
            java.util.Iterator r5 = r5.iterator()
        L_0x0532:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L_0x0552
            java.lang.Object r6 = r5.next()
            d.m.a.v r6 = (d.m.a.v) r6
            if (r6 == 0) goto L_0x0532
            androidx.fragment.app.Fragment r6 = r6.b
            java.lang.String r12 = r4.mWho
            java.lang.String r13 = r6.mTargetWho
            boolean r12 = r12.equals(r13)
            if (r12 == 0) goto L_0x0532
            r6.mTarget = r4
            r12 = 0
            r6.mTargetWho = r12
            goto L_0x0532
        L_0x0552:
            r5 = 0
            java.util.HashMap<java.lang.String, d.m.a.v> r6 = r3.b
            java.lang.String r12 = r4.mWho
            r6.put(r12, r5)
            java.lang.String r5 = r4.mTargetWho
            if (r5 == 0) goto L_0x0564
            androidx.fragment.app.Fragment r3 = r3.b((java.lang.String) r5)
            r4.mTarget = r3
        L_0x0564:
            r0.p(r2)
        L_0x0567:
            java.util.concurrent.ConcurrentHashMap<androidx.fragment.app.Fragment, java.util.HashSet<d.i.e.a>> r2 = r0.f667j
            java.lang.Object r2 = r2.get(r7)
            if (r2 == 0) goto L_0x0576
            r7.setStateAfterAnimating(r10)
            r2 = 1
            r10 = 1
            goto L_0x0627
        L_0x0576:
            d.m.a.m<?> r2 = r0.n
            d.m.a.t r3 = r0.C
            r4 = 3
            boolean r4 = c((int) r4)
            if (r4 == 0) goto L_0x058c
            java.lang.String r4 = "movefrom CREATED: "
            java.lang.StringBuilder r4 = e.a.a.a.a.a(r4)
            androidx.fragment.app.Fragment r5 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r4, (androidx.fragment.app.Fragment) r5, (java.lang.String) r11)
        L_0x058c:
            androidx.fragment.app.Fragment r4 = r9.b
            boolean r5 = r4.mRemoving
            if (r5 == 0) goto L_0x059a
            boolean r4 = r4.isInBackStack()
            if (r4 != 0) goto L_0x059a
            r4 = 1
            goto L_0x059b
        L_0x059a:
            r4 = 0
        L_0x059b:
            if (r4 != 0) goto L_0x05a8
            androidx.fragment.app.Fragment r5 = r9.b
            boolean r5 = r3.a(r5)
            if (r5 == 0) goto L_0x05a6
            goto L_0x05a8
        L_0x05a6:
            r5 = 0
            goto L_0x05a9
        L_0x05a8:
            r5 = 1
        L_0x05a9:
            if (r5 == 0) goto L_0x061f
            boolean r5 = r2 instanceof d.o.f0
            if (r5 == 0) goto L_0x05b2
            boolean r2 = r3.f680g
            goto L_0x05c1
        L_0x05b2:
            android.content.Context r2 = r2.y
            boolean r5 = r2 instanceof android.app.Activity
            if (r5 == 0) goto L_0x05c0
            android.app.Activity r2 = (android.app.Activity) r2
            boolean r2 = r2.isChangingConfigurations()
            r2 = r2 ^ r8
            goto L_0x05c1
        L_0x05c0:
            r2 = 1
        L_0x05c1:
            if (r4 != 0) goto L_0x05c5
            if (r2 == 0) goto L_0x0610
        L_0x05c5:
            androidx.fragment.app.Fragment r2 = r9.b
            if (r3 == 0) goto L_0x061d
            r4 = 3
            boolean r4 = c((int) r4)
            if (r4 == 0) goto L_0x05e4
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Clearing non-config state for "
            r4.append(r5)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            android.util.Log.d(r11, r4)
        L_0x05e4:
            java.util.HashMap<java.lang.String, d.m.a.t> r4 = r3.f677d
            java.lang.String r5 = r2.mWho
            java.lang.Object r4 = r4.get(r5)
            d.m.a.t r4 = (d.m.a.t) r4
            if (r4 == 0) goto L_0x05fa
            r4.b()
            java.util.HashMap<java.lang.String, d.m.a.t> r4 = r3.f677d
            java.lang.String r5 = r2.mWho
            r4.remove(r5)
        L_0x05fa:
            java.util.HashMap<java.lang.String, d.o.e0> r4 = r3.f678e
            java.lang.String r5 = r2.mWho
            java.lang.Object r4 = r4.get(r5)
            d.o.e0 r4 = (d.o.e0) r4
            if (r4 == 0) goto L_0x0610
            r4.a()
            java.util.HashMap<java.lang.String, d.o.e0> r3 = r3.f678e
            java.lang.String r2 = r2.mWho
            r3.remove(r2)
        L_0x0610:
            androidx.fragment.app.Fragment r2 = r9.b
            r2.performDestroy()
            d.m.a.o r2 = r9.a
            androidx.fragment.app.Fragment r3 = r9.b
            r2.a(r3, r1)
            goto L_0x0627
        L_0x061d:
            r1 = 0
            throw r1
        L_0x061f:
            androidx.fragment.app.Fragment r2 = r9.b
            r2.mState = r1
            goto L_0x0627
        L_0x0624:
            r1 = 0
            throw r1
        L_0x0626:
            r1 = 0
        L_0x0627:
            if (r10 >= 0) goto L_0x0682
            d.m.a.t r2 = r0.C
            r3 = 3
            boolean r3 = c((int) r3)
            if (r3 == 0) goto L_0x063d
            java.lang.String r3 = "movefrom ATTACHED: "
            java.lang.StringBuilder r3 = e.a.a.a.a.a(r3)
            androidx.fragment.app.Fragment r4 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r3, (androidx.fragment.app.Fragment) r4, (java.lang.String) r11)
        L_0x063d:
            androidx.fragment.app.Fragment r3 = r9.b
            r3.performDetach()
            d.m.a.o r3 = r9.a
            androidx.fragment.app.Fragment r4 = r9.b
            r3.b(r4, r1)
            androidx.fragment.app.Fragment r1 = r9.b
            r3 = -1
            r1.mState = r3
            r3 = 0
            r1.mHost = r3
            r1.mParentFragment = r3
            r1.mFragmentManager = r3
            boolean r3 = r1.mRemoving
            if (r3 == 0) goto L_0x0660
            boolean r1 = r1.isInBackStack()
            if (r1 != 0) goto L_0x0660
            goto L_0x0661
        L_0x0660:
            r8 = 0
        L_0x0661:
            if (r8 != 0) goto L_0x066b
            androidx.fragment.app.Fragment r1 = r9.b
            boolean r1 = r2.a(r1)
            if (r1 == 0) goto L_0x0682
        L_0x066b:
            r1 = 3
            boolean r1 = c((int) r1)
            if (r1 == 0) goto L_0x067d
            java.lang.String r1 = "initState called for fragment: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            androidx.fragment.app.Fragment r2 = r9.b
            e.a.a.a.a.a((java.lang.StringBuilder) r1, (androidx.fragment.app.Fragment) r2, (java.lang.String) r11)
        L_0x067d:
            androidx.fragment.app.Fragment r1 = r9.b
            r1.initState()
        L_0x0682:
            int r1 = r7.mState
            if (r1 == r10) goto L_0x06b5
            r1 = 3
            boolean r1 = c((int) r1)
            if (r1 == 0) goto L_0x06b3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "moveToState: Fragment state for "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r2 = " not updated inline; expected state "
            r1.append(r2)
            r1.append(r10)
            java.lang.String r2 = " found "
            r1.append(r2)
            int r2 = r7.mState
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r11, r1)
        L_0x06b3:
            r7.mState = r10
        L_0x06b5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.p.a(androidx.fragment.app.Fragment, int):void");
    }

    public void a(Fragment fragment, boolean z2) {
        ViewGroup h2 = h(fragment);
        if (h2 != null && (h2 instanceof j)) {
            ((j) h2).setDrawDisappearingViewsLast(!z2);
        }
    }

    public void a(int i2, boolean z2) {
        m<?> mVar;
        if (this.n == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        } else if (z2 || i2 != this.m) {
            this.m = i2;
            for (Fragment m2 : this.f660c.c()) {
                m(m2);
            }
            Iterator it = ((ArrayList) this.f660c.b()).iterator();
            while (it.hasNext()) {
                Fragment fragment = (Fragment) it.next();
                if (fragment != null && !fragment.mIsNewlyAdded) {
                    m(fragment);
                }
            }
            n();
            if (this.t && (mVar = this.n) != null && this.m == 4) {
                c.this.supportInvalidateOptionsMenu();
                this.t = false;
            }
        }
    }

    public void a(Fragment fragment) {
        if (c(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        l(fragment);
        if (!fragment.mDetached) {
            this.f660c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (j(fragment)) {
                this.t = true;
            }
        }
    }

    public Fragment a(String str) {
        return this.f660c.b(str);
    }

    public void a(e eVar, boolean z2) {
        if (!z2) {
            if (this.n == null) {
                if (this.w) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            } else if (i()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.a) {
            if (this.n != null) {
                this.a.add(eVar);
                m();
            } else if (!z2) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    public final void a() {
        this.b = false;
        this.z.clear();
        this.y.clear();
    }

    public final void a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList<g> arrayList3 = this.B;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            g gVar = this.B.get(i2);
            if (arrayList == null || gVar.a || (indexOf2 = arrayList.indexOf(gVar.b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                if ((gVar.f673c == 0) || (arrayList != null && gVar.b.a(arrayList, 0, arrayList.size()))) {
                    this.B.remove(i2);
                    i2--;
                    size--;
                    if (arrayList == null || gVar.a || (indexOf = arrayList.indexOf(gVar.b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        gVar.a();
                    } else {
                        a aVar = gVar.b;
                        aVar.r.a(aVar, gVar.a, false, false);
                    }
                }
            } else {
                this.B.remove(i2);
                i2--;
                size--;
                a aVar2 = gVar.b;
                aVar2.r.a(aVar2, gVar.a, false, false);
            }
            i2++;
        }
    }

    public final void a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        ArrayList<a> arrayList3 = arrayList;
        ArrayList<Boolean> arrayList4 = arrayList2;
        int i8 = i2;
        int i9 = i3;
        boolean z3 = arrayList3.get(i8).p;
        ArrayList<Fragment> arrayList5 = this.A;
        if (arrayList5 == null) {
            this.A = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.A.addAll(this.f660c.c());
        Fragment fragment = this.q;
        int i10 = i8;
        boolean z4 = false;
        while (true) {
            int i11 = 1;
            if (i10 < i9) {
                a aVar = arrayList3.get(i10);
                int i12 = 3;
                if (!arrayList4.get(i10).booleanValue()) {
                    ArrayList<Fragment> arrayList6 = this.A;
                    int i13 = 0;
                    while (i13 < aVar.a.size()) {
                        y.a aVar2 = aVar.a.get(i13);
                        int i14 = aVar2.a;
                        if (i14 != i11) {
                            if (i14 == 2) {
                                Fragment fragment2 = aVar2.b;
                                int i15 = fragment2.mContainerId;
                                int size = arrayList6.size() - 1;
                                boolean z5 = false;
                                while (size >= 0) {
                                    Fragment fragment3 = arrayList6.get(size);
                                    if (fragment3.mContainerId != i15) {
                                        i7 = i15;
                                    } else if (fragment3 == fragment2) {
                                        i7 = i15;
                                        z5 = true;
                                    } else {
                                        if (fragment3 == fragment) {
                                            i7 = i15;
                                            aVar.a.add(i13, new y.a(9, fragment3));
                                            i13++;
                                            fragment = null;
                                        } else {
                                            i7 = i15;
                                        }
                                        y.a aVar3 = new y.a(3, fragment3);
                                        aVar3.f698c = aVar2.f698c;
                                        aVar3.f700e = aVar2.f700e;
                                        aVar3.f699d = aVar2.f699d;
                                        aVar3.f701f = aVar2.f701f;
                                        aVar.a.add(i13, aVar3);
                                        arrayList6.remove(fragment3);
                                        i13++;
                                    }
                                    size--;
                                    ArrayList<Boolean> arrayList7 = arrayList2;
                                    i15 = i7;
                                }
                                if (z5) {
                                    aVar.a.remove(i13);
                                    i13--;
                                } else {
                                    i6 = 1;
                                    aVar2.a = 1;
                                    arrayList6.add(fragment2);
                                    i13 += i6;
                                    ArrayList<Boolean> arrayList8 = arrayList2;
                                    int i16 = i2;
                                    i12 = 3;
                                    i11 = 1;
                                }
                            } else if (i14 == i12 || i14 == 6) {
                                arrayList6.remove(aVar2.b);
                                Fragment fragment4 = aVar2.b;
                                if (fragment4 == fragment) {
                                    aVar.a.add(i13, new y.a(9, fragment4));
                                    i13++;
                                    fragment = null;
                                }
                            } else if (i14 != 7) {
                                if (i14 == 8) {
                                    aVar.a.add(i13, new y.a(9, fragment));
                                    i13++;
                                    fragment = aVar2.b;
                                }
                            }
                            i6 = 1;
                            i13 += i6;
                            ArrayList<Boolean> arrayList82 = arrayList2;
                            int i162 = i2;
                            i12 = 3;
                            i11 = 1;
                        }
                        i6 = 1;
                        arrayList6.add(aVar2.b);
                        i13 += i6;
                        ArrayList<Boolean> arrayList822 = arrayList2;
                        int i1622 = i2;
                        i12 = 3;
                        i11 = 1;
                    }
                } else {
                    ArrayList<Fragment> arrayList9 = this.A;
                    for (int size2 = aVar.a.size() - 1; size2 >= 0; size2--) {
                        y.a aVar4 = aVar.a.get(size2);
                        int i17 = aVar4.a;
                        if (i17 != 1) {
                            if (i17 != 3) {
                                switch (i17) {
                                    case 6:
                                        break;
                                    case 7:
                                        break;
                                    case 8:
                                        fragment = null;
                                        break;
                                    case 9:
                                        fragment = aVar4.b;
                                        break;
                                    case 10:
                                        aVar4.f703h = aVar4.f702g;
                                        break;
                                }
                            }
                            arrayList9.add(aVar4.b);
                        }
                        arrayList9.remove(aVar4.b);
                    }
                }
                z4 = z4 || aVar.f692g;
                i10++;
                arrayList4 = arrayList2;
                int i18 = i2;
            } else {
                this.A.clear();
                if (!z3) {
                    f0.a(this, arrayList, arrayList2, i2, i3, false, this.f668k);
                }
                int i19 = i2;
                while (i19 < i9) {
                    a aVar5 = arrayList3.get(i19);
                    if (arrayList2.get(i19).booleanValue()) {
                        aVar5.a(-1);
                        aVar5.b(i19 == i9 + -1);
                    } else {
                        aVar5.a(1);
                        aVar5.c();
                    }
                    i19++;
                }
                ArrayList<Boolean> arrayList10 = arrayList2;
                if (z3) {
                    d.f.c cVar = new d.f.c();
                    a((d.f.c<Fragment>) cVar);
                    i4 = i2;
                    int i20 = i9;
                    for (int i21 = i9 - 1; i21 >= i4; i21--) {
                        a aVar6 = arrayList3.get(i21);
                        boolean booleanValue = arrayList10.get(i21).booleanValue();
                        int i22 = 0;
                        while (true) {
                            if (i22 >= aVar6.a.size()) {
                                z2 = false;
                            } else if (a.b(aVar6.a.get(i22))) {
                                z2 = true;
                            } else {
                                i22++;
                            }
                        }
                        if (z2 && !aVar6.a(arrayList3, i21 + 1, i9)) {
                            if (this.B == null) {
                                this.B = new ArrayList<>();
                            }
                            g gVar = new g(aVar6, booleanValue);
                            this.B.add(gVar);
                            for (int i23 = 0; i23 < aVar6.a.size(); i23++) {
                                y.a aVar7 = aVar6.a.get(i23);
                                if (a.b(aVar7)) {
                                    aVar7.b.setOnStartEnterTransitionListener(gVar);
                                }
                            }
                            if (booleanValue) {
                                aVar6.c();
                            } else {
                                aVar6.b(false);
                            }
                            i20--;
                            if (i21 != i20) {
                                arrayList3.remove(i21);
                                arrayList3.add(i20, aVar6);
                            }
                            a((d.f.c<Fragment>) cVar);
                        }
                    }
                    int i24 = cVar.z;
                    for (int i25 = 0; i25 < i24; i25++) {
                        Fragment fragment5 = (Fragment) cVar.y[i25];
                        if (!fragment5.mAdded) {
                            View requireView = fragment5.requireView();
                            fragment5.mPostponedAlpha = requireView.getAlpha();
                            requireView.setAlpha(0.0f);
                        }
                    }
                    i5 = i20;
                } else {
                    i4 = i2;
                    i5 = i9;
                }
                if (i5 != i4 && z3) {
                    f0.a(this, arrayList, arrayList2, i2, i5, true, this.f668k);
                    a(this.m, true);
                }
                while (i4 < i9) {
                    a aVar8 = arrayList3.get(i4);
                    if (arrayList10.get(i4).booleanValue() && aVar8.t >= 0) {
                        aVar8.t = -1;
                    }
                    if (aVar8.q != null) {
                        for (int i26 = 0; i26 < aVar8.q.size(); i26++) {
                            aVar8.q.get(i26).run();
                        }
                        aVar8.q = null;
                    }
                    i4++;
                }
                return;
            }
        }
    }

    public void a(a aVar, boolean z2, boolean z3, boolean z4) {
        if (z2) {
            aVar.b(z4);
        } else {
            aVar.c();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z2));
        if (z3) {
            f0.a(this, arrayList, arrayList2, 0, 1, true, this.f668k);
        }
        if (z4) {
            a(this.m, true);
        }
        Iterator it = ((ArrayList) this.f660c.b()).iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.b(fragment.mContainerId)) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > 0.0f) {
                    fragment.mView.setAlpha(f2);
                }
                if (z4) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    public final void a(d.f.c<Fragment> cVar) {
        int i2 = this.m;
        if (i2 >= 1) {
            int min = Math.min(i2, 3);
            for (Fragment next : this.f660c.c()) {
                if (next.mState < min) {
                    a(next, min);
                    if (next.mView != null && !next.mHidden && next.mIsNewlyAdded) {
                        cVar.add(next);
                    }
                }
            }
        }
    }

    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        ArrayList<a> arrayList3 = this.f661d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f661d.remove(size));
            arrayList2.add(true);
        } else {
            int i4 = -1;
            if (str != null || i2 >= 0) {
                int size2 = this.f661d.size() - 1;
                while (size2 >= 0) {
                    a aVar = this.f661d.get(size2);
                    if ((str != null && str.equals(aVar.f694i)) || (i2 >= 0 && i2 == aVar.t)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        a aVar2 = this.f661d.get(size2);
                        if ((str == null || !str.equals(aVar2.f694i)) && (i2 < 0 || i2 != aVar2.t)) {
                            break;
                        }
                    }
                }
                i4 = size2;
            }
            if (i4 == this.f661d.size() - 1) {
                return false;
            }
            for (int size3 = this.f661d.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.f661d.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    /* JADX WARNING: type inference failed for: r3v6, types: [androidx.fragment.app.Fragment] */
    /* JADX WARNING: type inference failed for: r3v31 */
    /* JADX WARNING: type inference failed for: r3v48 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.os.Parcelable r19) {
        /*
            r18 = this;
            r0 = r18
            if (r19 != 0) goto L_0x0005
            return
        L_0x0005:
            r1 = r19
            d.m.a.s r1 = (d.m.a.s) r1
            java.util.ArrayList<d.m.a.u> r2 = r1.x
            if (r2 != 0) goto L_0x000e
            return
        L_0x000e:
            d.m.a.x r2 = r0.f660c
            java.util.HashMap<java.lang.String, d.m.a.v> r2 = r2.b
            r2.clear()
            java.util.ArrayList<d.m.a.u> r2 = r1.x
            java.util.Iterator r2 = r2.iterator()
        L_0x001b:
            boolean r3 = r2.hasNext()
            java.lang.String r4 = "): "
            r5 = 2
            java.lang.String r6 = "FragmentManager"
            if (r3 == 0) goto L_0x00af
            java.lang.Object r3 = r2.next()
            d.m.a.u r3 = (d.m.a.u) r3
            if (r3 == 0) goto L_0x001b
            d.m.a.t r7 = r0.C
            java.lang.String r8 = r3.y
            java.util.HashMap<java.lang.String, androidx.fragment.app.Fragment> r7 = r7.f676c
            java.lang.Object r7 = r7.get(r8)
            androidx.fragment.app.Fragment r7 = (androidx.fragment.app.Fragment) r7
            if (r7 == 0) goto L_0x005e
            boolean r8 = c((int) r5)
            if (r8 == 0) goto L_0x0056
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "restoreSaveState: re-attaching retained "
            r8.append(r9)
            r8.append(r7)
            java.lang.String r8 = r8.toString()
            android.util.Log.v(r6, r8)
        L_0x0056:
            d.m.a.v r8 = new d.m.a.v
            d.m.a.o r9 = r0.f669l
            r8.<init>(r9, r7, r3)
            goto L_0x0071
        L_0x005e:
            d.m.a.v r8 = new d.m.a.v
            d.m.a.o r7 = r0.f669l
            d.m.a.m<?> r9 = r0.n
            android.content.Context r9 = r9.y
            java.lang.ClassLoader r9 = r9.getClassLoader()
            d.m.a.l r10 = r18.h()
            r8.<init>(r7, r9, r10, r3)
        L_0x0071:
            androidx.fragment.app.Fragment r3 = r8.b
            r3.mFragmentManager = r0
            boolean r5 = c((int) r5)
            if (r5 == 0) goto L_0x0093
            java.lang.String r5 = "restoreSaveState: active ("
            java.lang.StringBuilder r5 = e.a.a.a.a.a(r5)
            java.lang.String r7 = r3.mWho
            r5.append(r7)
            r5.append(r4)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            android.util.Log.v(r6, r3)
        L_0x0093:
            d.m.a.m<?> r3 = r0.n
            android.content.Context r3 = r3.y
            java.lang.ClassLoader r3 = r3.getClassLoader()
            r8.a(r3)
            d.m.a.x r3 = r0.f660c
            java.util.HashMap<java.lang.String, d.m.a.v> r3 = r3.b
            androidx.fragment.app.Fragment r4 = r8.b
            java.lang.String r4 = r4.mWho
            r3.put(r4, r8)
            int r3 = r0.m
            r8.f682c = r3
            goto L_0x001b
        L_0x00af:
            d.m.a.t r2 = r0.C
            java.util.HashMap<java.lang.String, androidx.fragment.app.Fragment> r2 = r2.f676c
            java.util.Collection r2 = r2.values()
            java.util.Iterator r2 = r2.iterator()
        L_0x00bb:
            boolean r3 = r2.hasNext()
            r7 = 1
            if (r3 == 0) goto L_0x0100
            java.lang.Object r3 = r2.next()
            androidx.fragment.app.Fragment r3 = (androidx.fragment.app.Fragment) r3
            d.m.a.x r8 = r0.f660c
            java.lang.String r9 = r3.mWho
            boolean r8 = r8.a((java.lang.String) r9)
            if (r8 != 0) goto L_0x00bb
            boolean r8 = c((int) r5)
            if (r8 == 0) goto L_0x00f6
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Discarding retained Fragment "
            r8.append(r9)
            r8.append(r3)
            java.lang.String r9 = " that was not found in the set of active Fragments "
            r8.append(r9)
            java.util.ArrayList<d.m.a.u> r9 = r1.x
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            android.util.Log.v(r6, r8)
        L_0x00f6:
            r0.a((androidx.fragment.app.Fragment) r3, (int) r7)
            r3.mRemoving = r7
            r7 = -1
            r0.a((androidx.fragment.app.Fragment) r3, (int) r7)
            goto L_0x00bb
        L_0x0100:
            d.m.a.x r2 = r0.f660c
            java.util.ArrayList<java.lang.String> r3 = r1.y
            java.util.ArrayList<androidx.fragment.app.Fragment> r8 = r2.a
            r8.clear()
            if (r3 == 0) goto L_0x0153
            java.util.Iterator r3 = r3.iterator()
        L_0x010f:
            boolean r8 = r3.hasNext()
            if (r8 == 0) goto L_0x0153
            java.lang.Object r8 = r3.next()
            java.lang.String r8 = (java.lang.String) r8
            androidx.fragment.app.Fragment r9 = r2.b((java.lang.String) r8)
            if (r9 == 0) goto L_0x0145
            boolean r10 = c((int) r5)
            if (r10 == 0) goto L_0x0141
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "restoreSaveState: added ("
            r10.append(r11)
            r10.append(r8)
            r10.append(r4)
            r10.append(r9)
            java.lang.String r8 = r10.toString()
            android.util.Log.v(r6, r8)
        L_0x0141:
            r2.a((androidx.fragment.app.Fragment) r9)
            goto L_0x010f
        L_0x0145:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "No instantiated fragment for ("
            java.lang.String r3 = ")"
            java.lang.String r2 = e.a.a.a.a.a((java.lang.String) r2, (java.lang.String) r8, (java.lang.String) r3)
            r1.<init>(r2)
            throw r1
        L_0x0153:
            d.m.a.b[] r2 = r1.z
            r3 = 0
            if (r2 == 0) goto L_0x0277
            java.util.ArrayList r2 = new java.util.ArrayList
            d.m.a.b[] r8 = r1.z
            int r8 = r8.length
            r2.<init>(r8)
            r0.f661d = r2
            r2 = 0
            r8 = 0
        L_0x0164:
            d.m.a.b[] r9 = r1.z
            int r10 = r9.length
            if (r8 >= r10) goto L_0x0279
            r9 = r9[r8]
            if (r9 == 0) goto L_0x0276
            d.m.a.a r10 = new d.m.a.a
            r10.<init>(r0)
            r11 = 0
            r12 = 0
        L_0x0174:
            int[] r13 = r9.x
            int r13 = r13.length
            if (r11 >= r13) goto L_0x020d
            d.m.a.y$a r13 = new d.m.a.y$a
            r13.<init>()
            int[] r14 = r9.x
            int r15 = r11 + 1
            r11 = r14[r11]
            r13.a = r11
            boolean r11 = c((int) r5)
            if (r11 == 0) goto L_0x01b4
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r14 = "Instantiate "
            r11.append(r14)
            r11.append(r10)
            java.lang.String r14 = " op #"
            r11.append(r14)
            r11.append(r12)
            java.lang.String r14 = " base fragment #"
            r11.append(r14)
            int[] r14 = r9.x
            r14 = r14[r15]
            r11.append(r14)
            java.lang.String r11 = r11.toString()
            android.util.Log.v(r6, r11)
        L_0x01b4:
            java.util.ArrayList<java.lang.String> r11 = r9.y
            java.lang.Object r11 = r11.get(r12)
            java.lang.String r11 = (java.lang.String) r11
            if (r11 == 0) goto L_0x01c7
            d.m.a.x r3 = r0.f660c
            androidx.fragment.app.Fragment r3 = r3.b((java.lang.String) r11)
            r13.b = r3
            goto L_0x01c9
        L_0x01c7:
            r13.b = r3
        L_0x01c9:
            d.o.g$b[] r3 = d.o.g.b.values()
            int[] r11 = r9.z
            r11 = r11[r12]
            r3 = r3[r11]
            r13.f702g = r3
            d.o.g$b[] r3 = d.o.g.b.values()
            int[] r11 = r9.A
            r11 = r11[r12]
            r3 = r3[r11]
            r13.f703h = r3
            int[] r3 = r9.x
            int r11 = r15 + 1
            r14 = r3[r15]
            r13.f698c = r14
            int r15 = r11 + 1
            r11 = r3[r11]
            r13.f699d = r11
            int r16 = r15 + 1
            r15 = r3[r15]
            r13.f700e = r15
            int r17 = r16 + 1
            r3 = r3[r16]
            r13.f701f = r3
            r10.b = r14
            r10.f688c = r11
            r10.f689d = r15
            r10.f690e = r3
            r10.a((d.m.a.y.a) r13)
            int r12 = r12 + 1
            r3 = 0
            r11 = r17
            goto L_0x0174
        L_0x020d:
            int r3 = r9.B
            r10.f691f = r3
            java.lang.String r3 = r9.C
            r10.f694i = r3
            int r3 = r9.D
            r10.t = r3
            r10.f692g = r7
            int r3 = r9.E
            r10.f695j = r3
            java.lang.CharSequence r3 = r9.F
            r10.f696k = r3
            int r3 = r9.G
            r10.f697l = r3
            java.lang.CharSequence r3 = r9.H
            r10.m = r3
            java.util.ArrayList<java.lang.String> r3 = r9.I
            r10.n = r3
            java.util.ArrayList<java.lang.String> r3 = r9.J
            r10.o = r3
            boolean r3 = r9.K
            r10.p = r3
            r10.a((int) r7)
            boolean r3 = c((int) r5)
            if (r3 == 0) goto L_0x026c
            java.lang.String r3 = "restoreAllState: back stack #"
            java.lang.String r9 = " (index "
            java.lang.StringBuilder r3 = e.a.a.a.a.a((java.lang.String) r3, (int) r8, (java.lang.String) r9)
            int r9 = r10.t
            r3.append(r9)
            r3.append(r4)
            r3.append(r10)
            java.lang.String r3 = r3.toString()
            android.util.Log.v(r6, r3)
            d.i.h.a r3 = new d.i.h.a
            r3.<init>(r6)
            java.io.PrintWriter r9 = new java.io.PrintWriter
            r9.<init>(r3)
            java.lang.String r3 = "  "
            r10.a((java.lang.String) r3, (java.io.PrintWriter) r9, (boolean) r2)
            r9.close()
        L_0x026c:
            java.util.ArrayList<d.m.a.a> r3 = r0.f661d
            r3.add(r10)
            int r8 = r8 + 1
            r3 = 0
            goto L_0x0164
        L_0x0276:
            throw r3
        L_0x0277:
            r0.f661d = r3
        L_0x0279:
            java.util.concurrent.atomic.AtomicInteger r2 = r0.f666i
            int r3 = r1.A
            r2.set(r3)
            java.lang.String r1 = r1.B
            if (r1 == 0) goto L_0x028f
            d.m.a.x r2 = r0.f660c
            androidx.fragment.app.Fragment r1 = r2.b((java.lang.String) r1)
            r0.q = r1
            r0.g(r1)
        L_0x028f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.p.a(android.os.Parcelable):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v18, resolved type: d.a.c} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v19, resolved type: androidx.fragment.app.Fragment} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v20, resolved type: androidx.fragment.app.Fragment} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v21, resolved type: androidx.fragment.app.Fragment} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(d.m.a.m<?> r4, d.m.a.i r5, androidx.fragment.app.Fragment r6) {
        /*
            r3 = this;
            d.m.a.m<?> r0 = r3.n
            if (r0 != 0) goto L_0x00ae
            r3.n = r4
            r3.o = r5
            r3.p = r6
            if (r6 == 0) goto L_0x000f
            r3.o()
        L_0x000f:
            boolean r5 = r4 instanceof d.a.c
            if (r5 == 0) goto L_0x0026
            r5 = r4
            d.a.c r5 = (d.a.c) r5
            androidx.activity.OnBackPressedDispatcher r0 = r5.getOnBackPressedDispatcher()
            r3.f664g = r0
            if (r6 == 0) goto L_0x001f
            r5 = r6
        L_0x001f:
            androidx.activity.OnBackPressedDispatcher r0 = r3.f664g
            d.a.b r1 = r3.f665h
            r0.a(r5, r1)
        L_0x0026:
            if (r6 == 0) goto L_0x0049
            d.m.a.p r4 = r6.mFragmentManager
            d.m.a.t r4 = r4.C
            java.util.HashMap<java.lang.String, d.m.a.t> r5 = r4.f677d
            java.lang.String r0 = r6.mWho
            java.lang.Object r5 = r5.get(r0)
            d.m.a.t r5 = (d.m.a.t) r5
            if (r5 != 0) goto L_0x0046
            d.m.a.t r5 = new d.m.a.t
            boolean r0 = r4.f679f
            r5.<init>(r0)
            java.util.HashMap<java.lang.String, d.m.a.t> r4 = r4.f677d
            java.lang.String r6 = r6.mWho
            r4.put(r6, r5)
        L_0x0046:
            r3.C = r5
            goto L_0x00ad
        L_0x0049:
            boolean r5 = r4 instanceof d.o.f0
            if (r5 == 0) goto L_0x00a5
            d.o.f0 r4 = (d.o.f0) r4
            d.o.e0 r4 = r4.getViewModelStore()
            d.o.a0 r5 = d.m.a.t.f675i
            java.lang.Class<d.m.a.t> r6 = d.m.a.t.class
            java.lang.String r0 = r6.getCanonicalName()
            if (r0 == 0) goto L_0x009d
            java.lang.String r1 = "androidx.lifecycle.ViewModelProvider.DefaultKey:"
            java.lang.String r0 = e.a.a.a.a.b(r1, r0)
            java.util.HashMap<java.lang.String, d.o.y> r1 = r4.a
            java.lang.Object r1 = r1.get(r0)
            d.o.y r1 = (d.o.y) r1
            boolean r2 = r6.isInstance(r1)
            if (r2 == 0) goto L_0x007b
            boolean r4 = r5 instanceof d.o.d0
            if (r4 == 0) goto L_0x0098
            d.o.d0 r5 = (d.o.d0) r5
            r5.a(r1)
            goto L_0x0098
        L_0x007b:
            boolean r1 = r5 instanceof d.o.b0
            if (r1 == 0) goto L_0x0086
            d.o.b0 r5 = (d.o.b0) r5
            d.o.y r5 = r5.a(r0, r6)
            goto L_0x008a
        L_0x0086:
            d.o.y r5 = r5.a(r6)
        L_0x008a:
            r1 = r5
            java.util.HashMap<java.lang.String, d.o.y> r4 = r4.a
            java.lang.Object r4 = r4.put(r0, r1)
            d.o.y r4 = (d.o.y) r4
            if (r4 == 0) goto L_0x0098
            r4.b()
        L_0x0098:
            d.m.a.t r1 = (d.m.a.t) r1
            r3.C = r1
            goto L_0x00ad
        L_0x009d:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Local and anonymous classes can not be ViewModels"
            r4.<init>(r5)
            throw r4
        L_0x00a5:
            d.m.a.t r4 = new d.m.a.t
            r5 = 0
            r4.<init>(r5)
            r3.C = r4
        L_0x00ad:
            return
        L_0x00ae:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "Already attached"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.p.a(d.m.a.m, d.m.a.i, androidx.fragment.app.Fragment):void");
    }

    /* JADX INFO: finally extract failed */
    public final void a(int i2) {
        try {
            this.b = true;
            this.f660c.a(i2);
            a(i2, false);
            this.b = false;
            d(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public void a(boolean z2) {
        for (Fragment next : this.f660c.c()) {
            if (next != null) {
                next.performMultiWindowModeChanged(z2);
            }
        }
    }

    public void a(Configuration configuration) {
        for (Fragment next : this.f660c.c()) {
            if (next != null) {
                next.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.m < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z2 = false;
        for (Fragment next : this.f660c.c()) {
            if (next != null && next.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(next);
                z2 = true;
            }
        }
        if (this.f662e != null) {
            for (int i2 = 0; i2 < this.f662e.size(); i2++) {
                Fragment fragment = this.f662e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment)) {
                    fragment.onDestroyOptionsMenu();
                }
            }
        }
        this.f662e = arrayList;
        return z2;
    }

    public boolean a(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (Fragment next : this.f660c.c()) {
            if (next != null && next.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void a(Menu menu) {
        if (this.m >= 1) {
            for (Fragment next : this.f660c.c()) {
                if (next != null) {
                    next.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    public void a(Fragment fragment, g.b bVar) {
        if (!fragment.equals(a(fragment.mWho)) || !(fragment.mHost == null || fragment.mFragmentManager == this)) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        fragment.mMaxState = bVar;
    }
}
