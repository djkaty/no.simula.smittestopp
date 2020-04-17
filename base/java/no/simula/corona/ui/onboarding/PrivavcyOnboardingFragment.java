package no.simula.corona.ui.onboarding;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.microsoft.identity.client.PublicClientApplication;
import h.k.b.g;
import j.b.a.e0.c.a;
import j.b.a.e0.c.c;
import java.util.HashMap;
import no.simula.corona.R$id;
import no.simula.corona.R$layout;
import no.simula.corona.ui.BaseFragment;

public final class PrivavcyOnboardingFragment extends BaseFragment {
    public Integer x = 0;
    public a y;
    public HashMap z;

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
            return layoutInflater.inflate(R$layout.fragment_onboarding_privavcy, viewGroup, false);
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
        Integer num = null;
        if (view != null) {
            super.onViewCreated(view, bundle);
            Bundle arguments = getArguments();
            String string = arguments != null ? arguments.getString("mainText") : null;
            Bundle arguments2 = getArguments();
            String string2 = arguments2 != null ? arguments2.getString("buttonTextRId") : null;
            Bundle arguments3 = getArguments();
            if (arguments3 != null) {
                num = Integer.valueOf(arguments3.getInt("pageNo"));
            }
            this.x = num;
            TextView textView = (TextView) a(R$id.textViewWelcome);
            g.a((Object) textView, "this.textViewWelcome");
            textView.setText(string);
            ((TextView) a(R$id.buttonCallOfAction)).setText(string2);
            ((TextView) a(R$id.buttonCallOfAction)).setOnClickListener(new c(this));
            return;
        }
        g.a("view");
        throw null;
    }
}
