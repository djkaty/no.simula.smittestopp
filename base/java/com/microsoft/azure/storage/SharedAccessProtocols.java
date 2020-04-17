package com.microsoft.azure.storage;

public enum SharedAccessProtocols {
    HTTPS_ONLY("https"),
    HTTPS_HTTP(Constants.HTTPS_HTTP);
    
    public final String protocols;

    /* access modifiers changed from: public */
    SharedAccessProtocols(String str) {
        this.protocols = str;
    }

    public String toString() {
        return this.protocols;
    }
}
