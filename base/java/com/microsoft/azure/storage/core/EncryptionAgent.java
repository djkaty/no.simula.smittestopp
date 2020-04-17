package com.microsoft.azure.storage.core;

import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;

public class EncryptionAgent {
    public EncryptionAlgorithm encryptionAlgorithm;
    public String protocol;

    public EncryptionAgent() {
    }

    public static EncryptionAgent deserialize(i iVar) {
        JsonUtilities.assertIsStartObjectJsonToken(iVar);
        iVar.f();
        EncryptionAgent encryptionAgent = new EncryptionAgent();
        while (((c) iVar).y != l.END_OBJECT) {
            String c2 = iVar.c();
            iVar.f();
            if (c2.equals("Protocol")) {
                encryptionAgent.setProtocol(iVar.d());
            } else if (c2.equals("EncryptionAlgorithm")) {
                encryptionAgent.setEncryptionAlgorithm(EncryptionAlgorithm.valueOf(iVar.d()));
            }
            iVar.f();
        }
        JsonUtilities.assertIsEndObjectJsonToken(iVar);
        return encryptionAgent;
    }

    public EncryptionAlgorithm getEncryptionAlgorithm() {
        return this.encryptionAlgorithm;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public void serialize(f fVar) {
        String protocol2 = getProtocol();
        e.b.a.a.q.c cVar = (e.b.a.a.q.c) fVar;
        cVar.a("Protocol");
        cVar.b(protocol2);
        String str = getEncryptionAlgorithm().toString();
        e.b.a.a.q.c cVar2 = (e.b.a.a.q.c) fVar;
        cVar2.a("EncryptionAlgorithm");
        cVar2.b(str);
    }

    public void setEncryptionAlgorithm(EncryptionAlgorithm encryptionAlgorithm2) {
        this.encryptionAlgorithm = encryptionAlgorithm2;
    }

    public void setProtocol(String str) {
        this.protocol = str;
    }

    public EncryptionAgent(String str, EncryptionAlgorithm encryptionAlgorithm2) {
        this.protocol = str;
        this.encryptionAlgorithm = encryptionAlgorithm2;
    }
}
