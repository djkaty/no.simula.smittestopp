package com.microsoft.identity.client.internal.controllers;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import com.microsoft.identity.client.PublicClientApplicationConfiguration;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.authorities.AnyPersonalAccount;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.List;

public class MSALControllerFactory {
    public static final String TAG = "com.microsoft.identity.client.internal.controllers.MSALControllerFactory";

    public static boolean brokerEligible(Context context, Authority authority, PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        if (!publicClientApplicationConfiguration.getUseBroker().booleanValue() || !(authority instanceof AzureActiveDirectoryAuthority)) {
            Logger.verbose(TAG + ":brokerEligible", "Eligible to call broker? [false]");
            a.b(new StringBuilder(), TAG, ":brokerEligible", "App does not ask for Broker or the authority is not AAD authority.");
            return false;
        } else if (((AzureActiveDirectoryAuthority) authority).getAudience() instanceof AnyPersonalAccount) {
            Logger.verbose(TAG + ":brokerEligible", "Eligible to call broker? [false]");
            a.b(new StringBuilder(), TAG, ":brokerEligible", "The audience is MSA only.");
            return false;
        } else if (!brokerInstalled(context)) {
            Logger.verbose(TAG + ":brokerEligible", "Eligible to call broker? [false]");
            a.b(new StringBuilder(), TAG, ":brokerEligible", "Broker application is not installed.");
            return false;
        } else if (BrokerMsalController.isMicrosoftAuthServiceSupported(context) || BrokerMsalController.isAccountManagerPermissionsGranted(context)) {
            a.b(new StringBuilder(), TAG, ":brokerEligible", "Eligible to call broker? [true]");
            return true;
        } else if (BrokerMsalController.isMicrosoftAuthServiceSupported(context) || !powerOptimizationEnabled(context)) {
            Logger.verbose(TAG + ":brokerEligible", "Eligible to call broker? [false]");
            Logger.warn(TAG + ":brokerEligible", "Is bound service supported? [false]");
            Logger.warn(TAG + ":brokerEligible", "Is the power optimization enabled? [false]");
            Logger.warn(TAG + ":brokerEligible", "Is AccountManager permission missing? [true]");
            throw new MsalClientException("Failed to bind the service in broker app", "Unable to connect to the broker.");
        } else {
            Logger.verbose(TAG + ":brokerEligible", "Eligible to call broker? [false]");
            Logger.warn(TAG + ":brokerEligible", "Is bound service supported? [false]");
            Logger.warn(TAG + ":brokerEligible", "Is the power optimization enabled? [true]");
            throw new MsalClientException("Failed to bind the service in broker app", "Unable to connect to the broker.");
        }
    }

    public static boolean brokerInstalled(Context context) {
        BrokerValidator brokerValidator = new BrokerValidator(context);
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(context).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equals(AuthenticationConstants.Broker.BROKER_ACCOUNT_TYPE) && brokerValidator.verifySignature(authenticatorDescription.packageName)) {
                return true;
            }
        }
        return false;
    }

    public static List<BaseController> getAllControllers(Context context, Authority authority, PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new LocalMSALController());
        if (brokerEligible(context, authority, publicClientApplicationConfiguration)) {
            arrayList.add(new BrokerMsalController());
        }
        return arrayList;
    }

    public static BaseController getDefaultController(Context context, Authority authority, PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        if (brokerEligible(context, authority, publicClientApplicationConfiguration)) {
            return new BrokerMsalController();
        }
        return new LocalMSALController();
    }

    @TargetApi(23)
    public static boolean powerOptimizationEnabled(Context context) {
        String packageName = context.getPackageName();
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (Build.VERSION.SDK_INT < 23 || powerManager == null) {
            a.b(new StringBuilder(), TAG, ":powerOptimizationEnabled", "Is power optimization on? [false]");
            return false;
        }
        boolean z = !powerManager.isIgnoringBatteryOptimizations(packageName);
        Logger.verbose(a.a(new StringBuilder(), TAG, ":powerOptimizationEnabled"), "Is power optimization on? [" + z + "]");
        return z;
    }
}
