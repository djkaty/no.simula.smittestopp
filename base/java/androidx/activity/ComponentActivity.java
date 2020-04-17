package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import d.i.a.d;
import d.o.a0;
import d.o.e0;
import d.o.f0;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.m;
import d.o.v;
import d.o.x;
import d.v.c;

public class ComponentActivity extends d implements l, f0, c, d.a.c {
    public int mContentLayoutId;
    public a0 mDefaultFactory;
    public final m mLifecycleRegistry;
    public final OnBackPressedDispatcher mOnBackPressedDispatcher;
    public final d.v.b mSavedStateRegistryController;
    public e0 mViewModelStore;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            ComponentActivity.super.onBackPressed();
        }
    }

    public static final class b {
        public Object a;
        public e0 b;
    }

    public ComponentActivity() {
        this.mLifecycleRegistry = new m(this);
        this.mSavedStateRegistryController = new d.v.b(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new a());
        if (getLifecycle() != null) {
            getLifecycle().a(new j() {
                public void a(l lVar, g.a aVar) {
                    if (aVar == g.a.ON_STOP) {
                        Window window = ComponentActivity.this.getWindow();
                        View peekDecorView = window != null ? window.peekDecorView() : null;
                        if (peekDecorView != null) {
                            peekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
            getLifecycle().a(new j() {
                public void a(l lVar, g.a aVar) {
                    if (aVar == g.a.ON_DESTROY && !ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.getViewModelStore().a();
                    }
                }
            });
            if (Build.VERSION.SDK_INT <= 23) {
                getLifecycle().a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    public a0 getDefaultViewModelProviderFactory() {
        if (getApplication() != null) {
            if (this.mDefaultFactory == null) {
                this.mDefaultFactory = new x(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            return bVar.a;
        }
        return null;
    }

    public g getLifecycle() {
        return this.mLifecycleRegistry;
    }

    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    public final d.v.a getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b;
    }

    public e0 getViewModelStore() {
        if (getApplication() != null) {
            if (this.mViewModelStore == null) {
                b bVar = (b) getLastNonConfigurationInstance();
                if (bVar != null) {
                    this.mViewModelStore = bVar.b;
                }
                if (this.mViewModelStore == null) {
                    this.mViewModelStore = new e0();
                }
            }
            return this.mViewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    public void onBackPressed() {
        this.mOnBackPressedDispatcher.a();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mSavedStateRegistryController.a(bundle);
        v.b(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public final Object onRetainNonConfigurationInstance() {
        b bVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        e0 e0Var = this.mViewModelStore;
        if (e0Var == null && (bVar = (b) getLastNonConfigurationInstance()) != null) {
            e0Var = bVar.b;
        }
        if (e0Var == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        b bVar2 = new b();
        bVar2.a = onRetainCustomNonConfigurationInstance;
        bVar2.b = e0Var;
        return bVar2;
    }

    public void onSaveInstanceState(Bundle bundle) {
        g lifecycle = getLifecycle();
        if (lifecycle instanceof m) {
            ((m) lifecycle).a(g.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
    }

    public ComponentActivity(int i2) {
        this();
        this.mContentLayoutId = i2;
    }
}
