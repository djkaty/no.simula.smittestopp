package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONObject;
import org.json.JSONStringer;

public class ProtocolExtension implements Model {
    public static final String DEV_MAKE = "devMake";
    public static final String DEV_MODEL = "devModel";
    public static final String TICKET_KEYS = "ticketKeys";
    public String devMake;
    public String devModel;
    public List<String> ticketKeys;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ProtocolExtension.class != obj.getClass()) {
            return false;
        }
        ProtocolExtension protocolExtension = (ProtocolExtension) obj;
        List<String> list = this.ticketKeys;
        if (list == null ? protocolExtension.ticketKeys != null : !list.equals(protocolExtension.ticketKeys)) {
            return false;
        }
        String str = this.devMake;
        if (str == null ? protocolExtension.devMake != null : !str.equals(protocolExtension.devMake)) {
            return false;
        }
        String str2 = this.devModel;
        String str3 = protocolExtension.devModel;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getDevMake() {
        return this.devMake;
    }

    public String getDevModel() {
        return this.devModel;
    }

    public List<String> getTicketKeys() {
        return this.ticketKeys;
    }

    public int hashCode() {
        List<String> list = this.ticketKeys;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.devMake;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.devModel;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public void read(JSONObject jSONObject) {
        setTicketKeys(JSONUtils.readStringArray(jSONObject, TICKET_KEYS));
        setDevMake(jSONObject.optString(DEV_MAKE, (String) null));
        setDevModel(jSONObject.optString(DEV_MODEL, (String) null));
    }

    public void setDevMake(String str) {
        this.devMake = str;
    }

    public void setDevModel(String str) {
        this.devModel = str;
    }

    public void setTicketKeys(List<String> list) {
        this.ticketKeys = list;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.writeStringArray(jSONStringer, TICKET_KEYS, getTicketKeys());
        JSONUtils.write(jSONStringer, DEV_MAKE, getDevMake());
        JSONUtils.write(jSONStringer, DEV_MODEL, getDevModel());
    }
}
