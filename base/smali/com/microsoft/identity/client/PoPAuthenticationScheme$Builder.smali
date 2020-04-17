.class public Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/PoPAuthenticationScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

.field public mNonce:Ljava/lang/String;

.field public mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/client/PoPAuthenticationScheme$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/client/PoPAuthenticationScheme;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;->mUrl:Ljava/net/URL;

    const-string v1, "PoP authentication scheme param must not be null: "

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;->mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Lcom/microsoft/identity/client/PoPAuthenticationScheme;

    iget-object v3, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;->mNonce:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/microsoft/identity/client/PoPAuthenticationScheme;-><init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;Lcom/microsoft/identity/client/PoPAuthenticationScheme$1;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP Method"

    invoke-static {v1, v2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "URL"

    invoke-static {v1, v2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withHttpMethod(Lcom/microsoft/identity/client/HttpMethod;)Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;->mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

    return-object p0
.end method

.method public withNonce(Ljava/lang/String;)Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public withUrl(Ljava/net/URL;)Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;->mUrl:Ljava/net/URL;

    return-object p0
.end method
