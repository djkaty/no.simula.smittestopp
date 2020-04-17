package d.m.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.fragment.app.Fragment;
import d.o.g;
import e.a.a.a.a;

public class v {
    public final o a;
    public final Fragment b;

    /* renamed from: c  reason: collision with root package name */
    public int f682c = -1;

    public v(o oVar, Fragment fragment) {
        this.a = oVar;
        this.b = fragment;
    }

    public void a(ClassLoader classLoader) {
        Bundle bundle = this.b.mSavedFragmentState;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
            Fragment fragment = this.b;
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
            Fragment fragment2 = this.b;
            fragment2.mTargetWho = fragment2.mSavedFragmentState.getString("android:target_state");
            Fragment fragment3 = this.b;
            if (fragment3.mTargetWho != null) {
                fragment3.mTargetRequestCode = fragment3.mSavedFragmentState.getInt("android:target_req_state", 0);
            }
            Fragment fragment4 = this.b;
            Boolean bool = fragment4.mSavedUserVisibleHint;
            if (bool != null) {
                fragment4.mUserVisibleHint = bool.booleanValue();
                this.b.mSavedUserVisibleHint = null;
            } else {
                fragment4.mUserVisibleHint = fragment4.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
            }
            Fragment fragment5 = this.b;
            if (!fragment5.mUserVisibleHint) {
                fragment5.mDeferStart = true;
            }
        }
    }

    public void b() {
        if (this.b.mView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.b.mView.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                this.b.mSavedViewState = sparseArray;
            }
        }
    }

    public v(o oVar, ClassLoader classLoader, l lVar, u uVar) {
        this.a = oVar;
        this.b = lVar.a(classLoader, uVar.x);
        Bundle bundle = uVar.G;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.b.setArguments(uVar.G);
        Fragment fragment = this.b;
        fragment.mWho = uVar.y;
        fragment.mFromLayout = uVar.z;
        fragment.mRestored = true;
        fragment.mFragmentId = uVar.A;
        fragment.mContainerId = uVar.B;
        fragment.mTag = uVar.C;
        fragment.mRetainInstance = uVar.D;
        fragment.mRemoving = uVar.E;
        fragment.mDetached = uVar.F;
        fragment.mHidden = uVar.H;
        fragment.mMaxState = g.b.values()[uVar.I];
        Bundle bundle2 = uVar.J;
        if (bundle2 != null) {
            this.b.mSavedFragmentState = bundle2;
        } else {
            this.b.mSavedFragmentState = new Bundle();
        }
        if (p.c(2)) {
            StringBuilder a2 = a.a("Instantiated fragment ");
            a2.append(this.b);
            Log.v("FragmentManager", a2.toString());
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        this.b.performSaveInstanceState(bundle);
        this.a.d(this.b, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.b.mView != null) {
            b();
        }
        if (this.b.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.b.mSavedViewState);
        }
        if (!this.b.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.b.mUserVisibleHint);
        }
        return bundle;
    }

    public v(o oVar, Fragment fragment, u uVar) {
        this.a = oVar;
        this.b = fragment;
        fragment.mSavedViewState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        Fragment fragment3 = this.b;
        fragment3.mTarget = null;
        Bundle bundle = uVar.J;
        if (bundle != null) {
            fragment3.mSavedFragmentState = bundle;
        } else {
            fragment3.mSavedFragmentState = new Bundle();
        }
    }
}
