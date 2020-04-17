package no.simula.corona.ui.register;

import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Base64;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.client.AuthenticationCallback;
import com.microsoft.identity.client.IAuthenticationResult;
import com.microsoft.identity.client.IPublicClientApplication;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import d.b.a.h;
import h.k.b.g;
import h.k.b.k;
import java.util.LinkedHashMap;
import java.util.List;
import no.simula.corona.R$layout;
import org.json.JSONObject;

public final class PhoneVerificationActivity extends h implements IPublicClientApplication.ApplicationCreatedListener {

    public static final class a implements AuthenticationCallback {
        public final /* synthetic */ PhoneVerificationActivity a;
        public final /* synthetic */ k b;

        public a(PhoneVerificationActivity phoneVerificationActivity, k kVar) {
            this.a = phoneVerificationActivity;
            this.b = kVar;
        }

        public void onCancel() {
            Analytics.trackEvent("Acquire Token Cancelled");
            this.a.setResult(0);
            this.a.finish();
            this.a.overridePendingTransition(0, 0);
        }

        public void onError(MsalException msalException) {
            l.a.a.f2455d.a(String.valueOf(msalException), new Object[0]);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("where", "PhoneVerAcquireToken");
            Crashes.trackError(msalException, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
            this.a.finish();
            this.a.overridePendingTransition(0, 0);
        }

        public void onSuccess(IAuthenticationResult iAuthenticationResult) {
            Analytics.trackEvent("Acquired token");
            if (iAuthenticationResult != null) {
                Application application = (Application) this.b.x;
                g.a((Object) application, "longLivingApp");
                String accessToken = iAuthenticationResult.getAccessToken();
                g.a((Object) accessToken, "result.accessToken");
                List a2 = h.o.g.a(accessToken, new String[]{CryptoConstants.ALIAS_SEPARATOR}, false, 0, 6);
                if (a2.size() == 3) {
                    try {
                        byte[] decode = Base64.decode((String) a2.get(1), 2);
                        g.a((Object) decode, "Base64.decode(parts[1], Base64.NO_WRAP)");
                        JSONObject jSONObject = new JSONObject(new String(decode, h.o.a.a));
                        if (jSONObject.has("signInNames.phoneNumber")) {
                            String string = jSONObject.getString("signInNames.phoneNumber");
                            g.a((Object) string, "phone.getString(\"signInNames.phoneNumber\")");
                            SharedPreferences.Editor edit = application.getSharedPreferences("settings", 0).edit();
                            edit.putString("phone-number", string);
                            edit.apply();
                        }
                    } catch (Exception e2) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        linkedHashMap.put("where", "storePhoneNumber");
                        Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                    }
                }
                Intent intent = new Intent();
                intent.putExtra(ResponseType.TOKEN, iAuthenticationResult.getAccessToken());
                Application application2 = (Application) this.b.x;
                g.a((Object) application2, "longLivingApp");
                String accessToken2 = iAuthenticationResult.getAccessToken();
                g.a((Object) accessToken2, "result.accessToken");
                SharedPreferences.Editor edit2 = application2.getSharedPreferences("settings", 0).edit();
                edit2.putString(ResponseType.TOKEN, accessToken2);
                edit2.putLong(AbstractLog.TIMESTAMP, System.currentTimeMillis());
                edit2.apply();
                this.a.setResult(-1, intent);
            }
            this.a.finish();
            this.a.overridePendingTransition(0, 0);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R$layout.activity_phone_verification);
        Analytics.trackEvent("Verify Phone Number");
        setResult(0);
        PublicClientApplication.create(getApplicationContext(), "f427f831-60ae-4ea3-9de6-11977b46cf01", "https://smittestopp.b2clogin.com/tfp/smittestopp.onmicrosoft.com/B2C_1A_phone_SUSI", "msauthsimulasmittestopp://something/somethingelse", (IPublicClientApplication.ApplicationCreatedListener) this);
    }

    public void onCreated(IPublicClientApplication iPublicClientApplication) {
        String[] strArr = {"https://smittestopp.onmicrosoft.com/backend/Device.Write"};
        Analytics.trackEvent("Start Acquire Token");
        k kVar = new k();
        kVar.x = getApplication();
        if (iPublicClientApplication != null) {
            iPublicClientApplication.acquireToken(this, strArr, new a(this, kVar));
        }
    }

    public void onError(MsalException msalException) {
        l.a.a.f2455d.a(String.valueOf(msalException), new Object[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("where", "createMsAuthAppError");
        Crashes.trackError(msalException, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
        finish();
        overridePendingTransition(0, 0);
    }
}
