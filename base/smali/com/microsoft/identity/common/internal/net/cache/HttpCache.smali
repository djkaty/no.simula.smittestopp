.class public Lcom/microsoft/identity/common/internal/net/cache/HttpCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_HTTP_CACHE_CAPACITY_BYTES:J = 0xa00000L

.field public static final DEFAULT_HTTP_CACHE_NAME:Ljava/lang/String; = "com.microsoft.identity.http-cache"

.field public static final TAG:Ljava/lang/String; = "HttpCache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/http/HttpResponseCache;->flush()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->TAG:Ljava/lang/String;

    const-string v2, ":flush"

    const-string v3, "Unable to flush cache because none is installed."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 1

    .line 1
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/io/File;)Z
    .locals 3

    const-string v0, "com.microsoft.identity.http-cache"

    const-wide/32 v1, 0xa00000

    .line 4
    invoke-static {p0, v0, v1, v2}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize(Ljava/io/File;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static initialize(Ljava/io/File;Ljava/lang/String;J)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p2, p3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":initialize (File, Filename, Capacity)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HTTP Response cache installation failed."

    invoke-static {p1, p2, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
