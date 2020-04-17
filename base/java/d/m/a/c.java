package d.m.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.Fragment;
import d.b.a.r;
import d.f.d;
import d.f.i;
import d.i.a.a;
import d.i.a.k;
import d.o.e0;
import d.o.f0;
import d.o.g;
import d.o.m;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class c extends ComponentActivity implements a.b, a.d {
    public static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    public static final String FRAGMENTS_TAG = "android:support:fragments";
    public static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    public static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    public static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    public static final String TAG = "FragmentActivity";
    public boolean mCreated;
    public final m mFragmentLifecycleRegistry = new m(this);
    public final k mFragments;
    public int mNextCandidateRequestIndex;
    public i<String> mPendingFragmentActivityResults;
    public boolean mRequestedPermissionsFromFragment;
    public boolean mResumed;
    public boolean mStartedActivityFromFragment;
    public boolean mStartedIntentSenderFromFragment;
    public boolean mStopped = true;

    public class a extends m<c> implements f0, d.a.c {
        public a() {
            super(c.this);
        }

        public View a(int i2) {
            return c.this.findViewById(i2);
        }

        public g getLifecycle() {
            return c.this.mFragmentLifecycleRegistry;
        }

        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return c.this.getOnBackPressedDispatcher();
        }

        public e0 getViewModelStore() {
            return c.this.getViewModelStore();
        }

        public boolean a() {
            Window window = c.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    public c() {
        a aVar = new a();
        r.a(aVar, (Object) "callbacks == null");
        this.mFragments = new k(aVar);
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.b() < 65534) {
            while (true) {
                i<String> iVar = this.mPendingFragmentActivityResults;
                int i2 = this.mNextCandidateRequestIndex;
                if (iVar.x) {
                    iVar.a();
                }
                if (d.a(iVar.y, iVar.A, i2) >= 0) {
                    this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
                } else {
                    int i3 = this.mNextCandidateRequestIndex;
                    this.mPendingFragmentActivityResults.c(i3, fragment.mWho);
                    this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
                    return i3;
                }
            }
        } else {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
    }

    public static void checkForValidRequestCode(int i2) {
        if ((i2 & -65536) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    private void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), g.b.CREATED));
    }

    public static boolean markState(p pVar, g.b bVar) {
        boolean z = false;
        for (Fragment next : pVar.f660c.c()) {
            if (next != null) {
                if (next.getHost() != null) {
                    z |= markState(next.getChildFragmentManager(), bVar);
                }
                if (((m) next.getLifecycle()).b.isAtLeast(g.b.STARTED)) {
                    next.mLifecycleRegistry.a(bVar);
                    z = true;
                }
            }
        }
        return z;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.a.A.f663f.onCreateView(view, str, context, attributeSet);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            d.p.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.a.A.a(str, fileDescriptor, printWriter, strArr);
    }

    public p getSupportFragmentManager() {
        return this.mFragments.a.A;
    }

    @Deprecated
    public d.p.a.a getSupportLoaderManager() {
        return d.p.a.a.a(this);
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        this.mFragments.a();
        int i4 = i2 >> 16;
        if (i4 != 0) {
            int i5 = i4 - 1;
            String a2 = this.mPendingFragmentActivityResults.a(i5);
            this.mPendingFragmentActivityResults.c(i5);
            if (a2 == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment c2 = this.mFragments.a.A.c(a2);
            if (c2 == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + a2);
                return;
            }
            c2.onActivityResult(i2 & 65535, i3, intent);
            return;
        }
        d.i.a.a.a();
        super.onActivityResult(i2, i3, intent);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.a();
        this.mFragments.a.A.a(configuration);
    }

    public void onCreate(Bundle bundle) {
        m<?> mVar = this.mFragments.a;
        mVar.A.a(mVar, mVar, (Fragment) null);
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable(FRAGMENTS_TAG);
            m<?> mVar2 = this.mFragments.a;
            if (mVar2 instanceof f0) {
                mVar2.A.a(parcelable);
                if (bundle.containsKey(NEXT_CANDIDATE_REQUEST_INDEX_TAG)) {
                    this.mNextCandidateRequestIndex = bundle.getInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG);
                    int[] intArray = bundle.getIntArray(ALLOCATED_REQUEST_INDICIES_TAG);
                    String[] stringArray = bundle.getStringArray(REQUEST_FRAGMENT_WHO_TAG);
                    if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                        Log.w(TAG, "Invalid requestCode mapping in savedInstanceState.");
                    } else {
                        this.mPendingFragmentActivityResults = new i<>(intArray.length);
                        for (int i2 = 0; i2 < intArray.length; i2++) {
                            this.mPendingFragmentActivityResults.c(intArray[i2], stringArray[i2]);
                        }
                    }
                }
            } else {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new i<>(10);
            this.mNextCandidateRequestIndex = 0;
        }
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.a(g.a.ON_CREATE);
        this.mFragments.a.A.b();
    }

    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 != 0) {
            return super.onCreatePanelMenu(i2, menu);
        }
        boolean onCreatePanelMenu = super.onCreatePanelMenu(i2, menu);
        k kVar = this.mFragments;
        return onCreatePanelMenu | kVar.a.A.a(menu, getMenuInflater());
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    public void onDestroy() {
        super.onDestroy();
        this.mFragments.a.A.c();
        this.mFragmentLifecycleRegistry.a(g.a.ON_DESTROY);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.a.A.d();
    }

    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 0) {
            return this.mFragments.a.A.b(menuItem);
        }
        if (i2 != 6) {
            return false;
        }
        return this.mFragments.a.A.a(menuItem);
    }

    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.a.A.a(z);
    }

    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.a();
    }

    public void onPanelClosed(int i2, Menu menu) {
        if (i2 == 0) {
            this.mFragments.a.A.a(menu);
        }
        super.onPanelClosed(i2, menu);
    }

    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.a.A.a(3);
        this.mFragmentLifecycleRegistry.a(g.a.ON_PAUSE);
    }

    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.a.A.b(z);
    }

    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Deprecated
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 == 0) {
            return onPrepareOptionsPanel(view, menu) | this.mFragments.a.A.b(menu);
        }
        return super.onPreparePanel(i2, view, menu);
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        this.mFragments.a();
        int i3 = (i2 >> 16) & 65535;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.mPendingFragmentActivityResults.a(i4);
            this.mPendingFragmentActivityResults.c(i4);
            if (a2 == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment c2 = this.mFragments.a.A.c(a2);
            if (c2 == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + a2);
                return;
            }
            c2.onRequestPermissionsResult(i2 & 65535, strArr, iArr);
        }
    }

    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.a();
        this.mFragments.a.A.d(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.a(g.a.ON_RESUME);
        p pVar = this.mFragments.a.A;
        pVar.u = false;
        pVar.v = false;
        pVar.a(4);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.a(g.a.ON_STOP);
        Parcelable l2 = this.mFragments.a.A.l();
        if (l2 != null) {
            bundle.putParcelable(FRAGMENTS_TAG, l2);
        }
        if (this.mPendingFragmentActivityResults.b() > 0) {
            bundle.putInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG, this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.b()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.b()];
            for (int i2 = 0; i2 < this.mPendingFragmentActivityResults.b(); i2++) {
                iArr[i2] = this.mPendingFragmentActivityResults.b(i2);
                strArr[i2] = this.mPendingFragmentActivityResults.d(i2);
            }
            bundle.putIntArray(ALLOCATED_REQUEST_INDICIES_TAG, iArr);
            bundle.putStringArray(REQUEST_FRAGMENT_WHO_TAG, strArr);
        }
    }

    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            p pVar = this.mFragments.a.A;
            pVar.u = false;
            pVar.v = false;
            pVar.a(2);
        }
        this.mFragments.a();
        this.mFragments.a.A.d(true);
        this.mFragmentLifecycleRegistry.a(g.a.ON_START);
        p pVar2 = this.mFragments.a.A;
        pVar2.u = false;
        pVar2.v = false;
        pVar2.a(3);
    }

    public void onStateNotSaved() {
        this.mFragments.a();
    }

    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        p pVar = this.mFragments.a.A;
        pVar.v = true;
        pVar.a(2);
        this.mFragmentLifecycleRegistry.a(g.a.ON_STOP);
    }

    /* JADX INFO: finally extract failed */
    public void requestPermissionsFromFragment(Fragment fragment, String[] strArr, int i2) {
        if (i2 == -1) {
            d.i.a.a.a(this, strArr, i2);
            return;
        }
        checkForValidRequestCode(i2);
        try {
            this.mRequestedPermissionsFromFragment = true;
            d.i.a.a.a(this, strArr, ((allocateRequestIndex(fragment) + 1) << 16) + (i2 & 65535));
            this.mRequestedPermissionsFromFragment = false;
        } catch (Throwable th) {
            this.mRequestedPermissionsFromFragment = false;
            throw th;
        }
    }

    public void setEnterSharedElementCallback(k kVar) {
        d.i.a.a.e(this);
    }

    public void setExitSharedElementCallback(k kVar) {
        d.i.a.a.f(this);
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        if (!this.mStartedActivityFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startActivityForResult(intent, i2);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        startActivityFromFragment(fragment, intent, i2, (Bundle) null);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5) {
        if (!this.mStartedIntentSenderFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
    }

    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        int i6 = i2;
        this.mStartedIntentSenderFromFragment = true;
        if (i6 == -1) {
            try {
                d.i.a.a.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            } finally {
                this.mStartedIntentSenderFromFragment = false;
            }
        } else {
            checkForValidRequestCode(i2);
            d.i.a.a.a(this, intentSender, ((allocateRequestIndex(fragment) + 1) << 16) + (i6 & 65535), intent, i3, i4, i5, bundle);
            this.mStartedIntentSenderFromFragment = false;
        }
    }

    public void supportFinishAfterTransition() {
        d.i.a.a.b(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        d.i.a.a.c(this);
    }

    public void supportStartPostponedEnterTransition() {
        d.i.a.a.g(this);
    }

    public final void validateRequestPermissionsRequestCode(int i2) {
        if (!this.mRequestedPermissionsFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        if (i2 == -1) {
            try {
                d.i.a.a.a(this, intent, -1, bundle);
            } finally {
                this.mStartedActivityFromFragment = false;
            }
        } else {
            checkForValidRequestCode(i2);
            d.i.a.a.a(this, intent, ((allocateRequestIndex(fragment) + 1) << 16) + (i2 & 65535), bundle);
            this.mStartedActivityFromFragment = false;
        }
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView((View) null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (!this.mStartedActivityFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startActivityForResult(intent, i2, bundle);
    }

    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        if (!this.mStartedIntentSenderFromFragment && i2 != -1) {
            checkForValidRequestCode(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
    }

    public c(int i2) {
        super(i2);
        a aVar = new a();
        r.a(aVar, (Object) "callbacks == null");
        this.mFragments = new k(aVar);
    }
}
