package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.EncryptionAgent;
import com.microsoft.azure.storage.core.EncryptionData;
import com.microsoft.azure.storage.core.JsonUtilities;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.core.WrappedContentKey;
import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;
import java.io.StringWriter;

public class BlobEncryptionData extends EncryptionData {
    public String encryptionMode;

    public static BlobEncryptionData deserialize(String str) {
        i jsonParser = Utility.getJsonParser(str);
        BlobEncryptionData blobEncryptionData = new BlobEncryptionData();
        try {
            if (!jsonParser.e()) {
                jsonParser.f();
            }
            JsonUtilities.assertIsStartObjectJsonToken(jsonParser);
            jsonParser.f();
            while (((c) jsonParser).y != l.END_OBJECT) {
                String c2 = jsonParser.c();
                jsonParser.f();
                if (c2.equals(Constants.EncryptionConstants.ENCRYPTION_MODE)) {
                    blobEncryptionData.setEncryptionMode(jsonParser.d());
                } else if (c2.equals(Constants.EncryptionConstants.WRAPPED_CONTENT_KEY)) {
                    blobEncryptionData.setWrappedContentKey(WrappedContentKey.deserialize(jsonParser));
                } else if (c2.equals(Constants.EncryptionConstants.ENCRYPTION_AGENT)) {
                    blobEncryptionData.setEncryptionAgent(EncryptionAgent.deserialize(jsonParser));
                } else if (c2.equals(Constants.EncryptionConstants.CONTENT_ENCRYPTION_IV)) {
                    blobEncryptionData.setContentEncryptionIV(jsonParser.a());
                } else if (c2.equals(Constants.EncryptionConstants.KEY_WRAPPING_METADATA)) {
                    blobEncryptionData.setKeyWrappingMetadata(EncryptionData.deserializeKeyWrappingMetadata(jsonParser));
                } else {
                    EncryptionData.consumeJsonObject(jsonParser);
                }
                jsonParser.f();
            }
            JsonUtilities.assertIsEndObjectJsonToken(jsonParser);
            return blobEncryptionData;
        } finally {
            jsonParser.close();
        }
    }

    public String getEncryptionMode() {
        return this.encryptionMode;
    }

    /* JADX INFO: finally extract failed */
    public String serialize() {
        StringWriter stringWriter = new StringWriter();
        f jsonGenerator = Utility.getJsonGenerator(stringWriter);
        try {
            jsonGenerator.c();
            e.b.a.a.q.c cVar = (e.b.a.a.q.c) jsonGenerator;
            cVar.a(Constants.EncryptionConstants.ENCRYPTION_MODE);
            cVar.b(Constants.EncryptionConstants.FULL_BLOB);
            serialize(jsonGenerator);
            jsonGenerator.a();
            jsonGenerator.close();
            return stringWriter.toString();
        } catch (Throwable th) {
            jsonGenerator.close();
            throw th;
        }
    }

    public void setEncryptionMode(String str) {
        this.encryptionMode = str;
    }
}
