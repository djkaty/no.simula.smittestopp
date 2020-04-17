.class public Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryIdToken;
.super Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftIdToken;
.source "SourceFile"


# static fields
.field public static final IDENTITY_PROVIDER:Ljava/lang/String; = "idp"

.field public static final PASSWORD_CHANGE_URL:Ljava/lang/String; = "pwd_url"

.field public static final PASSWORD_EXPIRATION:Ljava/lang/String; = "pwd_exp"

.field public static final UNIQUE_NAME:Ljava/lang/String; = "unique_name"

.field public static final UPN:Ljava/lang/String; = "upn"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftIdToken;-><init>(Ljava/lang/String;)V

    return-void
.end method
