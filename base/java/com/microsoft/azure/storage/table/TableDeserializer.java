package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.core.JsonUtilities;
import com.microsoft.azure.storage.core.Utility;
import e.a.a.a.a;
import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.c;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

public final class TableDeserializer {
    public static EdmType evaluateEdmType(l lVar, String str) {
        if (lVar == l.VALUE_FALSE || lVar == l.VALUE_TRUE) {
            return EdmType.BOOLEAN;
        }
        if (lVar == l.VALUE_NUMBER_FLOAT) {
            return EdmType.DOUBLE;
        }
        if (lVar == l.VALUE_NUMBER_INT) {
            return EdmType.INT32;
        }
        return EdmType.STRING;
    }

    public static String getETagFromTimestamp(String str) {
        return a.a("W/\"datetime'", URLEncoder.encode(str, "UTF-8"), "'\"");
    }

    public static boolean isEncrypted(HashSet<String> hashSet, String str) {
        return hashSet != null && hashSet.contains(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:110:0x02e2  */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x02fa  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x017f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T extends com.microsoft.azure.storage.table.TableEntity, R> com.microsoft.azure.storage.table.TableResult parseJsonEntity(e.b.a.a.i r26, java.lang.Class<T> r27, java.util.HashMap<java.lang.String, com.microsoft.azure.storage.table.PropertyPair> r28, com.microsoft.azure.storage.table.EntityResolver<R> r29, com.microsoft.azure.storage.table.TableRequestOptions r30, com.microsoft.azure.storage.OperationContext r31) {
        /*
            com.microsoft.azure.storage.table.TableResult r0 = new com.microsoft.azure.storage.table.TableResult
            r0.<init>()
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            boolean r1 = r26.e()
            if (r1 != 0) goto L_0x0013
            r26.f()
        L_0x0013:
            com.microsoft.azure.storage.core.JsonUtilities.assertIsStartObjectJsonToken(r26)
            r26.f()
        L_0x0019:
            java.lang.String r1 = r26.c()
            java.lang.String r3 = "odata."
            boolean r1 = r1.startsWith(r3)
            if (r1 == 0) goto L_0x0044
            java.lang.String r1 = r26.c()
            r3 = 6
            java.lang.String r1 = r1.substring(r3)
            r26.f()
            java.lang.String r3 = "etag"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0040
            java.lang.String r1 = r26.d()
            r0.setEtag(r1)
        L_0x0040:
            r26.f()
            goto L_0x0019
        L_0x0044:
            if (r29 != 0) goto L_0x0049
            if (r27 != 0) goto L_0x0049
            return r0
        L_0x0049:
            r1 = r26
            e.b.a.a.o.c r1 = (e.b.a.a.o.c) r1
            e.b.a.a.l r3 = r1.y
            e.b.a.a.l r4 = e.b.a.a.l.END_OBJECT
            if (r3 == r4) goto L_0x00aa
            com.microsoft.azure.storage.table.TablePayloadFormat r3 = r30.getTablePayloadFormat()
            com.microsoft.azure.storage.table.TablePayloadFormat r4 = com.microsoft.azure.storage.table.TablePayloadFormat.JsonNoMetadata
            if (r3 == r4) goto L_0x007e
            java.lang.String r3 = r26.c()
            java.lang.String r4 = "@odata.type"
            boolean r3 = r3.endsWith(r4)
            if (r3 == 0) goto L_0x007e
            r26.f()
            java.lang.String r1 = r26.d()
            com.microsoft.azure.storage.table.EdmType r1 = com.microsoft.azure.storage.table.EdmType.parse(r1)
            r26.g()
            java.lang.String r3 = r26.c()
            java.lang.String r4 = r26.d()
            goto L_0x0093
        L_0x007e:
            java.lang.String r3 = r26.c()
            r26.f()
            java.lang.String r4 = r26.d()
            e.b.a.a.l r1 = r1.y
            java.lang.String r5 = r26.d()
            com.microsoft.azure.storage.table.EdmType r1 = evaluateEdmType(r1, r5)
        L_0x0093:
            com.microsoft.azure.storage.table.EntityProperty r5 = new com.microsoft.azure.storage.table.EntityProperty
            r5.<init>((java.lang.String) r4, (com.microsoft.azure.storage.table.EdmType) r1)
            java.lang.Boolean r1 = r30.getDateBackwardCompatibility()
            boolean r1 = r1.booleanValue()
            r5.setDateBackwardCompatibility(r1)
            r2.put(r3, r5)
            r26.f()
            goto L_0x0049
        L_0x00aa:
            java.lang.String r1 = "PartitionKey"
            java.lang.Object r1 = r2.remove(r1)
            com.microsoft.azure.storage.table.EntityProperty r1 = (com.microsoft.azure.storage.table.EntityProperty) r1
            r3 = 0
            if (r1 == 0) goto L_0x00bb
            java.lang.String r1 = r1.getValueAsString()
            r10 = r1
            goto L_0x00bc
        L_0x00bb:
            r10 = r3
        L_0x00bc:
            java.lang.String r1 = "RowKey"
            java.lang.Object r1 = r2.remove(r1)
            com.microsoft.azure.storage.table.EntityProperty r1 = (com.microsoft.azure.storage.table.EntityProperty) r1
            if (r1 == 0) goto L_0x00cc
            java.lang.String r1 = r1.getValueAsString()
            r11 = r1
            goto L_0x00cd
        L_0x00cc:
            r11 = r3
        L_0x00cd:
            java.lang.String r1 = "Timestamp"
            java.lang.Object r1 = r2.remove(r1)
            com.microsoft.azure.storage.table.EntityProperty r1 = (com.microsoft.azure.storage.table.EntityProperty) r1
            r12 = 0
            if (r1 == 0) goto L_0x00f2
            r1.setDateBackwardCompatibility(r12)
            java.util.Date r4 = r1.getValueAsDate()
            java.lang.String r5 = r0.getEtag()
            if (r5 != 0) goto L_0x00f0
            java.lang.String r1 = r1.getValueAsString()
            java.lang.String r1 = getETagFromTimestamp(r1)
            r0.setEtag(r1)
        L_0x00f0:
            r13 = r4
            goto L_0x00f3
        L_0x00f2:
            r13 = r3
        L_0x00f3:
            r1 = 1
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r1)
            com.microsoft.azure.storage.core.EncryptionData r14 = new com.microsoft.azure.storage.core.EncryptionData
            r14.<init>()
            com.microsoft.azure.storage.table.TableEncryptionPolicy r5 = r30.getEncryptionPolicy()
            java.lang.String r15 = "_ClientEncryptionMetadata1"
            java.lang.String r9 = "_ClientEncryptionMetadata2"
            if (r5 == 0) goto L_0x015c
            java.lang.Object r5 = r2.get(r9)
            r8 = r5
            com.microsoft.azure.storage.table.EntityProperty r8 = (com.microsoft.azure.storage.table.EntityProperty) r8
            java.lang.Object r5 = r2.get(r15)
            r7 = r5
            com.microsoft.azure.storage.table.EntityProperty r7 = (com.microsoft.azure.storage.table.EntityProperty) r7
            if (r8 == 0) goto L_0x0140
            boolean r5 = r8.getIsNull()
            if (r5 != 0) goto L_0x0140
            if (r7 == 0) goto L_0x0140
            boolean r5 = r7.getIsNull()
            if (r5 != 0) goto L_0x0140
            com.microsoft.azure.storage.table.TableEncryptionPolicy r4 = r30.getEncryptionPolicy()
            r5 = r10
            r6 = r11
            r3 = r8
            r1 = r9
            r9 = r14
            com.microsoft.azure.storage.table.CEKReturn r4 = r4.decryptMetadataAndReturnCEK(r5, r6, r7, r8, r9)
            java.security.Key r5 = r4.key
            java.lang.Boolean r4 = r4.isJavaV1
            r2.put(r1, r3)
            java.util.HashSet r3 = parsePropertyDetails(r3)
            r8 = r4
            r6 = r5
            goto L_0x015f
        L_0x0140:
            r1 = r9
            java.lang.Boolean r5 = r30.requireEncryption()
            if (r5 == 0) goto L_0x015d
            java.lang.Boolean r5 = r30.requireEncryption()
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L_0x0152
            goto L_0x015d
        L_0x0152:
            com.microsoft.azure.storage.StorageException r0 = new com.microsoft.azure.storage.StorageException
            java.lang.String r1 = "DecryptionError"
            java.lang.String r2 = "Encryption data does not exist. If you do not want to decrypt the data, please do not set the require encryption flag on request options"
            r0.<init>(r1, r2, r3)
            throw r0
        L_0x015c:
            r1 = r9
        L_0x015d:
            r6 = r3
            r8 = r4
        L_0x015f:
            com.microsoft.azure.storage.table.TablePayloadFormat r4 = r30.getTablePayloadFormat()
            com.microsoft.azure.storage.table.TablePayloadFormat r5 = com.microsoft.azure.storage.table.TablePayloadFormat.JsonNoMetadata
            if (r4 != r5) goto L_0x02c8
            com.microsoft.azure.storage.table.TableRequestOptions$PropertyResolver r4 = r30.getPropertyResolver()
            if (r4 != 0) goto L_0x016f
            if (r27 == 0) goto L_0x02c8
        L_0x016f:
            java.util.Set r4 = r2.entrySet()
            java.util.Iterator r4 = r4.iterator()
            r5 = r28
        L_0x0179:
            boolean r7 = r4.hasNext()
            if (r7 == 0) goto L_0x02c8
            java.lang.Object r7 = r4.next()
            java.util.Map$Entry r7 = (java.util.Map.Entry) r7
            java.lang.Object r9 = r7.getKey()
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L_0x01b1
            com.microsoft.azure.storage.table.EntityProperty r9 = new com.microsoft.azure.storage.table.EntityProperty
            java.lang.Object r16 = r7.getValue()
            com.microsoft.azure.storage.table.EntityProperty r16 = (com.microsoft.azure.storage.table.EntityProperty) r16
            java.lang.String r12 = r16.getValueAsString()
            r16 = r4
            com.microsoft.azure.storage.table.EdmType r4 = com.microsoft.azure.storage.table.EdmType.STRING
            r9.<init>((java.lang.String) r12, (com.microsoft.azure.storage.table.EdmType) r4)
            java.lang.Object r4 = r7.getKey()
            r2.put(r4, r9)
        L_0x01a9:
            r17 = r1
            r18 = r15
        L_0x01ad:
            r4 = 1
            r15 = 0
            goto L_0x02bf
        L_0x01b1:
            r16 = r4
            java.lang.Object r4 = r7.getKey()
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L_0x01dc
            com.microsoft.azure.storage.table.TableEncryptionPolicy r4 = r30.getEncryptionPolicy()
            if (r4 != 0) goto L_0x01a9
            com.microsoft.azure.storage.table.EntityProperty r4 = new com.microsoft.azure.storage.table.EntityProperty
            java.lang.Object r9 = r7.getValue()
            com.microsoft.azure.storage.table.EntityProperty r9 = (com.microsoft.azure.storage.table.EntityProperty) r9
            java.lang.String r9 = r9.getValueAsString()
            com.microsoft.azure.storage.table.EdmType r12 = com.microsoft.azure.storage.table.EdmType.BINARY
            r4.<init>((java.lang.String) r9, (com.microsoft.azure.storage.table.EdmType) r12)
            java.lang.Object r7 = r7.getKey()
            r2.put(r7, r4)
            goto L_0x01a9
        L_0x01dc:
            com.microsoft.azure.storage.table.TableRequestOptions$PropertyResolver r4 = r30.getPropertyResolver()
            if (r4 == 0) goto L_0x0263
            java.lang.Object r4 = r7.getKey()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r9 = r7.getValue()
            com.microsoft.azure.storage.table.EntityProperty r9 = (com.microsoft.azure.storage.table.EntityProperty) r9
            java.lang.String r9 = r9.getValueAsString()
            com.microsoft.azure.storage.table.TableRequestOptions$PropertyResolver r12 = r30.getPropertyResolver()     // Catch:{ Exception -> 0x0249 }
            com.microsoft.azure.storage.table.EdmType r12 = r12.propertyResolver(r10, r11, r4, r9)     // Catch:{ Exception -> 0x0249 }
            r17 = r1
            com.microsoft.azure.storage.table.EntityProperty r1 = new com.microsoft.azure.storage.table.EntityProperty     // Catch:{ IllegalArgumentException -> 0x0226 }
            boolean r18 = isEncrypted(r3, r4)     // Catch:{ IllegalArgumentException -> 0x0226 }
            if (r18 == 0) goto L_0x020d
            com.microsoft.azure.storage.table.EdmType r18 = com.microsoft.azure.storage.table.EdmType.BINARY     // Catch:{ IllegalArgumentException -> 0x0226 }
            r25 = r18
            r18 = r15
            r15 = r25
            goto L_0x0210
        L_0x020d:
            r18 = r15
            r15 = r12
        L_0x0210:
            r1.<init>((java.lang.String) r9, (com.microsoft.azure.storage.table.EdmType) r15)     // Catch:{ IllegalArgumentException -> 0x0226 }
            java.lang.Boolean r15 = r30.getDateBackwardCompatibility()     // Catch:{ IllegalArgumentException -> 0x0226 }
            boolean r15 = r15.booleanValue()     // Catch:{ IllegalArgumentException -> 0x0226 }
            r1.setDateBackwardCompatibility(r15)     // Catch:{ IllegalArgumentException -> 0x0226 }
            java.lang.Object r7 = r7.getKey()     // Catch:{ IllegalArgumentException -> 0x0226 }
            r2.put(r7, r1)     // Catch:{ IllegalArgumentException -> 0x0226 }
            goto L_0x01ad
        L_0x0226:
            r0 = move-exception
            r24 = r0
            com.microsoft.azure.storage.StorageException r0 = new com.microsoft.azure.storage.StorageException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r15 = 0
            r1[r15] = r4
            r4 = 1
            r1[r4] = r9
            r2 = 2
            r1[r2] = r12
            java.lang.String r2 = "Failed to parse property '%s' with value '%s' as type '%s'"
            java.lang.String r21 = java.lang.String.format(r2, r1)
            r22 = 306(0x132, float:4.29E-43)
            r23 = 0
            java.lang.String r20 = "InvalidType"
            r19 = r0
            r19.<init>(r20, r21, r22, r23, r24)
            throw r0
        L_0x0249:
            r0 = move-exception
            com.microsoft.azure.storage.StorageException r1 = new com.microsoft.azure.storage.StorageException
            r2 = 306(0x132, float:4.29E-43)
            r3 = 0
            java.lang.String r4 = "InternalError"
            java.lang.String r5 = "The custom property resolver delegate threw an exception. Check the inner exception for more details."
            r26 = r1
            r27 = r4
            r28 = r5
            r29 = r2
            r30 = r3
            r31 = r0
            r26.<init>(r27, r28, r29, r30, r31)
            throw r1
        L_0x0263:
            r17 = r1
            r18 = r15
            r4 = 1
            r15 = 0
            if (r27 == 0) goto L_0x02bf
            if (r5 != 0) goto L_0x0271
            java.util.HashMap r5 = com.microsoft.azure.storage.table.PropertyPair.generatePropertyPairs(r27)
        L_0x0271:
            java.lang.Object r1 = r7.getKey()
            java.lang.Object r1 = r5.get(r1)
            com.microsoft.azure.storage.table.PropertyPair r1 = (com.microsoft.azure.storage.table.PropertyPair) r1
            if (r1 == 0) goto L_0x02bf
            java.lang.Object r9 = r7.getKey()
            java.lang.String r9 = (java.lang.String) r9
            boolean r9 = isEncrypted(r3, r9)
            if (r9 == 0) goto L_0x029b
            com.microsoft.azure.storage.table.EntityProperty r1 = new com.microsoft.azure.storage.table.EntityProperty
            java.lang.Object r9 = r7.getValue()
            com.microsoft.azure.storage.table.EntityProperty r9 = (com.microsoft.azure.storage.table.EntityProperty) r9
            java.lang.String r9 = r9.getValueAsString()
            com.microsoft.azure.storage.table.EdmType r12 = com.microsoft.azure.storage.table.EdmType.BINARY
            r1.<init>((java.lang.String) r9, (com.microsoft.azure.storage.table.EdmType) r12)
            goto L_0x02ad
        L_0x029b:
            com.microsoft.azure.storage.table.EntityProperty r9 = new com.microsoft.azure.storage.table.EntityProperty
            java.lang.Object r12 = r7.getValue()
            com.microsoft.azure.storage.table.EntityProperty r12 = (com.microsoft.azure.storage.table.EntityProperty) r12
            java.lang.String r12 = r12.getValueAsString()
            java.lang.Class<?> r1 = r1.type
            r9.<init>((java.lang.String) r12, (java.lang.Class<?>) r1)
            r1 = r9
        L_0x02ad:
            java.lang.Boolean r9 = r30.getDateBackwardCompatibility()
            boolean r9 = r9.booleanValue()
            r1.setDateBackwardCompatibility(r9)
            java.lang.Object r7 = r7.getKey()
            r2.put(r7, r1)
        L_0x02bf:
            r4 = r16
            r1 = r17
            r15 = r18
            r12 = 0
            goto L_0x0179
        L_0x02c8:
            com.microsoft.azure.storage.table.TableEncryptionPolicy r1 = r30.getEncryptionPolicy()
            if (r1 == 0) goto L_0x02dc
            if (r6 == 0) goto L_0x02dc
            com.microsoft.azure.storage.table.TableEncryptionPolicy r1 = r30.getEncryptionPolicy()
            r4 = r10
            r5 = r11
            r7 = r14
            java.util.HashMap r1 = r1.decryptEntity(r2, r3, r4, r5, r6, r7, r8)
            goto L_0x02dd
        L_0x02dc:
            r1 = r2
        L_0x02dd:
            r0.setProperties(r1)
            if (r29 == 0) goto L_0x02fa
            java.lang.String r2 = r0.getEtag()
            r26 = r29
            r27 = r10
            r28 = r11
            r29 = r13
            r30 = r1
            r31 = r2
            java.lang.Object r1 = r26.resolve(r27, r28, r29, r30, r31)
            r0.setResult(r1)
            goto L_0x031a
        L_0x02fa:
            if (r27 == 0) goto L_0x031a
            java.lang.Object r2 = r27.newInstance()
            com.microsoft.azure.storage.table.TableEntity r2 = (com.microsoft.azure.storage.table.TableEntity) r2
            java.lang.String r3 = r0.getEtag()
            r2.setEtag(r3)
            r2.setPartitionKey(r10)
            r2.setRowKey(r11)
            r2.setTimestamp(r13)
            r3 = r31
            r2.readEntity(r1, r3)
            r0.setResult(r2)
        L_0x031a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.table.TableDeserializer.parseJsonEntity(e.b.a.a.i, java.lang.Class, java.util.HashMap, com.microsoft.azure.storage.table.EntityResolver, com.microsoft.azure.storage.table.TableRequestOptions, com.microsoft.azure.storage.OperationContext):com.microsoft.azure.storage.table.TableResult");
    }

    public static HashSet<String> parsePropertyDetails(EntityProperty entityProperty) {
        if (entityProperty == null || entityProperty.getIsNull()) {
            return null;
        }
        byte[] valueAsByteArray = entityProperty.getValueAsByteArray();
        String replaceAll = new String(valueAsByteArray, 0, valueAsByteArray.length, "UTF-8").replaceAll(" ", "").replaceAll("\"", "");
        return new HashSet<>(Arrays.asList(replaceAll.substring(1, replaceAll.length() - 1).split(",")));
    }

    public static <T extends TableEntity, R> ODataPayload<?> parseQueryResponse(InputStream inputStream, TableRequestOptions tableRequestOptions, Class<T> cls, EntityResolver<R> entityResolver, OperationContext operationContext) {
        ODataPayload<?> oDataPayload;
        ODataPayload<?> oDataPayload2;
        ODataPayload<?> oDataPayload3;
        i jsonParser = Utility.getJsonParser(inputStream);
        HashMap<String, PropertyPair> hashMap = null;
        if (entityResolver != null) {
            try {
                oDataPayload2 = null;
                oDataPayload3 = new ODataPayload<>();
                oDataPayload = oDataPayload3;
            } catch (Throwable th) {
                jsonParser.close();
                throw th;
            }
        } else {
            oDataPayload = null;
            oDataPayload3 = new ODataPayload<>();
            oDataPayload2 = oDataPayload3;
        }
        if (!jsonParser.e()) {
            jsonParser.f();
        }
        JsonUtilities.assertIsStartObjectJsonToken(jsonParser);
        jsonParser.f();
        if (tableRequestOptions.getTablePayloadFormat() == TablePayloadFormat.JsonNoMetadata && cls != null) {
            hashMap = PropertyPair.generatePropertyPairs(cls);
        }
        HashMap<String, PropertyPair> hashMap2 = hashMap;
        while (((c) jsonParser).y != null) {
            if (((c) jsonParser).y == l.FIELD_NAME && jsonParser.c().equals("value")) {
                jsonParser.f();
                JsonUtilities.assertIsStartArrayJsonToken(jsonParser);
                jsonParser.f();
                while (((c) jsonParser).y == l.START_OBJECT) {
                    TableResult parseJsonEntity = parseJsonEntity(jsonParser, cls, hashMap2, entityResolver, tableRequestOptions, operationContext);
                    if (oDataPayload2 != null) {
                        oDataPayload2.tableResults.add(parseJsonEntity);
                    }
                    if (entityResolver != null) {
                        oDataPayload.results.add(parseJsonEntity.getResult());
                    } else {
                        oDataPayload2.results.add((TableEntity) parseJsonEntity.getResult());
                    }
                    jsonParser.f();
                }
                JsonUtilities.assertIsEndArrayJsonToken(jsonParser);
            }
            jsonParser.f();
        }
        jsonParser.close();
        return oDataPayload3;
    }

    public static <T extends TableEntity, R> TableResult parseSingleOpResponse(InputStream inputStream, TableRequestOptions tableRequestOptions, int i2, Class<T> cls, EntityResolver<R> entityResolver, OperationContext operationContext) {
        i jsonParser = Utility.getJsonParser(inputStream);
        try {
            TableResult parseJsonEntity = parseJsonEntity(jsonParser, cls, (HashMap<String, PropertyPair>) null, entityResolver, tableRequestOptions, operationContext);
            parseJsonEntity.setHttpStatusCode(i2);
            return parseJsonEntity;
        } finally {
            jsonParser.close();
        }
    }
}
