.class public Lcom/microsoft/appcenter/http/HttpClientRetryer;
.super Lcom/microsoft/appcenter/http/HttpClientDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    }
.end annotation


# static fields
.field public static final RETRY_INTERVALS:[J


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mRandom:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    sput-object v0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->RETRY_INTERVALS:[J

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/appcenter/http/HttpClientRetryer;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/http/HttpClientDecorator;-><init>(Lcom/microsoft/appcenter/http/HttpClient;)V

    .line 3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mRandom:Ljava/util/Random;

    .line 4
    iput-object p2, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Ljava/util/Random;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mRandom:Ljava/util/Random;

    return-object p0
.end method


# virtual methods
.method public callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")",
            "Lcom/microsoft/appcenter/http/ServiceCall;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;

    iget-object v2, p0, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;-><init>(Lcom/microsoft/appcenter/http/HttpClientRetryer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V

    .line 2
    invoke-virtual {v8}, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->run()V

    return-object v8
.end method
