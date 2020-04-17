package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import java.util.Map;
import k.a.b.a.b.k.d;
import k.a.b.a.b.k.e;
import k.a.b.a.f.d.a;

public class AmqpMessage {
    public a messageImpl;

    public AmqpMessage() {
        this.messageImpl = new a();
    }

    public void decode(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            this.messageImpl.decode(bArr, i2, i3);
            return;
        }
        throw new IllegalArgumentException("The data cannot be null.");
    }

    public int encode(byte[] bArr, int i2) {
        if (bArr != null) {
            return this.messageImpl.encode(bArr, i2, bArr.length);
        }
        throw new IllegalArgumentException("The data cannot be null.");
    }

    public byte[] getAmqpBody() {
        k.a.b.a.b.a aVar = ((e) this.messageImpl.getBody()).a;
        byte[] bArr = new byte[aVar.f1569c];
        aVar.a().get(bArr);
        return bArr;
    }

    public Map<String, Object> getApplicationProperty() {
        d applicationProperties = this.messageImpl.getApplicationProperties();
        if (applicationProperties == null) {
            return null;
        }
        return applicationProperties.a;
    }

    public void setApplicationProperty(Map<String, Object> map) {
        this.messageImpl.setApplicationProperties(new d(map));
    }

    public void setBody(e eVar) {
        this.messageImpl.setBody(eVar);
    }

    public void setBody(byte[] bArr) {
        this.messageImpl.setBody(new e(new k.a.b.a.b.a(bArr)));
    }

    public AmqpMessage(a aVar) {
        this.messageImpl = aVar;
    }
}
