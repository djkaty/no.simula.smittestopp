.class public Lcom/microsoft/identity/common/exception/ClientException;
.super Lcom/microsoft/identity/common/exception/BaseException;
.source "SourceFile"


# static fields
.field public static final ADFS_AUTHORITY_VALIDATION_FAILED:Ljava/lang/String; = "adfs_authority_validation_failed"

.field public static final ANDROID_KEYSTORE_UNAVAILABLE:Ljava/lang/String; = "android_keystore_unavailable"

.field public static final AUTHORITY_VALIDATION_NOT_SUPPORTED:Ljava/lang/String; = "authority_validation_not_supported"

.field public static final AUTH_SCHEME_MISMATCH:Ljava/lang/String; = "auth_scheme_mismatch"

.field public static final BAD_KEY_SIZE:Ljava/lang/String; = "keystore_produced_invalid_cert"

.field public static final BRT_TENANT_MISMATCH:Ljava/lang/String; = "brt_tenant_mismatch"

.field public static final CHROME_NOT_INSTALLED:Ljava/lang/String; = "chrome_not_installed"

.field public static final DEVICE_NETWORK_NOT_AVAILABLE:Ljava/lang/String; = "device_network_not_available"

.field public static final DUPLICATE_COMMAND:Ljava/lang/String; = "duplicate_command"

.field public static final DUPLICATE_QUERY_PARAMETER:Ljava/lang/String; = "duplicate_query_parameter"

.field public static final INTERRUPTED_OPERATION:Ljava/lang/String; = "operation_interrupted"

.field public static final INVALID_ALG:Ljava/lang/String; = "keystore_initialization_failed"

.field public static final INVALID_JWT:Ljava/lang/String; = "invalid_jwt"

.field public static final INVALID_PROTECTION_PARAMS:Ljava/lang/String; = "protection_params_invalid"

.field public static final IO_ERROR:Ljava/lang/String; = "io_error"

.field public static final JSON_CONSTRUCTION_FAILED:Ljava/lang/String; = "json_construction_failed"

.field public static final JSON_PARSE_FAILURE:Ljava/lang/String; = "json_parse_failure"

.field public static final JWT_SIGNING_FAILURE:Ljava/lang/String; = "failed_to_sign_jwt"

.field public static final KEYSTORE_NOT_INITIALIZED:Ljava/lang/String; = "keystore_not_initialized"

.field public static final MALFORMED_URL:Ljava/lang/String; = "malformed_url"

.field public static final MULTIPLE_MATCHING_TOKENS_DETECTED:Ljava/lang/String; = "multiple_matching_tokens_detected"

.field public static final NO_SUCH_ALGORITHM:Ljava/lang/String; = "no_such_algorithm"

.field public static final SCOPE_EMPTY_OR_NULL:Ljava/lang/String; = "scope_empty_or_null"

.field public static final STATE_MISMATCH:Ljava/lang/String; = "state_mismatch"

.field public static final THUMBPRINT_COMPUTATION_FAILURE:Ljava/lang/String; = "failed_to_compute_thumbprint_with_sha256"

.field public static final TOKEN_CACHE_ITEM_NOT_FOUND:Ljava/lang/String; = "token_cache_item_not_found"

.field public static final TOKEN_SHARING_DESERIALIZATION_ERROR:Ljava/lang/String; = "token_sharing_deserialization_error"

.field public static final TOKEN_SHARING_MSA_PERSISTENCE_ERROR:Ljava/lang/String; = "failed_to_persist_msa_credential"

.field public static final UNKNOWN_AUTHORITY:Ljava/lang/String; = "unknown_authority"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown_error"

.field public static final UNSUPPORTED_ENCODING:Ljava/lang/String; = "unsupported_encoding"

.field public static final UNSUPPORTED_URL:Ljava/lang/String; = "unsupported_url"

.field public static final USER_MISMATCH:Ljava/lang/String; = "user_mismatch"

.field public static final sName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/exception/ClientException;->sName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/exception/ClientException;->sName:Ljava/lang/String;

    return-object v0
.end method
