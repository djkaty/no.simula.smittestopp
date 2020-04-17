package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.core.EncryptionData;
import com.microsoft.azure.storage.core.JsonUtilities;
import com.microsoft.azure.storage.core.Utility;
import e.b.a.a.f;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;
import java.io.StringWriter;

public class CloudQueueEncryptedMessage {
    public String encryptedMessageContents;
    public EncryptionData encryptionData;

    public static CloudQueueEncryptedMessage deserialize(String str) {
        i jsonParser = Utility.getJsonParser(str);
        CloudQueueEncryptedMessage cloudQueueEncryptedMessage = new CloudQueueEncryptedMessage();
        try {
            if (!jsonParser.e()) {
                jsonParser.f();
            }
            JsonUtilities.assertIsStartObjectJsonToken(jsonParser);
            jsonParser.f();
            while (((c) jsonParser).y != l.END_OBJECT) {
                String c2 = jsonParser.c();
                jsonParser.f();
                if (c2.equals("EncryptedMessageContents")) {
                    cloudQueueEncryptedMessage.setEncryptedMessageContents(jsonParser.d());
                } else if (c2.equals("EncryptionData")) {
                    cloudQueueEncryptedMessage.setEncryptionData(EncryptionData.deserialize(jsonParser));
                }
                jsonParser.f();
            }
            JsonUtilities.assertIsEndObjectJsonToken(jsonParser);
            return cloudQueueEncryptedMessage;
        } finally {
            jsonParser.close();
        }
    }

    public String getEncryptedMessageContents() {
        return this.encryptedMessageContents;
    }

    public EncryptionData getEncryptionData() {
        return this.encryptionData;
    }

    /* JADX INFO: finally extract failed */
    public String serialize() {
        StringWriter stringWriter = new StringWriter();
        f jsonGenerator = Utility.getJsonGenerator(stringWriter);
        try {
            jsonGenerator.c();
            String encryptedMessageContents2 = getEncryptedMessageContents();
            e.b.a.a.q.c cVar = (e.b.a.a.q.c) jsonGenerator;
            cVar.a("EncryptedMessageContents");
            cVar.b(encryptedMessageContents2);
            jsonGenerator.a("EncryptionData");
            jsonGenerator.c();
            getEncryptionData().serialize(jsonGenerator);
            jsonGenerator.a();
            jsonGenerator.a();
            jsonGenerator.close();
            return stringWriter.toString();
        } catch (Throwable th) {
            jsonGenerator.close();
            throw th;
        }
    }

    public void setEncryptedMessageContents(String str) {
        this.encryptedMessageContents = str;
    }

    public void setEncryptionData(EncryptionData encryptionData2) {
        this.encryptionData = encryptionData2;
    }
}
