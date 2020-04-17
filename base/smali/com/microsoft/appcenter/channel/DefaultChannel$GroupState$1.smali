.class public Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;->this$1:Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 2
    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->access$500(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    return-void
.end method
