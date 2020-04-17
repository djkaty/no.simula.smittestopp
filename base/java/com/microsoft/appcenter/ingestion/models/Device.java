package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class Device extends WrapperSdk {
    public static final String APP_BUILD = "appBuild";
    public static final String APP_NAMESPACE = "appNamespace";
    public static final String APP_VERSION = "appVersion";
    public static final String CARRIER_COUNTRY = "carrierCountry";
    public static final String CARRIER_NAME = "carrierName";
    public static final String LOCALE = "locale";
    public static final String MODEL = "model";
    public static final String OEM_NAME = "oemName";
    public static final String OS_API_LEVEL = "osApiLevel";
    public static final String OS_BUILD = "osBuild";
    public static final String OS_NAME = "osName";
    public static final String OS_VERSION = "osVersion";
    public static final String SCREEN_SIZE = "screenSize";
    public static final String SDK_NAME = "sdkName";
    public static final String SDK_VERSION = "sdkVersion";
    public static final String TIME_ZONE_OFFSET = "timeZoneOffset";
    public String appBuild;
    public String appNamespace;
    public String appVersion;
    public String carrierCountry;
    public String carrierName;
    public String locale;
    public String model;
    public String oemName;
    public Integer osApiLevel;
    public String osBuild;
    public String osName;
    public String osVersion;
    public String screenSize;
    public String sdkName;
    public String sdkVersion;
    public Integer timeZoneOffset;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Device.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Device device = (Device) obj;
        String str = this.sdkName;
        if (str == null ? device.sdkName != null : !str.equals(device.sdkName)) {
            return false;
        }
        String str2 = this.sdkVersion;
        if (str2 == null ? device.sdkVersion != null : !str2.equals(device.sdkVersion)) {
            return false;
        }
        String str3 = this.model;
        if (str3 == null ? device.model != null : !str3.equals(device.model)) {
            return false;
        }
        String str4 = this.oemName;
        if (str4 == null ? device.oemName != null : !str4.equals(device.oemName)) {
            return false;
        }
        String str5 = this.osName;
        if (str5 == null ? device.osName != null : !str5.equals(device.osName)) {
            return false;
        }
        String str6 = this.osVersion;
        if (str6 == null ? device.osVersion != null : !str6.equals(device.osVersion)) {
            return false;
        }
        String str7 = this.osBuild;
        if (str7 == null ? device.osBuild != null : !str7.equals(device.osBuild)) {
            return false;
        }
        Integer num = this.osApiLevel;
        if (num == null ? device.osApiLevel != null : !num.equals(device.osApiLevel)) {
            return false;
        }
        String str8 = this.locale;
        if (str8 == null ? device.locale != null : !str8.equals(device.locale)) {
            return false;
        }
        Integer num2 = this.timeZoneOffset;
        if (num2 == null ? device.timeZoneOffset != null : !num2.equals(device.timeZoneOffset)) {
            return false;
        }
        String str9 = this.screenSize;
        if (str9 == null ? device.screenSize != null : !str9.equals(device.screenSize)) {
            return false;
        }
        String str10 = this.appVersion;
        if (str10 == null ? device.appVersion != null : !str10.equals(device.appVersion)) {
            return false;
        }
        String str11 = this.carrierName;
        if (str11 == null ? device.carrierName != null : !str11.equals(device.carrierName)) {
            return false;
        }
        String str12 = this.carrierCountry;
        if (str12 == null ? device.carrierCountry != null : !str12.equals(device.carrierCountry)) {
            return false;
        }
        String str13 = this.appBuild;
        if (str13 == null ? device.appBuild != null : !str13.equals(device.appBuild)) {
            return false;
        }
        String str14 = this.appNamespace;
        String str15 = device.appNamespace;
        if (str14 != null) {
            return str14.equals(str15);
        }
        if (str15 == null) {
            return true;
        }
        return false;
    }

    public String getAppBuild() {
        return this.appBuild;
    }

    public String getAppNamespace() {
        return this.appNamespace;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public String getCarrierCountry() {
        return this.carrierCountry;
    }

    public String getCarrierName() {
        return this.carrierName;
    }

    public String getLocale() {
        return this.locale;
    }

    public String getModel() {
        return this.model;
    }

    public String getOemName() {
        return this.oemName;
    }

    public Integer getOsApiLevel() {
        return this.osApiLevel;
    }

    public String getOsBuild() {
        return this.osBuild;
    }

    public String getOsName() {
        return this.osName;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getScreenSize() {
        return this.screenSize;
    }

    public String getSdkName() {
        return this.sdkName;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public Integer getTimeZoneOffset() {
        return this.timeZoneOffset;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.sdkName;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.sdkVersion;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.model;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.oemName;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.osName;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.osVersion;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.osBuild;
        int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Integer num = this.osApiLevel;
        int hashCode9 = (hashCode8 + (num != null ? num.hashCode() : 0)) * 31;
        String str8 = this.locale;
        int hashCode10 = (hashCode9 + (str8 != null ? str8.hashCode() : 0)) * 31;
        Integer num2 = this.timeZoneOffset;
        int hashCode11 = (hashCode10 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str9 = this.screenSize;
        int hashCode12 = (hashCode11 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.appVersion;
        int hashCode13 = (hashCode12 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.carrierName;
        int hashCode14 = (hashCode13 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.carrierCountry;
        int hashCode15 = (hashCode14 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.appBuild;
        int hashCode16 = (hashCode15 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.appNamespace;
        if (str14 != null) {
            i2 = str14.hashCode();
        }
        return hashCode16 + i2;
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setSdkName(jSONObject.getString(SDK_NAME));
        setSdkVersion(jSONObject.getString(SDK_VERSION));
        setModel(jSONObject.getString(MODEL));
        setOemName(jSONObject.getString(OEM_NAME));
        setOsName(jSONObject.getString(OS_NAME));
        setOsVersion(jSONObject.getString(OS_VERSION));
        setOsBuild(jSONObject.optString(OS_BUILD, (String) null));
        setOsApiLevel(JSONUtils.readInteger(jSONObject, OS_API_LEVEL));
        setLocale(jSONObject.getString("locale"));
        setTimeZoneOffset(Integer.valueOf(jSONObject.getInt(TIME_ZONE_OFFSET)));
        setScreenSize(jSONObject.getString(SCREEN_SIZE));
        setAppVersion(jSONObject.getString(APP_VERSION));
        setCarrierName(jSONObject.optString(CARRIER_NAME, (String) null));
        setCarrierCountry(jSONObject.optString(CARRIER_COUNTRY, (String) null));
        setAppBuild(jSONObject.getString(APP_BUILD));
        setAppNamespace(jSONObject.optString(APP_NAMESPACE, (String) null));
    }

    public void setAppBuild(String str) {
        this.appBuild = str;
    }

    public void setAppNamespace(String str) {
        this.appNamespace = str;
    }

    public void setAppVersion(String str) {
        this.appVersion = str;
    }

    public void setCarrierCountry(String str) {
        this.carrierCountry = str;
    }

    public void setCarrierName(String str) {
        this.carrierName = str;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setOemName(String str) {
        this.oemName = str;
    }

    public void setOsApiLevel(Integer num) {
        this.osApiLevel = num;
    }

    public void setOsBuild(String str) {
        this.osBuild = str;
    }

    public void setOsName(String str) {
        this.osName = str;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public void setScreenSize(String str) {
        this.screenSize = str;
    }

    public void setSdkName(String str) {
        this.sdkName = str;
    }

    public void setSdkVersion(String str) {
        this.sdkVersion = str;
    }

    public void setTimeZoneOffset(Integer num) {
        this.timeZoneOffset = num;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key(SDK_NAME).value(getSdkName());
        jSONStringer.key(SDK_VERSION).value(getSdkVersion());
        jSONStringer.key(MODEL).value(getModel());
        jSONStringer.key(OEM_NAME).value(getOemName());
        jSONStringer.key(OS_NAME).value(getOsName());
        jSONStringer.key(OS_VERSION).value(getOsVersion());
        JSONUtils.write(jSONStringer, OS_BUILD, getOsBuild());
        JSONUtils.write(jSONStringer, OS_API_LEVEL, getOsApiLevel());
        jSONStringer.key("locale").value(getLocale());
        jSONStringer.key(TIME_ZONE_OFFSET).value(getTimeZoneOffset());
        jSONStringer.key(SCREEN_SIZE).value(getScreenSize());
        jSONStringer.key(APP_VERSION).value(getAppVersion());
        JSONUtils.write(jSONStringer, CARRIER_NAME, getCarrierName());
        JSONUtils.write(jSONStringer, CARRIER_COUNTRY, getCarrierCountry());
        jSONStringer.key(APP_BUILD).value(getAppBuild());
        JSONUtils.write(jSONStringer, APP_NAMESPACE, getAppNamespace());
    }
}
