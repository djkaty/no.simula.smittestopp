package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.LiveData;
import d.i.a.k;
import d.m.a.c;
import d.m.a.i;
import d.m.a.l0;
import d.m.a.m;
import d.m.a.m0;
import d.m.a.p;
import d.m.a.r;
import d.m.a.t;
import d.o.a0;
import d.o.e0;
import d.o.f0;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.q;
import d.o.x;
import d.p.a.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, l, f0, d.v.c {
    public static final int ACTIVITY_CREATED = 2;
    public static final int ATTACHED = 0;
    public static final int CREATED = 1;
    public static final int INITIALIZING = -1;
    public static final int RESUMED = 4;
    public static final int STARTED = 3;
    public static final Object USE_DEFAULT_TRANSITION = new Object();
    public boolean mAdded;
    public d mAnimationInfo;
    public Bundle mArguments;
    public int mBackStackNesting;
    public boolean mCalled;
    public p mChildFragmentManager;
    public ViewGroup mContainer;
    public int mContainerId;
    public int mContentLayoutId;
    public a0 mDefaultFactory;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public p mFragmentManager;
    public boolean mFromLayout;
    public boolean mHasMenu;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public m<?> mHost;
    public boolean mInLayout;
    public boolean mIsCreated;
    public boolean mIsNewlyAdded;
    public Boolean mIsPrimaryNavigationFragment;
    public LayoutInflater mLayoutInflater;
    public d.o.m mLifecycleRegistry;
    public g.b mMaxState;
    public boolean mMenuVisible;
    public Fragment mParentFragment;
    public boolean mPerformedCreateView;
    public float mPostponedAlpha;
    public Runnable mPostponedDurationRunnable;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mRetainInstance;
    public boolean mRetainInstanceChangedWhileDetached;
    public Bundle mSavedFragmentState;
    public d.v.b mSavedStateRegistryController;
    public Boolean mSavedUserVisibleHint;
    public SparseArray<Parcelable> mSavedViewState;
    public int mState;
    public String mTag;
    public Fragment mTarget;
    public int mTargetRequestCode;
    public String mTargetWho;
    public boolean mUserVisibleHint;
    public View mView;
    public l0 mViewLifecycleOwner;
    public q<l> mViewLifecycleOwnerLiveData;
    public String mWho;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            Fragment.this.callStartTransitionListener();
        }
    }

    public static class d {
        public View a;
        public Animator b;

        /* renamed from: c  reason: collision with root package name */
        public int f63c;

        /* renamed from: d  reason: collision with root package name */
        public int f64d;

        /* renamed from: e  reason: collision with root package name */
        public int f65e;

        /* renamed from: f  reason: collision with root package name */
        public Object f66f = null;

        /* renamed from: g  reason: collision with root package name */
        public Object f67g;

        /* renamed from: h  reason: collision with root package name */
        public Object f68h;

        /* renamed from: i  reason: collision with root package name */
        public Object f69i;

        /* renamed from: j  reason: collision with root package name */
        public Object f70j;

        /* renamed from: k  reason: collision with root package name */
        public Object f71k;

        /* renamed from: l  reason: collision with root package name */
        public Boolean f72l;
        public Boolean m;
        public k n;
        public k o;
        public boolean p;
        public f q;
        public boolean r;

        public d() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.f67g = obj;
            this.f68h = null;
            this.f69i = obj;
            this.f70j = null;
            this.f71k = obj;
            this.n = null;
            this.o = null;
        }
    }

    public static class e extends RuntimeException {
        public e(String str, Exception exc) {
            super(str, exc);
        }
    }

    public interface f {
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new r();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new a();
        this.mMaxState = g.b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new q<>();
        initLifecycle();
    }

    private d ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new d();
        }
        return this.mAnimationInfo;
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new d.o.m(this);
        this.mSavedStateRegistryController = new d.v.b(this);
        this.mLifecycleRegistry.a((d.o.k) new j() {
            public void a(l lVar, g.a aVar) {
                View view;
                if (aVar == g.a.ON_STOP && (view = Fragment.this.mView) != null) {
                    view.cancelPendingInputEvents();
                }
            }
        });
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, (Bundle) null);
    }

    public void callStartTransitionListener() {
        d dVar = this.mAnimationInfo;
        f fVar = null;
        if (dVar != null) {
            dVar.p = false;
            f fVar2 = dVar.q;
            dVar.q = null;
            fVar = fVar2;
        }
        if (fVar != null) {
            p.g gVar = (p.g) fVar;
            int i2 = gVar.f673c - 1;
            gVar.f673c = i2;
            if (i2 == 0) {
                gVar.b.r.m();
            }
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (getContext() != null) {
            d.p.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.a(e.a.a.a.a.b(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        if (str.equals(this.mWho)) {
            return this;
        }
        return this.mChildFragmentManager.c(str);
    }

    public final d.m.a.c getActivity() {
        m<?> mVar = this.mHost;
        if (mVar == null) {
            return null;
        }
        return (d.m.a.c) mVar.x;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        d dVar = this.mAnimationInfo;
        if (dVar == null || (bool = dVar.m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        d dVar = this.mAnimationInfo;
        if (dVar == null || (bool = dVar.f72l) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.a;
    }

    public Animator getAnimator() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final p getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        m<?> mVar = this.mHost;
        if (mVar == null) {
            return null;
        }
        return mVar.y;
    }

    public a0 getDefaultViewModelProviderFactory() {
        if (this.mFragmentManager != null) {
            if (this.mDefaultFactory == null) {
                this.mDefaultFactory = new x(requireActivity().getApplication(), this, getArguments());
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public Object getEnterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f66f;
    }

    public k getEnterTransitionCallback() {
        if (this.mAnimationInfo == null) {
        }
        return null;
    }

    public Object getExitTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f68h;
    }

    public k getExitTransitionCallback() {
        if (this.mAnimationInfo == null) {
        }
        return null;
    }

    @Deprecated
    public final p getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        m<?> mVar = this.mHost;
        if (mVar == null) {
            return null;
        }
        return d.m.a.c.this;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater((Bundle) null) : layoutInflater;
    }

    public d.o.g getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public d.p.a.a getLoaderManager() {
        return d.p.a.a.a(this);
    }

    public int getNextAnim() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f64d;
    }

    public int getNextTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f65e;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final p getParentFragmentManager() {
        p pVar = this.mFragmentManager;
        if (pVar != null) {
            return pVar;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not associated with a fragment manager."));
    }

    public Object getReenterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f69i;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f67g;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    public final d.v.a getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b;
    }

    public Object getSharedElementEnterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.f70j;
    }

    public Object getSharedElementReturnTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f71k;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public int getStateAfterAnimating() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f63c;
    }

    public final String getString(int i2) {
        return getResources().getString(i2);
    }

    public final String getTag() {
        return this.mTag;
    }

    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        p pVar = this.mFragmentManager;
        if (pVar == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return pVar.a(str);
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i2) {
        return getResources().getText(i2);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public l getViewLifecycleOwner() {
        l0 l0Var = this.mViewLifecycleOwner;
        if (l0Var != null) {
            return l0Var;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<l> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    public e0 getViewModelStore() {
        p pVar = this.mFragmentManager;
        if (pVar != null) {
            t tVar = pVar.C;
            e0 e0Var = tVar.f678e.get(this.mWho);
            if (e0Var != null) {
                return e0Var;
            }
            e0 e0Var2 = new e0();
            tVar.f678e.put(this.mWho, e0Var2);
            return e0Var2;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        initLifecycle();
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new r();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    public boolean isHideReplaced() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return false;
        }
        return dVar.r;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    public boolean isPostponed() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return false;
        }
        return dVar.p;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isRemovingParent() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null && (parentFragment.isRemoving() || parentFragment.isRemovingParent());
    }

    public final boolean isResumed() {
        return this.mState >= 4;
    }

    public final boolean isStateSaved() {
        p pVar = this.mFragmentManager;
        if (pVar == null) {
            return false;
        }
        return pVar.i();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x000c, code lost:
        r0 = r1.mView;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean isVisible() {
        /*
            r1 = this;
            boolean r0 = r1.isAdded()
            if (r0 == 0) goto L_0x0020
            boolean r0 = r1.isHidden()
            if (r0 != 0) goto L_0x0020
            android.view.View r0 = r1.mView
            if (r0 == 0) goto L_0x0020
            android.os.IBinder r0 = r0.getWindowToken()
            if (r0 == 0) goto L_0x0020
            android.view.View r0 = r1.mView
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L_0x0020
            r0 = 1
            goto L_0x0021
        L_0x0020:
            r0 = 0
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Fragment.isVisible():boolean");
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.j();
    }

    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
    }

    public void onAttach(Context context) {
        Activity activity;
        this.mCalled = true;
        m<?> mVar = this.mHost;
        if (mVar == null) {
            activity = null;
        } else {
            activity = mVar.x;
        }
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        boolean z = true;
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.m < 1) {
            z = false;
        }
        if (!z) {
            this.mChildFragmentManager.b();
        }
    }

    public Animation onCreateAnimation(int i2, boolean z, int i3) {
        return null;
    }

    public Animator onCreateAnimator(int i2, boolean z, int i3) {
        return null;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            return layoutInflater.inflate(i2, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        Activity activity;
        this.mCalled = true;
        m<?> mVar = this.mHost;
        if (mVar == null) {
            activity = null;
        } else {
            activity = mVar.x;
        }
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.j();
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            p pVar = this.mChildFragmentManager;
            pVar.u = false;
            pVar.v = false;
            pVar.a(2);
            return;
        }
        throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onActivityCreated()"));
    }

    public void performAttach() {
        this.mChildFragmentManager.a(this.mHost, new c(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.y);
        if (!this.mCalled) {
            throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onAttach()"));
        }
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.a(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (!onContextItemSelected(menuItem) && !this.mChildFragmentManager.a(menuItem)) {
            return false;
        }
        return true;
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.j();
        this.mState = 1;
        this.mCalled = false;
        this.mSavedStateRegistryController.a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.a(g.a.ON_CREATE);
            return;
        }
        throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onCreate()"));
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.mChildFragmentManager.a(menu, menuInflater);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.j();
        boolean z = true;
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new l0();
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView != null) {
            l0 l0Var = this.mViewLifecycleOwner;
            if (l0Var.x == null) {
                l0Var.x = new d.o.m(l0Var);
            }
            this.mViewLifecycleOwnerLiveData.a(this.mViewLifecycleOwner);
            return;
        }
        if (this.mViewLifecycleOwner.x == null) {
            z = false;
        }
        if (!z) {
            this.mViewLifecycleOwner = null;
            return;
        }
        throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
    }

    public void performDestroy() {
        this.mChildFragmentManager.c();
        this.mLifecycleRegistry.a(g.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.a(1);
        if (this.mView != null) {
            l0 l0Var = this.mViewLifecycleOwner;
            l0Var.x.a(g.a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            b.c cVar = ((d.p.a.b) d.p.a.a.a(this)).b;
            int b2 = cVar.f721c.b();
            for (int i2 = 0; i2 < b2; i2++) {
                l lVar = cVar.f721c.d(i2).f718j;
            }
            this.mPerformedCreateView = false;
            return;
        }
        throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onDestroyView()"));
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            p pVar = this.mChildFragmentManager;
            if (!pVar.w) {
                pVar.c();
                this.mChildFragmentManager = new r();
                return;
            }
            return;
        }
        throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onDetach()"));
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.d();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.a(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if ((!this.mHasMenu || !this.mMenuVisible || !onOptionsItemSelected(menuItem)) && !this.mChildFragmentManager.b(menuItem)) {
            return false;
        }
        return true;
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            this.mChildFragmentManager.a(menu);
        }
    }

    public void performPause() {
        this.mChildFragmentManager.a(3);
        if (this.mView != null) {
            l0 l0Var = this.mViewLifecycleOwner;
            l0Var.x.a(g.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.a(g.a.ON_PAUSE);
        this.mState = 3;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.b(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.mChildFragmentManager.b(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean k2 = this.mFragmentManager.k(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != k2) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(k2);
            onPrimaryNavigationFragmentChanged(k2);
            p pVar = this.mChildFragmentManager;
            pVar.o();
            pVar.g(pVar.q);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.j();
        this.mChildFragmentManager.d(true);
        this.mState = 4;
        this.mCalled = false;
        onResume();
        if (this.mCalled) {
            this.mLifecycleRegistry.a(g.a.ON_RESUME);
            if (this.mView != null) {
                l0 l0Var = this.mViewLifecycleOwner;
                l0Var.x.a(g.a.ON_RESUME);
            }
            p pVar = this.mChildFragmentManager;
            pVar.u = false;
            pVar.v = false;
            pVar.a(4);
            return;
        }
        throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onResume()"));
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        Parcelable l2 = this.mChildFragmentManager.l();
        if (l2 != null) {
            bundle.putParcelable(d.m.a.c.FRAGMENTS_TAG, l2);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.j();
        this.mChildFragmentManager.d(true);
        this.mState = 3;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            this.mLifecycleRegistry.a(g.a.ON_START);
            if (this.mView != null) {
                l0 l0Var = this.mViewLifecycleOwner;
                l0Var.x.a(g.a.ON_START);
            }
            p pVar = this.mChildFragmentManager;
            pVar.u = false;
            pVar.v = false;
            pVar.a(3);
            return;
        }
        throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onStart()"));
    }

    public void performStop() {
        p pVar = this.mChildFragmentManager;
        pVar.v = true;
        pVar.a(2);
        if (this.mView != null) {
            l0 l0Var = this.mViewLifecycleOwner;
            l0Var.x.a(g.a.ON_STOP);
        }
        this.mLifecycleRegistry.a(g.a.ON_STOP);
        this.mState = 2;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().p = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i2) {
        m<?> mVar = this.mHost;
        if (mVar != null) {
            d.m.a.c.this.requestPermissionsFromFragment(this, strArr, i2);
            return;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
    }

    public final d.m.a.c requireActivity() {
        d.m.a.c activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final p requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle != null && (parcelable = bundle.getParcelable(d.m.a.c.FRAGMENTS_TAG)) != null) {
            this.mChildFragmentManager.a(parcelable);
            this.mChildFragmentManager.b();
        }
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new m0(e.a.a.a.a.a("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        } else if (this.mView != null) {
            l0 l0Var = this.mViewLifecycleOwner;
            l0Var.x.a(g.a.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().m = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().f72l = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().a = view;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager == null || !isStateSaved()) {
            this.mArguments = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public void setEnterSharedElementCallback(k kVar) {
        ensureAnimationInfo();
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f66f = obj;
    }

    public void setExitSharedElementCallback(k kVar) {
        ensureAnimationInfo();
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f68h = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (isAdded() && !isHidden()) {
                d.m.a.c.this.supportInvalidateOptionsMenu();
            }
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().r = z;
    }

    public void setInitialSavedState(g gVar) {
        Bundle bundle;
        if (this.mFragmentManager == null) {
            if (gVar == null || (bundle = gVar.x) == null) {
                bundle = null;
            }
            this.mSavedFragmentState = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added");
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                d.m.a.c.this.supportInvalidateOptionsMenu();
            }
        }
    }

    public void setNextAnim(int i2) {
        if (this.mAnimationInfo != null || i2 != 0) {
            ensureAnimationInfo().f64d = i2;
        }
    }

    public void setNextTransition(int i2) {
        if (this.mAnimationInfo != null || i2 != 0) {
            ensureAnimationInfo();
            this.mAnimationInfo.f65e = i2;
        }
    }

    public void setOnStartEnterTransitionListener(f fVar) {
        ensureAnimationInfo();
        f fVar2 = this.mAnimationInfo.q;
        if (fVar != fVar2) {
            if (fVar == null || fVar2 == null) {
                d dVar = this.mAnimationInfo;
                if (dVar.p) {
                    dVar.q = fVar;
                }
                if (fVar != null) {
                    ((p.g) fVar).f673c++;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f69i = obj;
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        p pVar = this.mFragmentManager;
        if (pVar == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            pVar.b(this);
        } else {
            pVar.p(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f67g = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f70j = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().f71k = obj;
    }

    public void setStateAfterAnimating(int i2) {
        ensureAnimationInfo().f63c = i2;
    }

    public void setTargetFragment(Fragment fragment, int i2) {
        p pVar = this.mFragmentManager;
        p pVar2 = fragment != null ? fragment.mFragmentManager : null;
        if (pVar == null || pVar2 == null || pVar == pVar2) {
            Fragment fragment2 = fragment;
            while (fragment2 != null) {
                if (fragment2 != this) {
                    fragment2 = fragment2.getTargetFragment();
                } else {
                    throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
                }
            }
            if (fragment == null) {
                this.mTargetWho = null;
                this.mTarget = null;
            } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
                this.mTargetWho = null;
                this.mTarget = fragment;
            } else {
                this.mTargetWho = fragment.mWho;
                this.mTarget = null;
            }
            this.mTargetRequestCode = i2;
            return;
        }
        throw new IllegalArgumentException(e.a.a.a.a.a("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 3 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            this.mFragmentManager.n(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 3 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        m<?> mVar = this.mHost;
        if (mVar != null) {
            return d.i.a.a.a((Activity) d.m.a.c.this, str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, (Bundle) null);
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        startActivityForResult(intent, i2, (Bundle) null);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        m<?> mVar = this.mHost;
        if (mVar != null) {
            d.m.a.c.this.startIntentSenderFromFragment(this, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
    }

    public void startPostponedEnterTransition() {
        p pVar = this.mFragmentManager;
        if (pVar == null || pVar.n == null) {
            ensureAnimationInfo().p = false;
        } else if (Looper.myLooper() != this.mFragmentManager.n.z.getLooper()) {
            this.mFragmentManager.n.z.postAtFrontOfQueue(new b());
        } else {
            callStartTransitionListener();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")");
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" ");
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener((View.OnCreateContextMenuListener) null);
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();
        public final Bundle x;

        public static class a implements Parcelable.ClassLoaderCreator<g> {
            public Object createFromParcel(Parcel parcel) {
                return new g(parcel, (ClassLoader) null);
            }

            public Object[] newArray(int i2) {
                return new g[i2];
            }

            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }
        }

        public g(Bundle bundle) {
            this.x = bundle;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeBundle(this.x);
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.x = readBundle;
            if (classLoader != null && readBundle != null) {
                readBundle.setClassLoader(classLoader);
            }
        }
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) d.m.a.l.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
        } catch (InstantiationException e2) {
            throw new e(e.a.a.a.a.a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (IllegalAccessException e3) {
            throw new e(e.a.a.a.a.a("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new e(e.a.a.a.a.a("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new e(e.a.a.a.a.a("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    public final String getString(int i2, Object... objArr) {
        return getResources().getString(i2, objArr);
    }

    public final void postponeEnterTransition(long j2, TimeUnit timeUnit) {
        Handler handler;
        ensureAnimationInfo().p = true;
        p pVar = this.mFragmentManager;
        if (pVar != null) {
            handler = pVar.n.z;
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j2));
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        m<?> mVar = this.mHost;
        if (mVar != null) {
            d.m.a.c.this.startActivityFromFragment(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        m<?> mVar = this.mHost;
        if (mVar != null) {
            d.m.a.c.this.startActivityFromFragment(this, intent, i2, bundle);
            return;
        }
        throw new IllegalStateException(e.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
    }

    public class c extends i {
        public c() {
        }

        public View a(int i2) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i2);
            }
            throw new IllegalStateException("Fragment " + this + " does not have a view");
        }

        public boolean a() {
            return Fragment.this.mView != null;
        }
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        m<?> mVar = this.mHost;
        if (mVar != null) {
            c.a aVar = (c.a) mVar;
            LayoutInflater cloneInContext = d.m.a.c.this.getLayoutInflater().cloneInContext(d.m.a.c.this);
            cloneInContext.setFactory2(this.mChildFragmentManager.f663f);
            return cloneInContext;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public Fragment(int i2) {
        this();
        this.mContentLayoutId = i2;
    }
}
