.class public Lcom/microsoft/identity/common/exception/ArgumentException;
.super Lcom/microsoft/identity/common/exception/BaseException;
.source "SourceFile"


# static fields
.field public static final ACQUIRE_TOKEN_OPERATION_NAME:Ljava/lang/String; = "acquireToken"

.field public static final ACQUIRE_TOKEN_SILENT_OPERATION_NAME:Ljava/lang/String; = "acquireTokenSilent"

.field public static final AUTHENTICATION_SCHEME_ARGUMENT_NAME:Ljava/lang/String; = "authentication_scheme"

.field public static final AUTHORITY_ARGUMENT_NAME:Ljava/lang/String; = "authority"

.field public static final BROKER_TOKEN_REQUEST_OPERATION_NAME:Ljava/lang/String; = "brokerTokenRequest"

.field public static final IACCOUNT_ARGUMENT_NAME:Ljava/lang/String; = "account"

.field public static final ILLEGAL_ARGUMENT_ERROR_CODE:Ljava/lang/String; = "illegal_argument_exception"

.field public static final SCOPE_ARGUMENT_NAME:Ljava/lang/String; = "scopes"

.field public static final sName:Ljava/lang/String;


# instance fields
.field public mArgumentName:Ljava/lang/String;

.field public mOperationName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/exception/ArgumentException;->sName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    .line 1
    invoke-direct {p0, v0, p3}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ArgumentException;->mOperationName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/exception/ArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    .line 4
    invoke-direct {p0, v0, p3, p4}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ArgumentException;->mOperationName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/exception/ArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArgumentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/ArgumentException;->mArgumentName:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/exception/ArgumentException;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/ArgumentException;->mOperationName:Ljava/lang/String;

    return-object v0
.end method
