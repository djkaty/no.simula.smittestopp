package no.simula.corona;

import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import d.b.a.h;
import h.k.b.g;
import java.util.HashMap;

public final class ConsentActivity extends h {
    public HashMap z;

    /* compiled from: java-style lambda group */
    public static final class a implements View.OnClickListener {
        public final /* synthetic */ int x;
        public final /* synthetic */ Object y;

        public a(int i2, Object obj) {
            this.x = i2;
            this.y = obj;
        }

        public final void onClick(View view) {
            int i2 = this.x;
            if (i2 == 0) {
                ConsentActivity.a((ConsentActivity) this.y);
            } else if (i2 == 1) {
                ((ConsentActivity) this.y).finish();
            } else {
                throw null;
            }
        }
    }

    public static final /* synthetic */ void a(ConsentActivity consentActivity) {
        consentActivity.setResult(-1);
        consentActivity.finish();
    }

    public View a(int i2) {
        if (this.z == null) {
            this.z = new HashMap();
        }
        View view = (View) this.z.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i2);
        this.z.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void onBackPressed() {
        finishAffinity();
    }

    public void onCreate(Bundle bundle) {
        Spanned spanned;
        super.onCreate(bundle);
        setContentView((int) R$layout.activity_consent);
        TextView textView = (TextView) a(R$id.privacy_policy);
        g.a((Object) textView, "privacy_policy");
        if (Build.VERSION.SDK_INT >= 24) {
            spanned = Html.fromHtml(getString(R$string.privacy_policy), 0);
        } else {
            spanned = Html.fromHtml(getString(R$string.privacy_policy));
        }
        textView.setText(spanned);
        TextView textView2 = (TextView) a(R$id.privacy_policy);
        g.a((Object) textView2, "privacy_policy");
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        ((Button) a(R$id.confirmConsent)).setOnClickListener(new a(0, this));
        ((Button) a(R$id.denyConsent)).setOnClickListener(new a(1, this));
    }
}
