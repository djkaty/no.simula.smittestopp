.class public abstract Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CLIENT_ASSERTION_TYPE:Ljava/lang/String; = "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"


# instance fields
.field public mClientAssertion:Ljava/lang/String;

.field public mClientAssertionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->mClientAssertionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientAssertion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->mClientAssertion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAssertionType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->mClientAssertionType:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAssertion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->mClientAssertion:Ljava/lang/String;

    return-void
.end method

.method public setClientAssertionType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->mClientAssertionType:Ljava/lang/String;

    return-void
.end method
