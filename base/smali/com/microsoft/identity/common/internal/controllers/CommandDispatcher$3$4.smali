.class public Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$4;->this$0:Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$4;->this$0:Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;

    iget-object v0, v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getCallback()Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandCallback;->onCancel()V

    return-void
.end method
