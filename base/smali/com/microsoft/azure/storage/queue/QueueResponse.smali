.class public final Lcom/microsoft/azure/storage/queue/QueueResponse;
.super Lcom/microsoft/azure/storage/core/BaseResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;-><init>()V

    return-void
.end method

.method public static getApproximateMessageCount(Ljava/net/HttpURLConnection;)J
    .locals 2

    const-string v0, "x-ms-approximate-messages-count"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
