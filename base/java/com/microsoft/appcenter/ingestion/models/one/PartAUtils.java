package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.AbstractAppCenterService;
import com.microsoft.appcenter.analytics.PropertyConfigurator;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import e.a.a.a.a;
import java.util.Locale;
import java.util.regex.Pattern;

public class PartAUtils {
    public static final Pattern NAME_REGEX = Pattern.compile("^[a-zA-Z0-9]((\\.(?!(\\.|$)))|[_a-zA-Z0-9]){3,99}$");

    public static void addPartAFromLog(Log log, CommonSchemaLog commonSchemaLog, String str) {
        Device device = log.getDevice();
        commonSchemaLog.setVer("3.0");
        commonSchemaLog.setTimestamp(log.getTimestamp());
        commonSchemaLog.setIKey("o:" + getTargetKey(str));
        commonSchemaLog.addTransmissionTarget(str);
        if (commonSchemaLog.getExt() == null) {
            commonSchemaLog.setExt(new Extensions());
        }
        commonSchemaLog.getExt().setProtocol(new ProtocolExtension());
        commonSchemaLog.getExt().getProtocol().setDevModel(device.getModel());
        commonSchemaLog.getExt().getProtocol().setDevMake(device.getOemName());
        commonSchemaLog.getExt().setUser(new UserExtension());
        commonSchemaLog.getExt().getUser().setLocalId(UserIdContext.getPrefixedUserId(log.getUserId()));
        UserExtension user = commonSchemaLog.getExt().getUser();
        String locale = device.getLocale();
        String str2 = CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR;
        user.setLocale(locale.replace(AbstractAppCenterService.PREFERENCE_KEY_SEPARATOR, str2));
        commonSchemaLog.getExt().setOs(new OsExtension());
        commonSchemaLog.getExt().getOs().setName(device.getOsName());
        OsExtension os = commonSchemaLog.getExt().getOs();
        os.setVer(device.getOsVersion() + str2 + device.getOsBuild() + str2 + device.getOsApiLevel());
        commonSchemaLog.getExt().setApp(new AppExtension());
        commonSchemaLog.getExt().getApp().setVer(device.getAppVersion());
        AppExtension app = commonSchemaLog.getExt().getApp();
        StringBuilder a = a.a(PropertyConfigurator.ANDROID_DEVICE_ID_PREFIX);
        a.append(device.getAppNamespace());
        app.setId(a.toString());
        commonSchemaLog.getExt().setNet(new NetExtension());
        commonSchemaLog.getExt().getNet().setProvider(device.getCarrierName());
        commonSchemaLog.getExt().setSdk(new SdkExtension());
        SdkExtension sdk = commonSchemaLog.getExt().getSdk();
        sdk.setLibVer(device.getSdkName() + str2 + device.getSdkVersion());
        commonSchemaLog.getExt().setLoc(new LocExtension());
        Locale locale2 = Locale.US;
        Object[] objArr = new Object[3];
        if (device.getTimeZoneOffset().intValue() >= 0) {
            str2 = "+";
        }
        objArr[0] = str2;
        objArr[1] = Integer.valueOf(Math.abs(device.getTimeZoneOffset().intValue() / 60));
        objArr[2] = Integer.valueOf(Math.abs(device.getTimeZoneOffset().intValue() % 60));
        commonSchemaLog.getExt().getLoc().setTz(String.format(locale2, "%s%02d:%02d", objArr));
        commonSchemaLog.getExt().setDevice(new DeviceExtension());
    }

    public static String getTargetKey(String str) {
        return str.split(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR)[0];
    }

    public static void setName(CommonSchemaLog commonSchemaLog, String str) {
        if (str == null) {
            throw new IllegalArgumentException("Name cannot be null.");
        } else if (NAME_REGEX.matcher(str).matches()) {
            commonSchemaLog.setName(str);
        } else {
            StringBuilder a = a.a("Name must match '");
            a.append(NAME_REGEX);
            a.append("' but was '");
            a.append(str);
            a.append("'.");
            throw new IllegalArgumentException(a.toString());
        }
    }
}
