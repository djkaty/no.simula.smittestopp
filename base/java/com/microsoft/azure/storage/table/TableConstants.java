package com.microsoft.azure.storage.table;

public final class TableConstants {
    public static final String ETAG_PREFIX = "\"datetime'";
    public static final String FILTER = "$filter";
    public static final String PARTITION_KEY = "PartitionKey";
    public static final String ROW_KEY = "RowKey";
    public static final String SELECT = "$select";
    public static final String TABLES_SERVICE_TABLES_NAME = "Tables";
    public static final String TABLE_NAME = "TableName";
    public static final String TABLE_SERVICE_NEXT_MARKER = "NextMarker";
    public static final String TABLE_SERVICE_NEXT_PARTITION_KEY = "NextPartitionKey";
    public static final String TABLE_SERVICE_NEXT_ROW_KEY = "NextRowKey";
    public static final String TABLE_SERVICE_NEXT_TABLE_NAME = "NextTableName";
    public static final String TABLE_SERVICE_PREFIX_FOR_TABLE_CONTINUATION = "x-ms-continuation-";
    public static final String TIMESTAMP = "Timestamp";
    public static final String TOP = "$top";

    public static class ErrorConstants {
        public static final String ERROR_CODE = "code";
        public static final String ERROR_EXCEPTION_STACK_TRACE = "stacktrace";
        public static final String ERROR_EXCEPTION_TYPE = "type";
        public static final String ERROR_MESSAGE = "message";
        public static final String ERROR_ROOT_ELEMENT = "error";
        public static final String INNER_ERROR = "innererror";
    }

    public static class HeaderConstants {
        public static final String CONTENT_ID = "Content-ID";
        public static final String DATA_SERVICE_VERSION = "DataServiceVersion";
        public static final String DATA_SERVICE_VERSION_VALUE = "3.0";
        public static final String ETAG = "ETag";
        public static final String JSON_ACCEPT_TYPE = "application/json;odata=minimalmetadata";
        public static final String JSON_CONTENT_TYPE = "application/json";
        public static final String JSON_FULL_METADATA_ACCEPT_TYPE = "application/json;odata=fullmetadata";
        public static final String JSON_NO_METADATA_ACCEPT_TYPE = "application/json;odata=nometadata";
        public static final String MAX_DATA_SERVICE_VERSION = "MaxDataServiceVersion";
        public static final String MAX_DATA_SERVICE_VERSION_VALUE = "3.0";
        public static final String MULTIPART_MIXED_FORMAT = "multipart/mixed; boundary=%s";
        public static final String PREFER = "Prefer";
        public static final String RETURN_CONTENT = "return-content";
        public static final String RETURN_NO_CONTENT = "return-no-content";
        public static final String X_HTTP_METHOD = "X-HTTP-Method";
    }
}
