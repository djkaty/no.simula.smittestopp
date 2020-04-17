.class public Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLock()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method public waitLock(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    return-void
.end method
