package d.m.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaDataUtils;
import d.a0.a.a;
import java.util.ArrayList;

public abstract class w extends a {
    public final p a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public y f683c = null;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<Fragment.g> f684d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<Fragment> f685e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    public Fragment f686f = null;

    /* renamed from: g  reason: collision with root package name */
    public boolean f687g;

    @Deprecated
    public w(p pVar) {
        this.a = pVar;
        this.b = 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.ViewGroup r5, int r6, java.lang.Object r7) {
        /*
            r4 = this;
            androidx.fragment.app.Fragment r7 = (androidx.fragment.app.Fragment) r7
            d.m.a.y r5 = r4.f683c
            r0 = 0
            if (r5 != 0) goto L_0x0014
            d.m.a.p r5 = r4.a
            if (r5 == 0) goto L_0x0013
            d.m.a.a r1 = new d.m.a.a
            r1.<init>(r5)
            r4.f683c = r1
            goto L_0x0014
        L_0x0013:
            throw r0
        L_0x0014:
            java.util.ArrayList<androidx.fragment.app.Fragment$g> r5 = r4.f684d
            int r5 = r5.size()
            if (r5 > r6) goto L_0x0022
            java.util.ArrayList<androidx.fragment.app.Fragment$g> r5 = r4.f684d
            r5.add(r0)
            goto L_0x0014
        L_0x0022:
            java.util.ArrayList<androidx.fragment.app.Fragment$g> r5 = r4.f684d
            boolean r1 = r7.isAdded()
            if (r1 == 0) goto L_0x0066
            d.m.a.p r1 = r4.a
            d.m.a.x r2 = r1.f660c
            java.lang.String r3 = r7.mWho
            java.util.HashMap<java.lang.String, d.m.a.v> r2 = r2.b
            java.lang.Object r2 = r2.get(r3)
            d.m.a.v r2 = (d.m.a.v) r2
            if (r2 == 0) goto L_0x0055
            androidx.fragment.app.Fragment r3 = r2.b
            boolean r3 = r3.equals(r7)
            if (r3 == 0) goto L_0x0055
            androidx.fragment.app.Fragment r1 = r2.b
            int r1 = r1.mState
            r3 = -1
            if (r1 <= r3) goto L_0x0066
            android.os.Bundle r1 = r2.a()
            if (r1 == 0) goto L_0x0066
            androidx.fragment.app.Fragment$g r2 = new androidx.fragment.app.Fragment$g
            r2.<init>(r1)
            goto L_0x0067
        L_0x0055:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Fragment "
            java.lang.String r2 = " is not currently in the FragmentManager"
            java.lang.String r6 = e.a.a.a.a.a((java.lang.String) r6, (androidx.fragment.app.Fragment) r7, (java.lang.String) r2)
            r5.<init>(r6)
            r1.a((java.lang.RuntimeException) r5)
            throw r0
        L_0x0066:
            r2 = r0
        L_0x0067:
            r5.set(r6, r2)
            java.util.ArrayList<androidx.fragment.app.Fragment> r5 = r4.f685e
            r5.set(r6, r0)
            d.m.a.y r5 = r4.f683c
            r5.a((androidx.fragment.app.Fragment) r7)
            androidx.fragment.app.Fragment r5 = r4.f686f
            boolean r5 = r7.equals(r5)
            if (r5 == 0) goto L_0x007e
            r4.f686f = r0
        L_0x007e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.m.a.w.a(android.view.ViewGroup, int, java.lang.Object):void");
    }

    public void b(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    /* JADX INFO: finally extract failed */
    public void a(ViewGroup viewGroup) {
        y yVar = this.f683c;
        if (yVar != null) {
            if (!this.f687g) {
                try {
                    this.f687g = true;
                    yVar.b();
                    this.f687g = false;
                } catch (Throwable th) {
                    this.f687g = false;
                    throw th;
                }
            }
            this.f683c = null;
        }
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
        Fragment fragment;
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f684d.clear();
            this.f685e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f684d.add((Fragment.g) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith(CommonSchemaDataUtils.METADATA_FIELDS)) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    p pVar = this.a;
                    if (pVar != null) {
                        String string = bundle.getString(str);
                        if (string == null) {
                            fragment = null;
                        } else {
                            fragment = pVar.f660c.b(string);
                            if (fragment == null) {
                                pVar.a((RuntimeException) new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
                                throw null;
                            }
                        }
                        if (fragment != null) {
                            while (this.f685e.size() <= parseInt) {
                                this.f685e.add((Object) null);
                            }
                            fragment.setMenuVisibility(false);
                            this.f685e.set(parseInt, fragment);
                        } else {
                            Log.w("FragmentStatePagerAdapt", "Bad fragment at key " + str);
                        }
                    } else {
                        throw null;
                    }
                }
            }
        }
    }
}
