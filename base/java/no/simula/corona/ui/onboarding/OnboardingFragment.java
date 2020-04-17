package no.simula.corona.ui.onboarding;

import android.content.Context;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.microsoft.identity.client.PublicClientApplication;
import h.k.b.g;
import j.b.a.e0.c.a;
import j.b.a.e0.c.b;
import java.util.HashMap;
import no.simula.corona.R$id;
import no.simula.corona.R$layout;
import no.simula.corona.ui.BaseFragment;

public final class OnboardingFragment extends BaseFragment {
    public Integer x = 0;
    public a y;
    public HashMap z;

    public static final OnboardingFragment a(int i2, String str, int i3, int i4, String str2) {
        if (str == null) {
            g.a("title");
            throw null;
        } else if (str2 != null) {
            OnboardingFragment onboardingFragment = new OnboardingFragment();
            Bundle bundle = new Bundle();
            bundle.putString("mainText", str);
            bundle.putInt("pageNo", i2);
            bundle.putInt("subText", i3);
            bundle.putString("buttonTextRId", str2);
            bundle.putInt("imageResId", i4);
            onboardingFragment.setArguments(bundle);
            return onboardingFragment;
        } else {
            g.a("buttonText");
            throw null;
        }
    }

    public View a(int i2) {
        if (this.z == null) {
            this.z = new HashMap();
        }
        View view = (View) this.z.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View findViewById = view2.findViewById(i2);
        this.z.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void a() {
        HashMap hashMap = this.z;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public void onAttach(Context context) {
        if (context != null) {
            super.onAttach(context);
            if (context instanceof a) {
                this.y = (a) context;
                return;
            }
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (layoutInflater != null) {
            return layoutInflater.inflate(R$layout.fragment_onboarding, viewGroup, false);
        }
        g.a("inflater");
        throw null;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        HashMap hashMap = this.z;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (view != null) {
            super.onViewCreated(view, bundle);
            TextView textView = (TextView) a(R$id.textViewWelcomeDetails);
            g.a((Object) textView, "textViewWelcomeDetails");
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            Bundle arguments = getArguments();
            String string = arguments != null ? arguments.getString("mainText") : null;
            Bundle arguments2 = getArguments();
            Integer valueOf = arguments2 != null ? Integer.valueOf(arguments2.getInt("subText")) : null;
            Bundle arguments3 = getArguments();
            Integer valueOf2 = arguments3 != null ? Integer.valueOf(arguments3.getInt("imageResId")) : null;
            Bundle arguments4 = getArguments();
            String string2 = arguments4 != null ? arguments4.getString("buttonTextRId") : null;
            Bundle arguments5 = getArguments();
            this.x = arguments5 != null ? Integer.valueOf(arguments5.getInt("pageNo")) : null;
            TextView textView2 = (TextView) a(R$id.textViewWelcome);
            g.a((Object) textView2, "this.textViewWelcome");
            textView2.setText(string);
            TextView textView3 = (TextView) a(R$id.textViewWelcomeDetails);
            g.a((Object) textView3, "this.textViewWelcomeDetails");
            textView3.setText(valueOf != null ? getText(valueOf.intValue()) : " ");
            ImageView imageView = (ImageView) a(R$id.divider0);
            if (valueOf2 != null) {
                imageView.setImageResource(valueOf2.intValue());
                TextView textView4 = (TextView) a(R$id.buttonCallOfAction);
                g.a((Object) textView4, "this.buttonCallOfAction");
                textView4.setText(string2);
                ((TextView) a(R$id.buttonCallOfAction)).setOnClickListener(new b(this));
                return;
            }
            g.a();
            throw null;
        }
        g.a("view");
        throw null;
    }
}
