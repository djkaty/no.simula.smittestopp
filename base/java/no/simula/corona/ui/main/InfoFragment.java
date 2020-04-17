package no.simula.corona.ui.main;

import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import h.k.b.g;
import java.util.HashMap;
import no.simula.corona.R$id;
import no.simula.corona.R$layout;

public final class InfoFragment extends MainBaseFragment {
    public HashMap y;

    public View a(int i2) {
        if (this.y == null) {
            this.y = new HashMap();
        }
        View view = (View) this.y.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View findViewById = view2.findViewById(i2);
        this.y.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void a() {
        HashMap hashMap = this.y;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (layoutInflater != null) {
            return layoutInflater.inflate(R$layout.fragment_info, viewGroup, false);
        }
        g.a("inflater");
        throw null;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        a();
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (view != null) {
            super.onViewCreated(view, bundle);
            TextView textView = (TextView) a(R$id.fhi_website);
            g.a((Object) textView, "fhi_website");
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            TextView textView2 = (TextView) a(R$id.general_advice_public);
            g.a((Object) textView2, "general_advice_public");
            textView2.setMovementMethod(LinkMovementMethod.getInstance());
            TextView textView3 = (TextView) a(R$id.home_quarantine);
            g.a((Object) textView3, "home_quarantine");
            textView3.setMovementMethod(LinkMovementMethod.getInstance());
            TextView textView4 = (TextView) a(R$id.self_reporting);
            g.a((Object) textView4, "self_reporting");
            textView4.setMovementMethod(LinkMovementMethod.getInstance());
            return;
        }
        g.a("view");
        throw null;
    }
}
