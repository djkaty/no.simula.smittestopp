package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import java.net.HttpURLConnection;

public class TableResponse {
    public static ResultContinuation getTableContinuationFromResponse(HttpURLConnection httpURLConnection) {
        boolean z;
        ResultContinuation resultContinuation = new ResultContinuation();
        resultContinuation.setContinuationType(ResultContinuationType.TABLE);
        String headerField = httpURLConnection.getHeaderField(TableConstants.TABLE_SERVICE_PREFIX_FOR_TABLE_CONTINUATION.concat(TableConstants.TABLE_SERVICE_NEXT_PARTITION_KEY));
        boolean z2 = true;
        if (headerField != null) {
            resultContinuation.setNextPartitionKey(headerField);
            z = true;
        } else {
            z = false;
        }
        String headerField2 = httpURLConnection.getHeaderField(TableConstants.TABLE_SERVICE_PREFIX_FOR_TABLE_CONTINUATION.concat(TableConstants.TABLE_SERVICE_NEXT_ROW_KEY));
        if (headerField2 != null) {
            resultContinuation.setNextRowKey(headerField2);
            z = true;
        }
        String headerField3 = httpURLConnection.getHeaderField(TableConstants.TABLE_SERVICE_PREFIX_FOR_TABLE_CONTINUATION.concat("NextMarker"));
        if (headerField3 != null) {
            resultContinuation.setNextMarker(headerField3);
            z = true;
        }
        String headerField4 = httpURLConnection.getHeaderField(TableConstants.TABLE_SERVICE_PREFIX_FOR_TABLE_CONTINUATION.concat(TableConstants.TABLE_SERVICE_NEXT_TABLE_NAME));
        if (headerField4 != null) {
            resultContinuation.setNextTableName(headerField4);
        } else {
            z2 = z;
        }
        if (z2) {
            return resultContinuation;
        }
        return null;
    }
}
