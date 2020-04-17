package androidx.navigation.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.m;
import d.s.b;
import d.s.i;
import d.s.n;
import d.s.p;

@p.b("dialog")
public final class DialogFragmentNavigator extends p<a> {
    public final Context a;
    public final d.m.a.p b;

    /* renamed from: c  reason: collision with root package name */
    public int f91c = 0;

    /* renamed from: d  reason: collision with root package name */
    public j f92d = new j(this) {
        public void a(l lVar, g.a aVar) {
            if (aVar == g.a.ON_STOP) {
                DialogFragment dialogFragment = (DialogFragment) lVar;
                Dialog dialog = dialogFragment.G;
                if (dialog == null) {
                    throw new IllegalStateException("DialogFragment " + dialogFragment + " does not have a Dialog.");
                } else if (!dialog.isShowing()) {
                    NavHostFragment.a(dialogFragment).b();
                }
            }
        }
    };

    public static class a extends i implements b {
        public String F;

        public a(p<? extends a> pVar) {
            super(pVar);
        }

        public void a(Context context, AttributeSet attributeSet) {
            super.a(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.DialogFragmentNavigator);
            String string = obtainAttributes.getString(R$styleable.DialogFragmentNavigator_android_name);
            if (string != null) {
                this.F = string;
            }
            obtainAttributes.recycle();
        }
    }

    public DialogFragmentNavigator(Context context, d.m.a.p pVar) {
        this.a = context;
        this.b = pVar;
    }

    public i a(i iVar, Bundle bundle, n nVar, p.a aVar) {
        a aVar2 = (a) iVar;
        if (this.b.i()) {
            Log.i("DialogFragmentNavigator", "Ignoring navigate() call: FragmentManager has already saved its state");
            return null;
        }
        String str = aVar2.F;
        if (str != null) {
            if (str.charAt(0) == '.') {
                str = this.a.getPackageName() + str;
            }
            Fragment a2 = this.b.h().a(this.a.getClassLoader(), str);
            if (!DialogFragment.class.isAssignableFrom(a2.getClass())) {
                StringBuilder a3 = e.a.a.a.a.a("Dialog destination ");
                String str2 = aVar2.F;
                if (str2 != null) {
                    throw new IllegalArgumentException(e.a.a.a.a.a(a3, str2, " is not an instance of DialogFragment"));
                }
                throw new IllegalStateException("DialogFragment class was not set");
            }
            DialogFragment dialogFragment = (DialogFragment) a2;
            dialogFragment.setArguments(bundle);
            dialogFragment.getLifecycle().a(this.f92d);
            d.m.a.p pVar = this.b;
            StringBuilder a4 = e.a.a.a.a.a("androidx-nav-fragment:navigator:dialog:");
            int i2 = this.f91c;
            this.f91c = i2 + 1;
            a4.append(i2);
            dialogFragment.a(pVar, a4.toString());
            return aVar2;
        }
        throw new IllegalStateException("DialogFragment class was not set");
    }

    public Bundle b() {
        if (this.f91c == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("androidx-nav-dialogfragment:navigator:count", this.f91c);
        return bundle;
    }

    public boolean c() {
        if (this.f91c == 0) {
            return false;
        }
        if (this.b.i()) {
            Log.i("DialogFragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return false;
        }
        d.m.a.p pVar = this.b;
        StringBuilder a2 = e.a.a.a.a.a("androidx-nav-fragment:navigator:dialog:");
        int i2 = this.f91c - 1;
        this.f91c = i2;
        a2.append(i2);
        Fragment b2 = pVar.b(a2.toString());
        if (b2 != null) {
            g lifecycle = b2.getLifecycle();
            ((m) lifecycle).a.remove(this.f92d);
            ((DialogFragment) b2).a(false, false);
        }
        return true;
    }

    public i a() {
        return new a(this);
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            int i2 = 0;
            this.f91c = bundle.getInt("androidx-nav-dialogfragment:navigator:count", 0);
            while (i2 < this.f91c) {
                d.m.a.p pVar = this.b;
                DialogFragment dialogFragment = (DialogFragment) pVar.b("androidx-nav-fragment:navigator:dialog:" + i2);
                if (dialogFragment != null) {
                    dialogFragment.getLifecycle().a(this.f92d);
                    i2++;
                } else {
                    throw new IllegalStateException(e.a.a.a.a.b("DialogFragment ", i2, " doesn't exist in the FragmentManager"));
                }
            }
        }
    }
}
