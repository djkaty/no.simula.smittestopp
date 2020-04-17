package j.b.a;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RequestQueue;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonRequest;
import com.android.volley.toolbox.Volley;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.azure.sdk.iot.device.DeviceClient;
import com.microsoft.azure.sdk.iot.device.InternalClient;
import com.microsoft.azure.sdk.iot.device.IotHubClientProtocol;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageCallback;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import h.o.g;
import java.util.LinkedHashMap;
import org.json.JSONObject;

public final class h {
    public final RequestQueue a;
    public DeviceClient b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1509c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1510d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1511e;

    /* renamed from: f  reason: collision with root package name */
    public String f1512f;

    /* renamed from: g  reason: collision with root package name */
    public final String f1513g;

    /* renamed from: h  reason: collision with root package name */
    public final String f1514h;

    /* renamed from: i  reason: collision with root package name */
    public final Application f1515i;

    public final class a implements MessageCallback {
        public a() {
        }

        public IotHubMessageResult execute(Message message, Object obj) {
            String property = message != null ? message.getProperty("versionAndroid") : null;
            if (property == null) {
                return IotHubMessageResult.ABANDON;
            }
            if (g.a(property, new String[]{CryptoConstants.ALIAS_SEPARATOR}, false, 0, 6).size() != 3) {
                return IotHubMessageResult.ABANDON;
            }
            h.this.f1512f = property;
            return IotHubMessageResult.COMPLETE;
        }
    }

    public interface b {
        void a(VolleyError volleyError);

        void a(JSONObject jSONObject, boolean z);
    }

    public h(Application application) {
        if (application != null) {
            this.f1515i = application;
            this.a = Volley.newRequestQueue(application);
            this.f1512f = "1.0.2";
            this.f1513g = JsonRequest.PROTOCOL_CHARSET;
            this.f1514h = "application/json";
            return;
        }
        h.k.b.g.a("appContext");
        throw null;
    }

    public final void a() {
        if (!this.f1509c && !this.f1511e) {
            String a2 = a0.a((Context) this.f1515i);
            if (a2.length() == 0) {
                l.a.a.f2455d.b("Error: device is not provision", new Object[0]);
                return;
            }
            l.a.a.f2455d.c("Trying to connect device", new Object[0]);
            this.f1511e = true;
            try {
                DeviceClient deviceClient = new DeviceClient(a2, IotHubClientProtocol.HTTPS);
                deviceClient.setRetryPolicy(j.a);
                deviceClient.registerConnectionStatusChangeCallback(new i(this), (Object) null);
                deviceClient.setOperationTimeout(1000);
                deviceClient.setOption(InternalClient.SET_MINIMUM_POLLING_INTERVAL, 1800000L);
                deviceClient.open();
                deviceClient.setMessageCallback(new a(), (Object) null);
                this.b = deviceClient;
            } catch (Exception e2) {
                this.f1511e = false;
                this.b = null;
                l.a.a.f2455d.a(e2);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("where", "IoTHubDevice::connect");
                Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
            }
        }
    }

    public static final class c implements b {
        public final /* synthetic */ h a;
        public final /* synthetic */ b b;

        public c(h hVar, b bVar) {
            this.a = hVar;
            this.b = bVar;
        }

        public void a(JSONObject jSONObject, boolean z) {
            b bVar = this.b;
            Application application = this.a.f1515i;
            if (jSONObject == null) {
                h.k.b.g.a();
                throw null;
            } else if (application != null) {
                boolean z2 = true;
                if (((!jSONObject.has("DeviceId")) | (!jSONObject.has("HostName")) | (!jSONObject.has("SharedAccessKey"))) || (!jSONObject.has("ConnectionString"))) {
                    Analytics.trackEvent("Invalid provision response");
                    z2 = false;
                } else {
                    SharedPreferences.Editor edit = application.getSharedPreferences("settings", 0).edit();
                    edit.putString("device-id-string", jSONObject.getString("DeviceId"));
                    edit.putString("host-name", jSONObject.getString("HostName"));
                    edit.putString("access-key", jSONObject.getString("SharedAccessKey"));
                    edit.putString("connection-data", jSONObject.getString("ConnectionString"));
                    edit.apply();
                }
                bVar.a(jSONObject, z2);
            } else {
                h.k.b.g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
                throw null;
            }
        }

        public void a(VolleyError volleyError) {
            if (volleyError != null) {
                this.b.a(volleyError);
            } else {
                h.k.b.g.a("error");
                throw null;
            }
        }
    }

    public final void a(String str, b bVar) {
        if (str == null) {
            h.k.b.g.a(ResponseType.TOKEN);
            throw null;
        } else if (bVar != null) {
            Application application = this.f1515i;
            if (application != null) {
                if (!(a0.a((Context) application).length() == 0)) {
                    bVar.a((JSONObject) null, true);
                }
                c cVar = new c(this, bVar);
                if (this.f1510d) {
                    cVar.a(new VolleyError("Provisioning already started"));
                }
                l.a.a.f2455d.c("Starting device provisioning", new Object[0]);
                this.f1510d = true;
                k kVar = new k(str, cVar, 1, "https://api-smittestopp-prod.azure-api.net/onboarding/register-device", (JSONObject) null, new l(cVar), new m(cVar));
                kVar.setRetryPolicy(new DefaultRetryPolicy(10000, 0, 0.0f));
                this.a.add(kVar);
                return;
            }
            h.k.b.g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else {
            h.k.b.g.a(PublicClientApplication.NONNULL_CONSTANTS.LISTENER);
            throw null;
        }
    }
}
