.class public Lcom/microsoft/appcenter/AbstractAppCenterService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

.field public final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

.field public final synthetic val$valueIfDisabledOrNotStarted:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$5;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    iput-object p2, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$5;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    iput-object p3, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$5;->val$valueIfDisabledOrNotStarted:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$5;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    iget-object v1, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$5;->val$valueIfDisabledOrNotStarted:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    return-void
.end method
