package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import e.b.a.a.b;
import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;
import java.io.StringWriter;
import java.util.HashMap;

public class EncryptionData {
    public byte[] contentEncryptionIV;
    public EncryptionAgent encryptionAgent;
    public HashMap<String, String> keyWrappingMetadata;
    public WrappedContentKey wrappedContentKey;

    public static void consumeJsonObject(i iVar) {
        JsonUtilities.assertIsStartObjectJsonToken(iVar);
        iVar.f();
        if (((c) iVar).y != l.END_OBJECT) {
            consumeJsonObject(iVar);
        }
    }

    public static EncryptionData deserialize(String str) {
        i jsonParser = Utility.getJsonParser(str);
        try {
            if (!jsonParser.e()) {
                jsonParser.f();
            }
            return deserialize(jsonParser);
        } finally {
            jsonParser.close();
        }
    }

    public static HashMap<String, String> deserializeKeyWrappingMetadata(i iVar) {
        JsonUtilities.assertIsStartObjectJsonToken(iVar);
        iVar.f();
        HashMap<String, String> hashMap = new HashMap<>();
        while (((c) iVar).y != l.END_OBJECT) {
            String c2 = iVar.c();
            iVar.f();
            hashMap.put(c2, iVar.d());
            iVar.f();
        }
        JsonUtilities.assertIsEndObjectJsonToken(iVar);
        return hashMap;
    }

    public void copyValues(EncryptionData encryptionData) {
        setWrappedContentKey(encryptionData.getWrappedContentKey());
        setEncryptionAgent(encryptionData.getEncryptionAgent());
        setContentEncryptionIV(encryptionData.getContentEncryptionIV());
        setKeyWrappingMetadata(encryptionData.getKeyWrappingMetadata());
    }

    public byte[] getContentEncryptionIV() {
        return this.contentEncryptionIV;
    }

    public EncryptionAgent getEncryptionAgent() {
        return this.encryptionAgent;
    }

    public HashMap<String, String> getKeyWrappingMetadata() {
        return this.keyWrappingMetadata;
    }

    public WrappedContentKey getWrappedContentKey() {
        return this.wrappedContentKey;
    }

    /* JADX INFO: finally extract failed */
    public String serialize() {
        StringWriter stringWriter = new StringWriter();
        f jsonGenerator = Utility.getJsonGenerator(stringWriter);
        try {
            jsonGenerator.c();
            serialize(jsonGenerator);
            jsonGenerator.a();
            jsonGenerator.close();
            return stringWriter.toString();
        } catch (Throwable th) {
            jsonGenerator.close();
            throw th;
        }
    }

    public void setContentEncryptionIV(byte[] bArr) {
        this.contentEncryptionIV = bArr;
    }

    public void setEncryptionAgent(EncryptionAgent encryptionAgent2) {
        this.encryptionAgent = encryptionAgent2;
    }

    public void setKeyWrappingMetadata(HashMap<String, String> hashMap) {
        this.keyWrappingMetadata = hashMap;
    }

    public void setWrappedContentKey(WrappedContentKey wrappedContentKey2) {
        this.wrappedContentKey = wrappedContentKey2;
    }

    public static EncryptionData deserialize(i iVar) {
        JsonUtilities.assertIsStartObjectJsonToken(iVar);
        iVar.f();
        EncryptionData encryptionData = new EncryptionData();
        while (((c) iVar).y != l.END_OBJECT) {
            String c2 = iVar.c();
            iVar.f();
            if (c2.equals(Constants.EncryptionConstants.WRAPPED_CONTENT_KEY)) {
                encryptionData.setWrappedContentKey(WrappedContentKey.deserialize(iVar));
            } else if (c2.equals(Constants.EncryptionConstants.ENCRYPTION_AGENT)) {
                encryptionData.setEncryptionAgent(EncryptionAgent.deserialize(iVar));
            } else if (c2.equals(Constants.EncryptionConstants.CONTENT_ENCRYPTION_IV)) {
                encryptionData.setContentEncryptionIV(iVar.a());
            } else if (c2.equals(Constants.EncryptionConstants.KEY_WRAPPING_METADATA)) {
                encryptionData.setKeyWrappingMetadata(deserializeKeyWrappingMetadata(iVar));
            } else {
                consumeJsonObject(iVar);
            }
            iVar.f();
        }
        JsonUtilities.assertIsEndObjectJsonToken(iVar);
        return encryptionData;
    }

    public void serialize(f fVar) {
        fVar.a(Constants.EncryptionConstants.WRAPPED_CONTENT_KEY);
        fVar.c();
        getWrappedContentKey().serialize(fVar);
        fVar.a();
        fVar.a(Constants.EncryptionConstants.ENCRYPTION_AGENT);
        fVar.c();
        getEncryptionAgent().serialize(fVar);
        fVar.a();
        byte[] contentEncryptionIV2 = getContentEncryptionIV();
        fVar.a(Constants.EncryptionConstants.CONTENT_ENCRYPTION_IV);
        fVar.a(b.b, contentEncryptionIV2, 0, contentEncryptionIV2.length);
        fVar.a(Constants.EncryptionConstants.KEY_WRAPPING_METADATA);
        fVar.c();
        for (String next : this.keyWrappingMetadata.keySet()) {
            e.b.a.a.q.c cVar = (e.b.a.a.q.c) fVar;
            cVar.a(next);
            cVar.b(this.keyWrappingMetadata.get(next));
        }
        fVar.a();
    }
}
