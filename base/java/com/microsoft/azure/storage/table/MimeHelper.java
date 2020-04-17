package com.microsoft.azure.storage.table;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.table.TableConstants;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class MimeHelper {
    public static String generateAcceptHeaderValue(TablePayloadFormat tablePayloadFormat) {
        if (tablePayloadFormat == TablePayloadFormat.JsonFullMetadata) {
            return TableConstants.HeaderConstants.JSON_FULL_METADATA_ACCEPT_TYPE;
        }
        return tablePayloadFormat == TablePayloadFormat.Json ? TableConstants.HeaderConstants.JSON_ACCEPT_TYPE : TableConstants.HeaderConstants.JSON_NO_METADATA_ACCEPT_TYPE;
    }

    public static StorageException generateMimeParseException() {
        return new StorageException(StorageErrorCodeStrings.OUT_OF_RANGE_INPUT, SR.INVALID_MIME_RESPONSE, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
    }

    /*  JADX ERROR: StackOverflow in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    public static java.lang.String getNextLineSkippingBlankLines(java.io.BufferedReader r2) {
        /*
        L_0x0000:
            java.lang.String r0 = r2.readLine()
            if (r0 == 0) goto L_0x000c
            int r1 = r0.length()
            if (r1 == 0) goto L_0x0000
        L_0x000c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.table.MimeHelper.getNextLineSkippingBlankLines(java.io.BufferedReader):java.lang.String");
    }

    public static ArrayList<MimePart> readBatchResponseStream(InputStream inputStream, String str, OperationContext operationContext, TablePayloadFormat tablePayloadFormat) {
        ArrayList<MimePart> arrayList = new ArrayList<>();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        String concat = "--".concat(str);
        MimeHeader readMimeHeader = readMimeHeader(bufferedReader, operationContext);
        String str2 = readMimeHeader.boundary;
        if (str2 == null || !str2.equals(concat)) {
            throw generateMimeParseException();
        }
        if (readMimeHeader.subBoundary == null) {
            do {
                arrayList.add(readMimePart(bufferedReader, readMimeHeader.boundary, operationContext));
            } while (readMimeHeader(bufferedReader, operationContext) != null);
        } else if (readMimeHeader(bufferedReader, operationContext) != null) {
            do {
                arrayList.add(readMimePart(bufferedReader, readMimeHeader.subBoundary, operationContext));
            } while (readMimeHeader(bufferedReader, operationContext) != null);
        } else {
            throw generateMimeParseException();
        }
        return arrayList;
    }

    public static MimeHeader readMimeHeader(BufferedReader bufferedReader, OperationContext operationContext) {
        String str;
        String readLine;
        MimeHeader mimeHeader = new MimeHeader();
        bufferedReader.mark(Constants.MB);
        String nextLineSkippingBlankLines = getNextLineSkippingBlankLines(bufferedReader);
        mimeHeader.boundary = nextLineSkippingBlankLines;
        if (nextLineSkippingBlankLines.endsWith("--")) {
            return null;
        }
        if (!mimeHeader.boundary.startsWith("--")) {
            bufferedReader.reset();
            return null;
        }
        for (int i2 = 0; i2 < 2 && (readLine = bufferedReader.readLine()) != null && readLine.length() != 0; i2++) {
            if (readLine.startsWith("Content-Type:")) {
                String[] split = readLine.split("Content-Type: ");
                if (split == null || split.length != 2) {
                    throw generateMimeParseException();
                }
                mimeHeader.contentType = split[1];
            } else if (readLine.startsWith("Content-Transfer-Encoding:")) {
                String[] split2 = readLine.split("Content-Transfer-Encoding: ");
                if (split2 == null || split2.length != 2) {
                    throw generateMimeParseException();
                }
                mimeHeader.contentTransferEncoding = split2[1];
            } else {
                throw generateMimeParseException();
            }
        }
        if (Utility.isNullOrEmpty(mimeHeader.boundary) || (str = mimeHeader.contentType) == null) {
            throw generateMimeParseException();
        }
        if (str.startsWith("multipart/mixed; boundary=")) {
            String[] split3 = mimeHeader.contentType.split("multipart/mixed; boundary=");
            if (split3 == null || split3.length != 2) {
                throw generateMimeParseException();
            }
            mimeHeader.subBoundary = "--".concat(split3[1]);
        } else if (!mimeHeader.contentType.equals("application/http")) {
            throw generateMimeParseException();
        }
        String str2 = mimeHeader.contentTransferEncoding;
        if (str2 == null || str2.equals("binary")) {
            return mimeHeader;
        }
        throw generateMimeParseException();
    }

    public static MimePart readMimePart(BufferedReader bufferedReader, String str, OperationContext operationContext) {
        MimePart mimePart = new MimePart();
        String nextLineSkippingBlankLines = getNextLineSkippingBlankLines(bufferedReader);
        if (nextLineSkippingBlankLines.startsWith("HTTP/1.1 ")) {
            String[] split = nextLineSkippingBlankLines.split(" ");
            if (split.length >= 3) {
                mimePart.httpStatusCode = Integer.parseInt(split[1]);
                mimePart.httpStatusMessage = nextLineSkippingBlankLines.substring(13);
                String readLine = bufferedReader.readLine();
                while (readLine != null && readLine.length() > 0) {
                    String[] split2 = readLine.split(": ");
                    if (split2.length >= 2) {
                        mimePart.headers.put(split2[0], split2[1]);
                        readLine = bufferedReader.readLine();
                    } else {
                        throw generateMimeParseException();
                    }
                }
                bufferedReader.mark(Constants.MB);
                String nextLineSkippingBlankLines2 = getNextLineSkippingBlankLines(bufferedReader);
                if (nextLineSkippingBlankLines2 == null) {
                    throw generateMimeParseException();
                } else if (nextLineSkippingBlankLines2.startsWith(str)) {
                    bufferedReader.reset();
                    mimePart.payload = "";
                    return mimePart;
                } else {
                    StringBuilder sb = new StringBuilder();
                    while (!nextLineSkippingBlankLines2.startsWith(str)) {
                        sb.append(nextLineSkippingBlankLines2);
                        bufferedReader.mark(Constants.MB);
                        nextLineSkippingBlankLines2 = getNextLineSkippingBlankLines(bufferedReader);
                        if (nextLineSkippingBlankLines2 == null) {
                            throw generateMimeParseException();
                        }
                    }
                    bufferedReader.reset();
                    mimePart.payload = sb.toString();
                    return mimePart;
                }
            } else {
                throw generateMimeParseException();
            }
        } else {
            throw generateMimeParseException();
        }
    }

    public static void writeBatchToStream(OutputStream outputStream, TableRequestOptions tableRequestOptions, String str, URI uri, TableBatchOperation tableBatchOperation, String str2, String str3, OperationContext operationContext) {
        String str4 = str;
        URI uri2 = uri;
        TableBatchOperation tableBatchOperation2 = tableBatchOperation;
        String str5 = str2;
        String str6 = str3;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, "UTF-8");
        boolean z = true;
        int i2 = 0;
        if (!(tableBatchOperation.size() == 1 && ((TableOperation) tableBatchOperation2.get(0)).getOperationType() == TableOperationType.RETRIEVE)) {
            z = false;
        }
        if (z) {
            QueryTableOperation queryTableOperation = (QueryTableOperation) tableBatchOperation2.get(0);
            writeMIMEBoundary(outputStreamWriter, str5);
            MimePart mimePart = new MimePart();
            mimePart.op = queryTableOperation.getOperationType();
            mimePart.requestIdentity = new UriQueryBuilder().addToURI(PathUtility.appendPathToSingleUri(uri2, queryTableOperation.generateRequestIdentityWithTable(str4)));
            mimePart.headers.put("Accept", generateAcceptHeaderValue(tableRequestOptions.getTablePayloadFormat()));
            mimePart.headers.put(TableConstants.HeaderConstants.MAX_DATA_SERVICE_VERSION, "3.0");
            outputStreamWriter.write(mimePart.toRequestString());
        } else {
            writeMIMEBoundary(outputStreamWriter, str5);
            writeMIMEContentType(outputStreamWriter, str6);
            outputStreamWriter.write(ProxyHandlerImpl.NEW_LINE);
            Iterator it = tableBatchOperation.iterator();
            while (it.hasNext()) {
                TableOperation tableOperation = (TableOperation) it.next();
                writeMIMEBoundary(outputStreamWriter, str6);
                MimePart mimePart2 = new MimePart();
                mimePart2.op = tableOperation.getOperationType();
                mimePart2.requestIdentity = new UriQueryBuilder().addToURI(PathUtility.appendPathToSingleUri(uri2, tableOperation.generateRequestIdentityWithTable(str4)));
                mimePart2.headers.put(TableConstants.HeaderConstants.CONTENT_ID, Integer.toString(i2));
                mimePart2.headers.put("Accept", generateAcceptHeaderValue(tableRequestOptions.getTablePayloadFormat()));
                mimePart2.headers.put(TableConstants.HeaderConstants.MAX_DATA_SERVICE_VERSION, "3.0");
                if (tableOperation.getOperationType() == TableOperationType.INSERT_OR_MERGE || tableOperation.getOperationType() == TableOperationType.MERGE) {
                    tableRequestOptions.assertNoEncryptionPolicyOrStrictMode();
                    HashMap<String, String> hashMap = mimePart2.headers;
                    TableOperationType tableOperationType = TableOperationType.MERGE;
                    hashMap.put(TableConstants.HeaderConstants.X_HTTP_METHOD, "MERGE");
                }
                if (!((tableOperation.getOperationType() != TableOperationType.DELETE && tableOperation.getOperationType() != TableOperationType.REPLACE && tableOperation.getOperationType() != TableOperationType.MERGE) || tableOperation.getEntity() == null || tableOperation.getEntity().getEtag() == null)) {
                    mimePart2.headers.put(Constants.HeaderConstants.IF_MATCH, tableOperation.getEntity().getEtag());
                }
                if (tableOperation.getOperationType() == TableOperationType.INSERT) {
                    mimePart2.headers.put(TableConstants.HeaderConstants.PREFER, tableOperation.getEchoContent() ? TableConstants.HeaderConstants.RETURN_CONTENT : TableConstants.HeaderConstants.RETURN_NO_CONTENT);
                }
                if (tableOperation.getOperationType() != TableOperationType.DELETE) {
                    mimePart2.headers.put("Content-Type", "application/json");
                    String writeStringForOperation = writeStringForOperation(tableOperation, tableRequestOptions, operationContext);
                    mimePart2.payload = writeStringForOperation;
                    mimePart2.headers.put(Constants.HeaderConstants.CONTENT_LENGTH, Integer.toString(writeStringForOperation.getBytes("UTF-8").length));
                } else {
                    OperationContext operationContext2 = operationContext;
                }
                outputStreamWriter.write(mimePart2.toRequestString());
                i2++;
                str4 = str;
            }
        }
        if (!z) {
            writeMIMEBoundaryClosure(outputStreamWriter, str6);
        }
        writeMIMEBoundaryClosure(outputStreamWriter, str5);
        outputStreamWriter.flush();
    }

    public static void writeMIMEBoundary(OutputStreamWriter outputStreamWriter, String str) {
        outputStreamWriter.write(String.format("--%s\r\n", new Object[]{str}));
    }

    public static void writeMIMEBoundaryClosure(OutputStreamWriter outputStreamWriter, String str) {
        outputStreamWriter.write(String.format("--%s--\r\n", new Object[]{str}));
    }

    public static void writeMIMEContentType(OutputStreamWriter outputStreamWriter, String str) {
        outputStreamWriter.write(String.format("Content-Type: multipart/mixed; boundary=%s\r\n", new Object[]{str}));
    }

    public static String writeStringForOperation(TableOperation tableOperation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("entity", tableOperation.getEntity());
        StringWriter stringWriter = new StringWriter();
        TableEntitySerializer.writeSingleEntityToString(stringWriter, tableRequestOptions, tableOperation.getEntity(), false, operationContext);
        stringWriter.write(ProxyHandlerImpl.NEW_LINE);
        return stringWriter.toString();
    }
}
