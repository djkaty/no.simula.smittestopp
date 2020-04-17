package com.microsoft.identity.common.adal.internal.net;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.microsoft.identity.common.adal.internal.PowerManagerWrapper;
import com.microsoft.identity.common.adal.internal.UsageStatsManagerWrapper;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.telemetry.events.BaseEvent;

public class DefaultConnectionService implements IConnectionService {
    public final Context mConnectionContext;

    public DefaultConnectionService(Context context) {
        this.mConnectionContext = context;
    }

    public boolean isConnectionAvailable() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mConnectionContext.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && !isNetworkDisabledFromOptimizations();
        Telemetry.emit((BaseEvent) new BaseEvent().put(TelemetryEventStrings.Key.NETWORK_CONNECTION, String.valueOf(z)));
        return z;
    }

    @TargetApi(23)
    public boolean isNetworkDisabledFromOptimizations() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (UsageStatsManagerWrapper.getInstance().isAppInactive(this.mConnectionContext)) {
                Telemetry.emit((BaseEvent) new BaseEvent().put(TelemetryEventStrings.Key.POWER_OPTIMIZATION, String.valueOf(true)));
                return true;
            }
            PowerManagerWrapper instance = PowerManagerWrapper.getInstance();
            if (instance.isDeviceIdleMode(this.mConnectionContext) && !instance.isIgnoringBatteryOptimizations(this.mConnectionContext)) {
                Telemetry.emit((BaseEvent) new BaseEvent().put(TelemetryEventStrings.Key.POWER_OPTIMIZATION, String.valueOf(true)));
                return true;
            }
        }
        Telemetry.emit((BaseEvent) new BaseEvent().put(TelemetryEventStrings.Key.POWER_OPTIMIZATION, String.valueOf(false)));
        return false;
    }
}
