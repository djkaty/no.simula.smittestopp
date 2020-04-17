package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.JsonUtilities;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.table.TableConstants;
import e.b.a.a.d;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.HashMap;

public final class TableStorageErrorDeserializer {
    public static StorageExtendedErrorInformation getExtendedErrorInformation(Reader reader, TablePayloadFormat tablePayloadFormat) {
        i a = new d().a(reader);
        try {
            StorageExtendedErrorInformation storageExtendedErrorInformation = new StorageExtendedErrorInformation();
            if (!a.e()) {
                a.f();
            }
            JsonUtilities.assertIsStartObjectJsonToken(a);
            a.f();
            JsonUtilities.assertIsFieldNameJsonToken(a);
            JsonUtilities.assertIsExpectedFieldName(a, "odata.error");
            a.f();
            JsonUtilities.assertIsStartObjectJsonToken(a);
            a.g();
            JsonUtilities.assertIsExpectedFieldName(a, "code");
            storageExtendedErrorInformation.setErrorCode(a.d());
            a.f();
            JsonUtilities.assertIsFieldNameJsonToken(a);
            JsonUtilities.assertIsExpectedFieldName(a, "message");
            a.f();
            JsonUtilities.assertIsStartObjectJsonToken(a);
            a.g();
            JsonUtilities.assertIsExpectedFieldName(a, "lang");
            a.g();
            JsonUtilities.assertIsExpectedFieldName(a, "value");
            storageExtendedErrorInformation.setErrorMessage(a.d());
            a.f();
            JsonUtilities.assertIsEndObjectJsonToken(a);
            a.f();
            if (((c) a).y == l.FIELD_NAME) {
                JsonUtilities.assertIsExpectedFieldName(a, TableConstants.ErrorConstants.INNER_ERROR);
                storageExtendedErrorInformation.getAdditionalDetails().putAll(parseJsonErrorException(a));
                a.f();
            }
            JsonUtilities.assertIsEndObjectJsonToken(a);
            a.f();
            JsonUtilities.assertIsEndObjectJsonToken(a);
            return storageExtendedErrorInformation;
        } finally {
            a.close();
        }
    }

    public static StorageExtendedErrorInformation parseErrorDetails(StorageRequest<CloudTableClient, ?, ?> storageRequest) {
        if (storageRequest != null) {
            try {
                if (storageRequest.getConnection().getErrorStream() != null) {
                    return getExtendedErrorInformation(new InputStreamReader(storageRequest.getConnection().getErrorStream()), TablePayloadFormat.Json);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static HashMap<String, String[]> parseJsonErrorException(i iVar) {
        HashMap<String, String[]> hashMap = new HashMap<>();
        iVar.f();
        JsonUtilities.assertIsStartObjectJsonToken(iVar);
        iVar.f();
        JsonUtilities.assertIsFieldNameJsonToken(iVar);
        while (((c) iVar).y != l.END_OBJECT) {
            if (iVar.c().equals("message")) {
                iVar.f();
                hashMap.put("message", new String[]{iVar.d()});
            } else if (iVar.c().equals("type")) {
                iVar.f();
                hashMap.put("type", new String[]{iVar.d()});
            } else if (iVar.c().equals(TableConstants.ErrorConstants.ERROR_EXCEPTION_STACK_TRACE)) {
                iVar.f();
                hashMap.put(Constants.ERROR_EXCEPTION_STACK_TRACE, new String[]{iVar.d()});
            }
            iVar.f();
        }
        return hashMap;
    }
}
