.class public Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;
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

.field public final synthetic val$finalException:Lcom/microsoft/identity/common/exception/BaseException;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;->this$0:Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;->val$finalException:Lcom/microsoft/identity/common/exception/BaseException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;->this$0:Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;

    iget-object v0, v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getCallback()Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;->val$finalException:Lcom/microsoft/identity/common/exception/BaseException;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method
