package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.k.u;
import k.a.b.a.b.k.v;
import k.a.b.a.b.n.p;
import k.a.b.a.b.n.q;
import k.a.b.a.b.n.r;
import k.a.b.a.d.e;
import k.a.b.a.d.n;
import k.a.b.a.d.t;
import k.a.b.a.d.x;
import k.a.b.a.d.y;

public class AmqpDeviceOperations {
    public String amqpLinkAddress;
    public Map<f, Object> amqpProperties = new HashMap();
    public t receiverLink = null;
    public String receiverLinkTag = "provision_receiver_link";
    public x senderLink = null;
    public String senderLinkTag = "provision_sender_link";

    public void addAmqpLinkProperty(String str, String str2) {
        this.amqpProperties.put(f.a(str), str2);
    }

    public void clearAmqpLinkProperty() {
        this.amqpProperties.clear();
    }

    public synchronized void closeLinks() {
        if (this.receiverLink != null) {
            this.receiverLink.close();
        }
        if (this.senderLink != null) {
            this.senderLink.close();
        }
    }

    public synchronized void initLink(n nVar) {
        if (nVar != null) {
            try {
                if (nVar.getName().equals(this.senderLinkTag)) {
                    v vVar = new v();
                    vVar.a = this.amqpLinkAddress;
                    nVar.a((r) vVar);
                    nVar.a(p.UNSETTLED);
                }
                if (nVar.getName().equals(this.receiverLinkTag)) {
                    u uVar = new u();
                    uVar.a = this.amqpLinkAddress;
                    nVar.a((q) uVar);
                }
            } catch (Exception e2) {
                throw new IOException("Proton exception: " + e2.getMessage());
            }
        } else {
            throw new IllegalArgumentException("The link cannot be null.");
        }
    }

    public synchronized boolean isReceiverLinkTag(String str) {
        if (str != null) {
            if (this.receiverLinkTag.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void openLinks(y yVar) {
        if (yVar != null) {
            try {
                t b = yVar.b(this.receiverLinkTag);
                this.receiverLink = b;
                b.a(this.amqpProperties);
                this.receiverLink.open();
                x a = yVar.a(this.senderLinkTag);
                this.senderLink = a;
                a.a(this.amqpProperties);
                this.senderLink.open();
            } catch (Exception e2) {
                throw new IOException("Proton exception", e2);
            }
        } else {
            throw new IllegalArgumentException("The session cannot be null.");
        }
    }

    public AmqpMessage receiverMessageFromLink(String str) {
        t tVar;
        if (str == null || str.isEmpty() || (tVar = this.receiverLink) == null) {
            return null;
        }
        e k2 = tVar.k();
        if (!str.equals(this.receiverLinkTag) || k2 == null || !k2.t() || k2.O()) {
            return null;
        }
        int pending = k2.pending();
        byte[] bArr = new byte[pending];
        int b = this.receiverLink.b(bArr, 0, pending);
        this.receiverLink.d();
        AmqpMessage amqpMessage = new AmqpMessage();
        amqpMessage.decode(bArr, 0, b);
        return amqpMessage;
    }

    public void sendMessage(byte[] bArr, byte[] bArr2, int i2, int i3) {
        this.senderLink.a(bArr);
        this.senderLink.a(bArr2, i3, i2);
        this.senderLink.d();
    }
}
