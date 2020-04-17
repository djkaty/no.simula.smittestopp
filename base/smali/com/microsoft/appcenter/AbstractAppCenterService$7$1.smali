.class public Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AbstractAppCenterService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/AbstractAppCenterService$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;->this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/AbstractAppCenterService$7$1;->this$1:Lcom/microsoft/appcenter/AbstractAppCenterService$7;

    iget-object v1, v0, Lcom/microsoft/appcenter/AbstractAppCenterService$7;->this$0:Lcom/microsoft/appcenter/AbstractAppCenterService;

    iget-object v0, v0, Lcom/microsoft/appcenter/AbstractAppCenterService$7;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->access$000(Lcom/microsoft/appcenter/AbstractAppCenterService;Ljava/lang/Runnable;)V

    return-void
.end method
