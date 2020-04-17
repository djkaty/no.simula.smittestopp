package d.m.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import d.m.a.p;
import d.m.a.y;
import d.o.g;
import java.io.PrintWriter;
import java.util.ArrayList;

public final class a extends y implements p.e {
    public final p r;
    public boolean s;
    public int t;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(d.m.a.p r3) {
        /*
            r2 = this;
            d.m.a.l r0 = r3.h()
            d.m.a.m<?> r1 = r3.n
            if (r1 == 0) goto L_0x000f
            android.content.Context r1 = r1.y
            java.lang.ClassLoader r1 = r1.getClassLoader()
            goto L_0x0010
        L_0x000f:
            r1 = 0
        L_0x0010:
            r2.<init>(r0, r1)
            r0 = -1
            r2.t = r0
            r2.r = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.a.<init>(d.m.a.p):void");
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f694i);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f691f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f691f));
            }
            if (!(this.b == 0 && this.f688c == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f688c));
            }
            if (!(this.f689d == 0 && this.f690e == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f689d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f690e));
            }
            if (!(this.f695j == 0 && this.f696k == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f695j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f696k);
            }
            if (!(this.f697l == 0 && this.m == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f697l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        if (!this.a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                y.a aVar = this.a.get(i2);
                switch (aVar.a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        StringBuilder a = e.a.a.a.a.a("cmd=");
                        a.append(aVar.a);
                        str2 = a.toString();
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.b);
                if (z) {
                    if (!(aVar.f698c == 0 && aVar.f699d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f698c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f699d));
                    }
                    if (aVar.f700e != 0 || aVar.f701f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f700e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f701f));
                    }
                }
            }
        }
    }

    public y b(Fragment fragment) {
        p pVar;
        if (fragment == null || (pVar = fragment.mFragmentManager) == null || pVar == this.r) {
            super.b(fragment);
            return this;
        }
        StringBuilder a = e.a.a.a.a.a("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment ");
        a.append(fragment.toString());
        a.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(a.toString());
    }

    public void c() {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            y.a aVar = this.a.get(i2);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setNextTransition(this.f691f);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.f698c);
                    this.r.a(fragment, false);
                    this.r.a(fragment);
                    break;
                case 3:
                    fragment.setNextAnim(aVar.f699d);
                    this.r.o(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f699d);
                    this.r.i(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f698c);
                    this.r.a(fragment, false);
                    this.r.s(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f699d);
                    this.r.f(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f698c);
                    this.r.a(fragment, false);
                    this.r.c(fragment);
                    break;
                case 8:
                    this.r.q(fragment);
                    break;
                case 9:
                    this.r.q((Fragment) null);
                    break;
                case 10:
                    this.r.a(fragment, aVar.f703h);
                    break;
                default:
                    StringBuilder a = e.a.a.a.a.a("Unknown cmd: ");
                    a.append(aVar.a);
                    throw new IllegalArgumentException(a.toString());
            }
            if (!(this.p || aVar.a == 1 || fragment == null)) {
                this.r.m(fragment);
            }
        }
        if (!this.p) {
            p pVar = this.r;
            pVar.a(pVar.m, true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.f694i != null) {
            sb.append(" ");
            sb.append(this.f694i);
        }
        sb.append("}");
        return sb.toString();
    }

    public boolean b(int i2) {
        int size = this.a.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.a.get(i3).b;
            int i4 = fragment != null ? fragment.mContainerId : 0;
            if (i4 != 0 && i4 == i2) {
                return true;
            }
        }
        return false;
    }

    public void b(boolean z) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            y.a aVar = this.a.get(size);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                int i2 = this.f691f;
                int i3 = 8194;
                if (i2 != 4097) {
                    i3 = i2 != 4099 ? i2 != 8194 ? 0 : 4097 : 4099;
                }
                fragment.setNextTransition(i3);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.f701f);
                    this.r.a(fragment, true);
                    this.r.o(fragment);
                    break;
                case 3:
                    fragment.setNextAnim(aVar.f700e);
                    this.r.a(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f700e);
                    this.r.s(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f701f);
                    this.r.a(fragment, true);
                    this.r.i(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f700e);
                    this.r.c(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f701f);
                    this.r.a(fragment, true);
                    this.r.f(fragment);
                    break;
                case 8:
                    this.r.q((Fragment) null);
                    break;
                case 9:
                    this.r.q(fragment);
                    break;
                case 10:
                    this.r.a(fragment, aVar.f702g);
                    break;
                default:
                    StringBuilder a = e.a.a.a.a.a("Unknown cmd: ");
                    a.append(aVar.a);
                    throw new IllegalArgumentException(a.toString());
            }
            if (!(this.p || aVar.a == 3 || fragment == null)) {
                this.r.m(fragment);
            }
        }
        if (!this.p && z) {
            p pVar = this.r;
            pVar.a(pVar.m, true);
        }
    }

    public static boolean b(y.a aVar) {
        Fragment fragment = aVar.b;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    public void b() {
        if (!this.f692g) {
            this.f693h = false;
            p pVar = this.r;
            if (pVar.n != null && !pVar.w) {
                pVar.c(true);
                if (a(pVar.y, pVar.z)) {
                    pVar.b = true;
                    try {
                        pVar.c(pVar.y, pVar.z);
                    } finally {
                        pVar.a();
                    }
                }
                pVar.o();
                pVar.e();
                pVar.f660c.a();
                return;
            }
            return;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    public void a(int i2, Fragment fragment, String str, int i3) {
        super.a(i2, fragment, str, i3);
        fragment.mFragmentManager = this.r;
    }

    public y a(Fragment fragment) {
        p pVar = fragment.mFragmentManager;
        if (pVar == null || pVar == this.r) {
            super.a(fragment);
            return this;
        }
        StringBuilder a = e.a.a.a.a.a("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        a.append(fragment.toString());
        a.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(a.toString());
    }

    public y a(Fragment fragment, g.b bVar) {
        if (fragment.mFragmentManager != this.r) {
            StringBuilder a = e.a.a.a.a.a("Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            a.append(this.r);
            throw new IllegalArgumentException(a.toString());
        } else if (bVar.isAtLeast(g.b.CREATED)) {
            super.a(fragment, bVar);
            return this;
        } else {
            StringBuilder a2 = e.a.a.a.a.a("Cannot set maximum Lifecycle below ");
            a2.append(g.b.CREATED);
            throw new IllegalArgumentException(a2.toString());
        }
    }

    public void a(int i2) {
        if (this.f692g) {
            if (p.c(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i2);
            }
            int size = this.a.size();
            for (int i3 = 0; i3 < size; i3++) {
                y.a aVar = this.a.get(i3);
                Fragment fragment = aVar.b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i2;
                    if (p.c(2)) {
                        StringBuilder a = e.a.a.a.a.a("Bump nesting of ");
                        a.append(aVar.b);
                        a.append(" to ");
                        a.append(aVar.b.mBackStackNesting);
                        Log.v("FragmentManager", a.toString());
                    }
                }
            }
        }
    }

    public int a() {
        return a(false);
    }

    public int a(boolean z) {
        if (!this.s) {
            if (p.c(2)) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new d.i.h.a("FragmentManager"));
                a("  ", printWriter, true);
                printWriter.close();
            }
            this.s = true;
            if (this.f692g) {
                this.t = this.r.f666i.getAndIncrement();
            } else {
                this.t = -1;
            }
            this.r.a((p.e) this, z);
            return this.t;
        }
        throw new IllegalStateException("commit already called");
    }

    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (p.c(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.f692g) {
            return true;
        }
        p pVar = this.r;
        if (pVar.f661d == null) {
            pVar.f661d = new ArrayList<>();
        }
        pVar.f661d.add(this);
        return true;
    }

    public boolean a(ArrayList<a> arrayList, int i2, int i3) {
        if (i3 == i2) {
            return false;
        }
        int size = this.a.size();
        int i4 = -1;
        for (int i5 = 0; i5 < size; i5++) {
            Fragment fragment = this.a.get(i5).b;
            int i6 = fragment != null ? fragment.mContainerId : 0;
            if (!(i6 == 0 || i6 == i4)) {
                for (int i7 = i2; i7 < i3; i7++) {
                    a aVar = arrayList.get(i7);
                    int size2 = aVar.a.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        Fragment fragment2 = aVar.a.get(i8).b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i6) {
                            return true;
                        }
                    }
                }
                i4 = i6;
            }
        }
        return false;
    }
}
