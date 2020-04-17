.class public Lcom/microsoft/appcenter/channel/DefaultChannel$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel$2;->onCallFailed(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$2;

.field public final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel$2;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$2$2;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$2;

    iput-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$2$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$2$2;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$2;

    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    iget-object v2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->val$groupState:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    iget-object v0, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$2;->val$batchId:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$2$2;->val$e:Ljava/lang/Exception;

    invoke-static {v1, v2, v0, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$300(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
