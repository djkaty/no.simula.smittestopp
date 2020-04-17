.class public Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
.super Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/http/HttpClientRetryer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RetryableCall"
.end annotation


# instance fields
.field public mRetryCount:I

.field public final synthetic this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClientRetryer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/http/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    invoke-static {v0}, Lcom/microsoft/appcenter/http/HttpClientRetryer;->access$000(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCallFailed(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    sget-object v1, Lcom/microsoft/appcenter/http/HttpClientRetryer;->RETRY_INTERVALS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-static {p1}, Lcom/microsoft/appcenter/http/HttpUtils;->isRecoverableError(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, p1, Lcom/microsoft/appcenter/http/HttpException;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/microsoft/appcenter/http/HttpException;

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/appcenter/http/HttpException;->getHttpResponse()Lcom/microsoft/appcenter/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v3, "x-ms-retry-after-ms"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->RETRY_INTERVALS:[J

    iget v1, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 7
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    invoke-static {v0}, Lcom/microsoft/appcenter/http/HttpClientRetryer;->access$100(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Ljava/util/Random;

    move-result-object v0

    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v3, v1

    :cond_1
    const-string v0, "Try #"

    .line 8
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed and will be retried in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    const-string v1, " (UnknownHostException)"

    .line 10
    invoke-static {v0, v1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "AppCenter"

    .line 11
    invoke-static {v1, v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    invoke-static {p1}, Lcom/microsoft/appcenter/http/HttpClientRetryer;->access$000(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
