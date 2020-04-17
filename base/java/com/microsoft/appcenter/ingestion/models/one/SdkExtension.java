package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.UUID;
import org.json.JSONObject;
import org.json.JSONStringer;

public class SdkExtension implements Model {
    public static final String EPOCH = "epoch";
    public static final String INSTALL_ID = "installId";
    public static final String LIB_VER = "libVer";
    public static final String SEQ = "seq";
    public String epoch;
    public UUID installId;
    public String libVer;
    public Long seq;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SdkExtension.class != obj.getClass()) {
            return false;
        }
        SdkExtension sdkExtension = (SdkExtension) obj;
        String str = this.libVer;
        if (str == null ? sdkExtension.libVer != null : !str.equals(sdkExtension.libVer)) {
            return false;
        }
        String str2 = this.epoch;
        if (str2 == null ? sdkExtension.epoch != null : !str2.equals(sdkExtension.epoch)) {
            return false;
        }
        Long l2 = this.seq;
        if (l2 == null ? sdkExtension.seq != null : !l2.equals(sdkExtension.seq)) {
            return false;
        }
        UUID uuid = this.installId;
        UUID uuid2 = sdkExtension.installId;
        if (uuid != null) {
            return uuid.equals(uuid2);
        }
        if (uuid2 == null) {
            return true;
        }
        return false;
    }

    public String getEpoch() {
        return this.epoch;
    }

    public UUID getInstallId() {
        return this.installId;
    }

    public String getLibVer() {
        return this.libVer;
    }

    public Long getSeq() {
        return this.seq;
    }

    public int hashCode() {
        String str = this.libVer;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.epoch;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Long l2 = this.seq;
        int hashCode3 = (hashCode2 + (l2 != null ? l2.hashCode() : 0)) * 31;
        UUID uuid = this.installId;
        if (uuid != null) {
            i2 = uuid.hashCode();
        }
        return hashCode3 + i2;
    }

    public void read(JSONObject jSONObject) {
        setLibVer(jSONObject.optString(LIB_VER, (String) null));
        setEpoch(jSONObject.optString(EPOCH, (String) null));
        setSeq(JSONUtils.readLong(jSONObject, SEQ));
        if (jSONObject.has("installId")) {
            setInstallId(UUID.fromString(jSONObject.getString("installId")));
        }
    }

    public void setEpoch(String str) {
        this.epoch = str;
    }

    public void setInstallId(UUID uuid) {
        this.installId = uuid;
    }

    public void setLibVer(String str) {
        this.libVer = str;
    }

    public void setSeq(Long l2) {
        this.seq = l2;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, LIB_VER, getLibVer());
        JSONUtils.write(jSONStringer, EPOCH, getEpoch());
        JSONUtils.write(jSONStringer, SEQ, getSeq());
        JSONUtils.write(jSONStringer, "installId", getInstallId());
    }
}
