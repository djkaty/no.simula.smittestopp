package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.util.Map;

public final class BaseRequest {
    public static final String ACCOUNT = "account";
    public static final String METADATA = "metadata";
    public static final String SERVICE = "service";
    public static final String STATS = "stats";
    public static final String TIMEOUT = "timeout";
    public static String userAgent;

    public static void addMetadata(HttpURLConnection httpURLConnection, Map<String, String> map, OperationContext operationContext) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                addMetadata(httpURLConnection, (String) next.getKey(), (String) next.getValue(), operationContext);
            }
        }
    }

    public static void addOptionalHeader(HttpURLConnection httpURLConnection, String str, String str2) {
        if (str2 != null && !str2.equals("")) {
            httpURLConnection.setRequestProperty(str, str2);
        }
    }

    public static HttpURLConnection create(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        return createURLConnection;
    }

    public static HttpURLConnection createURLConnection(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        HttpURLConnection httpURLConnection;
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        if (!(requestOptions.getTimeoutIntervalInMs() == null || requestOptions.getTimeoutIntervalInMs().intValue() == 0)) {
            uriQueryBuilder.add(TIMEOUT, String.valueOf(requestOptions.getTimeoutIntervalInMs().intValue() / 1000));
        }
        URL url = uriQueryBuilder.addToURI(uri).toURL();
        Proxy defaultProxy = OperationContext.getDefaultProxy();
        if (!(operationContext == null || operationContext.getProxy() == null)) {
            defaultProxy = operationContext.getProxy();
        }
        if (defaultProxy != null) {
            httpURLConnection = (HttpURLConnection) url.openConnection(defaultProxy);
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        }
        int remainingTimeout = Utility.getRemainingTimeout(requestOptions.getOperationExpiryTimeInMs(), requestOptions.getTimeoutIntervalInMs());
        httpURLConnection.setReadTimeout(remainingTimeout);
        httpURLConnection.setConnectTimeout(remainingTimeout);
        httpURLConnection.setRequestProperty("Accept", Constants.HeaderConstants.XML_TYPE);
        httpURLConnection.setRequestProperty(Constants.HeaderConstants.ACCEPT_CHARSET, "UTF-8");
        httpURLConnection.setRequestProperty("Content-Type", "");
        httpURLConnection.setRequestProperty(Constants.HeaderConstants.STORAGE_VERSION_HEADER, Constants.HeaderConstants.TARGET_STORAGE_VERSION);
        httpURLConnection.setRequestProperty(Constants.HeaderConstants.USER_AGENT, getUserAgent());
        httpURLConnection.setRequestProperty(Constants.HeaderConstants.CLIENT_REQUEST_ID_HEADER, operationContext.getClientRequestID());
        return httpURLConnection;
    }

    public static HttpURLConnection delete(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("DELETE");
        return createURLConnection;
    }

    public static HttpURLConnection getAccountInfo(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, "account");
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod(Constants.HTTP_HEAD);
        return createURLConnection;
    }

    public static UriQueryBuilder getListUriQueryBuilder(ListingContext listingContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.LIST);
        if (listingContext != null) {
            if (!Utility.isNullOrEmpty(listingContext.getPrefix())) {
                uriQueryBuilder.add(Constants.QueryConstants.PREFIX, listingContext.getPrefix());
            }
            if (!Utility.isNullOrEmpty(listingContext.getMarker())) {
                uriQueryBuilder.add(Constants.QueryConstants.MARKER, listingContext.getMarker());
            }
            if (listingContext.getMaxResults() != null && listingContext.getMaxResults().intValue() > 0) {
                uriQueryBuilder.add(Constants.QueryConstants.MAX_RESULTS, listingContext.getMaxResults().toString());
            }
        }
        return uriQueryBuilder;
    }

    public static HttpURLConnection getProperties(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod(Constants.HTTP_HEAD);
        return createURLConnection;
    }

    public static HttpURLConnection getServiceProperties(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SERVICE);
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection getServiceStats(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "stats");
        uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SERVICE);
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static String getUserAgent() {
        if (userAgent == null) {
            userAgent = String.format("%s/%s %s", new Object[]{Constants.HeaderConstants.USER_AGENT_PREFIX, Constants.HeaderConstants.USER_AGENT_VERSION, String.format(Utility.LOCALE_US, "(JavaJRE %s; %s %s)", new Object[]{System.getProperty("java.version"), System.getProperty("os.name").replaceAll(" ", ""), System.getProperty("os.version")})});
        }
        return userAgent;
    }

    public static HttpURLConnection setMetadata(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "metadata");
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        return createURLConnection;
    }

    public static HttpURLConnection setServiceProperties(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SERVICE);
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        return createURLConnection;
    }

    public static HttpURLConnection undelete(URI uri, RequestOptions requestOptions, UriQueryBuilder uriQueryBuilder, OperationContext operationContext) {
        if (uriQueryBuilder == null) {
            uriQueryBuilder = new UriQueryBuilder();
        }
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.UNDELETE);
        HttpURLConnection createURLConnection = createURLConnection(uri, requestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        return createURLConnection;
    }

    public static void addMetadata(HttpURLConnection httpURLConnection, String str, String str2, OperationContext operationContext) {
        if (Utility.isNullOrEmptyOrWhitespace(str)) {
            throw new IllegalArgumentException(SR.METADATA_KEY_INVALID);
        } else if (!Utility.isNullOrEmptyOrWhitespace(str2)) {
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.PREFIX_FOR_STORAGE_METADATA + str, str2);
        } else {
            throw new IllegalArgumentException(SR.METADATA_VALUE_INVALID);
        }
    }
}
