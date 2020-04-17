package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.ListingContext;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.HashMap;

public final class QueueRequest {
    public static final String MESSAGE_TTL = "messagettl";
    public static final String METADATA = "metadata";
    public static final String NUMBER_OF_MESSAGES = "numofmessages";
    public static final String PEEK_ONLY = "peekonly";
    public static final String POP_RECEIPT = "popreceipt";
    public static final String VISIBILITY_TIMEOUT = "visibilitytimeout";

    public static void addMetadata(HttpURLConnection httpURLConnection, HashMap<String, String> hashMap, OperationContext operationContext) {
        BaseRequest.addMetadata(httpURLConnection, hashMap, operationContext);
    }

    public static HttpURLConnection clearMessages(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, (UriQueryBuilder) null, operationContext);
        createURLConnection.setRequestMethod("DELETE");
        return createURLConnection;
    }

    public static HttpURLConnection create(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        return BaseRequest.create(uri, queueRequestOptions, (UriQueryBuilder) null, operationContext);
    }

    public static HttpURLConnection delete(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        return BaseRequest.delete(uri, queueRequestOptions, (UriQueryBuilder) null, operationContext);
    }

    public static HttpURLConnection deleteMessage(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(POP_RECEIPT, str);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("DELETE");
        return createURLConnection;
    }

    public static HttpURLConnection downloadAttributes(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "metadata");
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod(Constants.HTTP_HEAD);
        return createURLConnection;
    }

    public static HttpURLConnection getAcl(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection list(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext, ListingContext listingContext, QueueListingDetails queueListingDetails) {
        UriQueryBuilder listUriQueryBuilder = BaseRequest.getListUriQueryBuilder(listingContext);
        if (queueListingDetails == QueueListingDetails.ALL || queueListingDetails == QueueListingDetails.METADATA) {
            listUriQueryBuilder.add("include", "metadata");
        }
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, listUriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection peekMessages(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext, int i2) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(PEEK_ONLY, "true");
        if (i2 != 0) {
            uriQueryBuilder.add(NUMBER_OF_MESSAGES, Integer.toString(i2));
        }
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection putMessage(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext, int i2, int i3) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        if (i2 != 0) {
            uriQueryBuilder.add(VISIBILITY_TIMEOUT, Integer.toString(i2));
        }
        if (i3 != 0) {
            uriQueryBuilder.add(MESSAGE_TTL, Integer.toString(i3));
        }
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("POST");
        return createURLConnection;
    }

    public static HttpURLConnection retrieveMessages(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext, int i2, int i3) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        if (i2 != 0) {
            uriQueryBuilder.add(NUMBER_OF_MESSAGES, Integer.toString(i2));
        }
        uriQueryBuilder.add(VISIBILITY_TIMEOUT, Integer.toString(i3));
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection setAcl(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        return createURLConnection;
    }

    public static HttpURLConnection setMetadata(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        return BaseRequest.setMetadata(uri, queueRequestOptions, (UriQueryBuilder) null, operationContext);
    }

    public static HttpURLConnection updateMessage(URI uri, QueueRequestOptions queueRequestOptions, OperationContext operationContext, String str, int i2) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(POP_RECEIPT, str);
        uriQueryBuilder.add(VISIBILITY_TIMEOUT, Integer.toString(i2));
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, queueRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        return createURLConnection;
    }
}
