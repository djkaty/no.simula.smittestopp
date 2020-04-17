.class public final Lj/b/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/MessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lj/b/a/h;


# direct methods
.method public constructor <init>(Lj/b/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/b/a/h$a;->a:Lj/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;
    .locals 2

    if-eqz p1, :cond_0

    const-string p2, "versionAndroid"

    .line 1
    invoke-virtual {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    return-object p1

    :cond_1
    const-string p2, "."

    .line 3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v1, v0}, Lh/o/g;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 4
    iget-object p2, p0, Lj/b/a/h$a;->a:Lj/b/a/h;

    .line 5
    iput-object p1, p2, Lj/b/a/h;->f:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    return-object p1

    .line 7
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    return-object p1
.end method
