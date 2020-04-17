.class public Lcom/microsoft/appcenter/AppCenter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field public final synthetic val$enabled:Z

.field public final synthetic val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/AppCenter;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter$11;->this$0:Lcom/microsoft/appcenter/AppCenter;

    iput-boolean p2, p0, Lcom/microsoft/appcenter/AppCenter$11;->val$enabled:Z

    iput-object p3, p0, Lcom/microsoft/appcenter/AppCenter$11;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$11;->this$0:Lcom/microsoft/appcenter/AppCenter;

    iget-boolean v1, p0, Lcom/microsoft/appcenter/AppCenter$11;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/AppCenter;->access$800(Lcom/microsoft/appcenter/AppCenter;Z)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$11;->val$future:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    return-void
.end method
