.class public abstract Lcom/microsoft/appcenter/http/HttpClientDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/http/HttpClient;


# instance fields
.field public final mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getDecoratedApi()Lcom/microsoft/appcenter/http/HttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    return-object v0
.end method

.method public reopen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v0}, Lcom/microsoft/appcenter/http/HttpClient;->reopen()V

    return-void
.end method
