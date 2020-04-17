.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHENTICATION_TYPE_NAME:Ljava/lang/String; = "type"

.field public static final SYMMETRIC_KEY_NAME:Ljava/lang/String; = "symmetricKey"

.field public static final X509_THUMBPRINT_NAME:Ljava/lang/String; = "x509Thumbprint"


# instance fields
.field public symmetricKey:Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "symmetricKey"
    .end annotation
.end field

.field public thumbprint:Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "x509Thumbprint"
    .end annotation
.end field

.field public type:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationTypeParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSymmetricKey()Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;->symmetricKey:Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;

    return-object v0
.end method

.method public getThumbprint()Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;->thumbprint:Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;

    return-object v0
.end method

.method public getType()Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationTypeParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;->type:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationTypeParser;

    return-object v0
.end method

.method public setSymmetricKey(Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;->symmetricKey:Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;

    return-void
.end method

.method public setThumbprint(Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;->thumbprint:Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;

    return-void
.end method

.method public setType(Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationTypeParser;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;->type:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationTypeParser;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Type may not be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
