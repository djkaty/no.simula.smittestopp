.class public Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyResponseResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public isSuccess:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->isSuccess:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSuccess()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->isSuccess:Ljava/lang/Boolean;

    return-object v0
.end method
