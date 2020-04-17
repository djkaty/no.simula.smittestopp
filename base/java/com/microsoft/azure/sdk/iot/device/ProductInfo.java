package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.transport.TransportUtils;

public class ProductInfo {
    public String extra = "";

    public String getUserAgentString() {
        String str = this.extra;
        if (str == null || str.equals("")) {
            return TransportUtils.USER_AGENT_STRING;
        }
        return TransportUtils.USER_AGENT_STRING + " " + this.extra;
    }

    public void setExtra(String str) {
        this.extra = str;
    }
}
