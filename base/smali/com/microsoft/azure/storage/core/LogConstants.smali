.class public Lcom/microsoft/azure/storage/core/LogConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLETE:Ljava/lang/String; = "Operation completed."

.field public static final DO_NOT_RETRY_POLICY:Ljava/lang/String; = "Retry policy did not allow for a retry. Failing. Error Message = \'%s\'."

.field public static final DO_NOT_RETRY_TIMEOUT:Ljava/lang/String; = "Operation cannot be retried because maximum execution timeout has been reached. Failing. Inner error Message = \'%s\'."

.field public static final ERROR_RECEIVING_RESPONSE:Ljava/lang/String; = "A network error occurred before the HTTP response status and headers were received."

.field public static final GET_RESPONSE:Ljava/lang/String; = "Waiting for response."

.field public static final INIT_LOCATION:Ljava/lang/String; = "Starting operation with location \'%s\' per location mode \'%s\'."

.field public static final NEXT_LOCATION:Ljava/lang/String; = "The next location has been set to \'%s\', per location mode \'%s\'."

.field public static final POST_PROCESS:Ljava/lang/String; = "Processing response body."

.field public static final POST_PROCESS_DONE:Ljava/lang/String; = "Response body was parsed successfully."

.field public static final PRE_PROCESS:Ljava/lang/String; = "Processing response headers."

.field public static final PRE_PROCESS_DONE:Ljava/lang/String; = "Response headers were processed successfully."

.field public static final RESPONSE_RECEIVED:Ljava/lang/String; = "Response received. Status code = \'%d\', Request ID = \'%s\', Content-MD5 = \'%s\', ETag = \'%s\', Date = \'%s\'."

.field public static final RETRY:Ljava/lang/String; = "Retrying failed operation."

.field public static final RETRYABLE_EXCEPTION:Ljava/lang/String; = "Retryable exception thrown. Class = \'%s\', Message = \'%s\'."

.field public static final RETRY_CHECK:Ljava/lang/String; = "Checking if the operation should be retried. Retry count = \'%d\', HTTP status code = \'%d\', Error Message = \'%s\'."

.field public static final RETRY_DELAY:Ljava/lang/String; = "Operation will be retried after \'%d\'ms."

.field public static final RETRY_INFO:Ljava/lang/String; = "The retry policy set the next location to \'%s\' and updated the location mode to \'%s\'."

.field public static final SIGNING:Ljava/lang/String; = "Signing %s"

.field public static final STARTING:Ljava/lang/String; = "Starting operation."

.field public static final START_REQUEST:Ljava/lang/String; = "Starting request to \'%s\' at \'%s\'."

.field public static final UNEXPECTED_RESULT_OR_EXCEPTION:Ljava/lang/String; = "Operation did not return the expected result or returned an exception."

.field public static final UNRETRYABLE_EXCEPTION:Ljava/lang/String; = "Un-retryable exception thrown. Class = \'%s\', Message = \'%s\'."

.field public static final UPLOAD:Ljava/lang/String; = "Writing request data."

.field public static final UPLOADDONE:Ljava/lang/String; = "Request data was written successfully."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
