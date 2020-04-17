.class public Lcom/microsoft/azure/storage/core/SR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCOUNT_NAME_MISMATCH:Ljava/lang/String; = "The account name does not match the existing account name on the credentials."

.field public static final ACCOUNT_NAME_NULL_OR_EMPTY:Ljava/lang/String; = "The account name is null or empty."

.field public static final APPEND_BLOB_MD5_NOT_POSSIBLE:Ljava/lang/String; = "MD5 cannot be calculated for an existing append blob because it would require reading the existing data. Please disable StoreFileContentMD5."

.field public static final ARGUMENT_NULL:Ljava/lang/String; = "The argument must not be null. Argument name: %s."

.field public static final ARGUMENT_NULL_OR_EMPTY:Ljava/lang/String; = "The argument must not be null or an empty string. Argument name: %s."

.field public static final ARGUMENT_OUT_OF_RANGE_ERROR:Ljava/lang/String; = "The argument is out of range. Argument name: %s, Value passed: %s."

.field public static final ATTEMPTED_TO_SERIALIZE_INACCESSIBLE_PROPERTY:Ljava/lang/String; = "An attempt was made to access an inaccessible member of the entity during serialization."

.field public static final BLOB:Ljava/lang/String; = "blob"

.field public static final BLOB_DATA_CORRUPTED:Ljava/lang/String; = "Blob data corrupted (integrity check failed), Expected value is %s, retrieved %s"

.field public static final BLOB_ENDPOINT_NOT_CONFIGURED:Ljava/lang/String; = "No blob endpoint configured."

.field public static final BLOB_HASH_MISMATCH:Ljava/lang/String; = "Blob hash mismatch (integrity check failed), Expected value is %s, retrieved %s."

.field public static final BLOB_MD5_NOT_SUPPORTED_FOR_PAGE_BLOBS:Ljava/lang/String; = "Blob level MD5 is not supported for page blobs."

.field public static final BLOB_OVER_MAX_BLOCK_LIMIT:Ljava/lang/String; = "The total blocks for this upload exceeds the maximum allowable limit. Please increase the block size."

.field public static final BLOB_TYPE_NOT_DEFINED:Ljava/lang/String; = "The blob type is not defined.  Allowed types are BlobType.BLOCK_BLOB and BlobType.Page_BLOB."

.field public static final CANNOT_CREATE_SAS_FOR_GIVEN_CREDENTIALS:Ljava/lang/String; = "Cannot create Shared Access Signature as the credentials does not have account name information. Please check that the credentials provided support creating Shared Access Signature."

.field public static final CANNOT_CREATE_SAS_FOR_SNAPSHOTS:Ljava/lang/String; = "Cannot create Shared Access Signature via references to blob snapshots. Please perform the given operation on the root blob instead."

.field public static final CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY:Ljava/lang/String; = "Cannot create Shared Access Signature unless the Account Key credentials are used by the ServiceClient."

.field public static final CANNOT_TRANSFORM_NON_HTTPS_URI_WITH_HTTPS_ONLY_CREDENTIALS:Ljava/lang/String; = "Cannot use HTTP with credentials that only support HTTPS."

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTENT_LENGTH_MISMATCH:Ljava/lang/String; = "An incorrect number of bytes was read from the connection. The connection may have been closed."

.field public static final COPY_SIZE_GREATER_THAN_100MB:Ljava/lang/String; = "Invalid copy length, length must be less than or equal to 100 MB in size."

.field public static final CREATING_NETWORK_STREAM:Ljava/lang/String; = "Creating a NetworkInputStream and expecting to read %s bytes."

.field public static final CREDENTIALS_CANNOT_SIGN_REQUEST:Ljava/lang/String; = "CloudBlobClient, CloudQueueClient and CloudTableClient require credentials that can sign a request."

.field public static final CUSTOM_RESOLVER_THREW:Ljava/lang/String; = "The custom property resolver delegate threw an exception. Check the inner exception for more details."

.field public static final DECRYPTION_LOGIC_ERROR:Ljava/lang/String; = "Decryption logic threw error. Please check the inner exception for more details."

.field public static final DEFAULT_SERVICE_VERSION_ONLY_SET_FOR_BLOB_SERVICE:Ljava/lang/String; = "DefaultServiceVersion can only be set for the Blob service."

.field public static final DELETE_SNAPSHOT_NOT_VALID_ERROR:Ljava/lang/String; = "The option \'%s\' must be \'None\' to delete a specific snapshot specified by \'%s\'."

.field public static final DIRECTORY:Ljava/lang/String; = "directory"

.field public static final EDMTYPE_WAS_NULL:Ljava/lang/String; = "EdmType cannot be null."

.field public static final EMPTY_BATCH_NOT_ALLOWED:Ljava/lang/String; = "Cannot execute an empty batch operation."

.field public static final ENCRYPTED_MESSAGE_DESERIALIZING_ERROR:Ljava/lang/String; = "Error while de-serializing the encrypted queue message string from the wire. Please check inner exception for more details."

.field public static final ENCRYPTED_MESSAGE_TOO_LARGE:Ljava/lang/String; = "Encrypted Messages cannot be larger than {0} bytes. Please note that encrypting queue messages can increase their size."

.field public static final ENCRYPTING_NULL_PROPERTIES_NOT_ALLOWED:Ljava/lang/String; = "Null properties cannot be encrypted. Please assign a default value to the property if you wish to encrypt it."

.field public static final ENCRYPTION_DATA_NOT_PRESENT_ERROR:Ljava/lang/String; = "Encryption data does not exist. If you do not want to decrypt the data, please do not set the require encryption flag on request options"

.field public static final ENCRYPTION_NOT_SUPPORTED_FOR_EXISTING_BLOBS:Ljava/lang/String; = "Encryption is not supported for a blob that already exists. Please do not specify an encryption policy."

.field public static final ENCRYPTION_NOT_SUPPORTED_FOR_FILES:Ljava/lang/String; = "Encryption is not supported for files."

.field public static final ENCRYPTION_NOT_SUPPORTED_FOR_OPERATION:Ljava/lang/String; = "Encryption is not supported for the current operation. Please ensure that EncryptionPolicy is not set on RequestOptions."

.field public static final ENCRYPTION_POLICY_MISSING_IN_STRICT_MODE:Ljava/lang/String; = "Encryption Policy is mandatory when RequireEncryption is set to true. If you do not want to encrypt/decrypt data, please set RequireEncryption to false in request options."

.field public static final ENCRYPTION_PROTOCOL_VERSION_INVALID:Ljava/lang/String; = "Invalid Encryption Agent. This version of the client library does not understand the Encryption Agent set on the blob."

.field public static final ENDPOINT_INFORMATION_UNAVAILABLE:Ljava/lang/String; = "Endpoint information not available for Account using Shared Access Credentials."

.field public static final ENTITY_PROPERTY_CANNOT_BE_NULL_FOR_PRIMITIVES:Ljava/lang/String; = "EntityProperty cannot be set to null for primitive value types."

.field public static final ENUMERATION_ERROR:Ljava/lang/String; = "An error occurred while enumerating the result, check the original exception for details."

.field public static final ENUM_COULD_NOT_BE_PARSED:Ljava/lang/String; = "%s could not be parsed from \'%s\'."

.field public static final ETAG_INVALID_FOR_DELETE:Ljava/lang/String; = "Delete requires a valid ETag (which may be the \'*\' wildcard)."

.field public static final ETAG_INVALID_FOR_MERGE:Ljava/lang/String; = "Merge requires a valid ETag (which may be the \'*\' wildcard)."

.field public static final ETAG_INVALID_FOR_UPDATE:Ljava/lang/String; = "Replace requires a valid ETag (which may be the \'*\' wildcard)."

.field public static final EXCEPTION_THROWN_DURING_DESERIALIZATION:Ljava/lang/String; = "The entity threw an exception during deserialization."

.field public static final EXCEPTION_THROWN_DURING_SERIALIZATION:Ljava/lang/String; = "The entity threw an exception during serialization."

.field public static final EXPECTED_A_FIELD_NAME:Ljava/lang/String; = "Expected a field name."

.field public static final EXPECTED_END_ARRAY:Ljava/lang/String; = "Expected the end of a JSON Array."

.field public static final EXPECTED_END_OBJECT:Ljava/lang/String; = "Expected the end of a JSON Object."

.field public static final EXPECTED_START_ARRAY:Ljava/lang/String; = "Expected the start of a JSON Array."

.field public static final EXPECTED_START_ELEMENT_TO_EQUAL_ERROR:Ljava/lang/String; = "Expected START_ELEMENT to equal error."

.field public static final EXPECTED_START_OBJECT:Ljava/lang/String; = "Expected the start of a JSON Object."

.field public static final FAILED_TO_PARSE_PROPERTY:Ljava/lang/String; = "Failed to parse property \'%s\' with value \'%s\' as type \'%s\'"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FILE_ENDPOINT_NOT_CONFIGURED:Ljava/lang/String; = "No file endpoint configured."

.field public static final FILE_HASH_MISMATCH:Ljava/lang/String; = "File hash mismatch (integrity check failed), Expected value is %s, retrieved %s."

.field public static final FILE_MD5_NOT_POSSIBLE:Ljava/lang/String; = "MD5 cannot be calculated for an existing file because it would require reading the existing data. Please disable StoreFileContentMD5."

.field public static final INCORRECT_STREAM_LENGTH:Ljava/lang/String; = "An incorrect stream length was specified, resulting in an authentication failure. Please specify correct length, or -1."

.field public static final INPUT_STREAM_SHOULD_BE_MARKABLE:Ljava/lang/String; = "Input stream must be markable."

.field public static final INVALID_ACCOUNT_NAME:Ljava/lang/String; = "Invalid account name."

.field public static final INVALID_ACL_ACCESS_TYPE:Ljava/lang/String; = "Invalid acl public access type returned \'%s\'. Expected blob or container."

.field public static final INVALID_BLOB_TYPE:Ljava/lang/String; = "Incorrect Blob type, please use the correct Blob type to access a blob on the server. Expected %s, actual %s."

.field public static final INVALID_BLOCK_ID:Ljava/lang/String; = "Invalid blockID, blockID must be a valid Base64 String."

.field public static final INVALID_BLOCK_SIZE:Ljava/lang/String; = "Append block data should not exceed the maximum blob size condition value."

.field public static final INVALID_CONDITIONAL_HEADERS:Ljava/lang/String; = "The conditionals specified for this operation did not match server."

.field public static final INVALID_CONNECTION_STRING:Ljava/lang/String; = "Invalid connection string."

.field public static final INVALID_CONNECTION_STRING_DEV_STORE_NOT_TRUE:Ljava/lang/String; = "Invalid connection string, the UseDevelopmentStorage key must always be paired with \'true\'.  Remove the flag entirely otherwise."

.field public static final INVALID_CONTENT_LENGTH:Ljava/lang/String; = "ContentLength must be set to -1 or positive Long value."

.field public static final INVALID_CONTENT_TYPE:Ljava/lang/String; = "An incorrect Content-Type was returned from the server."

.field public static final INVALID_COPY_MD5_OPERATION:Ljava/lang/String; = "MD5 can only be specified with a synchronous copy operation."

.field public static final INVALID_CORS_RULE:Ljava/lang/String; = "A CORS rule must contain at least one allowed origin and allowed method, and MaxAgeInSeconds cannot have a value less than zero."

.field public static final INVALID_DATE_STRING:Ljava/lang/String; = "Invalid Date String: %s."

.field public static final INVALID_EDMTYPE_VALUE:Ljava/lang/String; = "Invalid value \'%s\' for EdmType."

.field public static final INVALID_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "Invalid Encryption Algorithm found on the resource. This version of the client library does not support the specified encryption algorithm."

.field public static final INVALID_FILE_LENGTH:Ljava/lang/String; = "File length must be greater than or equal to 0 bytes."

.field public static final INVALID_GEO_REPLICATION_STATUS:Ljava/lang/String; = "Null or Invalid geo-replication status in response: %s."

.field public static final INVALID_IP_ADDRESS:Ljava/lang/String; = "Error when parsing IPv4 address: IP address \'%s\' is invalid."

.field public static final INVALID_KEY:Ljava/lang/String; = "Storage Key is not a valid base64 encoded string."

.field public static final INVALID_LISTING_DETAILS:Ljava/lang/String; = "Invalid blob listing details specified."

.field public static final INVALID_LOGGING_LEVEL:Ljava/lang/String; = "Invalid logging operations specified."

.field public static final INVALID_MAX_WRITE_SIZE:Ljava/lang/String; = "Max write size is 4MB. Please specify a smaller range."

.field public static final INVALID_MESSAGE_LENGTH:Ljava/lang/String; = "The message size cannot be larger than %s bytes."

.field public static final INVALID_MIME_RESPONSE:Ljava/lang/String; = "Invalid MIME response received."

.field public static final INVALID_NUMBER_OF_BYTES_IN_THE_BUFFER:Ljava/lang/String; = "Page data must be a multiple of 512 bytes. Buffer currently contains %d bytes."

.field public static final INVALID_OPERATION_FOR_A_SHARE_SNAPSHOT:Ljava/lang/String; = "Cannot perform this operation on a share representing a snapshot."

.field public static final INVALID_OPERATION_FOR_A_SNAPSHOT:Ljava/lang/String; = "Cannot perform this operation on a blob representing a snapshot."

.field public static final INVALID_PAGE_BLOB_LENGTH:Ljava/lang/String; = "Page blob length must be multiple of 512."

.field public static final INVALID_PAGE_START_OFFSET:Ljava/lang/String; = "Page start offset must be multiple of 512."

.field public static final INVALID_RANGE_CONTENT_MD5_HEADER:Ljava/lang/String; = "Cannot specify x-ms-range-get-content-md5 header on ranges larger than 4 MB. Either use a BlobReadStream via openRead, or disable TransactionalMD5 via the BlobRequestOptions."

.field public static final INVALID_RESOURCE_NAME:Ljava/lang/String; = "Invalid %s name. Check MSDN for more information about valid naming."

.field public static final INVALID_RESOURCE_NAME_LENGTH:Ljava/lang/String; = "Invalid %s name length. The name must be between %s and %s characters long."

.field public static final INVALID_RESOURCE_RESERVED_NAME:Ljava/lang/String; = "Invalid %s name. This name is reserved."

.field public static final INVALID_RESPONSE_RECEIVED:Ljava/lang/String; = "The response received is invalid or improperly formatted."

.field public static final INVALID_STORAGE_PROTOCOL_VERSION:Ljava/lang/String; = "Storage protocol version prior to 2009-09-19 do not support shared key authentication."

.field public static final INVALID_STORAGE_SERVICE:Ljava/lang/String; = "Invalid storage service specified."

.field public static final INVALID_STREAM_LENGTH:Ljava/lang/String; = "Invalid stream length; stream must be between 0 and %s MB in length."

.field public static final ITERATOR_EMPTY:Ljava/lang/String; = "There are no more elements in this enumeration."

.field public static final KEY_AND_RESOLVER_MISSING:Ljava/lang/String; = "Key and Resolver are not initialized. Decryption requires either of them to be initialized."

.field public static final KEY_MISMATCH:Ljava/lang/String; = "Key mismatch. The key id stored on the service does not match the specified key."

.field public static final KEY_MISSING:Ljava/lang/String; = "Key is not initialized. Encryption requires it to be initialized."

.field public static final LEASE_CONDITION_ON_SOURCE:Ljava/lang/String; = "A lease condition cannot be specified on the source of a copy."

.field public static final LOG_STREAM_DELIMITER_ERROR:Ljava/lang/String; = "Error parsing log record: unexpected delimiter encountered."

.field public static final LOG_STREAM_END_ERROR:Ljava/lang/String; = "Error parsing log record: unexpected end of stream."

.field public static final LOG_STREAM_QUOTE_ERROR:Ljava/lang/String; = "Error parsing log record: unexpected quote character encountered."

.field public static final LOG_VERSION_UNSUPPORTED:Ljava/lang/String; = "A storage log version of %s is unsupported."

.field public static final MARK_EXPIRED:Ljava/lang/String; = "Stream mark expired."

.field public static final MAXIMUM_EXECUTION_TIMEOUT_EXCEPTION:Ljava/lang/String; = "The client could not finish the operation within specified maximum execution timeout."

.field public static final METADATA_KEY_INVALID:Ljava/lang/String; = "The key for one of the metadata key-value pairs is null, empty, or whitespace."

.field public static final METADATA_VALUE_INVALID:Ljava/lang/String; = "The value for one of the metadata key-value pairs is null, empty, or whitespace."

.field public static final MISSING_CREDENTIALS:Ljava/lang/String; = "No credentials provided."

.field public static final MISSING_MANDATORY_DATE_HEADER:Ljava/lang/String; = "Canonicalization did not find a non-empty x-ms-date header in the request. Please use a request with a valid x-ms-date header in RFC 123 format."

.field public static final MISSING_MANDATORY_PARAMETER_FOR_SAS:Ljava/lang/String; = "Missing mandatory parameters for valid Shared Access Signature."

.field public static final MISSING_MD5:Ljava/lang/String; = "ContentMD5 header is missing in the response."

.field public static final MISSING_NULLARY_CONSTRUCTOR:Ljava/lang/String; = "Class type must contain contain a nullary constructor."

.field public static final MULTIPLE_CREDENTIALS_PROVIDED:Ljava/lang/String; = "Cannot provide credentials as part of the address and as constructor parameter. Either pass in the address or use a different constructor."

.field public static final OPS_IN_BATCH_MUST_HAVE_SAME_PARTITION_KEY:Ljava/lang/String; = "All entities in a given batch must have the same partition key."

.field public static final PARAMETER_NOT_IN_RANGE:Ljava/lang/String; = "The value of the parameter \'%s\' should be between %s and %s."

.field public static final PARAMETER_SHOULD_BE_GREATER:Ljava/lang/String; = "The value of the parameter \'%s\' should be greater than %s."

.field public static final PARAMETER_SHOULD_BE_GREATER_OR_EQUAL:Ljava/lang/String; = "The value of the parameter \'%s\' should be greater than or equal to %s."

.field public static final PARTITIONKEY_MISSING_FOR_DELETE:Ljava/lang/String; = "Delete requires a partition key."

.field public static final PARTITIONKEY_MISSING_FOR_INSERT:Ljava/lang/String; = "Insert requires a partition key."

.field public static final PARTITIONKEY_MISSING_FOR_MERGE:Ljava/lang/String; = "Merge requires a partition key."

.field public static final PARTITIONKEY_MISSING_FOR_UPDATE:Ljava/lang/String; = "Replace requires a partition key."

.field public static final PATH_STYLE_URI_MISSING_ACCOUNT_INFORMATION:Ljava/lang/String; = "Missing account name information inside path style URI. Path style URIs should be of the form http://<IPAddress:Port>/<accountName>"

.field public static final PRECONDITION_FAILURE_IGNORED:Ljava/lang/String; = "Pre-condition failure on a retry is being ignored since the request should have succeeded in the first attempt."

.field public static final PRIMARY_ONLY_COMMAND:Ljava/lang/String; = "This operation can only be executed against the primary storage location."

.field public static final PROPERTY_CANNOT_BE_SERIALIZED_AS_GIVEN_EDMTYPE:Ljava/lang/String; = "Property %s with Edm Type %s cannot be de-serialized."

.field public static final QUERY_PARAMETER_NULL_OR_EMPTY:Ljava/lang/String; = "Cannot encode a query parameter with a null or empty key."

.field public static final QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER:Ljava/lang/String; = "Query requires a valid class type or resolver."

.field public static final QUEUE:Ljava/lang/String; = "queue"

.field public static final QUEUE_ENDPOINT_NOT_CONFIGURED:Ljava/lang/String; = "No queue endpoint configured."

.field public static final RELATIVE_ADDRESS_NOT_PERMITTED:Ljava/lang/String; = "Address %s is a relative address. Only absolute addresses are permitted."

.field public static final RESOURCE_NAME_EMPTY:Ljava/lang/String; = "Invalid %s name. The name may not be null, empty, or whitespace only."

.field public static final RESPONSE_RECEIVED_IS_INVALID:Ljava/lang/String; = "The response received is invalid or improperly formatted."

.field public static final RETRIEVE_MUST_BE_ONLY_OPERATION_IN_BATCH:Ljava/lang/String; = "A batch transaction with a retrieve operation cannot contain any other operations."

.field public static final ROWKEY_MISSING_FOR_DELETE:Ljava/lang/String; = "Delete requires a row key."

.field public static final ROWKEY_MISSING_FOR_INSERT:Ljava/lang/String; = "Insert requires a row key."

.field public static final ROWKEY_MISSING_FOR_MERGE:Ljava/lang/String; = "Merge requires a row key."

.field public static final ROWKEY_MISSING_FOR_UPDATE:Ljava/lang/String; = "Replace requires a row key."

.field public static final SCHEME_NULL_OR_EMPTY:Ljava/lang/String; = "The protocol to use is null. Please specify whether to use http or https."

.field public static final SECONDARY_ONLY_COMMAND:Ljava/lang/String; = "This operation can only be executed against the secondary storage location."

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SNAPSHOT_LISTING_ERROR:Ljava/lang/String; = "Listing snapshots is only supported in flat mode (no delimiter). Consider setting useFlatBlobListing to true."

.field public static final SNAPSHOT_QUERY_OPTION_ALREADY_DEFINED:Ljava/lang/String; = "Snapshot query parameter is already defined in the blob URI. Either pass in a snapshotTime parameter or use a full URL with a snapshot query parameter."

.field public static final STORAGE_CLIENT_OR_SAS_REQUIRED:Ljava/lang/String; = "Either a SAS token or a service client must be specified."

.field public static final STORAGE_CREDENTIALS_NULL_OR_ANONYMOUS:Ljava/lang/String; = "StorageCredentials cannot be null or anonymous for this service."

.field public static final STORAGE_URI_MISSING_LOCATION:Ljava/lang/String; = "The URI for the target storage location is not specified. Please consider changing the request\'s location mode."

.field public static final STORAGE_URI_MUST_MATCH:Ljava/lang/String; = "Primary and secondary location URIs in a StorageUri must point to the same resource."

.field public static final STORAGE_URI_NOT_NULL:Ljava/lang/String; = "Primary and secondary location URIs in a StorageUri must not both be null."

.field public static final STOREAS_DIFFERENT_FOR_GETTER_AND_SETTER:Ljava/lang/String; = "StoreAs Annotation found for both getter and setter for property %s with unequal values."

.field public static final STOREAS_USED_ON_EMPTY_PROPERTY:Ljava/lang/String; = "StoreAs Annotation found for property %s with empty value."

.field public static final STREAM_CLOSED:Ljava/lang/String; = "Stream is already closed."

.field public static final STREAM_LENGTH_GREATER_THAN_100MB:Ljava/lang/String; = "Invalid stream length, length must be less than or equal to 100 MB in size."

.field public static final STREAM_LENGTH_GREATER_THAN_4MB:Ljava/lang/String; = "Invalid stream length, length must be less than or equal to 4 MB in size."

.field public static final STREAM_LENGTH_NEGATIVE:Ljava/lang/String; = "Invalid stream length, specify -1 for unknown length stream, or a positive number of bytes."

.field public static final STREAM_SKIP_FAILED:Ljava/lang/String; = "The supplied stream has failed to skip to the correct position after successive attempts. Please ensure there are bytes available and try your upload again."

.field public static final STRING_NOT_VALID:Ljava/lang/String; = "The String is not a valid Base64-encoded string."

.field public static final TABLE:Ljava/lang/String; = "table"

.field public static final TABLE_ENDPOINT_NOT_CONFIGURED:Ljava/lang/String; = "No table endpoint configured."

.field public static final TABLE_OBJECT_RELATIVE_URIS_NOT_SUPPORTED:Ljava/lang/String; = "Table Object relative URIs not supported."

.field public static final TAKE_COUNT_ZERO_OR_NEGATIVE:Ljava/lang/String; = "Take count must be positive and greater than 0."

.field public static final TOO_MANY_PATH_SEGMENTS:Ljava/lang/String; = "The count of URL path segments (strings between \'/\' characters) as part of the blob name cannot exceed 254."

.field public static final TOO_MANY_SHARED_ACCESS_POLICY_IDENTIFIERS:Ljava/lang/String; = "Too many %d shared access policy identifiers provided. Server does not support setting more than %d on a single container, queue, or table."

.field public static final TOO_MANY_SHARED_ACCESS_POLICY_IDS:Ljava/lang/String; = "Too many %d shared access policy identifiers provided. Server does not support setting more than %d on a single container."

.field public static final TYPE_NOT_SUPPORTED:Ljava/lang/String; = "Type %s is not supported."

.field public static final UNEXPECTED_CONTINUATION_TYPE:Ljava/lang/String; = "The continuation type passed in is unexpected. Please verify that the correct continuation type is passed in. Expected {%s}, found {%s}."

.field public static final UNEXPECTED_FIELD_NAME:Ljava/lang/String; = "Unexpected field name. Expected: \'%s\'. Actual: \'%s\'."

.field public static final UNEXPECTED_STATUS_CODE_RECEIVED:Ljava/lang/String; = "Unexpected http status code received."

.field public static final UNEXPECTED_STREAM_READ_ERROR:Ljava/lang/String; = "Unexpected error. Stream returned unexpected number of bytes."

.field public static final UNKNOWN_TABLE_OPERATION:Ljava/lang/String; = "Unknown table operation."

.field public static final UNSUPPORTED_PROPERTY_TYPE_FOR_ENCRYPTION:Ljava/lang/String; = "Unsupported type : %s encountered during encryption. Only string properties can be encrypted on the client side."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
