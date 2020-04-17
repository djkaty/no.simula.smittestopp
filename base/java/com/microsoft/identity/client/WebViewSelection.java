package com.microsoft.identity.client;

public enum WebViewSelection {
    EMBEDDED_WEBVIEW(1),
    SYSTEM_BROWSER(2);
    
    public int mId;

    /* access modifiers changed from: public */
    WebViewSelection(int i2) {
        this.mId = i2;
    }

    public int getId() {
        return this.mId;
    }
}
