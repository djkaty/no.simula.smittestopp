package com.microsoft.azure.storage.core;

import e.b.a.a.b;
import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;

public class WrappedContentKey {
    public String algorithm;
    public byte[] encryptedKey;
    public String keyId;

    public WrappedContentKey() {
    }

    public static WrappedContentKey deserialize(i iVar) {
        JsonUtilities.assertIsStartObjectJsonToken(iVar);
        iVar.f();
        WrappedContentKey wrappedContentKey = new WrappedContentKey();
        while (((c) iVar).y != l.END_OBJECT) {
            String c2 = iVar.c();
            iVar.f();
            if (c2.equals("KeyId")) {
                wrappedContentKey.setKeyId(iVar.d());
            } else if (c2.equals("EncryptedKey")) {
                wrappedContentKey.setEncryptedKey(iVar.a());
            } else if (c2.equals("Algorithm")) {
                wrappedContentKey.setAlgorithm(iVar.d());
            }
            iVar.f();
        }
        JsonUtilities.assertIsEndObjectJsonToken(iVar);
        return wrappedContentKey;
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public byte[] getEncryptedKey() {
        return this.encryptedKey;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public void serialize(f fVar) {
        String keyId2 = getKeyId();
        e.b.a.a.q.c cVar = (e.b.a.a.q.c) fVar;
        cVar.a("KeyId");
        cVar.b(keyId2);
        byte[] encryptedKey2 = getEncryptedKey();
        fVar.a("EncryptedKey");
        fVar.a(b.b, encryptedKey2, 0, encryptedKey2.length);
        String algorithm2 = getAlgorithm();
        e.b.a.a.q.c cVar2 = (e.b.a.a.q.c) fVar;
        cVar2.a("Algorithm");
        cVar2.b(algorithm2);
    }

    public void setAlgorithm(String str) {
        this.algorithm = str;
    }

    public void setEncryptedKey(byte[] bArr) {
        this.encryptedKey = bArr;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public WrappedContentKey(String str, byte[] bArr, String str2) {
        this.keyId = str;
        this.encryptedKey = bArr;
        this.algorithm = str2;
    }
}
