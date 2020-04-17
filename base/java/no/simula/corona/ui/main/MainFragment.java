package no.simula.corona.ui.main;

import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.identity.client.PublicClientApplication;
import d.m.a.c;
import h.e;
import h.k.b.g;
import j.b.a.e0.b.b;
import java.util.HashMap;
import no.simula.corona.R$color;
import no.simula.corona.R$drawable;
import no.simula.corona.R$id;
import no.simula.corona.R$layout;
import no.simula.corona.R$string;

public final class MainFragment extends ControlFragmentBase implements j.b.a.e0.b.a {
    public HashMap C;

    /* compiled from: java-style lambda group */
    public static final class a implements View.OnClickListener {
        public final /* synthetic */ int x;
        public final /* synthetic */ Object y;

        public a(int i2, Object obj) {
            this.x = i2;
            this.y = obj;
        }

        public final void onClick(View view) {
            b bVar;
            b bVar2;
            b bVar3;
            int i2 = this.x;
            if (i2 == 0) {
                MainFragment mainFragment = (MainFragment) this.y;
                if (!mainFragment.B && !mainFragment.A && (bVar = mainFragment.x) != null) {
                    bVar.h();
                }
            } else if (i2 == 1) {
                MainFragment mainFragment2 = (MainFragment) this.y;
                if (!mainFragment2.B && (bVar2 = mainFragment2.x) != null) {
                    bVar2.h();
                }
            } else if (i2 == 2) {
                MainFragment mainFragment3 = (MainFragment) this.y;
                if (!mainFragment3.A && (bVar3 = mainFragment3.x) != null) {
                    bVar3.h();
                }
            } else if (i2 == 3) {
                c activity = ((MainFragment) this.y).getActivity();
                String string = ((MainFragment) this.y).getString(R$string.app_name);
                if (activity != null) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType(ErrorAttachmentLog.CONTENT_TYPE_TEXT_PLAIN);
                    intent.putExtra("android.intent.extra.TEXT", "https://play.google.com/store/apps/details?id=no.simula.smittestopp");
                    if (intent.resolveActivity(activity.getPackageManager()) != null) {
                        activity.startActivity(Intent.createChooser(intent, string));
                    }
                }
            } else if (i2 == 4) {
                b bVar4 = ((MainFragment) this.y).x;
                if (bVar4 != null) {
                    bVar4.h();
                }
            } else {
                throw null;
            }
        }
    }

    public View a(int i2) {
        if (this.C == null) {
            this.C = new HashMap();
        }
        View view = (View) this.C.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View findViewById = view2.findViewById(i2);
        this.C.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void a() {
        HashMap hashMap = this.C;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public void a(boolean z, boolean z2) {
        try {
            c activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("bluetooth") : null;
            if (systemService != null) {
                BluetoothManager bluetoothManager = (BluetoothManager) systemService;
                boolean z3 = true;
                if (!z2 || !bluetoothManager.getAdapter().enable()) {
                    z3 = false;
                }
                ((ImageView) a(R$id.imageBluetooth)).setImageResource(!z3 ? R$drawable.ic_bluetooth_off : R$drawable.ic_bluetooth);
                try {
                    ((ImageView) a(R$id.imageGps)).setImageResource(!z ? R$drawable.ic_location_off : R$drawable.ic_location);
                } catch (Exception e2) {
                    l.a.a.f2455d.a(e2);
                }
            } else {
                throw new e("null cannot be cast to non-null type android.bluetooth.BluetoothManager");
            }
        } catch (Exception e3) {
            l.a.a.f2455d.a(e3);
        }
    }

    public void b() {
        boolean z = this.A;
        a(this.B, this.A);
        c();
    }

    public final void c() {
        TextView textView = (TextView) a(R$id.buttonSettings);
        g.a((Object) textView, "buttonSettings");
        textView.setVisibility(4);
        TextView textView2 = (TextView) a(R$id.buttonShare);
        g.a((Object) textView2, "buttonShare");
        textView2.setVisibility(4);
        ((ImageButton) a(R$id.enableTracking)).setImageResource(R$drawable.ic_monitor);
        if (!this.A || !this.B) {
            try {
                if (this.A && !this.B) {
                    ((TextView) a(R$id.textViewMainStatus)).setText(getString(R$string.partially_activated));
                    TextView textView3 = (TextView) a(R$id.textViewMainStatus);
                    Context context = getContext();
                    if (context != null) {
                        textView3.setTextColor(d.i.b.a.a(context, (int) R$color.red));
                        ((TextView) a(R$id.textViewTitle)).setText(getString(R$string.gps_not_in_use));
                        ((TextView) a(R$id.textViewStatus)).setText(getString(R$string.contact_msg_partial));
                        ((TextView) a(R$id.textViewStatus)).setText(getString(R$string.contact_msg));
                        TextView textView4 = (TextView) a(R$id.buttonSettings);
                        g.a((Object) textView4, "buttonSettings");
                        textView4.setVisibility(0);
                        return;
                    }
                    g.a();
                    throw null;
                } else if (this.A || !this.B) {
                    ((TextView) a(R$id.textViewMainStatus)).setText(getString(R$string.deactivated));
                    TextView textView5 = (TextView) a(R$id.textViewMainStatus);
                    Context context2 = getContext();
                    if (context2 != null) {
                        textView5.setTextColor(d.i.b.a.a(context2, (int) R$color.red));
                        ((TextView) a(R$id.textViewTitle)).setText(getString(R$string.thanks_for_help));
                        ((TextView) a(R$id.textViewStatus)).setText(getString(R$string.contact_msg));
                        ((TextView) a(R$id.textViewTitle)).setText(getString(R$string.gps_bt_not_in_use));
                        TextView textView6 = (TextView) a(R$id.buttonShare);
                        g.a((Object) textView6, "buttonShare");
                        textView6.setVisibility(0);
                        ((ImageButton) a(R$id.enableTracking)).setImageResource(R$drawable.ic_monitor_off);
                        TextView textView7 = (TextView) a(R$id.buttonSettings);
                        g.a((Object) textView7, "buttonSettings");
                        textView7.setVisibility(0);
                        return;
                    }
                    g.a();
                    throw null;
                } else {
                    ((TextView) a(R$id.textViewMainStatus)).setText(getString(R$string.partially_activated));
                    TextView textView8 = (TextView) a(R$id.textViewMainStatus);
                    Context context3 = getContext();
                    if (context3 != null) {
                        textView8.setTextColor(d.i.b.a.a(context3, (int) R$color.red));
                        ((TextView) a(R$id.textViewTitle)).setText(getString(R$string.thanks_for_help));
                        ((TextView) a(R$id.textViewStatus)).setText(getString(R$string.contact_msg_partial));
                        ((TextView) a(R$id.textViewTitle)).setText(getString(R$string.bt_not_in_use));
                        TextView textView9 = (TextView) a(R$id.buttonSettings);
                        g.a((Object) textView9, "buttonSettings");
                        textView9.setVisibility(0);
                        return;
                    }
                    g.a();
                    throw null;
                }
            } catch (Exception e2) {
                l.a.a.f2455d.a(e2);
            }
        } else {
            ((TextView) a(R$id.textViewMainStatus)).setText(getString(R$string.fully_active));
            TextView textView10 = (TextView) a(R$id.textViewMainStatus);
            Context context4 = getContext();
            if (context4 != null) {
                textView10.setTextColor(d.i.b.a.a(context4, (int) R$color.green));
                ((TextView) a(R$id.textViewTitle)).setText(getString(R$string.thanks_for_help));
                ((TextView) a(R$id.textViewStatus)).setText(getString(R$string.message_when_activated));
                TextView textView11 = (TextView) a(R$id.buttonShare);
                g.a((Object) textView11, "buttonShare");
                textView11.setVisibility(0);
                return;
            }
            g.a();
            throw null;
        }
    }

    public void onAttach(Context context) {
        if (context != null) {
            super.onAttach(context);
            b bVar = this.x;
            if (bVar != null) {
                bVar.a((j.b.a.e0.b.a) this);
                return;
            }
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (layoutInflater != null) {
            return layoutInflater.inflate(R$layout.fragment_main, viewGroup, false);
        }
        g.a("inflater");
        throw null;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        a();
    }

    public void onDetach() {
        super.onDetach();
        b bVar = this.x;
        if (bVar != null) {
            bVar.a((j.b.a.e0.b.a) null);
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Boolean bool = null;
        if (view != null) {
            super.onViewCreated(view, bundle);
            ((ImageButton) a(R$id.enableTracking)).setOnClickListener(new a(0, this));
            ((ImageView) a(R$id.imageGps)).setOnClickListener(new a(1, this));
            ((ImageView) a(R$id.imageBluetooth)).setOnClickListener(new a(2, this));
            ((TextView) a(R$id.buttonShare)).setOnClickListener(new a(3, this));
            ((TextView) a(R$id.buttonSettings)).setOnClickListener(new a(4, this));
            b bVar = this.x;
            boolean a2 = g.a((Object) bVar != null ? bVar.i() : null, (Object) true);
            b bVar2 = this.x;
            if (bVar2 != null) {
                bool = bVar2.b();
            }
            a(a2, g.a((Object) bool, (Object) true));
            c();
            return;
        }
        g.a("view");
        throw null;
    }
}
