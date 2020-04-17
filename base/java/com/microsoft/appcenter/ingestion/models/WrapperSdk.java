package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class WrapperSdk implements Model {
    public static final String LIVE_UPDATE_DEPLOYMENT_KEY = "liveUpdateDeploymentKey";
    public static final String LIVE_UPDATE_PACKAGE_HASH = "liveUpdatePackageHash";
    public static final String LIVE_UPDATE_RELEASE_LABEL = "liveUpdateReleaseLabel";
    public static final String WRAPPER_RUNTIME_VERSION = "wrapperRuntimeVersion";
    public static final String WRAPPER_SDK_NAME = "wrapperSdkName";
    public static final String WRAPPER_SDK_VERSION = "wrapperSdkVersion";
    public String liveUpdateDeploymentKey;
    public String liveUpdatePackageHash;
    public String liveUpdateReleaseLabel;
    public String wrapperRuntimeVersion;
    public String wrapperSdkName;
    public String wrapperSdkVersion;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WrapperSdk wrapperSdk = (WrapperSdk) obj;
        String str = this.wrapperSdkVersion;
        if (str == null ? wrapperSdk.wrapperSdkVersion != null : !str.equals(wrapperSdk.wrapperSdkVersion)) {
            return false;
        }
        String str2 = this.wrapperSdkName;
        if (str2 == null ? wrapperSdk.wrapperSdkName != null : !str2.equals(wrapperSdk.wrapperSdkName)) {
            return false;
        }
        String str3 = this.wrapperRuntimeVersion;
        if (str3 == null ? wrapperSdk.wrapperRuntimeVersion != null : !str3.equals(wrapperSdk.wrapperRuntimeVersion)) {
            return false;
        }
        String str4 = this.liveUpdateReleaseLabel;
        if (str4 == null ? wrapperSdk.liveUpdateReleaseLabel != null : !str4.equals(wrapperSdk.liveUpdateReleaseLabel)) {
            return false;
        }
        String str5 = this.liveUpdateDeploymentKey;
        if (str5 == null ? wrapperSdk.liveUpdateDeploymentKey != null : !str5.equals(wrapperSdk.liveUpdateDeploymentKey)) {
            return false;
        }
        String str6 = this.liveUpdatePackageHash;
        String str7 = wrapperSdk.liveUpdatePackageHash;
        if (str6 != null) {
            return str6.equals(str7);
        }
        if (str7 == null) {
            return true;
        }
        return false;
    }

    public String getLiveUpdateDeploymentKey() {
        return this.liveUpdateDeploymentKey;
    }

    public String getLiveUpdatePackageHash() {
        return this.liveUpdatePackageHash;
    }

    public String getLiveUpdateReleaseLabel() {
        return this.liveUpdateReleaseLabel;
    }

    public String getWrapperRuntimeVersion() {
        return this.wrapperRuntimeVersion;
    }

    public String getWrapperSdkName() {
        return this.wrapperSdkName;
    }

    public String getWrapperSdkVersion() {
        return this.wrapperSdkVersion;
    }

    public int hashCode() {
        String str = this.wrapperSdkVersion;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.wrapperSdkName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.wrapperRuntimeVersion;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.liveUpdateReleaseLabel;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.liveUpdateDeploymentKey;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.liveUpdatePackageHash;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode5 + i2;
    }

    public void read(JSONObject jSONObject) {
        setWrapperSdkVersion(jSONObject.optString(WRAPPER_SDK_VERSION, (String) null));
        setWrapperSdkName(jSONObject.optString("wrapperSdkName", (String) null));
        setWrapperRuntimeVersion(jSONObject.optString(WRAPPER_RUNTIME_VERSION, (String) null));
        setLiveUpdateReleaseLabel(jSONObject.optString(LIVE_UPDATE_RELEASE_LABEL, (String) null));
        setLiveUpdateDeploymentKey(jSONObject.optString(LIVE_UPDATE_DEPLOYMENT_KEY, (String) null));
        setLiveUpdatePackageHash(jSONObject.optString(LIVE_UPDATE_PACKAGE_HASH, (String) null));
    }

    public void setLiveUpdateDeploymentKey(String str) {
        this.liveUpdateDeploymentKey = str;
    }

    public void setLiveUpdatePackageHash(String str) {
        this.liveUpdatePackageHash = str;
    }

    public void setLiveUpdateReleaseLabel(String str) {
        this.liveUpdateReleaseLabel = str;
    }

    public void setWrapperRuntimeVersion(String str) {
        this.wrapperRuntimeVersion = str;
    }

    public void setWrapperSdkName(String str) {
        this.wrapperSdkName = str;
    }

    public void setWrapperSdkVersion(String str) {
        this.wrapperSdkVersion = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, WRAPPER_SDK_VERSION, getWrapperSdkVersion());
        JSONUtils.write(jSONStringer, "wrapperSdkName", getWrapperSdkName());
        JSONUtils.write(jSONStringer, WRAPPER_RUNTIME_VERSION, getWrapperRuntimeVersion());
        JSONUtils.write(jSONStringer, LIVE_UPDATE_RELEASE_LABEL, getLiveUpdateReleaseLabel());
        JSONUtils.write(jSONStringer, LIVE_UPDATE_DEPLOYMENT_KEY, getLiveUpdateDeploymentKey());
        JSONUtils.write(jSONStringer, LIVE_UPDATE_PACKAGE_HASH, getLiveUpdatePackageHash());
    }
}
