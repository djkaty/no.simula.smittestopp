package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.table.TableConstants;
import java.net.HttpURLConnection;
import java.net.URI;

public final class TableRequest {
    public static void applyContinuationToQueryBuilder(UriQueryBuilder uriQueryBuilder, ResultContinuation resultContinuation) {
        if (resultContinuation != null) {
            if (resultContinuation.getNextPartitionKey() != null) {
                uriQueryBuilder.add(TableConstants.TABLE_SERVICE_NEXT_PARTITION_KEY, resultContinuation.getNextPartitionKey());
            }
            if (resultContinuation.getNextRowKey() != null) {
                uriQueryBuilder.add(TableConstants.TABLE_SERVICE_NEXT_ROW_KEY, resultContinuation.getNextRowKey());
            }
            if (resultContinuation.getNextTableName() != null) {
                uriQueryBuilder.add(TableConstants.TABLE_SERVICE_NEXT_TABLE_NAME, resultContinuation.getNextTableName());
            }
        }
    }

    public static HttpURLConnection batch(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str) {
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(PathUtility.appendPathToSingleUri(uri, "$batch"), tableRequestOptions, uriQueryBuilder, operationContext);
        setAcceptHeaderForHttpWebRequest(createURLConnection, tableRequestOptions.getTablePayloadFormat());
        createURLConnection.setRequestProperty("Content-Type", String.format(TableConstants.HeaderConstants.MULTIPART_MIXED_FORMAT, new Object[]{str}));
        createURLConnection.setRequestProperty(TableConstants.HeaderConstants.MAX_DATA_SERVICE_VERSION, "3.0");
        createURLConnection.setRequestMethod("POST");
        createURLConnection.setDoOutput(true);
        return createURLConnection;
    }

    public static HttpURLConnection coreCreate(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str, String str2, String str3, String str4) {
        URI uri2;
        if (!Utility.isNullOrEmpty(str3)) {
            uri2 = PathUtility.appendPathToSingleUri(uri, str.concat(String.format("(%s)", new Object[]{str3})));
        } else {
            uri2 = PathUtility.appendPathToSingleUri(uri, str);
        }
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri2, tableRequestOptions, uriQueryBuilder, operationContext);
        setAcceptHeaderForHttpWebRequest(createURLConnection, tableRequestOptions.getTablePayloadFormat());
        createURLConnection.setRequestProperty("Content-Type", "application/json");
        createURLConnection.setRequestProperty(TableConstants.HeaderConstants.MAX_DATA_SERVICE_VERSION, "3.0");
        if (!Utility.isNullOrEmpty(str2)) {
            createURLConnection.setRequestProperty(Constants.HeaderConstants.IF_MATCH, str2);
        }
        createURLConnection.setRequestMethod(str4);
        return createURLConnection;
    }

    public static HttpURLConnection delete(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str, String str2, String str3) {
        return coreCreate(uri, tableRequestOptions, uriQueryBuilder, operationContext, str, str3, str2, "DELETE");
    }

    public static HttpURLConnection getAcl(URI uri, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, tableRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection insert(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str, String str2, String str3, boolean z, TableUpdateType tableUpdateType) {
        HttpURLConnection httpURLConnection;
        TableUpdateType tableUpdateType2 = tableUpdateType;
        if (tableUpdateType2 == null) {
            httpURLConnection = coreCreate(uri, tableRequestOptions, uriQueryBuilder, operationContext, str, str3, (String) null, "POST");
            httpURLConnection.setRequestProperty(TableConstants.HeaderConstants.PREFER, z ? TableConstants.HeaderConstants.RETURN_CONTENT : TableConstants.HeaderConstants.RETURN_NO_CONTENT);
        } else if (tableUpdateType2 == TableUpdateType.MERGE) {
            tableRequestOptions.assertNoEncryptionPolicyOrStrictMode();
            httpURLConnection = coreCreate(uri, tableRequestOptions, uriQueryBuilder, operationContext, str, (String) null, str2, "POST");
            httpURLConnection.setRequestProperty(TableConstants.HeaderConstants.X_HTTP_METHOD, "MERGE");
        } else {
            httpURLConnection = tableUpdateType2 == TableUpdateType.REPLACE ? coreCreate(uri, tableRequestOptions, uriQueryBuilder, operationContext, str, (String) null, str2, "PUT") : null;
        }
        httpURLConnection.setDoOutput(true);
        return httpURLConnection;
    }

    public static HttpURLConnection merge(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str, String str2, String str3) {
        tableRequestOptions.assertNoEncryptionPolicyOrStrictMode();
        HttpURLConnection coreCreate = coreCreate(uri, tableRequestOptions, uriQueryBuilder, operationContext, str, str3, str2, "POST");
        coreCreate.setRequestProperty(TableConstants.HeaderConstants.X_HTTP_METHOD, "MERGE");
        coreCreate.setDoOutput(true);
        return coreCreate;
    }

    public static HttpURLConnection query(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str, String str2, ResultContinuation resultContinuation) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        UriQueryBuilder uriQueryBuilder2 = uriQueryBuilder;
        applyContinuationToQueryBuilder(uriQueryBuilder2, resultContinuation);
        return coreCreate(uri, tableRequestOptions, uriQueryBuilder2, operationContext, str, (String) null, str2, "GET");
    }

    public static void setAcceptHeaderForHttpWebRequest(HttpURLConnection httpURLConnection, TablePayloadFormat tablePayloadFormat) {
        if (tablePayloadFormat == TablePayloadFormat.JsonFullMetadata) {
            httpURLConnection.setRequestProperty("Accept", TableConstants.HeaderConstants.JSON_FULL_METADATA_ACCEPT_TYPE);
        } else if (tablePayloadFormat == TablePayloadFormat.Json) {
            httpURLConnection.setRequestProperty("Accept", TableConstants.HeaderConstants.JSON_ACCEPT_TYPE);
        } else if (tablePayloadFormat == TablePayloadFormat.JsonNoMetadata) {
            httpURLConnection.setRequestProperty("Accept", TableConstants.HeaderConstants.JSON_NO_METADATA_ACCEPT_TYPE);
        }
    }

    public static HttpURLConnection setAcl(URI uri, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, tableRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setDoOutput(true);
        return createURLConnection;
    }

    public static HttpURLConnection update(URI uri, TableRequestOptions tableRequestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext, String str, String str2, String str3) {
        HttpURLConnection coreCreate = coreCreate(uri, tableRequestOptions, uriQueryBuilder, operationContext, str, str3, str2, "PUT");
        coreCreate.setDoOutput(true);
        return coreCreate;
    }
}
