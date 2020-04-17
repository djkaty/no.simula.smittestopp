.class public Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$1;->this$0:Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$700(Landroid/content/Intent;)V

    return-void
.end method
