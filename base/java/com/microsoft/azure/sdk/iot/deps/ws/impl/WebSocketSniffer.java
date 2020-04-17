package com.microsoft.azure.sdk.iot.deps.ws.impl;

import k.a.b.a.d.g0.l;
import k.a.b.a.d.g0.l0;

public class WebSocketSniffer extends l<l0, l0> {
    public WebSocketSniffer(l0 l0Var, l0 l0Var2) {
        super(l0Var, l0Var2);
    }

    public int bufferSize() {
        return 6;
    }

    public l0 getSelectedTransportWrapper() {
        return this._selectedTransportWrapper;
    }

    public void makeDetermination(byte[] bArr) {
        if (bArr.length < bufferSize()) {
            throw new IllegalArgumentException("insufficient bytes");
        } else if (bArr[0] != -126) {
            this._selectedTransportWrapper = this._wrapper2;
        } else {
            this._selectedTransportWrapper = this._wrapper1;
        }
    }
}
