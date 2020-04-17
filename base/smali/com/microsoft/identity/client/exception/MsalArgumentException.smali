.class public Lcom/microsoft/identity/client/exception/MsalArgumentException;
.super Lcom/microsoft/identity/client/exception/MsalException;
.source "SourceFile"


# static fields
.field public static final ACQUIRE_TOKEN_OPERATION_NAME:Ljava/lang/String; = "acquireToken"

.field public static final ACQUIRE_TOKEN_SILENT_OPERATION_NAME:Ljava/lang/String; = "acquireTokenSilent"

.field public static final AUTHORITY_REQUIRED_FOR_SILENT:Ljava/lang/String; = "Authority must be specified for acquireTokenSilent"

.field public static final IACCOUNT_ARGUMENT_NAME:Ljava/lang/String; = "account"

.field public static final ILLEGAL_ARGUMENT_ERROR_CODE:Ljava/lang/String; = "illegal_argument_exception"

.field public static final SCOPE_ARGUMENT_NAME:Ljava/lang/String; = "scopes"


# instance fields
.field public mArgumentName:Ljava/lang/String;

.field public mOperationName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    .line 3
    invoke-direct {p0, v0, p3}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mOperationName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    .line 6
    invoke-direct {p0, v0, p3, p4}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mOperationName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArgumentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mArgumentName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalArgumentException;->mOperationName:Ljava/lang/String;

    return-object v0
.end method
