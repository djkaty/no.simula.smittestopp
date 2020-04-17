package no.simula.corona.ui.main;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RequestQueue;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.Volley;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.azure.storage.ServiceStatsHandler;
import com.microsoft.azure.storage.blob.BlobRequest;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import d.m.a.c;
import h.e;
import h.k.b.g;
import j.b.a.a0;
import j.b.a.e0.b.b;
import j.b.a.e0.b.d;
import j.b.a.e0.b.f;
import j.b.a.e0.b.h;
import j.b.a.t;
import java.util.HashMap;
import java.util.LinkedHashMap;
import no.simula.corona.MeasurementDatabase;
import no.simula.corona.R$id;
import no.simula.corona.R$layout;
import no.simula.corona.R$string;
import no.simula.corona.SplashActivity;
import no.simula.corona.ui.dialogs.CoronaDialog;
import no.simula.corona.ui.register.PhoneVerificationActivity;
import org.json.JSONObject;

public final class SettingsFragment extends ControlFragmentBase implements CompoundButton.OnCheckedChangeListener {
    public final int C = 21;
    public final int D = 123;
    public RequestQueue E;
    public int F;
    public HashMap G;

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
                SettingsFragment.b((SettingsFragment) this.y);
            } else if (i2 == 1) {
                SettingsFragment.e((SettingsFragment) this.y);
            } else if (i2 == 2) {
                if (((SettingsFragment) this.y).getContext() != null) {
                    SettingsFragment settingsFragment = (SettingsFragment) this.y;
                    if (settingsFragment.F == 4) {
                        Context context = settingsFragment.getContext();
                        if (context != null) {
                            Object systemService = context.getSystemService("clipboard");
                            if (systemService != null) {
                                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                                Context context2 = ((SettingsFragment) this.y).getContext();
                                if (context2 != null) {
                                    g.a((Object) context2, "context!!");
                                    String str = "";
                                    String string = context2.getSharedPreferences("settings", 0).getString("device-id-string", str);
                                    if (string != null) {
                                        str = string;
                                    }
                                    clipboardManager.setPrimaryClip(ClipData.newPlainText((CharSequence) null, str));
                                    Context context3 = ((SettingsFragment) this.y).getContext();
                                    if (context3 != null) {
                                        Toast.makeText(context3, "Copied device id", 0).show();
                                        ((SettingsFragment) this.y).F = 0;
                                        return;
                                    }
                                    g.a();
                                    throw null;
                                }
                                g.a();
                                throw null;
                            }
                            throw new e("null cannot be cast to non-null type android.content.ClipboardManager");
                        }
                        g.a();
                        throw null;
                    }
                }
                ((SettingsFragment) this.y).F++;
            } else {
                throw null;
            }
        }
    }

    public static final /* synthetic */ void a(SettingsFragment settingsFragment, VolleyError volleyError) {
        if (settingsFragment != null) {
            l.a.a.f2455d.a(volleyError);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("where", "deleteEverythingError");
            Crashes.trackError(volleyError, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
            Toast.makeText(settingsFragment.getContext(), R$string.delete_request_failed, 1).show();
            Button button = (Button) settingsFragment.a(R$id.delete_data_button);
            g.a((Object) button, "delete_data_button");
            button.setText(settingsFragment.getString(R$string.settings_delete_data));
            return;
        }
        throw null;
    }

    public static final /* synthetic */ void b(SettingsFragment settingsFragment) {
        if (settingsFragment != null) {
            CoronaDialog a2 = CoronaDialog.a(R$string.app_name, R$string.are_sure_to_delete);
            a2.K = new d(settingsFragment);
            a2.a(settingsFragment.getChildFragmentManager(), "dlg_delete");
            return;
        }
        throw null;
    }

    public static final /* synthetic */ void c(SettingsFragment settingsFragment) {
        b bVar = settingsFragment.x;
        if (bVar != null) {
            bVar.b(false);
        }
        b bVar2 = settingsFragment.x;
        if (bVar2 != null) {
            bVar2.a(false);
        }
        Context context = settingsFragment.getContext();
        if (context != null) {
            g.a((Object) context, "context!!");
            SharedPreferences.Editor edit = context.getSharedPreferences("settings", 0).edit();
            edit.remove("connection-data");
            edit.remove("device-id-string");
            edit.remove("phone-number");
            edit.remove(ResponseType.TOKEN);
            edit.remove(AbstractLog.TIMESTAMP);
            edit.remove("firstland");
            edit.remove("host-name");
            edit.remove("access-key");
            edit.apply();
            settingsFragment.d();
            return;
        }
        g.a();
        throw null;
    }

    public static final /* synthetic */ void f(SettingsFragment settingsFragment) {
        Context context = settingsFragment.getContext();
        if (context != null) {
            Toast makeText = Toast.makeText(context, settingsFragment.getString(R$string.turn_bluetooth), 1);
            makeText.setGravity(17, 0, 0);
            makeText.show();
            return;
        }
        g.a();
        throw null;
    }

    public View a(int i2) {
        if (this.G == null) {
            this.G = new HashMap();
        }
        View view = (View) this.G.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View findViewById = view2.findViewById(i2);
        this.G.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public void a() {
        HashMap hashMap = this.G;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void d() {
        Intent intent = new Intent(getActivity(), SplashActivity.class);
        intent.putExtra(BlobRequest.DELETED_QUERY_ELEMENT_NAME, true);
        startActivity(intent);
        c activity = getActivity();
        if (activity != null) {
            activity.finishAffinity();
        }
    }

    public final void e() {
        l.a.a.f2455d.b("Verification not OK -> No Delete", new Object[0]);
        Toast.makeText(getContext(), R$string.verification_error_try_later, 1).show();
        Button button = (Button) a(R$id.delete_data_button);
        g.a((Object) button, "delete_data_button");
        button.setText(getString(R$string.settings_delete_data));
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == this.D) {
            if (i3 == -1) {
                String stringExtra = intent != null ? intent.getStringExtra(ResponseType.TOKEN) : null;
                if (stringExtra != null) {
                    f fVar = new f(this, stringExtra, 1, "https://api-smittestopp-prod.azure-api.net/permissions/revoke-consent", (JSONObject) null, new j.b.a.e0.b.g(this), new h(this));
                    fVar.setRetryPolicy(new DefaultRetryPolicy(10000, 0, 0.0f));
                    RequestQueue requestQueue = this.E;
                    if (requestQueue != null) {
                        requestQueue.add(fVar);
                        l.a.a.f2455d.b("Verification OK -> Delete", new Object[0]);
                        return;
                    }
                    g.b("mQueue");
                    throw null;
                }
                Analytics.trackEvent("Got null token");
                e();
            } else if (i3 == 0) {
                Button button = (Button) a(R$id.delete_data_button);
                g.a((Object) button, "delete_data_button");
                button.setText(getString(R$string.settings_delete_data));
            } else {
                Analytics.trackEvent("Get token error");
                e();
            }
        } else if (i2 == this.C) {
            c();
        }
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Integer valueOf = compoundButton != null ? Integer.valueOf(compoundButton.getId()) : null;
        if (valueOf != null && valueOf.intValue() == 2131361942) {
            boolean z2 = this.z;
            if (z2) {
                b bVar = this.x;
                if (bVar != null) {
                    bVar.b(!this.B);
                }
            } else if (!z2 && !this.B) {
                Switch switchR = (Switch) a(R$id.gpsSwitch);
                g.a((Object) switchR, "gpsSwitch");
                switchR.setChecked(false);
                Context context = getContext();
                if (context != null) {
                    Toast makeText = Toast.makeText(context, getString(R$string.turn_location_services), 1);
                    makeText.setGravity(17, 0, 0);
                    makeText.show();
                    return;
                }
                g.a();
                throw null;
            }
        } else if (valueOf != null && valueOf.intValue() == 2131361870) {
            c();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (layoutInflater != null) {
            RequestQueue newRequestQueue = Volley.newRequestQueue(getContext());
            g.a((Object) newRequestQueue, "Volley.newRequestQueue(context)");
            this.E = newRequestQueue;
            return layoutInflater.inflate(R$layout.fragment_settings, viewGroup, false);
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
            TextView textView = (TextView) a(R$id.support_email);
            g.a((Object) textView, "support_email");
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            String string = getString(R$string.not_registered);
            g.a((Object) string, "getString(R.string.not_registered)");
            if (getContext() != null) {
                Context context = getContext();
                if (context != null) {
                    g.a((Object) context, "context!!");
                    string = context.getSharedPreferences("settings", 0).getString("phone-number", "");
                    if (string == null) {
                        string = "";
                    }
                } else {
                    g.a();
                    throw null;
                }
            }
            if (string.length() == 0) {
                TextView textView2 = (TextView) a(R$id.phone_number);
                g.a((Object) textView2, IDToken.PHONE_NUMBER);
                textView2.setText(getString(R$string.not_registered));
            } else {
                TextView textView3 = (TextView) a(R$id.phone_number);
                g.a((Object) textView3, IDToken.PHONE_NUMBER);
                textView3.setText(string);
            }
            TextView textView4 = (TextView) a(R$id.app_version);
            g.a((Object) textView4, "app_version");
            textView4.setText("v1.0.2");
            ((Button) a(R$id.delete_data_button)).setOnClickListener(new a(0, this));
            ((Button) a(R$id.logout_button)).setOnClickListener(new a(1, this));
            this.F = 0;
            ((TextView) a(R$id.account)).setOnClickListener(new a(2, this));
            b();
            return;
        }
        g.a("view");
        throw null;
    }

    public static final /* synthetic */ void e(SettingsFragment settingsFragment) {
        if (settingsFragment.getContext() != null) {
            CoronaDialog a2 = CoronaDialog.a(R$string.sign_out, R$string.are_sure_signout);
            a2.K = new j.b.a.e0.b.e(settingsFragment);
            a2.a(settingsFragment.getChildFragmentManager(), "dialog_signout");
        }
    }

    public static final /* synthetic */ void d(SettingsFragment settingsFragment) {
        if (settingsFragment != null) {
            settingsFragment.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), settingsFragment.C);
            return;
        }
        throw null;
    }

    public void b() {
        c activity = getActivity();
        if (activity == null || !activity.isFinishing()) {
            ((Switch) a(R$id.bluetoothSwith)).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) null);
            ((Switch) a(R$id.gpsSwitch)).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) null);
            Switch switchR = (Switch) a(R$id.bluetoothSwith);
            g.a((Object) switchR, "bluetoothSwith");
            switchR.setChecked(this.A);
            Switch switchR2 = (Switch) a(R$id.gpsSwitch);
            g.a((Object) switchR2, "gpsSwitch");
            switchR2.setChecked(this.B);
            ((Switch) a(R$id.bluetoothSwith)).setOnCheckedChangeListener(this);
            ((Switch) a(R$id.gpsSwitch)).setOnCheckedChangeListener(this);
        }
    }

    public static final /* synthetic */ void a(SettingsFragment settingsFragment) {
        if (settingsFragment != null) {
            Analytics.trackEvent("Start Delete Everything");
            Button button = (Button) settingsFragment.a(R$id.delete_data_button);
            g.a((Object) button, "delete_data_button");
            button.setText(settingsFragment.getString(R$string.deleting));
            settingsFragment.startActivityForResult(new Intent(settingsFragment.getActivity(), PhoneVerificationActivity.class), settingsFragment.D);
            return;
        }
        throw null;
    }

    public static final /* synthetic */ void a(SettingsFragment settingsFragment, JSONObject jSONObject) {
        if (settingsFragment == null) {
            throw null;
        } else if (!jSONObject.has(ServiceStatsHandler.STATUS_NAME) || !g.a((Object) jSONObject.getString(ServiceStatsHandler.STATUS_NAME), (Object) "Success")) {
            l.a.a.f2455d.b(jSONObject.toString(), new Object[0]);
            Toast.makeText(settingsFragment.getContext(), R$string.delete_request_failed, 1).show();
            Button button = (Button) settingsFragment.a(R$id.delete_data_button);
            g.a((Object) button, "delete_data_button");
            button.setText(settingsFragment.getString(R$string.settings_delete_data));
        } else if (settingsFragment.getContext() != null) {
            b bVar = settingsFragment.x;
            if (bVar != null) {
                bVar.b(false);
            }
            b bVar2 = settingsFragment.x;
            if (bVar2 != null) {
                bVar2.a(false);
            }
            MeasurementDatabase.a aVar = MeasurementDatabase.f2458k;
            Context context = settingsFragment.getContext();
            if (context != null) {
                g.a((Object) context, "context!!");
                MeasurementDatabase a2 = aVar.a(context);
                ((t) a2.i()).a();
                ((j.b.a.c) a2.h()).a();
                Context context2 = settingsFragment.getContext();
                if (context2 != null) {
                    g.a((Object) context2, "context!!");
                    a0.b(context2);
                    settingsFragment.d();
                    return;
                }
                g.a();
                throw null;
            }
            g.a();
            throw null;
        }
    }

    public final void c() {
        boolean z = this.y;
        if (z) {
            b bVar = this.x;
            if (bVar != null) {
                bVar.a(!this.A);
            }
        } else if (!z && !this.A) {
            Switch switchR = (Switch) a(R$id.bluetoothSwith);
            g.a((Object) switchR, "bluetoothSwith");
            switchR.setChecked(false);
            CoronaDialog a2 = CoronaDialog.a(R$string.app_name, R$string.ask_turn_on_bluetooth);
            a2.K = new j.b.a.e0.b.c(this);
            a2.a(getChildFragmentManager(), "dialog_bt_on");
        }
    }
}
