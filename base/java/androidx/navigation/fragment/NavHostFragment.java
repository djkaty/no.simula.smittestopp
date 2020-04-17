package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.R$id;
import d.b.a.r;
import d.m.a.j;
import d.m.a.p;
import d.o.a0;
import d.o.b0;
import d.o.d0;
import d.o.e0;
import d.o.y;
import d.s.e;
import d.s.f;
import d.s.g;
import d.s.i;
import d.s.l;
import d.s.q;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Map;

public class NavHostFragment extends Fragment {
    public boolean A;
    public l x;
    public Boolean y = null;
    public int z;

    public static NavController a(Fragment fragment) {
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getParentFragment()) {
            if (fragment2 instanceof NavHostFragment) {
                l lVar = ((NavHostFragment) fragment2).x;
                if (lVar != null) {
                    return lVar;
                }
                throw new IllegalStateException("NavController is not available before onCreate()");
            }
            Fragment fragment3 = fragment2.getParentFragmentManager().q;
            if (fragment3 instanceof NavHostFragment) {
                l lVar2 = ((NavHostFragment) fragment3).x;
                if (lVar2 != null) {
                    return lVar2;
                }
                throw new IllegalStateException("NavController is not available before onCreate()");
            }
        }
        View view = fragment.getView();
        if (view != null) {
            NavController a = r.a(view);
            if (a != null) {
                return a;
            }
            throw new IllegalStateException("View " + view + " does not have a NavController set");
        }
        throw new IllegalStateException(a.a("Fragment ", fragment, " does not have a NavController set"));
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.A) {
            p parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager != null) {
                d.m.a.a aVar = new d.m.a.a(parentFragmentManager);
                aVar.b(this);
                aVar.a();
                return;
            }
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        Bundle bundle2;
        y yVar;
        super.onCreate(bundle);
        l lVar = new l(requireContext());
        this.x = lVar;
        lVar.f86i = this;
        getLifecycle().a(lVar.m);
        l lVar2 = this.x;
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
        if (lVar2.f86i != null) {
            lVar2.n.b();
            onBackPressedDispatcher.a(lVar2.f86i, lVar2.n);
            l lVar3 = this.x;
            Boolean bool = this.y;
            int i2 = 0;
            lVar3.o = bool != null && bool.booleanValue();
            lVar3.c();
            Bundle bundle3 = null;
            this.y = null;
            l lVar4 = this.x;
            e0 viewModelStore = getViewModelStore();
            if (lVar4.f85h.isEmpty()) {
                a0 a0Var = g.f732d;
                Class cls = g.class;
                String canonicalName = cls.getCanonicalName();
                if (canonicalName != null) {
                    String b = a.b("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
                    y yVar2 = viewModelStore.a.get(b);
                    if (!cls.isInstance(yVar2)) {
                        if (a0Var instanceof b0) {
                            yVar = ((b0) a0Var).a(b, cls);
                        } else {
                            yVar = new g();
                        }
                        yVar2 = yVar;
                        y put = viewModelStore.a.put(b, yVar2);
                        if (put != null) {
                            put.b();
                        }
                    } else if (a0Var instanceof d0) {
                        ((d0) a0Var).a(yVar2);
                    }
                    lVar4.f87j = (g) yVar2;
                    l lVar5 = this.x;
                    lVar5.f88k.a((d.s.p<? extends i>) new DialogFragmentNavigator(requireContext(), getChildFragmentManager()));
                    q qVar = lVar5.f88k;
                    Context requireContext = requireContext();
                    p childFragmentManager = getChildFragmentManager();
                    int id = getId();
                    if (id == 0 || id == -1) {
                        id = R$id.nav_host_fragment_container;
                    }
                    qVar.a((d.s.p<? extends i>) new d.s.r.a(requireContext, childFragmentManager, id));
                    if (bundle != null) {
                        bundle2 = bundle.getBundle("android-support-nav:fragment:navControllerState");
                        if (bundle.getBoolean("android-support-nav:fragment:defaultHost", false)) {
                            this.A = true;
                            p parentFragmentManager = getParentFragmentManager();
                            if (parentFragmentManager != null) {
                                d.m.a.a aVar = new d.m.a.a(parentFragmentManager);
                                aVar.b(this);
                                aVar.a();
                            } else {
                                throw null;
                            }
                        }
                        this.z = bundle.getInt("android-support-nav:fragment:graphId");
                    } else {
                        bundle2 = null;
                    }
                    if (bundle2 != null) {
                        l lVar6 = this.x;
                        if (lVar6 != null) {
                            bundle2.setClassLoader(lVar6.a.getClassLoader());
                            lVar6.f82e = bundle2.getBundle("android-support-nav:controller:navigatorState");
                            lVar6.f83f = bundle2.getParcelableArray("android-support-nav:controller:backStack");
                            lVar6.f84g = bundle2.getBoolean("android-support-nav:controller:deepLinkHandled");
                        } else {
                            throw null;
                        }
                    }
                    int i3 = this.z;
                    if (i3 != 0) {
                        this.x.a(i3, (Bundle) null);
                        return;
                    }
                    Bundle arguments = getArguments();
                    if (arguments != null) {
                        i2 = arguments.getInt("android-support-nav:fragment:graphId");
                    }
                    if (arguments != null) {
                        bundle3 = arguments.getBundle("android-support-nav:fragment:startDestinationArgs");
                    }
                    if (i2 != 0) {
                        this.x.a(i2, bundle3);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            throw new IllegalStateException("ViewModelStore should be set before setGraph call");
        }
        throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j jVar = new j(layoutInflater.getContext());
        int id = getId();
        if (id == 0 || id == -1) {
            id = R$id.nav_host_fragment_container;
        }
        jVar.setId(id);
        return jVar;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NavHost);
        int resourceId = obtainStyledAttributes.getResourceId(R$styleable.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.z = resourceId;
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.NavHostFragment);
        if (obtainStyledAttributes2.getBoolean(R$styleable.NavHostFragment_defaultNavHost, false)) {
            this.A = true;
        }
        obtainStyledAttributes2.recycle();
    }

    public void onPrimaryNavigationFragmentChanged(boolean z2) {
        l lVar = this.x;
        if (lVar != null) {
            lVar.o = z2;
            lVar.c();
            return;
        }
        this.y = Boolean.valueOf(z2);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        l lVar = this.x;
        Bundle bundle2 = null;
        if (lVar != null) {
            ArrayList arrayList = new ArrayList();
            Bundle bundle3 = new Bundle();
            for (Map.Entry next : lVar.f88k.a.entrySet()) {
                String str = (String) next.getKey();
                Bundle b = ((d.s.p) next.getValue()).b();
                if (b != null) {
                    arrayList.add(str);
                    bundle3.putBundle(str, b);
                }
            }
            if (!arrayList.isEmpty()) {
                bundle2 = new Bundle();
                bundle3.putStringArrayList("android-support-nav:controller:navigatorState:names", arrayList);
                bundle2.putBundle("android-support-nav:controller:navigatorState", bundle3);
            }
            if (!lVar.f85h.isEmpty()) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                Parcelable[] parcelableArr = new Parcelable[lVar.f85h.size()];
                int i2 = 0;
                for (e fVar : lVar.f85h) {
                    parcelableArr[i2] = new f(fVar);
                    i2++;
                }
                bundle2.putParcelableArray("android-support-nav:controller:backStack", parcelableArr);
            }
            if (lVar.f84g) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putBoolean("android-support-nav:controller:deepLinkHandled", lVar.f84g);
            }
            if (bundle2 != null) {
                bundle.putBundle("android-support-nav:fragment:navControllerState", bundle2);
            }
            if (this.A) {
                bundle.putBoolean("android-support-nav:fragment:defaultHost", true);
            }
            int i3 = this.z;
            if (i3 != 0) {
                bundle.putInt("android-support-nav:fragment:graphId", i3);
                return;
            }
            return;
        }
        throw null;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (view instanceof ViewGroup) {
            view.setTag(R$id.nav_controller_view_tag, this.x);
            if (view.getParent() != null) {
                View view2 = (View) view.getParent();
                if (view2.getId() == getId()) {
                    view2.setTag(R$id.nav_controller_view_tag, this.x);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("created host view " + view + " is not a ViewGroup");
    }
}
