.class public abstract Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/microsoft/appcenter/http/ServiceCall;
.implements Lcom/microsoft/appcenter/http/ServiceCallback;


# instance fields
.field public final mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

.field public final mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

.field public final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMethod:Ljava/lang/String;

.field public mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;

.field public final mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    .line 3
    iput-object p2, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mMethod:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mHeaders:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    .line 7
    iput-object p6, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;

    invoke-interface {v0}, Lcom/microsoft/appcenter/http/ServiceCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCallFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V

    return-void
.end method

.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    iget-object v1, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mHeaders:Ljava/util/Map;

    iget-object v4, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/microsoft/appcenter/http/HttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
