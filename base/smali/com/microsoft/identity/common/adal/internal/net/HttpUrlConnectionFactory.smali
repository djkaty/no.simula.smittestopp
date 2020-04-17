.class public final Lcom/microsoft/identity/common/adal/internal/net/HttpUrlConnectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sMockedConnection:Ljava/net/HttpURLConnection;

.field public static sMockedConnectionOpenUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHttpUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/net/HttpUrlConnectionFactory;->sMockedConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    sput-object p0, Lcom/microsoft/identity/common/adal/internal/net/HttpUrlConnectionFactory;->sMockedConnectionOpenUrl:Ljava/net/URL;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static getMockedConnectionOpenUrl()Ljava/net/URL;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/net/HttpUrlConnectionFactory;->sMockedConnectionOpenUrl:Ljava/net/URL;

    return-object v0
.end method

.method public static setMockedHttpUrlConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/microsoft/identity/common/adal/internal/net/HttpUrlConnectionFactory;->sMockedConnection:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/microsoft/identity/common/adal/internal/net/HttpUrlConnectionFactory;->sMockedConnectionOpenUrl:Ljava/net/URL;

    :cond_0
    return-void
.end method
